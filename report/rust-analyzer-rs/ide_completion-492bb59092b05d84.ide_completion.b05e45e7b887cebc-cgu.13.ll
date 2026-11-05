Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.13?download=true
inline.NumInlined: 1304
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function13render_method:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.g, align 8
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCsf8NQSppxkmK_14ide_completion6render8function13render_method10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.h, label %bb.c [
    i8 0, label %.thread29
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !42

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCsf8NQSppxkmK_14ide_completion6render8function13render_method10___CALLSITE)
          to label %bb.e unwind label %.thread26  ; 2 uses

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.e
  %.sroa.05.0 = phi i8 [ %i.i, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.b ]
  %i.j = load ptr, ptr @_RNvNvNtNtCsf8NQSppxkmK_14ide_completion6render8function13render_method10___CALLSITE, align 8, !nonnull !16, !align !24, !noundef !16
  %i.k = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.j, i8 noundef %.sroa.05.0)
          to label %bb.f unwind label %.thread26

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %.thread29, label %bb.d

bb.f:                                             ; preds = %bb.d
  br i1 %i.k, label %bb.g, label %.thread29

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @_RNvNvNtNtCsf8NQSppxkmK_14ide_completion6render8function13render_method10___CALLSITE, align 8, !nonnull !16, !align !24, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.m, ptr %i.n, align 8
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.h unwind label %.thread26

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pr = load i64, ptr %i.b, align 8, !alias.scope !1094
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %bb.l unwind label %bb.j, !noalias !1095

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #32
          to label %.thread21 unwind label %bb.k, !noalias !1095

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !1095
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.h, %.thread29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.r, align 8
  invoke fastcc void @_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6render(ptr noalias nofree noundef align 8 captures(none) dereferenceable(360) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %1, ptr noundef %4, ptr noalias nofree noundef align 4 captures(address) dereferenceable(12) %5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #32
          to label %.critedge17 unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %.thread21, %.critedge, %bb.p, %bb.m
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

.thread21:                                        ; preds = %bb.j, %.thread26
  %eh.lpad-body25 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread26 ], [ %i.p, %bb.j ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsf8NQSppxkmK_14ide_completion(ptr %4) #32
          to label %bb.p unwind label %bb.o

bb.p:                                             ; preds = %.thread21
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #32
          to label %.critedge unwind label %bb.o

.critedge17:                                      ; preds = %bb.m, %.critedge
  %.pn20 = phi { ptr, i32 } [ %eh.lpad-body25, %.critedge ], [ %i.s, %bb.m ]
  resume { ptr, i32 } %.pn20

.critedge:                                        ; preds = %bb.p
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion6render13RenderContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(128) %1) #32
          to label %.critedge17 unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6render(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(360) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(128) %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 4 captures(address) dead_on_return dereferenceable(12) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1282 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [64 x i8], align 8                ; 11 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [88 x i8], align 8                ; 12 uses
  %i.o = alloca [12 x i8], align 4                ; 5 uses
  %i.p = alloca [56 x i8], align 8                ; 11 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [64 x i8], align 8                ; 14 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [88 x i8], align 8                ; 12 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = alloca [16 x i8], align 8               ; 9 uses
  %i.af = alloca [88 x i8], align 8               ; 16 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [88 x i8], align 8               ; 12 uses
  %i.aj = alloca [12 x i8], align 4               ; 4 uses
  %i.ak = alloca [12 x i8], align 4               ; 6 uses
  %i.al = alloca [12 x i8], align 4               ; 4 uses
  %i.am = alloca [12 x i8], align 4               ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [88 x i8], align 8               ; 12 uses
  %i.ap = alloca [12 x i8], align 4               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 18 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [12 x i8], align 4               ; 5 uses
  %i.aw = alloca [32 x i8], align 8               ; 9 uses
  %i.ax = alloca [40 x i8], align 8               ; 6 uses
  %i.ay = alloca [12 x i8], align 4               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [80 x i8], align 8               ; 8 uses
  %i.bb = alloca [80 x i8], align 8               ; 8 uses
  %i.bc = alloca [12 x i8], align 4               ; 4 uses
  %i.bd = alloca [12 x i8], align 4               ; 4 uses
  %i.be = alloca [12 x i8], align 4               ; 4 uses
  %i.bf = alloca [12 x i8], align 4               ; 4 uses
  %i.bg = alloca [12 x i8], align 4               ; 5 uses
  %i.bh = alloca [12 x i8], align 4               ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [12 x i8], align 4               ; 4 uses
  %.sroa.0210 = alloca [16 x i8], align 8         ; 5 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 5 uses
  %i.bn = alloca [12 x i8], align 4               ; 4 uses
  %i.bo = alloca [24 x i8], align 8               ; 4 uses
  %i.bp = alloca [8 x i8], align 8                ; 6 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 4 uses
  %i.bs = alloca [12 x i8], align 4               ; 5 uses
  %i.bt = alloca [88 x i8], align 8               ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 11 uses
  %i.bv = alloca [24 x i8], align 8               ; 13 uses
  %i.bw = alloca [24 x i8], align 8               ; 10 uses
  %i.bx = alloca [24 x i8], align 8               ; 4 uses
  %i.by = alloca [12 x i8], align 4               ; 4 uses
  %i.bz = alloca [24 x i8], align 8               ; 4 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [16 x i8], align 4               ; 5 uses
  %i.cc = alloca [24 x i8], align 8               ; 4 uses
  %i.cd = alloca [24 x i8], align 8               ; 4 uses
  %i.ce = alloca [16 x i8], align 1               ; 18 uses
  %i.cf = alloca [24 x i8], align 8               ; 6 uses
  %i.cg = alloca [40 x i8], align 8               ; 11 uses
  %i.ch = alloca [12 x i8], align 4               ; 7 uses
  %i.ci = alloca [24 x i8], align 8               ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 12 uses
  %i.ck = alloca [24 x i8], align 8               ; 5 uses
  %i.cl = alloca [360 x i8], align 8              ; 15 uses
  %i.cm = alloca [12 x i8], align 4               ; 4 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [24 x i8], align 8               ; 3 uses
  %i.cp = alloca [24 x i8], align 8               ; 6 uses
  %i.cq = alloca [32 x i8], align 8               ; 7 uses
  %i.cr = alloca [16 x i8], align 8               ; 5 uses
  %i.cs = alloca [32 x i8], align 8               ; 8 uses
  %i.ct = alloca [32 x i8], align 8               ; 7 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %i.cv = alloca [32 x i8], align 8               ; 8 uses
  %i.cw = alloca [24 x i8], align 8               ; 6 uses
  %i.cx = alloca [8 x i8], align 8                ; 5 uses
  %i.cy = alloca [24 x i8], align 8               ; 9 uses
  %i.cz = alloca [24 x i8], align 8               ; 17 uses
  %i.da = alloca [8 x i8], align 8                ; 8 uses
  %i.db = alloca [128 x i8], align 8              ; 13 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !16, !align !24, !noundef !16 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.db, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 400 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !16, !align !24, !noundef !16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.dg = invoke noundef nonnull ptr @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function4name(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, ptr noundef nonnull %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %.body, %bb.d
  %.pn113 = phi { ptr, i32 } [ %i.dh, %bb.d ], [ %.pn111, %.body ]
  %.sroa.035.0 = phi i1 [ %.sroa.035.1, %bb.d ], [ %.sroa.035.2, %.body ]
  %.sroa.034.0 = phi i1 [ %.sroa.034.1, %bb.d ], [ %.sroa.034.2, %.body ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsf8NQSppxkmK_14ide_completion6render8function8FuncKindEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %4) #32
          to label %bb.ja unwind label %bb.aa

bb.d:                                             ; preds = %.noexc193, %bb.is, %bb.ir, %bb.b
  %.sroa.035.1 = phi i1 [ %.not102, %.noexc193 ], [ true, %bb.b ], [ %.not102, %bb.ir ], [ %.not102, %bb.is ]
  %.sroa.034.1 = phi i1 [ false, %.noexc193 ], [ true, %bb.b ], [ false, %bb.ir ], [ false, %bb.is ]
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi ptr [ %2, %bb.a ], [ %i.dg, %bb.b ] ; 5 uses
  store ptr %storemerge, ptr %i.da, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.di = load i8, ptr %4, align 8, !range !35, !noundef !16
  %switch = icmp ugt i8 %i.di, -3
  br i1 %switch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.dj = ptrtoint ptr %storemerge to i64
  %i.dk = and i64 %i.dj, 1
  %i.dl = sub nsw i64 0, %i.dk
  %i.dm = getelementptr i8, ptr %storemerge, i64 %i.dl ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dm) ]
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !16, !noundef !16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !noundef !16
  invoke void @_RNvXsD_Cs42xZ1oUXfIG_8smol_streNtB5_9ToSmolStr10to_smolstrCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dp)
          to label %bb.ab unwind label %bb.o

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  store ptr %4, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  %i.dq = ptrtoint ptr %storemerge to i64
  %i.dr = and i64 %i.dq, 1
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr i8, ptr %storemerge, i64 %i.ds ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !16, !noundef !16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !16
  store ptr %i.du, ptr %i.cu, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.dw, ptr %i.dx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  store ptr %i.cx, ptr %i.ct, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs42xZ1oUXfIG_8smol_str7SmolStrNtB6_7Display3fmtCsf8NQSppxkmK_14ide_completion, ptr %.sroa.446.0..sroa_idx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %i.cu, ptr %i.dy, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsf8NQSppxkmK_14ide_completion, ptr %.sroa.450.0..sroa_idx, align 8
  %i.dz = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @18, ptr noundef nonnull @217, ptr noundef nonnull %i.ct)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.j, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsf8NQSppxkmK_14ide_completion.exit, %bb.g
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cv) #32
          to label %.body unwind label %bb.aa

bb.i:                                             ; preds = %bb.g
  br i1 %i.dz, label %bb.j, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsf8NQSppxkmK_14ide_completion.exit, !prof !17

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 51, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.j
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  invoke void @_RNvMsF_Cs42xZ1oUXfIG_8smol_strNtB5_14SmolStrBuilder6finish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cv)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsf8NQSppxkmK_14ide_completion.exit
  %i.eb = load i8, ptr %i.cv, align 8, !range !22, !alias.scope !1283, !noundef !16
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.o

.body:                                            ; preds = %bb.ji, %bb.jh, %bb.jj, %bb.ag, %bb.ad, %bb.ac, %bb.ae, %bb.w, %.body131, %bb.x, %bb.o, %bb.m, %bb.h
  %.pn111 = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn104.pn.pn, %bb.ag ], [ %i.fc, %bb.ad ], [ %i.ee, %bb.m ], [ %i.ea, %bb.h ], [ %i.eg, %bb.o ], [ %.pn, %bb.x ], [ %.pn, %.body131 ], [ %i.fc, %bb.ae ], [ %i.fc, %bb.ac ], [ %.pn109.ph, %bb.jj ], [ %.pn109.ph, %bb.jh ], [ %.pn109.ph, %bb.ji ]
  %.sroa.035.2 = phi i1 [ true, %bb.w ], [ %.sroa.035.5, %bb.ag ], [ true, %bb.ad ], [ true, %bb.m ], [ true, %bb.h ], [ %.sroa.035.3, %bb.o ], [ true, %bb.x ], [ true, %.body131 ], [ true, %bb.ae ], [ true, %bb.ac ], [ %.sroa.035.10.ph, %bb.jj ], [ %.sroa.035.10.ph, %bb.jh ], [ %.sroa.035.10.ph, %bb.ji ]
  %.sroa.034.2 = phi i1 [ true, %bb.w ], [ %.sroa.034.5, %bb.ag ], [ true, %bb.ad ], [ true, %bb.m ], [ true, %bb.h ], [ %.sroa.034.3, %bb.o ], [ true, %bb.x ], [ true, %.body131 ], [ true, %bb.ae ], [ true, %bb.ac ], [ %.sroa.034.9.ph, %bb.jj ], [ %.sroa.034.9.ph, %bb.jh ], [ %.sroa.034.9.ph, %bb.ji ]
  %.val122 = load ptr, ptr %i.da, align 8, !nonnull !16, !noundef !16
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion(ptr nonnull %.val122) #32
          to label %bb.c unwind label %bb.aa

bb.o:                                             ; preds = %bb.iv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i, %bb.f
  %.sroa.035.3 = phi i1 [ %.not102, %bb.iv ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i ], [ true, %bb.f ]
  %.sroa.034.3 = phi i1 [ false, %bb.iv ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i ], [ true, %bb.f ]
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dd, i64 630
  %i.ei = load i8, ptr %i.eh, align 2, !range !40, !noundef !16
  store ptr %i.da, ptr %i.cr, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.ei, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  store ptr %i.cx, ptr %i.cq, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs42xZ1oUXfIG_8smol_str7SmolStrNtB6_7Display3fmtCsf8NQSppxkmK_14ide_completion, ptr %.sroa.465.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %i.cr, ptr %i.ek, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.el = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @18, ptr noundef nonnull @217, ptr noundef nonnull %i.cq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.r, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsf8NQSppxkmK_14ide_completion.exit128, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cs) #32
          to label %.body131 unwind label %bb.aa

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion.exit
  br i1 %i.el, label %bb.r, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsf8NQSppxkmK_14ide_completion.exit128, !prof !17

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 51, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #35
          to label %.noexc127 unwind label %bb.p

.noexc127:                                        ; preds = %bb.r
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsf8NQSppxkmK_14ide_completion.exit128: ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6render:bb.a
bb.v:                                             ; preds = %bb.u
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i130: ; preds = %bb.t
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ep)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion.exit134 unwind label %bb.y

.body131:                                         ; preds = %bb.y, %bb.u, %bb.p
  %.pn = phi { ptr, i32 } [ %i.em, %bb.p ], [ %i.ex, %bb.y ], [ %i.eq, %bb.u ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  %i.es = load i8, ptr %i.cw, align 8, !range !32, !alias.scope !1287, !noundef !16
  %switch.i.i = icmp samesign ult i8 %i.es, 25
  br i1 %switch.i.i, label %.body, label %bb.w

bb.w:                                             ; preds = %.body131
  %i.et = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !1290, !nonnull !16, !noundef !16
  %i.ev = atomicrmw add ptr %i.eu, i64 -1 release, align 8, !noalias !1290
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.x, label %.body

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.et) #31
          to label %.body unwind label %bb.aa

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i130
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body131

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion.exit134: ; preds = %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  invoke void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function10self_param(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.cm, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, ptr noundef nonnull %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %bb.ah unwind label %.thread

bb.aa:                                            ; preds = %bb.jk, %bb.jj, %bb.jg, %bb.ae, %bb.x, %.body, %bb.if, %bb.jm, %bb.jd, %bb.jc, %.body154.thread, %bb.p, %bb.h, %bb.c
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ab:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dd, i64 630
  %i.fa = load i8, ptr %i.ez, align 2, !range !40, !noundef !16
  store ptr %i.da, ptr %i.cn, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %i.fa, ptr %i.fb, align 8
  invoke void @_RNvXsD_Cs42xZ1oUXfIG_8smol_strNtNtCs33K2ylI4knu_10hir_expand4name7DisplayNtB5_9ToSmolStr10to_smolstrCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cn)
          to label %bb.af unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %i.fd = load i8, ptr %i.cp, align 8, !range !32, !alias.scope !1293, !noundef !16
  %switch.i.i136 = icmp samesign ult i8 %i.fd, 25
  br i1 %switch.i.i136, label %.body, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !1296, !nonnull !16, !noundef !16
  %i.fg = atomicrmw add ptr %i.ff, i64 -1 release, align 8, !noalias !1296
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.ae, label %.body

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fe) #31
          to label %.body unwind label %bb.aa

bb.af:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.z

bb.ag:                                            ; preds = %.body154.thread
  %i.fi = trunc nuw i8 %.sroa.028.1 to i1
  br i1 %i.fi, label %bb.je, label %.body

.thread:                                          ; preds = %bb.z, %bb.ah, %bb.ak, %bb.al
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.ah:                                            ; preds = %bb.z
  %i.fk = load i8, ptr %i.cm, align 4, !range !46, !noundef !16
  %i.fl = icmp ne i8 %i.fk, 2                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %. = select i1 %i.fl, i8 10, i8 9
  %i.fm = invoke { i32, i32 } @_RNvMNtCsf8NQSppxkmK_14ide_completion6renderNtB2_13RenderContext12source_range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.db)
          to label %bb.ai unwind label %.thread   ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.fn = extractvalue { i32, i32 } %i.fm, 0
  %i.fo = extractvalue { i32, i32 } %i.fm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  %i.fp = load i8, ptr %i.cz, align 8, !range !32, !noundef !16
  %i.fq = icmp eq i8 %i.fp, 25
  br i1 %i.fq, label %bb.ak, label %bb.aj, !prof !17

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvNvXs_Cs42xZ1oUXfIG_8smol_strNtB6_7SmolStrNtNtCshzWfHUSfYae_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz)
          to label %bb.al unwind label %.thread

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dd, i64 630
  %i.fs = load i8, ptr %i.fr, align 2, !range !40, !noundef !16
  invoke void @_RINvMs1_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_14CompletionItem3newNtB6_18CompletionItemKindNtCs42xZ1oUXfIG_8smol_str7SmolStrEB8_(ptr noalias nofree noundef nonnull sret([360 x i8]) align 8 captures(none) dereferenceable(360) %i.cl, i8 noundef %., i32 noundef %i.fn, i32 noundef %i.fo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ck, i8 noundef %i.fs)
          to label %bb.am unwind label %.thread

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.db, i64 112 ; 9 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !16, !align !24, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  invoke void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function8ret_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.bh, ptr noundef nonnull %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %bb.ao unwind label %bb.an

.body154.thread:                                  ; preds = %bb.ho, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit.i, %bb.hp, %bb.jd, %.body154, %bb.an
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %bb.jd ], [ %.pn104.pn, %.body154 ], [ %i.fv, %bb.an ], [ %.pn101.i, %bb.hp ], [ %.pn101.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit.i ], [ %.pn101.i, %bb.ho ] ; 2 uses
  %.sroa.035.5 = phi i1 [ %.sroa.035.6, %bb.jd ], [ %.sroa.035.6, %.body154 ], [ true, %bb.an ], [ true, %bb.hp ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit.i ], [ true, %bb.ho ] ; 2 uses
  %.sroa.034.5 = phi i1 [ %.sroa.034.6, %bb.jd ], [ %.sroa.034.6, %.body154 ], [ true, %bb.an ], [ true, %bb.hp ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit.i ], [ true, %bb.ho ] ; 2 uses
  %.sroa.028.1 = phi i8 [ 1, %bb.jd ], [ %.sroa.028.2, %.body154 ], [ 1, %bb.an ], [ 0, %bb.hp ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit.i ], [ 0, %bb.ho ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion4item7BuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(360) %i.cl) #32
          to label %bb.ag unwind label %bb.aa

bb.an:                                            ; preds = %.noexc144, %bb.bm, %bb.bk, %.noexc143, %.noexc140, %bb.be, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs8Xq8PKFYOms_3hir4TypeE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6params0EB1o_.exit.i, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.ao, %bb.am
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body154.thread

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  invoke void @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext9rebase_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cj, ptr noundef nonnull align 8 %i.fu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci)
          to label %bb.ap unwind label %bb.an

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  invoke void @_RNvXsT_Cs8Xq8PKFYOms_3hirNtB5_8FunctionNtB5_11AsAssocItem13as_assoc_item(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.ch, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, ptr noundef nonnull %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %bb.aq unwind label %bb.an

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i8, ptr %i.ch, align 4, !range !49, !noundef !16
  %.not90 = icmp eq i8 %i.fw, -1                  ; 3 uses
  br i1 %.not90, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bn, ptr noundef nonnull align 4 dereferenceable(12) %i.ch, i64 12, i1 false)
  %i.fx = invoke { i32, i32 } @_RNvMs10_Cs8Xq8PKFYOms_3hirNtB6_9AssocItem30container_or_implemented_trait(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.bn, ptr noundef nonnull %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %bb.as unwind label %bb.an     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.fy = extractvalue { i32, i32 } %i.fx, 0      ; 3 uses
  %i.fz = extractvalue { i32, i32 } %i.fx, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %.not91 = icmp eq i32 %i.fy, 0
  br i1 %.not91, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ga = invoke noundef zeroext i1 @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext20is_doc_notable_trait(ptr noundef nonnull align 8 %i.dd, i32 noundef %i.fy, i32 noundef %i.fz)
          to label %bb.av unwind label %bb.an

bb.au:                                            ; preds = %bb.as, %bb.aq, %bb.aw
  %.sroa.3.0 = phi i8 [ %i.ge, %bb.aw ], [ undef, %bb.aq ], [ undef, %bb.as ]
  %.sroa.08.0 = phi i8 [ %i.gd, %bb.aw ], [ 2, %bb.aq ], [ 2, %bb.as ]
  %i.gb = load i8, ptr %4, align 8, !range !35, !noundef !16
  %.not92.not.not = icmp eq i8 %i.gb, -2          ; 3 uses
  br i1 %.not92.not.not, label %bb.ay, label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.gc = invoke noundef zeroext i1 @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext12is_ops_trait(ptr noundef nonnull align 8 %i.dd, i32 noundef %i.fy, i32 noundef %i.fz)
          to label %bb.aw unwind label %bb.an

bb.aw:                                            ; preds = %bb.av
  %i.gd = zext i1 %i.ga to i8
  %i.ge = zext i1 %i.gc to i8
  br label %bb.au

bb.ax:                                            ; preds = %bb.au
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !nonnull !16, !align !24, !noundef !16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 66
  %i.gi = load i8, ptr %i.gh, align 2, !range !46, !noundef !16
  %i.gj = icmp eq i8 %i.gi, 2
  br i1 %i.gj, label %.thread226, label %6

bb.ay:                                            ; preds = %bb.au
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !nonnull !16, !align !24, !noundef !16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gn = load i32, ptr %i.gm, align 8, !range !1297, !noundef !16
  %i.go = icmp slt i32 %i.gn, 12
  br i1 %i.go, label %bb.az, label %.thread226

bb.az:                                            ; preds = %bb.ay
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 224
  %i.gq = load i8, ptr %i.gp, align 8, !range !22, !noundef !16
  %i.gr = load ptr, ptr %i.ft, align 8, !nonnull !16, !align !24, !noundef !16
  %i.gs = trunc nuw i8 %i.gq to i1
  %5 = xor i1 %i.gs, true
  br label %bb.ba

6:                                                ; preds = %bb.ax
  %7 = load ptr, ptr %i.ft, align 8, !nonnull !16, !align !24, !noundef !16
  br label %bb.ba

.thread226:                                       ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  br label %bb.bn

bb.ba:                                            ; preds = %bb.az, %6
  %i.gt = phi ptr [ %i.gr, %bb.az ], [ %7, %6 ]   ; 6 uses
  %.sroa.012.0 = phi i1 [ %5, %bb.az ], [ true, %6 ] ; 2 uses
  %.pn268.in = getelementptr inbounds nuw i8, ptr %i.gt, i64 408
  %.pn268 = load ptr, ptr %.pn268.in, align 8, !nonnull !16, !align !24, !noundef !16 ; 2 uses
  %.sroa.013.0.in = getelementptr inbounds nuw i8, ptr %.pn268, i64 122
  %.sroa.013.0 = load i8, ptr %.sroa.013.0.in, align 2, !range !22, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.gu = trunc nuw i8 %.sroa.013.0 to i1
  %.sroa.01.0.i = select i1 %i.gu, i1 %.sroa.012.0, i1 false
  br i1 %.sroa.01.0.i, label %bb.bb, label %bb.bn

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0210)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bg, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.gv = getelementptr inbounds nuw i8, ptr %.pn268, i64 138
  %i.gw = load i8, ptr %i.gv, align 2, !range !46, !noalias !1298, !noundef !16
  %.not.i = icmp eq i8 %i.gw, 2
  br i1 %.not.i, label %.thread231, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 112
  %i.gy = load i32, ptr %i.gx, align 8, !range !43, !noalias !1298, !noundef !16
  %.not5.i = icmp eq i32 %i.gy, -1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  br i1 %.not5.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs8Xq8PKFYOms_3hir4TypeE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6params0EB1o_.exit.thread.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !1299, !noalias !1298, !nonnull !16, !noundef !16
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.ha, align 8, !noalias !1300 ; 2 uses
  %i.hb = icmp ne i32 %.sroa.01.0.copyload.i.i.i, 27
  call void @llvm.assume(i1 %i.hb)
  %i.hc = add i32 %.sroa.01.0.copyload.i.i.i, -15
  %switch.i.i.i = icmp ult i32 %i.hc, 2
  br i1 %switch.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs8Xq8PKFYOms_3hir4TypeE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6params0EB1o_.exit.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs8Xq8PKFYOms_3hir4TypeE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6params0EB1o_.exit.thread.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs8Xq8PKFYOms_3hir4TypeE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6params0EB1o_.exit.i: ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1298
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 400 ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !1298, !nonnull !16, !align !24, !noundef !16
  invoke void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type11as_callable(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gz, ptr noundef nonnull %i.he, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %.noexc139 unwind label %bb.an

.noexc139:                                        ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs8Xq8PKFYOms_3hir4TypeE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6params0EB1o_.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.hg = load i32, ptr %i.hf, align 8, !range !43, !noalias !1298, !noundef !16
  %.not7.i = icmp eq i32 %i.hg, -1
  br i1 %.not7.i, label %bb.bf, label %bb.be

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs8Xq8PKFYOms_3hir4TypeE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6params0EB1o_.exit.thread.i: ; preds = %bb.bf, %bb.bd, %bb.bc
  br i1 %.not92.not.not, label %bb.bm, label %bb.bl

bb.be:                                            ; preds = %.noexc139
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !1298, !nonnull !16, !noundef !16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.hk = load i8, ptr %i.hj, align 8, !noalias !1298, !noundef !16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !1298, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1298
  %i.hn = load ptr, ptr %i.hd, align 8, !noalias !1298, !nonnull !16, !align !24, !noundef !16
  invoke void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, ptr noundef nonnull %i.hn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %.noexc140 unwind label %bb.an

.noexc140:                                        ; preds = %bb.be
  %i.ho = load ptr, ptr %i.hd, align 8, !noalias !1298, !nonnull !16, !align !24, !noundef !16
  invoke void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type11as_callable(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az, ptr noundef nonnull %i.ho, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %.noexc141 unwind label %bb.an

.noexc141:                                        ; preds = %.noexc140
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.hq = load i32, ptr %i.hp, align 8, !range !43, !noalias !1298, !noundef !16
  %.not8.i = icmp eq i32 %i.hq, -1
  br i1 %.not8.i, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bh, %.noexc139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1298
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs8Xq8PKFYOms_3hir4TypeE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6params0EB1o_.exit.thread.i

bb.bg:                                            ; preds = %.noexc141
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !1298, !nonnull !16, !noundef !16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.hu = load i8, ptr %i.ht, align 8, !noalias !1298, !noundef !16
  %i.hv = icmp eq ptr %i.hi, %i.hs
  %i.hw = icmp eq i8 %i.hk, %i.hu
  %or.cond.i = and i1 %i.hv, %i.hw
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !1298, !nonnull !16
  %i.hz = icmp eq ptr %i.hm, %i.hy
  %or.cond13.i = select i1 %or.cond.i, i1 %i.hz, i1 false
  br i1 %or.cond13.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.noexc141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1298
  br label %bb.bf

bb.bi:                                            ; preds = %bb.bg
  %i.ia = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8, !noalias !1301 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not.i.i, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i, label %bb.bj, !prof !18

bb.bj:                                            ; preds = %bb.bi
  %i.ib = icmp slt i64 %i.ia, 0
  br i1 %i.ib, label %bb.bk, label %.noexc143

.noexc143:                                        ; preds = %bb.bk, %bb.bj
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 31)
          to label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i unwind label %bb.an

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 31)
          to label %.noexc143 unwind label %bb.an

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i:   ; preds = %.noexc143, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1298
  br label %.thread231

bb.bl:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs8Xq8PKFYOms_3hir4TypeE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6params0EB1o_.exit.thread.i
  store i8 2, ptr %i.ay, align 4, !noalias !1298
  br label %.noexc144

bb.bm:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs8Xq8PKFYOms_3hir4TypeE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function6params0EB1o_.exit.thread.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gt, i64 400
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !1298, !nonnull !16, !align !24, !noundef !16
  invoke void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function10self_param(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ay, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, ptr noundef nonnull %i.id, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %.noexc144 unwind label %bb.an

.noexc144:                                        ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1298
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gt, i64 400
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !1298, !nonnull !16, !align !24, !noundef !16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  invoke void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function19params_without_self(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ig, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.bg, ptr noundef nonnull %i.if, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %bb.bo unwind label %bb.an

bb.bn:                                            ; preds = %bb.ba, %.thread226, %bb.bq, %bb.bp
  %.sink = phi i64 [ -1, %bb.bq ], [ %.sroa.5211.0.copyload213, %bb.bp ], [ -1, %.thread226 ], [ -1, %bb.ba ] ; 2 uses
  %8 = phi i1 [ true, %bb.bq ], [ true, %bb.bp ], [ %.not92.not.not, %.thread226 ], [ %.sroa.012.0, %bb.ba ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %.sink, ptr %i.ih, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  br i1 %.not90, label %bb.bs, label %bb.br

.thread231:                                       ; preds = %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.bq

bb.bo:                                            ; preds = %.noexc144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr noundef nonnull align 4 dereferenceable(12) %i.ay, i64 12, i1 false), !noalias !1298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0210, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !noalias !1302
  %.sroa.5211.0.copyload213 = load i64, ptr %i.ig, align 8, !noalias !1302 ; 2 uses
  %.sroa.8.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx214, i64 16, i1 false), !noalias !1302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %.not93 = icmp eq i64 %.sroa.5211.0.copyload213, -1
  br i1 %.not93, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0210, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0210)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.bn

bb.bq:                                            ; preds = %.thread231, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0210)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.bn

bb.br:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bm, ptr noundef nonnull align 4 dereferenceable(12) %i.ch, i64 12, i1 false)
  invoke void @_RNvMs10_Cs8Xq8PKFYOms_3hirNtB6_9AssocItem15implementing_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cf, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.bm, ptr noundef nonnull %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %bb.bu unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bn, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.bw

.body154:                                         ; preds = %bb.if, %.thread247, %bb.en, %bb.fh, %.body.i, %bb.cc, %bb.bt, %bb.jc
  %.pn104.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.jc ], [ %lpad.thr_comm, %.thread247 ], [ %eh.lpad-body.i, %.body.i ], [ %i.jt, %bb.cc ], [ %i.im, %bb.bt ], [ %i.ur, %bb.fh ], [ %.pn.i, %bb.en ], [ %i.aaq, %bb.if ] ; 2 uses
  %.sroa.035.6 = phi i1 [ true, %bb.jc ], [ %.sroa.035.8.ph, %.thread247 ], [ true, %.body.i ], [ true, %bb.cc ], [ true, %bb.bt ], [ true, %bb.fh ], [ true, %bb.en ], [ true, %bb.if ] ; 2 uses
  %.sroa.034.6 = phi i1 [ true, %bb.jc ], [ %.sroa.034.8.ph, %.thread247 ], [ true, %.body.i ], [ true, %bb.cc ], [ true, %bb.bt ], [ true, %bb.fh ], [ true, %bb.en ], [ true, %bb.if ] ; 2 uses
  %.sroa.028.2 = phi i8 [ 1, %bb.jc ], [ %.sroa.028.4.ph, %.thread247 ], [ 1, %.body.i ], [ 1, %bb.cc ], [ 1, %bb.bt ], [ 1, %bb.fh ], [ 1, %bb.en ], [ %.sroa.028.5, %bb.if ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !range !25, !noundef !16
  %i.ik = icmp ne i64 %i.ij, -1
  %i.il = trunc nuw i8 %.sroa.028.2 to i1
  %or.cond = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %or.cond, label %bb.jd, label %.body154.thread

bb.bt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i, %bb.em, %bb.df, %.noexc152, %bb.cf, %bb.ce, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i, %.split.i, %_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0EB7y_.exit.i, %bb.bx, %bb.dc, %bb.da, %bb.cy, %bb.cv, %bb.cu, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.ch, %bb.bv, %bb.br
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body154

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.in = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.io = load i32, ptr %i.in, align 8, !range !43, !noundef !16
  %.not94 = icmp eq i32 %i.io, -1
  br i1 %.not94, label %bb.bs, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ip = load ptr, ptr %i.ft, align 8, !nonnull !16, !align !24, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext9rebase_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noundef nonnull align 8 %i.ip, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk)
          to label %bb.bx unwind label %bb.bt

bb.bw:                                            ; preds = %bb.cj, %bb.bs
  %i.iq = phi i64 [ %.pre, %bb.cj ], [ %.sink, %bb.bs ]
  %.sroa.316.0 = phi i16 [ %.sroa.483.2.insert.insert, %bb.cj ], [ undef, %bb.bs ]
  %.sroa.014.0 = phi i8 [ %.sroa.084.0, %bb.cj ], [ 2, %bb.bs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %.not95 = icmp eq i64 %i.iq, -1
  %or.cond119 = select i1 %8, i1 %.not95, i1 false
  br i1 %or.cond119, label %bb.cl, label %bb.ck

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %.val125 = load ptr, ptr %i.ft, align 8, !nonnull !16, !align !24, !noundef !16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.is = invoke noundef i8 @_RNvNtCsf8NQSppxkmK_14ide_completion6render11match_types(ptr noundef nonnull align 8 %.val125, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj)
          to label %.noexc147 unwind label %bb.bt

.noexc147:                                        ; preds = %bb.bx
  %.not.i146 = icmp eq i8 %i.is, 2
  %.sink20.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %.sink20.i.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  br i1 %.not.i146, label %bb.by, label %_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match.exit

bb.by:                                            ; preds = %.noexc147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1304
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %bb.by
  %.sroa.017.0.in.i.i = phi ptr [ %i.cj, %bb.by ], [ %.sroa.515.0..sroa_idx.i.i, %bb.bz ]
  %.sroa.017.0.i.i = load ptr, ptr %.sroa.017.0.in.i.i, align 8, !noalias !1305, !nonnull !16, !noundef !16 ; 3 uses
  %.sroa.013.0.copyload.i.i = load i32, ptr %.sroa.017.0.i.i, align 8, !noalias !1306 ; 4 uses
  %i.it = icmp ne i32 %.sroa.013.0.copyload.i.i, 27
  call void @llvm.assume(i1 %i.it)
  %i.iu = icmp eq i32 %.sroa.013.0.copyload.i.i, 14
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i, i64 16
  br i1 %i.iu, label %bb.bz, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i, i64 8
  %.sroa.41.0.copyload.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !1306 ; 6 uses
  %i.iv = add i32 %.sroa.013.0.copyload.i.i, -2
  %i.iw = icmp ugt i32 %.sroa.013.0.copyload.i.i, 1
  %narrow.i.i = select i1 %i.iw, i32 %i.iv, i32 25
  switch i32 %narrow.i.i, label %_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0EB7y_.exit.thread.i [
    i32 5, label %.split.i
    i32 22, label %_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0EB7y_.exit.i
  ]

_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0EB7y_.exit.i: ; preds = %bb.ca
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !noalias !1306, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i.i) ]
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 16 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.iy
  store ptr %i.iz, ptr %.sink20.i.sroa.gep.i, align 8, !alias.scope !1305, !noalias !1304
  %.sroa.49.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.ja, ptr %.sroa.49.0..sroa_idx.i9.i, align 8, !alias.scope !1305, !noalias !1304
  store ptr %i.cj, ptr %.sink20.i.sroa.gep1.i, align 8, !alias.scope !1305, !noalias !1304
  store i64 1, ptr %i.aw, align 8, !alias.scope !1305, !noalias !1304
  %i.jb = invoke noundef zeroext i1 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB2E_4Type14type_argumentss_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3r_3any5checkB2W_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink20.i.sroa.gep.i, ptr noundef nonnull align 8 %.val125, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %.noexc148 unwind label %bb.bt

.noexc148:                                        ; preds = %_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0EB7y_.exit.i
  br i1 %i.jb, label %bb.cb, label %_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0EB7y_.exit.thread.i

.split.i:                                         ; preds = %bb.ca
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 8
  %i.jd = load i64, ptr %i.jc, align 8, !noalias !1306, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i.i) ]
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 16 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jd
  store ptr %i.je, ptr %.sink20.i.sroa.gep.i, align 8, !alias.scope !1305, !noalias !1304
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.jf, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !alias.scope !1305, !noalias !1304
  store ptr %i.cj, ptr %.sink20.i.sroa.gep1.i, align 8, !alias.scope !1305, !noalias !1304
  store i64 0, ptr %i.aw, align 8, !alias.scope !1305, !noalias !1304
  %i.jg = invoke noundef zeroext i1 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2f_NtB2f_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB44_4Type14type_arguments0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4P_3any5checkB4m_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB64_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink20.i.sroa.gep.i, ptr noundef nonnull align 8 %.val125, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %.noexc149 unwind label %bb.bt

.noexc149:                                        ; preds = %.split.i
  br i1 %i.jg, label %bb.cb, label %_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0EB7y_.exit.thread.i

_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0EB7y_.exit.thread.i: ; preds = %.noexc149, %.noexc148, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1304
  %.val.i = load ptr, ptr %i.cj, align 8, !alias.scope !1303, !nonnull !16, !noundef !16 ; 3 uses
  %.sroa.09.0.copyload.i.i = load i32, ptr %.val.i, align 8, !noalias !1307 ; 2 uses
  %i.jh = icmp ne i32 %.sroa.09.0.copyload.i.i, 27
  call void @llvm.assume(i1 %i.jh)
  %i.ji = icmp eq i32 %.sroa.09.0.copyload.i.i, 7
  br i1 %i.ji, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i, label %_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match.exit

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i: ; preds = %_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0EB7y_.exit.thread.i
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 20
  %.sroa.811.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.sroa.811.sroa.0.0.copyload.i.i = load i8, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !noalias !1307
  %switch.idx.cast.i.i = zext i8 %.sroa.811.sroa.0.0.copyload.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1304
  store i32 %switch.idx.cast.i.i, ptr %i.av, align 4, !noalias !1304
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.jj = load <2 x i32>, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !1307
  store <2 x i32> %i.jj, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1304
  %i.jk = invoke noundef nonnull ptr @_RNvMsi_Cs8Xq8PKFYOms_3hirNtB5_3Adt4name(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.av, ptr noundef nonnull %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %.noexc150 unwind label %bb.bt ; 4 uses

.noexc150:                                        ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, 1                        ; 2 uses
  %i.jn = sub nsw i64 0, %i.jm
  %i.jo = getelementptr i8, ptr %i.jk, i64 %i.jn  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jo) ]
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !1308, !nonnull !16, !noundef !16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !1308, !noundef !16
  %i.js = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jp, i64 noundef %i.jr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 7)
          to label %bb.cd unwind label %bb.cc, !noalias !1308

bb.cb:                                            ; preds = %.noexc149, %.noexc148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1304
  br label %_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match.exit

bb.cc:                                            ; preds = %.noexc150
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.jk) #32
          to label %.body154 unwind label %bb.cg, !noalias !1308

bb.cd:                                            ; preds = %.noexc150
  %.not.i.i.i.i.i.i = icmp eq i64 %i.jm, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_matchs_0B7_.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ju = getelementptr i8, ptr %i.jk, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ju) ]
  %i.jv = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %i.ju)
          to label %.noexc151 unwind label %bb.bt

.noexc151:                                        ; preds = %bb.ce
  %i.jw = sub nsw i64 0, %i.jv
  %i.jx = getelementptr inbounds i8, ptr %i.ju, i64 %i.jw ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1309
  store ptr %i.jx, ptr %i.au, align 8, !noalias !1309
  %i.jy = load atomic i64, ptr %i.jx acquire, align 8, !noalias !1308
  %i.jz = icmp eq i64 %i.jy, 2
  br i1 %i.jz, label %bb.cf, label %.noexc152, !prof !17

bb.cf:                                            ; preds = %.noexc151
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.noexc152 unwind label %bb.bt

.noexc152:                                        ; preds = %bb.cf, %.noexc151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1309
  store ptr %i.jx, ptr %i.at, align 8, !noalias !1309
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %.noexc153 unwind label %bb.bt

.noexc153:                                        ; preds = %.noexc152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1309
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_matchs_0B7_.exit.i

bb.cg:                                            ; preds = %bb.cc
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !1308
  unreachable

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_matchs_0B7_.exit.i: ; preds = %.noexc153, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1304
  %i.kb = select i1 %i.js, i16 768, i16 0
  br label %_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match.exit

_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match.exit: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_matchs_0B7_.exit.i, %bb.cb, %_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0EB7y_.exit.thread.i, %.noexc147
  %.sroa.0.0.i = phi i16 [ 256, %.noexc147 ], [ 512, %bb.cb ], [ %i.kb, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_matchs_0B7_.exit.i ], [ 0, %_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match0EB7y_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br i1 %i.fl, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bf, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.kc = invoke noundef i64 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function10num_params(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.bf, ptr noundef nonnull %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %bb.ci unwind label %bb.bt

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.kd = icmp ne i64 %i.kc, 0
  %i.ke = zext i1 %i.kd to i8
  br label %bb.cj

bb.cj:                                            ; preds = %_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match.exit, %bb.ci
  %.sroa.084.0 = phi i8 [ %i.ke, %bb.ci ], [ 1, %_RNvNtNtCsf8NQSppxkmK_14ide_completion6render8function25compute_return_type_match.exit ]
  %.sroa.483.1.insert.ext = zext i1 %i.fl to i16
  %.sroa.483.2.insert.insert = or disjoint i16 %.sroa.0.0.i, %.sroa.483.1.insert.ext
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !25
  br label %bb.bw

bb.ck:                                            ; preds = %bb.bw
  %i.kf = invoke noundef i8 @_RNvNtCsf8NQSppxkmK_14ide_completion6render18compute_type_match(ptr noundef nonnull align 8 %i.dd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj)
          to label %bb.cp unwind label %bb.bt

bb.cl:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %i.kg = load ptr, ptr %i.ft, align 8, !nonnull !16, !align !24, !noundef !16
end_hunk_1
