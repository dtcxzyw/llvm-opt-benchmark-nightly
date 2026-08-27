Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nf_conntrack_sip?download=true
inline.NumInlined: 114
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nf_nat_sip_hooks: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad nf_nat_sip_hooks ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ct_sip_parse_request: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ct_sip_parse_request ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ct_sip_get_header: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ct_sip_get_header ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ct_sip_parse_header_uri: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ct_sip_parse_header_uri ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ct_sip_parse_address_param: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ct_sip_parse_address_param ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ct_sip_parse_numerical_param: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ct_sip_parse_numerical_param ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ct_sip_get_sdp_header: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ct_sip_get_sdp_header ; .previous"
    ".section\09\22.initcall6.init\22, \22a\22\09\09"
    "__initcall__kmod_nf_conntrack_sip__1255_1837_nf_conntrack_sip_init6:\09\09\09"
    ".long\09nf_conntrack_sip_init - .\09"
    ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.sip_header = type { ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.nf_conntrack_helper = type { %struct.hlist_node, %struct.callback_head, [16 x i8], ptr, [4 x %struct.nf_conntrack_expect_policy], %struct.refcount_struct, %struct.nf_conntrack_tuple, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.nf_conntrack_expect_policy = type { i32, i32, [16 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.10 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.10 = type { %union.nf_inet_addr, %union.anon.11, i8, i8 }
%union.anon.11 = type { i16 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.sdp_media_type = type { ptr, i32, i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.flowi = type { %union.anon.42 }
%union.anon.42 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, i32, %struct.flowi_tunnel }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%union.flowi_uli = type { i32 }

@__UNIQUE_ID_modinfo_1206 = internal constant [53 x i8] c"nf_conntrack_sip.file=net/netfilter/nf_conntrack_sip\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1207 = internal constant [29 x i8] c"nf_conntrack_sip.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1208 = internal constant [70 x i8] c"nf_conntrack_sip.author=Christian Hentschel <chentschel@arnet.com.ar>\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1209 = internal constant [60 x i8] c"nf_conntrack_sip.description=SIP connection tracking helper\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1210 = internal constant [40 x i8] c"nf_conntrack_sip.alias=ip_conntrack_sip\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1211 = internal constant [39 x i8] c"nf_conntrack_sip.alias=nfct-helper-sip\00", section ".modinfo", align 1
@__param_str_ports = internal constant [23 x i8] c"nf_conntrack_sip.ports\00", align 16
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 8
@__param_arr_ports = internal constant %struct.kparam_array { i32 8, i32 2, ptr @ports_c, ptr @param_ops_ushort, ptr @ports }, align 8
@__param_ports = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_ports, ptr null, ptr @param_array_ops, i16 256, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @__param_arr_ports } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1212 = internal constant [48 x i8] c"nf_conntrack_sip.parmtype=ports:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1213 = internal constant [56 x i8] c"nf_conntrack_sip.parm=ports:port numbers of SIP servers\00", section ".modinfo", align 1
@__param_str_sip_timeout = internal constant [29 x i8] c"nf_conntrack_sip.sip_timeout\00", align 16
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@sip_timeout = internal global i32 3600, section ".data..read_mostly", align 4
@__param_sip_timeout = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_sip_timeout, ptr null, ptr @param_ops_uint, i16 384, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @sip_timeout } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1214 = internal constant [43 x i8] c"nf_conntrack_sip.parmtype=sip_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1215 = internal constant [69 x i8] c"nf_conntrack_sip.parm=sip_timeout:timeout for the master SIP session\00", section ".modinfo", align 1
@__param_str_sip_direct_signalling = internal constant [39 x i8] c"nf_conntrack_sip.sip_direct_signalling\00", align 16
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@sip_direct_signalling = internal global i32 1, section ".data..read_mostly", align 4
@__param_sip_direct_signalling = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_sip_direct_signalling, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @sip_direct_signalling } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1216 = internal constant [52 x i8] c"nf_conntrack_sip.parmtype=sip_direct_signalling:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1217 = internal constant [98 x i8] c"nf_conntrack_sip.parm=sip_direct_signalling:expect incoming calls from registrar only (default 1)\00", section ".modinfo", align 1
@__param_str_sip_direct_media = internal constant [34 x i8] c"nf_conntrack_sip.sip_direct_media\00", align 16
@sip_direct_media = internal global i32 1, section ".data..read_mostly", align 4
@__param_sip_direct_media = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_sip_direct_media, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @sip_direct_media } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1218 = internal constant [47 x i8] c"nf_conntrack_sip.parmtype=sip_direct_media:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1219 = internal constant [106 x i8] c"nf_conntrack_sip.parm=sip_direct_media:Expect Media streams between signalling endpoints only (default 1)\00", section ".modinfo", align 1
@__param_str_sip_external_media = internal constant [36 x i8] c"nf_conntrack_sip.sip_external_media\00", align 16
@sip_external_media = internal global i32 0, section ".data..read_mostly", align 4
@__param_sip_external_media = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_sip_external_media, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @sip_external_media } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1220 = internal constant [49 x i8] c"nf_conntrack_sip.parmtype=sip_external_media:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1221 = internal constant [101 x i8] c"nf_conntrack_sip.parm=sip_external_media:Expect Media streams between external endpoints (default 0)\00", section ".modinfo", align 1
@nf_nat_sip_hooks = dso_local global ptr null, align 8
@__UNIQUE_ID_addressable_nf_nat_sip_hooks_1222 = internal global ptr @nf_nat_sip_hooks, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [5 x i8] c"sip:\00", align 1
@__UNIQUE_ID_addressable_ct_sip_parse_request_1224 = internal global ptr @ct_sip_parse_request, section ".discard.addressable", align 8
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__UNIQUE_ID_addressable_ct_sip_get_header_1225 = internal global ptr @ct_sip_get_header, section ".discard.addressable", align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"net/netfilter/nf_conntrack_sip.c\00", align 1
@__UNIQUE_ID_addressable_ct_sip_parse_header_uri_1228 = internal global ptr @ct_sip_parse_header_uri, section ".discard.addressable", align 8
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@__UNIQUE_ID_addressable_ct_sip_parse_address_param_1229 = internal global ptr @ct_sip_parse_address_param, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ct_sip_parse_numerical_param_1230 = internal global ptr @ct_sip_parse_numerical_param, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ct_sip_get_sdp_header_1232 = internal global ptr @ct_sip_get_sdp_header, section ".discard.addressable", align 8
@sip_ptr = internal global [32 x ptr] zeroinitializer, section ".data..read_mostly", align 16
@ports_c = internal global i32 0, align 4
@__UNIQUE_ID_addressable_nf_conntrack_sip_init_1256 = internal global ptr @nf_conntrack_sip_init, section ".discard.addressable", align 8
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 8
@ports = internal global [8 x i16] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"CSeq\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"From\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"To\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Contact\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Via\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"UDP \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"TCP \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Expires\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Call-Id\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@ct_sip_hdrs = internal unnamed_addr constant [9 x { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr }] [{ ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.4, ptr null, ptr null, i32 4, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @digits_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.5, ptr @.str.6, ptr @.str, i32 4, i32 1, i32 4, [4 x i8] zeroinitializer, ptr @skp_epaddr_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, ptr @.str, i32 2, i32 1, i32 4, [4 x i8] zeroinitializer, ptr @skp_epaddr_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, ptr @.str, i32 7, i32 1, i32 4, [4 x i8] zeroinitializer, ptr @skp_epaddr_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 3, i32 1, i32 4, [4 x i8] zeroinitializer, ptr @epaddr_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, ptr @.str.14, i32 3, i32 1, i32 4, [4 x i8] zeroinitializer, ptr @epaddr_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.15, ptr null, ptr null, i32 7, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @digits_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.16, ptr @.str.17, ptr null, i32 14, i32 1, i32 0, [4 x i8] zeroinitializer, ptr @digits_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, ptr null, i32 7, i32 1, i32 0, [4 x i8] zeroinitializer, ptr @callid_len }], align 16
@.str.21 = private unnamed_addr constant [3 x i8] c"v=\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"o=\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"IN IP4 \00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"c=\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"m=\00", align 1
@ct_sdp_hdrs_v4 = internal unnamed_addr constant <{ %struct.sip_header, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } }> <{ %struct.sip_header zeroinitializer, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.21, ptr null, ptr null, i32 2, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @digits_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.22, ptr null, ptr @.str.23, i32 2, i32 0, i32 7, [4 x i8] zeroinitializer, ptr @sdp_addr_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.24, ptr null, ptr @.str.23, i32 2, i32 0, i32 7, [4 x i8] zeroinitializer, ptr @sdp_addr_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.25, ptr null, ptr null, i32 2, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @media_len } }>, align 16
@.str.27 = private unnamed_addr constant [8 x i8] c"IN IP6 \00", align 1
@ct_sdp_hdrs_v6 = internal unnamed_addr constant <{ %struct.sip_header, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } }> <{ %struct.sip_header zeroinitializer, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.21, ptr null, ptr null, i32 2, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @digits_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.22, ptr null, ptr @.str.27, i32 2, i32 0, i32 7, [4 x i8] zeroinitializer, ptr @sdp_addr_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.24, ptr null, ptr @.str.27, i32 2, i32 0, i32 7, [4 x i8] zeroinitializer, ptr @sdp_addr_len }, { ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.25, ptr null, ptr null, i32 2, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @media_len } }>, align 16
@sip = internal global [32 x %struct.nf_conntrack_helper] zeroinitializer, section ".data..read_mostly", align 16
@.str.29 = private unnamed_addr constant [4 x i8] c"sip\00", align 1
@sip_exp_policy = internal constant [4 x %struct.nf_conntrack_expect_policy] [%struct.nf_conntrack_expect_policy { i32 1, i32 180, [16 x i8] c"signalling\00\00\00\00\00\00" }, %struct.nf_conntrack_expect_policy { i32 4, i32 180, [16 x i8] c"audio\00\00\00\00\00\00\00\00\00\00\00" }, %struct.nf_conntrack_expect_policy { i32 4, i32 180, [16 x i8] c"video\00\00\00\00\00\00\00\00\00\00\00" }, %struct.nf_conntrack_expect_policy { i32 2, i32 180, [16 x i8] c"image\00\00\00\00\00\00\00\00\00\00\00" }], align 16
@.str.30 = private unnamed_addr constant [48 x i8] c"\013nf_conntrack_sip: failed to register helpers\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"SIP/2.0 \00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"cannot NAT SIP message\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"cannot parse cseq\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"cannot get cseq\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"INVITE\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"PRACK\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"BYE\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"REGISTER\00", align 1
@sip_handlers = internal unnamed_addr constant [6 x { ptr, i32, [4 x i8], ptr, ptr }] [{ ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.35, i32 6, [4 x i8] zeroinitializer, ptr @process_invite_request, ptr @process_invite_response }, { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.36, i32 6, [4 x i8] zeroinitializer, ptr @process_sdp, ptr @process_update_response }, { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.37, i32 3, [4 x i8] zeroinitializer, ptr @process_sdp, ptr null }, { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.38, i32 5, [4 x i8] zeroinitializer, ptr @process_sdp, ptr @process_prack_response }, { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.39, i32 3, [4 x i8] zeroinitializer, ptr @process_bye_request, ptr null }, { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.40, i32 8, [4 x i8] zeroinitializer, ptr @process_register_request, ptr @process_register_response }], align 16
@nf_conntrack_expect_lock = external dso_local global %struct.spinlock, align 4
@.str.42 = private unnamed_addr constant [14 x i8] c"wrong port %u\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"cannot parse SDP message\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"cannot add expectation for voice\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"cannot mangle SDP\00", align 1
@sdp_media_types = internal unnamed_addr constant [3 x %struct.sdp_media_type] [%struct.sdp_media_type { ptr @.str.46, i32 6, i32 1 }, %struct.sdp_media_type { ptr @.str.47, i32 6, i32 2 }, %struct.sdp_media_type { ptr @.str.48, i32 6, i32 3 }], align 16
@.str.46 = private unnamed_addr constant [7 x i8] c"audio \00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"video \00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"image \00", align 1
@nf_ct_zone_dflt = external dso_local constant %struct.nf_conntrack_zone, align 2
@.str.50 = private unnamed_addr constant [21 x i8] c"cannot parse contact\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"expires=\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"cannot parse expires\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"cannot alloc expectation\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"cannot add expectation\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"transport=\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.59 = private unnamed_addr constant [16 x i8] c"cannot get code\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_addressable_ct_sip_get_header_1225, ptr @__UNIQUE_ID_addressable_ct_sip_get_sdp_header_1232, ptr @__UNIQUE_ID_addressable_ct_sip_parse_address_param_1229, ptr @__UNIQUE_ID_addressable_ct_sip_parse_header_uri_1228, ptr @__UNIQUE_ID_addressable_ct_sip_parse_numerical_param_1230, ptr @__UNIQUE_ID_addressable_ct_sip_parse_request_1224, ptr @__UNIQUE_ID_addressable_nf_conntrack_sip_init_1256, ptr @__UNIQUE_ID_addressable_nf_nat_sip_hooks_1222, ptr @__UNIQUE_ID_modinfo_1206, ptr @__UNIQUE_ID_modinfo_1207, ptr @__UNIQUE_ID_modinfo_1208, ptr @__UNIQUE_ID_modinfo_1209, ptr @__UNIQUE_ID_modinfo_1210, ptr @__UNIQUE_ID_modinfo_1211, ptr @__UNIQUE_ID_modinfo_1212, ptr @__UNIQUE_ID_modinfo_1213, ptr @__UNIQUE_ID_modinfo_1214, ptr @__UNIQUE_ID_modinfo_1215, ptr @__UNIQUE_ID_modinfo_1216, ptr @__UNIQUE_ID_modinfo_1217, ptr @__UNIQUE_ID_modinfo_1218, ptr @__UNIQUE_ID_modinfo_1219, ptr @__UNIQUE_ID_modinfo_1220, ptr @__UNIQUE_ID_modinfo_1221, ptr @__param_ports, ptr @__param_sip_direct_media, ptr @__param_sip_direct_signalling, ptr @__param_sip_external_media, ptr @__param_sip_timeout, ptr @nf_conntrack_sip_fini], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 2) i32 @ct_sip_parse_request(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 %i.b       ; 18 uses
  %i.d = icmp ult ptr %1, %i.c
  br i1 %i.d, label %.lr.ph.i, label %string_len.exit.thread

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.02.i = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %.051.i = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %.051.i, align 1
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr i8, ptr @_ctype, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 3
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %.lr.ph.i.string_len.exit_crit_edge, label %bb.b

.lr.ph.i.string_len.exit_crit_edge:               ; preds = %.lr.ph.i
  %.pre71 = zext nneg i32 %.02.i to i64
  br label %string_len.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr i8, ptr %.051.i, i64 1     ; 2 uses
  %i.k = add nuw nsw i32 %.02.i, 1
  %exitcond.not.i = icmp eq ptr %i.j, %i.c
  br i1 %exitcond.not.i, label %string_len.exit, label %.lr.ph.i, !llvm.loop !10

string_len.exit:                                  ; preds = %bb.b, %.lr.ph.i.string_len.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre71, %.lr.ph.i.string_len.exit_crit_edge ], [ %i.b, %bb.b ]
  %.0.lcssa.i = phi i32 [ %.02.i, %.lr.ph.i.string_len.exit_crit_edge ], [ %2, %bb.b ]
  %.not = icmp ne i32 %.0.lcssa.i, 0
  %i.l = getelementptr i8, ptr %1, i64 %.pre-phi
  %i.m = getelementptr i8, ptr %i.l, i64 1        ; 4 uses
  %.not39 = icmp ult ptr %i.m, %i.c
  %or.cond = and i1 %.not, %.not39
  br i1 %or.cond, label %.preheader, label %string_len.exit.thread

.preheader:                                       ; preds = %string_len.exit
  %i.n = getelementptr i8, ptr %i.c, i64 -4       ; 3 uses
  %i.o = icmp ult ptr %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.03465 = phi ptr [ %i.t, %bb.e ], [ %i.m, %.preheader ] ; 4 uses
  %i.p = load i8, ptr %.03465, align 1
  switch i8 %i.p, label %bb.c [
    i8 13, label %string_len.exit.thread
    i8 10, label %string_len.exit.thread
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.q = tail call i32 @strncasecmp(ptr noundef %.03465, ptr noundef nonnull @.str, i64 noundef 4) #12
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %.03465, i64 4
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %.03465, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.t, %i.n
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.d
  %.1 = phi ptr [ %i.s, %bb.d ], [ %i.m, %.preheader ], [ %i.n, %bb.e ] ; 7 uses
  %i.u = icmp ult ptr %.1, %i.c
  br i1 %i.u, label %.lr.ph.i44, label %skp_epaddr_len.exit

.lr.ph.i44:                                       ; preds = %.loopexit, %bb.f
  %i.v = phi i32 [ %i.x, %bb.f ], [ 0, %.loopexit ] ; 2 uses
  %.025.i = phi ptr [ %i.y, %bb.f ], [ %.1, %.loopexit ] ; 3 uses
  %i.w = load i8, ptr %.025.i, align 1
  switch i8 %i.w, label %bb.f [
    i8 64, label %bb.g
    i8 10, label %skp_epaddr_len.exit
    i8 13, label %skp_epaddr_len.exit
  ]

bb.f:                                             ; preds = %.lr.ph.i44
  %i.x = add nuw nsw i32 %i.v, 1
  %i.y = getelementptr i8, ptr %.025.i, i64 1     ; 2 uses
  %exitcond.not.i45 = icmp eq ptr %i.y, %i.c
  br i1 %exitcond.not.i45, label %skp_epaddr_len.exit, label %.lr.ph.i44, !llvm.loop !13

bb.g:                                             ; preds = %.lr.ph.i44
  %i.z = getelementptr i8, ptr %.025.i, i64 1
  %i.aa = add nuw i32 %i.v, 1
  %i.ab = sext i32 %i.aa to i64
  br label %skp_epaddr_len.exit

skp_epaddr_len.exit:                              ; preds = %.lr.ph.i44, %.lr.ph.i44, %bb.f, %.loopexit, %bb.g
  %storemerge.i = phi i64 [ %i.ab, %bb.g ], [ 0, %.loopexit ], [ 0, %bb.f ], [ 0, %.lr.ph.i44 ], [ 0, %.lr.ph.i44 ]
  %.1.i = phi ptr [ %i.z, %bb.g ], [ %.1, %.loopexit ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i44 ], [ %.1, %.lr.ph.i44 ]
  %i.ac = tail call i32 @epaddr_len(ptr noundef readonly %0, ptr noundef %.1.i, ptr noundef nonnull %i.c, ptr nonnull poison) #12, !srcloc !14
  %.not40 = icmp eq i32 %i.ac, 0
  br i1 %.not40, label %string_len.exit.thread, label %bb.h

bb.h:                                             ; preds = %skp_epaddr_len.exit
  %i.ad = getelementptr i8, ptr %.1, i64 %storemerge.i ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not.i46 = icmp eq ptr %0, null
  br i1 %.not.i46, label %sip_parse_addr.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.a, align 8, !annotation !15
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ae = getelementptr i8, ptr %0, i64 50
  %.val.i = load i16, ptr %i.ae, align 2
  switch i16 %.val.i, label %bb.q [
    i16 2, label %bb.j
    i16 10, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %i.c to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = call i32 @in4_pton(ptr noundef %i.ad, i32 noundef %i.ai, ptr noundef %5, i32 noundef -1, ptr noundef nonnull %i.a) #14
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %sip_parse_addr.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.al = icmp ult ptr %i.ad, %i.c
  br i1 %i.al, label %bb.l, label %sip_parse_addr.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.am = load i8, ptr %i.ad, align 1
  %i.an = icmp eq i8 %i.am, 91
  br i1 %i.an, label %bb.m, label %sip_parse_addr.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %i.ad, i64 1      ; 2 uses
  %i.ap = ptrtoint ptr %i.c to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %i.at = call i32 @in6_pton(ptr noundef %i.ao, i32 noundef %i.as, ptr noundef %5, i32 noundef -1, ptr noundef nonnull %i.a) #14
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %sip_parse_addr.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.aw = icmp ult ptr %i.av, %i.c
  br i1 %i.aw, label %bb.o, label %sip_parse_addr.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ax = load i8, ptr %i.av, align 1
  %i.ay = icmp eq i8 %i.ax, 93
  br i1 %i.ay, label %bb.p, label %sip_parse_addr.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr i8, ptr %i.av, i64 1
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  tail call void asm sideeffect "1223: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1223b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1223) #13, !srcloc !16
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 176, i32 0, i64 16) #13, !srcloc !17
  unreachable

sip_parse_addr.exit.thread:                       ; preds = %bb.h, %bb.k, %bb.m, %bb.j, %bb.l, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %string_len.exit.thread

bb.r:                                             ; preds = %._crit_edge, %bb.p
  %i.ba = phi ptr [ %.pre, %._crit_edge ], [ %i.az, %bb.p ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not.i47 = icmp ult ptr %i.ba, %i.c
  br i1 %.not.i47, label %bb.s, label %string_len.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bb = load i8, ptr %i.ba, align 1
  %.not38.i = icmp eq i8 %i.bb, 58
  br i1 %.not38.i, label %.preheader.preheader.i, label %bb.t

.preheader.preheader.i:                           ; preds = %bb.s
  %.031.i = getelementptr i8, ptr %i.ba, i64 1    ; 2 uses
  %i.bc = icmp ult ptr %.031.i, %i.c
  br i1 %i.bc, label %bb.u, label %string_len.exit.thread

bb.t:                                             ; preds = %bb.s
  %.not43.i = icmp eq ptr %6, null
  br i1 %.not43.i, label %sip_parse_port.exit, label %sip_parse_port.exit.sink.split

bb.u:                                             ; preds = %.preheader.preheader.i
  %i.bd = load i8, ptr %.031.i, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -48                  ; 3 uses
  %i.bg = icmp ugt i32 %i.bf, 9
  br i1 %i.bg, label %string_len.exit.thread, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.u
  %.031.1.i = getelementptr i8, ptr %i.ba, i64 2  ; 3 uses
  %i.bh = icmp ult ptr %.031.1.i, %i.c
  br i1 %i.bh, label %bb.v, label %string_len.exit.thread

bb.v:                                             ; preds = %.preheader.1.i
  %i.bi = load i8, ptr %.031.1.i, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, -48                  ; 2 uses
  %i.bl = icmp ugt i32 %i.bk, 9
  br i1 %i.bl, label %.critedge.i, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.v
  %i.bm = mul nuw nsw i32 %i.bf, 10
  %i.bn = add nuw nsw i32 %i.bk, %i.bm            ; 2 uses
  %.031.2.i = getelementptr i8, ptr %i.ba, i64 3  ; 3 uses
  %i.bo = icmp ult ptr %.031.2.i, %i.c
  br i1 %i.bo, label %bb.w, label %string_len.exit.thread

bb.w:                                             ; preds = %.preheader.2.i
  %i.bp = load i8, ptr %.031.2.i, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nsw i32 %i.bq, -48                  ; 2 uses
  %i.bs = icmp ugt i32 %i.br, 9
  br i1 %i.bs, label %.critedge.i, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.w
  %i.bt = mul nuw nsw i32 %i.bn, 10
  %i.bu = add nuw nsw i32 %i.br, %i.bt            ; 2 uses
  %.031.3.i = getelementptr i8, ptr %i.ba, i64 4  ; 3 uses
  %i.bv = icmp ult ptr %.031.3.i, %i.c
  br i1 %i.bv, label %bb.x, label %string_len.exit.thread

bb.x:                                             ; preds = %.preheader.3.i
  %i.bw = load i8, ptr %.031.3.i, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ugt i32 %i.by, 9
  br i1 %i.bz, label %.critedge.i, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %bb.x
  %i.ca = mul nuw nsw i32 %i.bu, 10
  %i.cb = add nuw nsw i32 %i.by, %i.ca            ; 2 uses
  %.031.4.i = getelementptr i8, ptr %i.ba, i64 5  ; 3 uses
  %i.cc = icmp ult ptr %.031.4.i, %i.c
  br i1 %i.cc, label %bb.y, label %string_len.exit.thread

bb.y:                                             ; preds = %.preheader.4.i
  %i.cd = load i8, ptr %.031.4.i, align 1
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -48                  ; 2 uses
  %i.cg = icmp ugt i32 %i.cf, 9
  br i1 %i.cg, label %.critedge.i, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %bb.y
  %.031.5.i = getelementptr i8, ptr %i.ba, i64 6  ; 3 uses
  %i.ch = icmp ult ptr %.031.5.i, %i.c
  br i1 %i.ch, label %bb.z, label %string_len.exit.thread

bb.z:                                             ; preds = %.preheader.5.i
  %i.ci = mul nuw nsw i32 %i.cb, 10
  %i.cj = add nuw nsw i32 %i.cf, %i.ci
  %i.ck = load i8, ptr %.031.5.i, align 1
  %i.cl = add i8 %i.ck, -58
  %i.cm = icmp ult i8 %i.cl, -10
  br i1 %i.cm, label %.critedge.i, label %string_len.exit.thread

.critedge.i:                                      ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.029.lcssa57.i = phi i32 [ %i.cj, %bb.z ], [ %i.bf, %bb.v ], [ %i.bn, %bb.w ], [ %i.bu, %bb.x ], [ %i.cb, %bb.y ] ; 2 uses
  %.031.lcssa55.i = phi ptr [ %.031.5.i, %bb.z ], [ %.031.1.i, %bb.v ], [ %.031.2.i, %bb.w ], [ %.031.3.i, %bb.x ], [ %.031.4.i, %bb.y ] ; 2 uses
  %i.cn = add nsw i32 %.029.lcssa57.i, -65536
  %or.cond.i = icmp ult i32 %i.cn, -64512
  br i1 %or.cond.i, label %string_len.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i
  %.not41.i = icmp eq ptr %6, null
  br i1 %.not41.i, label %sip_parse_port.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = trunc nuw i32 %.029.lcssa57.i to i16
  %i.cp = call i16 @llvm.bswap.i16(i16 %i.co)
  br label %sip_parse_port.exit.sink.split

sip_parse_port.exit.sink.split:                   ; preds = %bb.t, %bb.ab
  %.sink = phi i16 [ %i.cp, %bb.ab ], [ -15341, %bb.t ]
  %.151.ph = phi ptr [ %.031.lcssa55.i, %bb.ab ], [ %i.ba, %bb.t ]
  store i16 %.sink, ptr %6, align 2
  br label %sip_parse_port.exit

sip_parse_port.exit:                              ; preds = %sip_parse_port.exit.sink.split, %bb.aa, %bb.t
  %.151 = phi ptr [ %i.ba, %bb.t ], [ %.031.lcssa55.i, %bb.aa ], [ %.151.ph, %sip_parse_port.exit.sink.split ] ; 2 uses
  %i.cq = icmp eq ptr %.151, %i.ad
end_hunk_0
begin_hunk_1_@epaddr_len:bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = trunc i64 %i.e to i32
  %i.g = call i32 @in4_pton(ptr noundef %1, i32 noundef %i.f, ptr noundef nonnull %4, i32 noundef -1, ptr noundef nonnull %i.a) #14
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %sip_parse_addr.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = icmp ult ptr %1, %2
  br i1 %i.i, label %bb.e, label %sip_parse_addr.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %1, align 1
  %i.k = icmp eq i8 %i.j, 91
  br i1 %i.k, label %bb.f, label %sip_parse_addr.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %1, i64 1          ; 2 uses
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = call i32 @in6_pton(ptr noundef %i.l, i32 noundef %i.p, ptr noundef nonnull %4, i32 noundef -1, ptr noundef nonnull %i.a) #14
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %sip_parse_addr.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.t = icmp ult ptr %i.s, %2
  br i1 %i.t, label %bb.h, label %sip_parse_addr.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = load i8, ptr %i.s, align 1
  %i.v = icmp eq i8 %i.u, 93
  br i1 %i.v, label %bb.i, label %sip_parse_addr.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.s, i64 1
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  tail call void asm sideeffect "1223: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1223b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1223) #13, !srcloc !16
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 176, i32 0, i64 16) #13, !srcloc !17
  unreachable

sip_parse_addr.exit.thread:                       ; preds = %bb.a, %bb.d, %bb.f, %bb.c, %bb.e, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %sip_parse_port.exit.thread

bb.k:                                             ; preds = %._crit_edge, %bb.i
  %i.x = phi ptr [ %.pre, %._crit_edge ], [ %i.w, %bb.i ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not.i4 = icmp ult ptr %i.x, %2
  br i1 %.not.i4, label %bb.l, label %sip_parse_port.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %i.x, align 1
  %.not38.i = icmp eq i8 %i.y, 58
  br i1 %.not38.i, label %.preheader.preheader.i, label %sip_parse_port.exit

.preheader.preheader.i:                           ; preds = %bb.l
  %.031.i = getelementptr i8, ptr %i.x, i64 1     ; 2 uses
  %i.z = icmp ult ptr %.031.i, %2
  br i1 %i.z, label %bb.m, label %sip_parse_port.exit.thread

bb.m:                                             ; preds = %.preheader.preheader.i
  %i.aa = load i8, ptr %.031.i, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 3 uses
  %i.ad = icmp ugt i32 %i.ac, 9
  br i1 %i.ad, label %sip_parse_port.exit.thread, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.m
  %.031.1.i = getelementptr i8, ptr %i.x, i64 2   ; 3 uses
  %i.ae = icmp ult ptr %.031.1.i, %2
  br i1 %i.ae, label %bb.n, label %sip_parse_port.exit.thread

bb.n:                                             ; preds = %.preheader.1.i
  %i.af = load i8, ptr %.031.1.i, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, 9
  br i1 %i.ai, label %.critedge.i, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.n
  %i.aj = mul nuw nsw i32 %i.ac, 10
  %i.ak = add nuw nsw i32 %i.ah, %i.aj            ; 2 uses
  %.031.2.i = getelementptr i8, ptr %i.x, i64 3   ; 3 uses
  %i.al = icmp ult ptr %.031.2.i, %2
  br i1 %i.al, label %bb.o, label %sip_parse_port.exit.thread

bb.o:                                             ; preds = %.preheader.2.i
  %i.am = load i8, ptr %.031.2.i, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -48                  ; 2 uses
  %i.ap = icmp ugt i32 %i.ao, 9
  br i1 %i.ap, label %.critedge.i, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.o
  %i.aq = mul nuw nsw i32 %i.ak, 10
  %i.ar = add nuw nsw i32 %i.ao, %i.aq            ; 2 uses
  %.031.3.i = getelementptr i8, ptr %i.x, i64 4   ; 3 uses
  %i.as = icmp ult ptr %.031.3.i, %2
  br i1 %i.as, label %bb.p, label %sip_parse_port.exit.thread

bb.p:                                             ; preds = %.preheader.3.i
  %i.at = load i8, ptr %.031.3.i, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 9
  br i1 %i.aw, label %.critedge.i, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %bb.p
  %i.ax = mul nuw nsw i32 %i.ar, 10
  %i.ay = add nuw nsw i32 %i.av, %i.ax            ; 2 uses
  %.031.4.i = getelementptr i8, ptr %i.x, i64 5   ; 3 uses
  %i.az = icmp ult ptr %.031.4.i, %2
  br i1 %i.az, label %bb.q, label %sip_parse_port.exit.thread

bb.q:                                             ; preds = %.preheader.4.i
  %i.ba = load i8, ptr %.031.4.i, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, 9
  br i1 %i.bd, label %.critedge.i, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %bb.q
  %.031.5.i = getelementptr i8, ptr %i.x, i64 6   ; 3 uses
  %i.be = icmp ult ptr %.031.5.i, %2
  br i1 %i.be, label %bb.r, label %sip_parse_port.exit.thread

bb.r:                                             ; preds = %.preheader.5.i
  %i.bf = mul nuw nsw i32 %i.ay, 10
  %i.bg = add nuw nsw i32 %i.bc, %i.bf
  %i.bh = load i8, ptr %.031.5.i, align 1
  %i.bi = add i8 %i.bh, -58
  %i.bj = icmp ult i8 %i.bi, -10
  br i1 %i.bj, label %.critedge.i, label %sip_parse_port.exit.thread

.critedge.i:                                      ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.029.lcssa57.i = phi i32 [ %i.bg, %bb.r ], [ %i.ac, %bb.n ], [ %i.ak, %bb.o ], [ %i.ar, %bb.p ], [ %i.ay, %bb.q ]
  %.031.lcssa55.i = phi ptr [ %.031.5.i, %bb.r ], [ %.031.1.i, %bb.n ], [ %.031.2.i, %bb.o ], [ %.031.3.i, %bb.p ], [ %.031.4.i, %bb.q ]
  %i.bk = add nsw i32 %.029.lcssa57.i, -65536
  %or.cond.i = icmp ult i32 %i.bk, -64512
  br i1 %or.cond.i, label %sip_parse_port.exit.thread, label %sip_parse_port.exit

sip_parse_port.exit:                              ; preds = %.critedge.i, %bb.l
  %.1 = phi ptr [ %i.x, %bb.l ], [ %.031.lcssa55.i, %.critedge.i ]
  %i.bl = ptrtoint ptr %.1 to i64
  %i.bm = ptrtoint ptr %1 to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  br label %sip_parse_port.exit.thread

sip_parse_port.exit.thread:                       ; preds = %.preheader.4.i, %.preheader.5.i, %bb.r, %.preheader.preheader.i, %.preheader.2.i, %.critedge.i, %bb.m, %.preheader.3.i, %bb.k, %.preheader.1.i, %sip_parse_addr.exit.thread, %sip_parse_port.exit
  %.0 = phi i32 [ %i.bo, %sip_parse_port.exit ], [ 0, %sip_parse_addr.exit.thread ], [ 0, %.preheader.1.i ], [ 0, %bb.k ], [ 0, %.preheader.3.i ], [ 0, %bb.m ], [ 0, %.critedge.i ], [ 0, %.preheader.2.i ], [ 0, %.preheader.preheader.i ], [ 0, %bb.r ], [ 0, %.preheader.5.i ], [ 0, %.preheader.4.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @in4_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define internal i32 @digits_len(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree readnone captures(none) %3) #3 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = trunc i64 %i.b to i32
  %i.e = trunc i64 %i.c to i32
  %i.f = sub i32 %i.d, %i.e
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.07 = phi i32 [ %i.k, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.056 = phi ptr [ %i.j, %bb.b ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.g = load i8, ptr %.056, align 1
  %i.h = add i8 %i.g, -58
  %i.i = icmp ult i8 %i.h, -10
  br i1 %i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %.056, i64 1       ; 2 uses
  %i.k = add nuw nsw i32 %.07, 1
  %exitcond.not = icmp eq ptr %i.j, %2
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !28

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ], [ %.07, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define internal i32 @callid_len(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree readnone captures(none) %3) #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @word_len(ptr noundef %1, ptr noundef %2) #12, !srcloc !29 ; 5 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr i8, ptr %1, i64 %i.b       ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  %i.d = icmp eq ptr %i.c, %2
  %or.cond = or i1 %.not, %i.d
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1
  %.not20 = icmp eq i8 %i.e, 64
  br i1 %.not20, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 1
  %i.g = tail call fastcc i32 @word_len(ptr noundef %i.f, ptr noundef %2) #12, !srcloc !30 ; 2 uses
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i32 %i.a, 1
  %i.i = add i32 %i.h, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.i, %bb.d ], [ %i.a, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define internal fastcc i32 @word_len(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = trunc i64 %i.b to i32
  %i.e = trunc i64 %i.c to i32
  %i.f = sub i32 %i.d, %i.e
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.09 = phi i32 [ %i.n, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.058 = phi ptr [ %i.m, %bb.c ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.g = load i8, ptr %.058, align 1              ; 4 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr i8, ptr @_ctype, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %.fr70.i = freeze i8 %i.j
  %i.k = and i8 %.fr70.i, 7
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %switch.early.test.i, label %bb.c

switch.early.test.i:                              ; preds = %.lr.ph
  switch i8 %i.g, label %bb.b [
    i8 37, label %bb.c
    i8 34, label %bb.c
    i8 33, label %bb.c
  ]

bb.b:                                             ; preds = %switch.early.test.i
  %i.l = and i8 %i.g, -4
  %or.cond11.i = icmp eq i8 %i.l, 40
  br i1 %or.cond11.i, label %bb.c, label %switch.early.test69.i

switch.early.test69.i:                            ; preds = %bb.b
  switch i8 %i.g, label %.critedge [
    i8 63, label %bb.c
    i8 62, label %bb.c
    i8 60, label %bb.c
    i8 58, label %bb.c
    i8 126, label %bb.c
    i8 125, label %bb.c
    i8 123, label %bb.c
    i8 96, label %bb.c
    i8 95, label %bb.c
    i8 93, label %bb.c
    i8 92, label %bb.c
    i8 91, label %bb.c
    i8 47, label %bb.c
    i8 46, label %bb.c
    i8 45, label %bb.c
    i8 39, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %switch.early.test69.i, %bb.b, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.lr.ph
  %i.m = getelementptr i8, ptr %.058, i64 1       ; 2 uses
  %i.n = add nuw nsw i32 %.09, 1
  %exitcond.not = icmp eq ptr %i.m, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !31

.critedge:                                        ; preds = %bb.c, %switch.early.test69.i, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.09, %switch.early.test69.i ], [ %i.f, %bb.c ]
  ret i32 %.0.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sdp_addr_len(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %union.nf_inet_addr, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !annotation !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.b = getelementptr i8, ptr %0, i64 50
  %.val.i = load i16, ptr %i.b, align 2
  switch i16 %.val.i, label %bb.d [
    i16 2, label %bb.b
    i16 10, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = trunc i64 %i.e to i32
  %i.g = call i32 @in4_pton(ptr noundef %1, i32 noundef %i.f, ptr noundef nonnull %4, i32 noundef -1, ptr noundef nonnull %i.a) #14
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %2 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = call i32 @in6_pton(ptr noundef %1, i32 noundef %i.k, ptr noundef nonnull %4, i32 noundef -1, ptr noundef nonnull %i.a) #14
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "1231: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1231b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1231) #13, !srcloc !32
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 741, i32 0, i64 16) #13, !srcloc !33
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.l, %bb.c ]
  %i.m = icmp eq i32 %.0.i, 0
  br i1 %i.m, label %bb.f, label %sdp_parse_addr.exit

sdp_parse_addr.exit:                              ; preds = %bb.e
  %i.n = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %sdp_parse_addr.exit, %bb.f
  %i.s = phi i32 [ 0, %bb.f ], [ %i.r, %sdp_parse_addr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.s
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define internal i32 @media_len(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree readnone captures(none) %3) #3 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph.preheader.i, label %string_len.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = trunc i64 %i.b to i32
  %i.e = trunc i64 %i.c to i32
  %i.f = sub i32 %i.d, %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.02.i = phi i32 [ %i.m, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.051.i = phi ptr [ %i.l, %bb.b ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %i.g = load i8, ptr %.051.i, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr i8, ptr @_ctype, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 3
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %string_len.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %.051.i, i64 1     ; 2 uses
  %i.m = add nuw nsw i32 %.02.i, 1
  %exitcond.not.i = icmp eq ptr %i.l, %2
  br i1 %exitcond.not.i, label %string_len.exit, label %.lr.ph.i, !llvm.loop !10

string_len.exit:                                  ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.02.i, %.lr.ph.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.n = sext i32 %.0.lcssa.i to i64
  %i.o = getelementptr i8, ptr %1, i64 %i.n       ; 3 uses
  %.not = icmp ult ptr %i.o, %2
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %string_len.exit
  %i.p = load i8, ptr %i.o, align 1
  %.not18 = icmp eq i8 %i.p, 32
  br i1 %.not18, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = add i32 %.0.lcssa.i, 1
  %i.r = getelementptr i8, ptr %i.o, i64 1        ; 3 uses
  %i.s = icmp ult ptr %i.r, %2
  br i1 %i.s, label %.lr.ph.preheader.i20, label %digits_len.exit

.lr.ph.preheader.i20:                             ; preds = %bb.d
  %i.t = ptrtoaddr ptr %2 to i64
  %i.u = ptrtoaddr ptr %i.r to i64
  %i.v = trunc i64 %i.t to i32
  %i.w = trunc i64 %i.u to i32
  %i.x = sub i32 %i.v, %i.w
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %bb.e, %.lr.ph.preheader.i20
  %.07.i = phi i32 [ %i.ac, %bb.e ], [ 0, %.lr.ph.preheader.i20 ] ; 2 uses
  %.056.i = phi ptr [ %i.ab, %bb.e ], [ %i.r, %.lr.ph.preheader.i20 ] ; 2 uses
  %i.y = load i8, ptr %.056.i, align 1
  %i.z = add i8 %i.y, -58
  %i.aa = icmp ult i8 %i.z, -10
  br i1 %i.aa, label %digits_len.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i21
  %i.ab = getelementptr i8, ptr %.056.i, i64 1    ; 2 uses
  %i.ac = add nuw nsw i32 %.07.i, 1
  %exitcond.not.i22 = icmp eq ptr %i.ab, %2
  br i1 %exitcond.not.i22, label %digits_len.exit, label %.lr.ph.i21, !llvm.loop !28

digits_len.exit:                                  ; preds = %.lr.ph.i21, %bb.e, %bb.d
  %.0.lcssa.i19 = phi i32 [ 0, %bb.d ], [ %.07.i, %.lr.ph.i21 ], [ %i.x, %bb.e ]
  %i.ad = add i32 %i.q, %.0.lcssa.i19
  br label %bb.f

bb.f:                                             ; preds = %string_len.exit, %bb.c, %digits_len.exit
  %.0 = phi i32 [ %i.ad, %digits_len.exit ], [ 0, %bb.c ], [ 0, %string_len.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_ct_helper_init(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sip_help_udp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = add i32 %1, 8                            ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp ult i32 %i.c, %i.e
  br i1 %.not, label %bb.b, label %skb_linearize.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @sip_timeout, align 4
  %i.g = mul i32 %i.f, 1000
  tail call void @__nf_ct_refresh_acct(ptr noundef %2, i32 noundef 0, i32 noundef %i.g, i32 noundef 0) #14
  %i.h = getelementptr i8, ptr %0, i64 116
  %.val.i = load i32, ptr %i.h, align 4           ; 2 uses
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %.val.i) #14
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %skb_linearize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = zext i32 %i.c to i64
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  store ptr %i.m, ptr %i.b, align 8
  %i.n = load i32, ptr %i.d, align 8
  %i.o = sub i32 %i.n, %i.c                       ; 2 uses
  store i32 %i.o, ptr %i.a, align 4
  %i.p = icmp ult i32 %i.o, 11
  br i1 %i.p, label %skb_linearize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call fastcc i32 @process_sip_msg(ptr noundef %0, ptr noundef %2, i32 noundef %1, i32 noundef %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #12, !srcloc !34
  br label %skb_linearize.exit

skb_linearize.exit:                               ; preds = %bb.c, %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ %i.q, %bb.e ], [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sip_help_tcp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.tcphdr, align 4             ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  switch i32 %3, label %skb_linearize.exit [
    i32 3, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i64 20, i1 false), !annotation !15
  store i32 0, ptr %i.c, align 4, !annotation !15
  %i.e = getelementptr i8, ptr %0, i64 208        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 112        ; 3 uses
  %.val = load i32, ptr %i.f, align 8             ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 116        ; 2 uses
  %.val66 = load i32, ptr %i.g, align 4
  %i.h = add i32 %1, %.val66
  %i.i = sub i32 %.val, %i.h
  %i.j = icmp sgt i32 %i.i, 19
  br i1 %i.j, label %__skb_header_pointer.exit, label %bb.c, !prof !35

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %skb_linearize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 20) #14
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %skb_linearize.exit, label %.__skb_header_pointer.exit.thread74_crit_edge, !prof !36

.__skb_header_pointer.exit.thread74_crit_edge:    ; preds = %bb.d
  %.pre = load i32, ptr %i.f, align 8
  br label %__skb_header_pointer.exit.thread74

__skb_header_pointer.exit:                        ; preds = %bb.b
  %i.m = load ptr, ptr %i.e, align 8
  %i.n = sext i32 %1 to i64
  %i.o = getelementptr i8, ptr %i.m, i64 %i.n     ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %skb_linearize.exit, label %__skb_header_pointer.exit.thread74

__skb_header_pointer.exit.thread74:               ; preds = %.__skb_header_pointer.exit.thread74_crit_edge, %__skb_header_pointer.exit
  %i.q = phi i32 [ %.val, %__skb_header_pointer.exit ], [ %.pre, %.__skb_header_pointer.exit.thread74_crit_edge ]
  %.0.i76 = phi ptr [ %i.o, %__skb_header_pointer.exit ], [ %4, %.__skb_header_pointer.exit.thread74_crit_edge ]
  %i.r = getelementptr i8, ptr %.0.i76, i64 12
  %i.s = load i16, ptr %i.r, align 4
  %i.t = lshr i16 %i.s, 2
  %i.u = and i16 %i.t, 60
  %i.v = zext nneg i16 %i.u to i32
  %i.w = add i32 %1, %i.v                         ; 4 uses
  %.not = icmp ult i32 %i.w, %i.q
  br i1 %.not, label %bb.e, label %skb_linearize.exit

bb.e:                                             ; preds = %__skb_header_pointer.exit.thread74
  %i.x = load i32, ptr @sip_timeout, align 4
  %i.y = mul i32 %i.x, 1000
  call void @__nf_ct_refresh_acct(ptr noundef %2, i32 noundef 0, i32 noundef %i.y, i32 noundef 0) #14
  %.val.i = load i32, ptr %i.g, align 4           ; 2 uses
  %.not.i67 = icmp eq i32 %.val.i, 0
  br i1 %.not.i67, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %.val.i) #14
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %skb_linearize.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = zext i32 %i.w to i64
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab  ; 2 uses
  store ptr %i.ac, ptr %i.d, align 8
  %i.ad = load i32, ptr %i.f, align 8
  %i.ae = sub i32 %i.ad, %i.w                     ; 3 uses
  %i.af = icmp ult i32 %i.ae, 11
  br i1 %i.af, label %skb_linearize.exit, label %.preheader86

.preheader86:                                     ; preds = %bb.g
  store i32 0, ptr %i.a, align 4, !annotation !15
  store i32 0, ptr %i.b, align 4, !annotation !15
  %i.ag = call i32 @ct_sip_get_header(ptr noundef %2, ptr noundef %i.ac, i32 noundef 0, i32 noundef %i.ae, i32 noundef 7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %sip_strtouint.exit.thread, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader86, %bb.q
  %.04898 = phi i32 [ %i.ce, %bb.q ], [ %i.w, %.preheader86 ] ; 2 uses
  %.05197 = phi i32 [ %i.cd, %bb.q ], [ 0, %.preheader86 ] ; 7 uses
  %.05296 = phi i32 [ %i.ci, %bb.q ], [ %i.ae, %.preheader86 ] ; 5 uses
  %i.ai = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.aj = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %i.ai, i64 %i.ak  ; 3 uses
  %i.am = sub i32 %.05296, %i.aj                  ; 4 uses
  %.not43.i = icmp eq i32 %i.am, 0
  br i1 %.not43.i, label %sip_strtouint.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph99
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.am, i32 11)
  %i.an = zext i32 %i.am to i64
  %scevgep.i = getelementptr i8, ptr %i.al, i64 %i.an
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.02147.i = phi i64 [ %i.av, %bb.j ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.02246.i = phi ptr [ %i.ax, %bb.j ], [ %i.al, %.lr.ph.preheader.i ] ; 3 uses
  %.02445.i = phi i32 [ %i.az, %bb.j ], [ %i.am, %.lr.ph.preheader.i ]
  %.02744.i = phi i32 [ %i.ay, %bb.j ], [ %spec.store.select.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ao = load i8, ptr %.02246.i, align 1         ; 2 uses
  %i.ap = add i8 %i.ao, -58
  %i.aq = icmp ult i8 %i.ap, -10
  br i1 %i.aq, label %sip_strtouint.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ar = icmp eq i32 %.02744.i, 0
  br i1 %i.ar, label %sip_strtouint.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = mul i64 %.02147.i, 10
  %i.at = and i8 %i.ao, 15
  %i.au = zext nneg i8 %i.at to i64
  %i.av = add i64 %i.as, %i.au                    ; 3 uses
  %i.aw = icmp ugt i64 %i.av, 4294967295
end_hunk_1
