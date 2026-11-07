Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.070?download=true
inline.NumInlined: 575
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvYNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss_1__NtBa_13ClusterConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB16_7Visitor12visit_stringNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBc_:bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB7_8Settings3new0B9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [96 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCshE3sgg5Qsfb_6config4fileINtB5_4FileNtNtNtB5_6source4file14FileSourceFileNtNtB5_6format10FileFormatE9with_name(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  invoke void @_RNvXs4_NtCshE3sgg5Qsfb_6config4fileINtB5_4FileNtNtNtB5_6source4file14FileSourceFileNtNtB5_6format10FileFormatENtNtB7_6source6Source7collectCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshE3sgg5Qsfb_6config4file4FileNtNtNtBE_6source4file14FileSourceFileNtNtBE_6format10FileFormatEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #18
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load i64, ptr %i.d, align 8, !range !16, !noundef !6
  %i.f = icmp eq i64 %i.e, -2                     ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueENtNtB2x_5error11ConfigErrorEECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueENtNtB2x_5error11ConfigErrorEECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueENtNtB2x_5error11ConfigErrorEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d, %bb.e
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshE3sgg5Qsfb_6config4file4FileNtNtNtBE_6source4file14FileSourceFileNtNtBE_6format10FileFormatEECsl8OoimOLbh_6qdrant.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueENtNtB2x_5error11ConfigErrorEECsl8OoimOLbh_6qdrant.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshE3sgg5Qsfb_6config4file4FileNtNtNtBE_6source4file14FileSourceFileNtNtBE_6format10FileFormatEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueENtNtB2x_5error11ConfigErrorEECsl8OoimOLbh_6qdrant.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.f

bb.h:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8Settings17validate_and_warn(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2048) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [96 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [96 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [96 x i8], align 8                ; 7 uses
  %i.q = alloca [96 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [96 x i8], align 8                ; 7 uses
  %i.u = alloca [96 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [96 x i8], align 8                ; 7 uses
  %i.y = alloca [48 x i8], align 8                ; 10 uses
  %i.z = alloca [96 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [96 x i8], align 8               ; 7 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [40 x i8], align 8               ; 6 uses
  %i.af = alloca [40 x i8], align 8               ; 6 uses
  %i.ag = alloca [48 x i8], align 8               ; 5 uses
  %i.ah = alloca [40 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [48 x i8], align 8               ; 5 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [96 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [96 x i8], align 8               ; 7 uses
  %i.aq = alloca [96 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [96 x i8], align 8               ; 7 uses
  %i.au = alloca [96 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [96 x i8], align 8               ; 8 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [48 x i8], align 8               ; 14 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [96 x i8], align 8               ; 4 uses
  %i.bd = alloca [96 x i8], align 8               ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [96 x i8], align 8               ; 6 uses
  %i.bh = alloca [96 x i8], align 8               ; 5 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [96 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [96 x i8], align 8               ; 7 uses
  %i.bn = alloca [96 x i8], align 8               ; 4 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [96 x i8], align 8               ; 7 uses
  %i.br = alloca [96 x i8], align 8               ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
  %i.bu = alloca [96 x i8], align 8               ; 7 uses
  %i.bv = alloca [96 x i8], align 8               ; 4 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [96 x i8], align 8               ; 7 uses
  %i.bz = alloca [48 x i8], align 8               ; 12 uses
  %i.ca = alloca [40 x i8], align 8               ; 6 uses
  %i.cb = alloca [40 x i8], align 8               ; 6 uses
  %i.cc = alloca [40 x i8], align 8               ; 6 uses
  %i.cd = alloca [40 x i8], align 8               ; 6 uses
  %i.ce = alloca [40 x i8], align 8               ; 6 uses
  %i.cf = alloca [48 x i8], align 8               ; 5 uses
  %i.cg = alloca [40 x i8], align 8               ; 8 uses
  %i.ch = alloca [24 x i8], align 8               ; 7 uses
  %i.ci = alloca [48 x i8], align 8               ; 5 uses
  %i.cj = alloca [40 x i8], align 8               ; 8 uses
  %i.ck = alloca [24 x i8], align 8               ; 7 uses
  %i.cl = alloca [48 x i8], align 8               ; 5 uses
  %i.cm = alloca [40 x i8], align 8               ; 8 uses
  %i.cn = alloca [24 x i8], align 8               ; 7 uses
  %i.co = alloca [48 x i8], align 8               ; 5 uses
  %i.cp = alloca [40 x i8], align 8               ; 8 uses
  %i.cq = alloca [24 x i8], align 8               ; 7 uses
  %i.cr = alloca [48 x i8], align 8               ; 4 uses
  %i.cs = alloca [40 x i8], align 8               ; 8 uses
  %i.ct = alloca [24 x i8], align 8               ; 7 uses
  %i.cu = alloca [48 x i8], align 8               ; 18 uses
  %i.cv = alloca [40 x i8], align 8               ; 8 uses
  %i.cw = alloca [16 x i8], align 8               ; 5 uses
  %i.cx = alloca [8 x i8], align 8                ; 4 uses
  %i.cy = alloca [40 x i8], align 8               ; 8 uses
  %i.cz = alloca [16 x i8], align 8               ; 5 uses
  %i.da = alloca [8 x i8], align 8                ; 4 uses
  %i.db = alloca [48 x i8], align 8               ; 7 uses
  %i.dc = alloca [40 x i8], align 8               ; 8 uses
  %i.dd = alloca [16 x i8], align 8               ; 5 uses
  %i.de = alloca [40 x i8], align 8               ; 8 uses
  %i.df = alloca [72 x i8], align 8               ; 10 uses
  %i.dg = alloca [40 x i8], align 8               ; 16 uses
  %i.dh = alloca [16 x i8], align 8               ; 13 uses
  %i.di = alloca [16 x i8], align 8               ; 13 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  store ptr @12, ptr %i.di, align 8, !captures !687
  store i64 7, ptr %i.dm, align 8
  %i.dr = load i64, ptr %i.dj, align 8, !range !5, !noundef !6 ; 2 uses
  %.not132 = icmp ne i64 %i.dr, -1
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = icmp eq i64 %i.dt, 0
  %or.cond = select i1 %.not132, i1 %i.du, i1 false
  br i1 %or.cond, label %bb.iq, label %bb.ik

_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReRINtNtBb_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEEE4nextCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.in, %bb.io, %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  %.not127 = icmp eq i64 %i.dr, -1                ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = icmp eq i64 %i.dw, 0
  %.sroa.3.0 = select i1 %.not127, i1 true, i1 %i.dx
  %.pre149 = load i64, ptr %i.dk, align 8, !range !5 ; 2 uses
  br i1 %.sroa.3.0, label %bb.b, label %.split.preheader.i.i.i.i

bb.b:                                             ; preds = %_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReRINtNtBb_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEEE4nextCsl8OoimOLbh_6qdrant.exit.thread
  %.not128 = icmp eq i64 %.pre149, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = icmp eq i64 %i.dz, 0
  %.sroa.318.0 = select i1 %.not128, i1 true, i1 %i.ea
  br label %.split.preheader.i.i.i.i

.split.preheader.i.i.i.i:                         ; preds = %bb.b, %_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReRINtNtBb_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEEE4nextCsl8OoimOLbh_6qdrant.exit.thread
  %.sroa.013.0 = phi i1 [ %.sroa.318.0, %bb.b ], [ false, %_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReRINtNtBb_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEEE4nextCsl8OoimOLbh_6qdrant.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  %. = select i1 %.not127, ptr null, ptr %i.dj
  %.not130 = icmp eq i64 %.pre149, -1             ; 2 uses
  %.sroa.028.0 = select i1 %.not130, ptr null, ptr %i.dk
  store i64 1, ptr %i.df, align 8
  %.sroa.0105.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i64 2, ptr %.sroa.0105.sroa.5.0..sroa_idx, align 8
  %.sroa.0105.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store ptr %., ptr %.sroa.0105.sroa.6.0..sroa_idx, align 8
  %.sroa.0105.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  store ptr %.sroa.028.0, ptr %.sroa.0105.sroa.7.0..sroa_idx, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  store i64 0, ptr %.sroa.4106.0..sroa_idx, align 8
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  store i64 0, ptr %.sroa.6108.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %brmerge.not = select i1 %.not127, i1 %.not130, i1 false
  br i1 %brmerge.not, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_7flatten7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEKj2_EENCNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB2X_8Settings17validate_and_warn0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3minEB2Z_.exit, label %bb.c

bb.c:                                             ; preds = %.split.preheader.i.i.i.i
  %.mux158 = select i1 %.not127, ptr %i.dk, ptr %i.dj
  %.mux = select i1 %.not127, i64 2, i64 1
  %.sroa.0105.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %.mux, ptr %.sroa.0105.sroa.4.0..sroa_idx, align 8, !alias.scope !690
  %i.eb = getelementptr i8, ptr %.mux158, i64 16
  %.val.i.i = load i64, ptr %i.eb, align 8, !noalias !691, !noundef !6 ; 2 uses
  %i.ec = icmp sgt i64 %.val.i.i, -1
  call void @llvm.assume(i1 %i.ec)
  %i.ed = call noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEKj2_EENCNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB33_8Settings17validate_and_warn0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3minEB35_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.df, i64 noundef %.val.i.i)
  %i.ee = icmp ult i64 %i.ed, 32
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_7flatten7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEKj2_EENCNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB2X_8Settings17validate_and_warn0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3minEB2Z_.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_7flatten7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEKj2_EENCNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB2X_8Settings17validate_and_warn0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3minEB2Z_.exit: ; preds = %.split.preheader.i.i.i.i, %bb.c
  %.sroa.3.0.i = phi i1 [ %i.ee, %bb.c ], [ true, %.split.preheader.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1494
  %i.eg = load i8, ptr %i.ef, align 2, !range !692, !noundef !6
  %i.eh = and i8 %i.eg, 1
  %or.cond.not = icmp eq i8 %i.eh, 0
  br i1 %or.cond.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_7flatten7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEKj2_EENCNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB2X_8Settings17validate_and_warn0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3minEB2Z_.exit
  br i1 %.sroa.013.0, label %bb.id, label %bb.ic

bb.e:                                             ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_7flatten7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEKj2_EENCNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB2X_8Settings17validate_and_warn0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3minEB2Z_.exit, %bb.ig, %bb.id, %bb.if, %bb.ie, %bb.ic
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.ej = load ptr, ptr %i.ei, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.el = load i64, ptr %i.ek, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx
  %i.en = icmp eq i64 %i.el, 0
  br i1 %i.en, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsl8OoimOLbh_6qdrant8settings6LogMsgENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNvMs2_BS_BQ_3logEBU_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  br label %bb.f

bb.f:                                             ; preds = %_RNvYNvMs2_NtCsl8OoimOLbh_6qdrant8settingsNtB8_6LogMsg3logINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRBD_EE8call_mutBa_.exit.i, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %i.ej, %.lr.ph.i ], [ %i.ew, %_RNvYNvMs2_NtCsl8OoimOLbh_6qdrant8settingsNtB8_6LogMsg3logINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRBD_EE8call_mutBa_.exit.i ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %i.ex = load i64, ptr %.sroa.0.02.i, align 8, !range !10, !alias.scope !695, !noundef !6
  %i.ey = trunc nuw i64 %i.ex to i1
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8 ; 2 uses
  br i1 %i.ey, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !695
  store ptr %i.ez, ptr %i.cx, align 8, !noalias !695
  %i.fa = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !695 ; 2 uses
  %i.fb = icmp ult i64 %i.fa, 6
  call void @llvm.assume(i1 %i.fb)
  %.not.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !695
  store ptr %i.ez, ptr %i.da, align 8, !noalias !695
  %i.fc = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !695 ; 2 uses
  %i.fd = icmp ult i64 %i.fc, 6
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp samesign ugt i64 %i.fc, 1
  br i1 %i.fe, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !695
  store ptr %i.da, ptr %i.cz, align 8, !noalias !695
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !695
  store ptr @98, ptr %i.cy, align 8, !noalias !695
  store i64 16, ptr %i.eo, align 8, !noalias !695
  store ptr @98, ptr %i.ep, align 8, !noalias !695
  store i64 16, ptr %i.eq, align 8, !noalias !695
  store ptr @114, ptr %i.er, align 8, !noalias !695
  call void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @113, ptr noundef nonnull %i.cz, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !695
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !695
  br label %_RNvYNvMs2_NtCsl8OoimOLbh_6qdrant8settingsNtB8_6LogMsg3logINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRBD_EE8call_mutBa_.exit.i

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !695
  store ptr %i.cx, ptr %i.cw, align 8, !noalias !695
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !695
  store ptr @98, ptr %i.cv, align 8, !noalias !695
  store i64 16, ptr %i.es, align 8, !noalias !695
  store ptr @98, ptr %i.et, align 8, !noalias !695
  store i64 16, ptr %i.eu, align 8, !noalias !695
  store ptr @115, ptr %i.ev, align 8, !noalias !695
  call void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @113, ptr noundef nonnull %i.cw, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !695
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !695
  br label %_RNvYNvMs2_NtCsl8OoimOLbh_6qdrant8settingsNtB8_6LogMsg3logINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRBD_EE8call_mutBa_.exit.i

_RNvYNvMs2_NtCsl8OoimOLbh_6qdrant8settingsNtB8_6LogMsg3logINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRBD_EE8call_mutBa_.exit.i: ; preds = %bb.l, %bb.j
  %i.ff = icmp eq ptr %i.ew, %i.em
  br i1 %i.ff, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsl8OoimOLbh_6qdrant8settings6LogMsgENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNvMs2_BS_BQ_3logEBU_.exit, label %bb.f

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsl8OoimOLbh_6qdrant8settings6LogMsgENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNvMs2_BS_BQ_3logEBU_.exit: ; preds = %_RNvYNvMs2_NtCsl8OoimOLbh_6qdrant8settingsNtB8_6LogMsg3logINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRBD_EE8call_mutBa_.exit.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !698
  call void @_RNvMs0_NtCs1cB7FFWPEsq_9validator5typesNtB5_16ValidationErrors3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cu), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !698
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @45, ptr %i.fg, align 8, !noalias !698
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 7, ptr %i.fh, align 8, !noalias !698
  store i64 -1, ptr %i.ct, align 8, !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !698
  invoke void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ct)
          to label %bb.n unwind label %bb.m, !noalias !698

.body.i.i:                                        ; preds = %bb.ia, %.body54.i.i, %bb.ha, %.body40.i.i, %bb.gb, %.body28.i.i, %bb.cc, %.body13.i.i, %bb.v, %bb.r, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.fn, %bb.r ], [ %eh.lpad-body55.i.i, %.body54.i.i ], [ %eh.lpad-body41.i.i, %.body40.i.i ], [ %eh.lpad-body29.i.i, %.body28.i.i ], [ %eh.lpad-body14.i.i, %.body13.i.i ], [ %i.nm, %bb.ha ], [ %i.fr, %bb.v ], [ %i.ji, %bb.cc ], [ %i.mq, %bb.gb ], [ %i.fi, %bb.m ], [ %i.ok, %bb.ia ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cu)
          to label %common.resume unwind label %bb.hc, !noalias !699

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i58.i.i, %bb.hd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i44.i.i, %bb.gd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i31.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i16.i.i, %bb.bx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.q, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsl8OoimOLbh_6qdrant8settings6LogMsgENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNvMs2_BS_BQ_3logEBU_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.n:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsl8OoimOLbh_6qdrant8settings6LogMsgENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNvMs2_BS_BQ_3logEBU_.exit
  %i.fj = load i64, ptr %i.ce, align 8, !range !7, !noalias !698, !noundef !6
  %.not.i.i = icmp eq i64 %i.fj, -2
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.ce, i64 40, i1 false), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !698
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke void @_RNvXs6_NtCsgGgPqgSfnMH_7storage5typesNtB5_13StorageConfigNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1080) %i.fk)
          to label %bb.s unwind label %bb.r, !noalias !699

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !698
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map11VacantEntryINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEECsl8OoimOLbh_6qdrant.exit.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !698
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr @46, ptr %i.fl, align 8, !noalias !698
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 7, ptr %i.fm, align 8, !noalias !698
  store i64 -1, ptr %i.cq, align 8, !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !698
  invoke void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cd, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cq)
          to label %bb.x unwind label %bb.m, !noalias !699

bb.r:                                             ; preds = %bb.s, %bb.o
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map11VacantEntryINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cs) #18
          to label %.body.i.i unwind label %bb.hc, !noalias !699

bb.s:                                             ; preds = %bb.o
  %i.fo = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCs1cB7FFWPEsq_9validator5typesNtB5_16ValidationErrors10merge_self(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.cr)
          to label %bb.t unwind label %bb.r, !noalias !699 ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !698
  %i.fp = load i64, ptr %i.cs, align 8, !range !5, !alias.scope !700, !noalias !698, !noundef !6
  %i.fq = icmp eq i64 %i.fp, -1
  br i1 %i.fq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map11VacantEntryINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEECsl8OoimOLbh_6qdrant.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.v, !noalias !699

bb.v:                                             ; preds = %bb.u
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs)
          to label %.body.i.i unwind label %bb.w, !noalias !699

bb.w:                                             ; preds = %bb.v
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !699
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map11VacantEntryINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.m, !noalias !699

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map11VacantEntryINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !698
  br label %bb.q

bb.x:                                             ; preds = %bb.q
end_hunk_0
