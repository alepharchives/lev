#ifndef CARES_H_
#define CARES_H_

int uv_ares_init_options(uv_loop_t* loop, ares_channel *channelptr,
    struct ares_options *options, int optmask);

#endif /* CARES_H_ */
