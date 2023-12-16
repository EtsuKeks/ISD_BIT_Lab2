FROM openjdk:11

EXPOSE 8097

RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/* \
    && git clone https://github.com/SexualWhiteChocolate/ISD_BIT_Lab2.git \
    && rm -rf /ISD_BIT_Lab2/task2

WORKDIR /ISD_BIT_Lab2/task1/Consumer

RUN javac Main.java \
    && jar cfe Consumer.jar Main Main.class MiniClass.class ru/sber/karimullin/hw_3/Factory/Factory.class \
    ru/sber/karimullin/hw_3/Factory/Factory\$Counter.class ru/sber/karimullin/hw_3/Generator/Generator.class \
    ru/sber/karimullin/hw_3/RuntimeCompiler/RuntimeCompiler.class \
    ru/sber/karimullin/hw_3/RuntimeCompiler/RuntimeCompiler\$JavaSourceFromString.class \
    && rm -rf ru && rm -rf Main.* MiniClass.*

WORKDIR /ISD_BIT_Lab2/task1/Producer

RUN javac Main.java \
    && jar cfe Producer.jar Main Main.class MiniClass.class \
    && rm -rf Main.* MiniClass.*

WORKDIR /ISD_BIT_Lab2/task1

RUN rm -rf Dockerfile init.sh

WORKDIR /

CMD [""]