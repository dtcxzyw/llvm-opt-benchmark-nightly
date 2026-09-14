Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29986
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZN6duckdb13JSONFormatter15FormatComponentERNS0_11FormatStateERNS_13JSONComponentENS0_10InlineModeE:bb.a
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1611
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread219

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread219: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.n = phi i64 [ %i.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %bb.b ]
  %i.o = load i64, ptr %i.a, align 8, !tbaa !231
  %i.p = add i64 %i.o, %i.n
  store i64 %i.p, ptr %i.a, align 8, !tbaa !231
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = tail call noundef i64 @_ZN6duckdb8Utf8Proc11RenderWidthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.f) ; 2 uses
  %i.s = load i64, ptr %i.b, align 8, !tbaa !231
  %i.t = add i64 %i.s, %i.r
  %i.u = load i64, ptr %i.c, align 8, !tbaa !1610
  %.not15.i = icmp ugt i64 %i.t, %i.u
  br i1 %.not15.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread219
  tail call void @_ZN6duckdb13JSONFormatter10AddNewlineERNS0_11FormatStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1607
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

bb.d:                                             ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread219
  %i.x = load i64, ptr %i.g, align 8, !tbaa !300  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !300
  %i.aa = sub i64 4611686018427387903, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.x
  br i1 %i.ab, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2089) #59
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !217
  %i.ad = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef %i.ac, i64 noundef %i.x) ; 0 uses
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !231
  %i.af = add i64 %i.ae, %i.r                     ; 2 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !231
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !1610
  %i.ah = icmp ugt i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 2, ptr %i.ai, align 8, !tbaa !1607
  br label %_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.f
  %i.aj = icmp eq i32 %3, 0
  br i1 %i.aj, label %bb.g, label %.critedge185

bb.g:                                             ; preds = %_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !231
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %.0158283 = add i64 %i.ak, 1                    ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !591
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !590
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 40
  %i.at = icmp ult i64 %.0158283, %i.as
  br i1 %i.at, label %.lr.ph288.preheader, label %.critedge

.lr.ph288.preheader:                              ; preds = %bb.g
  %i.au = load i64, ptr %i.b, align 8, !tbaa !231
  br label %.lr.ph288

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %bb.l
  %.0158286 = phi i64 [ %.0158, %bb.l ], [ %.0158283, %.lr.ph288.preheader ] ; 4 uses
  %.0161285 = phi i64 [ %spec.select188, %bb.l ], [ %i.au, %.lr.ph288.preheader ] ; 3 uses
  %.0164284 = phi i64 [ %.1165, %bb.l ], [ 0, %.lr.ph288.preheader ] ; 4 uses
  %i.av = load i64, ptr %i.c, align 8, !tbaa !231
  %.not177 = icmp ugt i64 %.0161285, %i.av
  br i1 %.not177, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph288
  %i.aw = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb6vectorINS_13JSONComponentELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %.0158286) ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1616
  switch i32 %i.ax, label %bb.l [
    i32 0, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ay = add i64 %.0164284, 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.az = icmp eq i64 %.0164284, 0
  br i1 %i.az, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.ba = add i64 %.0161285, 1
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !231
  %i.bc = icmp ult i64 %i.ba, %i.bb
  %.fr = freeze i1 %i.bc
  %spec.select = zext i1 %.fr to i32
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bd = add i64 %.0164284, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.h
  %.1165 = phi i64 [ %i.ay, %bb.i ], [ %i.bd, %bb.k ], [ %.0164284, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bf = tail call noundef i64 @_ZN6duckdb8Utf8Proc11RenderWidthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.be)
  %i.bg = add i64 %i.bf, %.0161285
  %i.bh = load i32, ptr %i.aw, align 8, !tbaa !1616
  %.off = add i32 %i.bh, -3
  %switch = icmp ult i32 %.off, 2
  %i.bi = zext i1 %switch to i64
  %spec.select188 = add i64 %i.bg, %i.bi
  %.0158 = add nuw i64 %.0158286, 1               ; 3 uses
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !591
  %i.bk = load ptr, ptr %i.al, align 8, !tbaa !590
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 40
  %i.bp = icmp ult i64 %.0158, %i.bo
  br i1 %i.bp, label %.lr.ph288, label %.critedge, !llvm.loop !4816

.critedge:                                        ; preds = %.lr.ph288, %bb.l, %bb.g, %.thread
  %.0158261 = phi i64 [ %.0158286, %.thread ], [ %.0158283, %bb.g ], [ %.0158286, %.lr.ph288 ], [ %.0158, %bb.l ] ; 2 uses
  %.3156 = phi i32 [ %spec.select, %.thread ], [ 0, %bb.g ], [ 0, %bb.l ], [ 0, %.lr.ph288 ] ; 2 uses
  %i.bq = load i64, ptr %i.g, align 8, !tbaa !300
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread224

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196: ; preds = %.critedge
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !217
  %lhsc342 = load i8, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %lhsc342, 91
  br i1 %i.bt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread224

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !231
  %.1159293 = add i64 %i.bu, 1                    ; 3 uses
  %i.bv = load ptr, ptr %i.am, align 8, !tbaa !591
  %i.bw = load ptr, ptr %i.al, align 8, !tbaa !590
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 40
  %i.cb = icmp ult i64 %.1159293, %i.ca
  br i1 %i.cb, label %.lr.ph295, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread224

.lr.ph295:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198.thread225.thread
  %.1159294 = phi i64 [ %.1159, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198.thread225.thread ], [ %.1159293, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread ] ; 8 uses
  %i.cc = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb6vectorINS_13JSONComponentELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %.1159294) ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !1616
  switch i32 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198.thread225.thread [
    i32 0, label %bb.m
    i32 1, label %.thread350
  ]

bb.m:                                             ; preds = %.lr.ph295
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !300
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198.thread225.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198: ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !217
  %lhsc343 = load i8, ptr %i.ci, align 1
  %i.cj = icmp eq i8 %lhsc343, 123
  br i1 %i.cj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread224, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198.thread225.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198.thread225.thread: ; preds = %.lr.ph295, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198, %bb.m
  %.1159 = add nuw i64 %.1159294, 1               ; 3 uses
  %i.ck = load ptr, ptr %i.am, align 8, !tbaa !591
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !590
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 40
  %i.cq = icmp ult i64 %.1159, %i.cp
  br i1 %i.cq, label %.lr.ph295, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread224, !llvm.loop !4817

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread224: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198.thread225.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread, %.critedge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196
  %.2160 = phi i64 [ %.0158261, %.critedge ], [ %.0158261, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196 ], [ %.1159293, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread ], [ %.1159294, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198 ], [ %.1159, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit198.thread225.thread ] ; 4 uses
  %.not179 = icmp eq i32 %.3156, 0
  br i1 %.not179, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread224
  %i.cr = load i64, ptr %i.d, align 8, !tbaa !231
  %.0149303 = add i64 %i.cr, 1                    ; 2 uses
  %.not180304 = icmp ugt i64 %.0149303, %.2160
  br i1 %.not180304, label %._crit_edge309, label %.lr.ph308.split

.thread350:                                       ; preds = %.lr.ph295
  %i.cs = load i64, ptr %i.d, align 8, !tbaa !231 ; 2 uses
  %.0149303353 = add i64 %i.cs, 1                 ; 2 uses
  %.not180304354 = icmp ugt i64 %.0149303353, %.1159294
  br i1 %.not180304354, label %._crit_edge309, label %.lr.ph308.thread

.lr.ph308.thread:                                 ; preds = %.thread350
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %.lr.ph308.split.us

.lr.ph308.split.us:                               ; preds = %.lr.ph308.thread, %bb.t
  %.0149306.us = phi i64 [ %.0149.us, %bb.t ], [ %.0149303353, %.lr.ph308.thread ] ; 3 uses
  %.0149.in305.us = phi i64 [ %.0149306.us, %bb.t ], [ %i.cs, %.lr.ph308.thread ]
  %i.cv = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb6vectorINS_13JSONComponentELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %.0149306.us) ; 3 uses
  %i.cw = add i64 %.0149.in305.us, 2              ; 2 uses
  %.not181.us = icmp ugt i64 %i.cw, %.1159294
  br i1 %.not181.us, label %bb.t, label %bb.o

bb.o:                                             ; preds = %.lr.ph308.split.us
  %i.cx = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb6vectorINS_13JSONComponentELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %i.cw) ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !1616
  switch i32 %i.cy, label %bb.t [
    i32 4, label %bb.p
    i32 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4825)
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !217, !noalias !4825
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !300, !noalias !4825 ; 3 uses
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !217, !noalias !4825
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !300, !noalias !4825 ; 3 uses
  store ptr %i.ct, ptr %4, align 8, !tbaa !328, !alias.scope !4826
  store i64 0, ptr %i.cu, align 8, !tbaa !300, !alias.scope !4826
  store i8 0, ptr %i.ct, align 8, !tbaa !254, !alias.scope !4826
  %i.dh = add i64 %i.dg, %i.dd
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.dh)
          to label %bb.q unwind label %.loopexit.split.us

bb.q:                                             ; preds = %bb.p
  %i.di = load i64, ptr %i.cu, align 8, !tbaa !300, !alias.scope !4826
  %i.dj = sub i64 4611686018427387903, %i.di
  %i.dk = icmp ult i64 %i.dj, %i.dd
  br i1 %i.dk, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.us: ; preds = %bb.q
  %i.dl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.db, i64 noundef %i.dd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.us unwind label %.loopexit.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.us
  %i.dm = load i64, ptr %i.cu, align 8, !tbaa !300, !alias.scope !4826
  %i.dn = sub i64 4611686018427387903, %i.dm
  %i.do = icmp ult i64 %i.dn, %i.dg
  br i1 %i.do, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.us
  %i.dp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.de, i64 noundef %i.dg)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.us unwind label %.loopexit.split.us ; 0 uses

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.us
  %i.dq = invoke noundef i64 @_ZN6duckdb8Utf8Proc11RenderWidthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.r unwind label %.split.us

bb.r:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.us
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !231
  %i.ds = add i64 %i.dr, %i.dq
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !1610
  %.not250.us = icmp ugt i64 %i.ds, %i.dt
  %i.du = load ptr, ptr %4, align 8, !tbaa !217   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ct
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.du) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br i1 %.not250.us, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  call void @_ZN6duckdb13JSONFormatter10AddNewlineERNS0_11FormatStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, %bb.o, %.lr.ph308.split.us
  call void @_ZN6duckdb13JSONFormatter15FormatComponentERNS0_11FormatStateERNS_13JSONComponentENS0_10InlineModeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.cv, i32 noundef 2)
  %.0149.us = add i64 %.0149306.us, 1             ; 2 uses
  %.not180.us = icmp ugt i64 %.0149.us, %.1159294
  br i1 %.not180.us, label %._crit_edge309, label %.lr.ph308.split.us, !llvm.loop !4822

.loopexit.split.us:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.us, %bb.p
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.split.us:                                        ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.us
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %4, align 8, !tbaa !217   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ct
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

._crit_edge309:                                   ; preds = %bb.t, %.lr.ph308.split, %.thread350, %bb.n
  %.2160348357 = phi i64 [ %.1159294, %.thread350 ], [ %.2160, %.lr.ph308.split ], [ %.2160, %bb.n ], [ %.1159294, %bb.t ]
  store i64 %.2160348357, ptr %i.d, align 8, !tbaa !231
  br label %.critedge185

.lr.ph308.split:                                  ; preds = %bb.n, %.lr.ph308.split
  %.0149306 = phi i64 [ %.0149, %.lr.ph308.split ], [ %.0149303, %bb.n ] ; 2 uses
  %i.dz = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb6vectorINS_13JSONComponentELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %.0149306)
  tail call void @_ZN6duckdb13JSONFormatter15FormatComponentERNS0_11FormatStateERNS_13JSONComponentENS0_10InlineModeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.dz, i32 noundef %.3156)
  %.0149 = add i64 %.0149306, 1                   ; 2 uses
  %.not180 = icmp ugt i64 %.0149, %.2160
  br i1 %.not180, label %._crit_edge309, label %.lr.ph308.split, !llvm.loop !4822

.invoke.i.i:                                      ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.us
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2089) #59
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ea = load ptr, ptr %4, align 8, !tbaa !217, !alias.scope !4826 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ct
  br i1 %i.eb, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.ea) #60
  br label %common.resume

common.resume:                                    ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn243, %bb.bd ], [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ %lpad.phi, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %.split.us
  call void @_ZdlPv(ptr noundef %i.dx) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %.split.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %common.resume

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread224
  %i.ec = load i32, ptr %1, align 8, !tbaa !1608
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ee = load i64, ptr %i.d, align 8, !tbaa !231
  %i.ef = add i64 %i.ee, 1                        ; 2 uses
  %i.eg = load ptr, ptr %i.am, align 8, !tbaa !591
  %i.eh = load ptr, ptr %i.al, align 8, !tbaa !590
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 40
  %i.em = icmp ult i64 %i.ef, %i.el
  br i1 %i.em, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.en = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb6vectorINS_13JSONComponentELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %i.ef)
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !1616
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %.critedge185, label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  tail call void @_ZN6duckdb13JSONFormatter10AddNewlineERNS0_11FormatStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %.critedge185

bb.z:                                             ; preds = %bb.a
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !300
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread229

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203: ; preds = %bb.z
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !217
  %lhsc = load i8, ptr %i.eu, align 1
  %i.ev = icmp eq i8 %lhsc, 125
  br i1 %i.ev, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread229

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !1611
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread229

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread229: ; preds = %bb.z, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread
  %i.ey = phi i64 [ %i.ex, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203 ], [ 1, %bb.z ]
  %i.ez = load i64, ptr %i.a, align 8, !tbaa !231
  %storemerge = tail call i64 @llvm.usub.sat.i64(i64 %i.ez, i64 %i.ey)
  store i64 %storemerge, ptr %i.a, align 8, !tbaa !231
  %i.fa = icmp eq i32 %3, 0
  br i1 %i.fa, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread229
  tail call void @_ZN6duckdb13JSONFormatter10AddNewlineERNS0_11FormatStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread229
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = tail call noundef i64 @_ZN6duckdb8Utf8Proc11RenderWidthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.eq) ; 2 uses
  %i.fd = load i64, ptr %i.b, align 8, !tbaa !231
  %i.fe = add i64 %i.fd, %i.fc
  %i.ff = load i64, ptr %i.c, align 8, !tbaa !1610
  %.not15.i204 = icmp ugt i64 %i.fe, %i.ff
  br i1 %.not15.i204, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN6duckdb13JSONFormatter10AddNewlineERNS0_11FormatStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !1607
  %.not.i206 = icmp eq i32 %i.fh, 0
  br i1 %.not.i206, label %bb.ad, label %.critedge185

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fi = load i64, ptr %i.er, align 8, !tbaa !300 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !300
  %i.fl = sub i64 4611686018427387903, %i.fk
  %i.fm = icmp ult i64 %i.fl, %i.fi
  br i1 %i.fm, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i205

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2089) #59
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i205: ; preds = %bb.ad
  %i.fn = load ptr, ptr %i.eq, align 8, !tbaa !217
  %i.fo = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef %i.fn, i64 noundef %i.fi) ; 0 uses
  %i.fp = load i64, ptr %i.b, align 8, !tbaa !231
  %i.fq = add i64 %i.fp, %i.fc                    ; 2 uses
  store i64 %i.fq, ptr %i.b, align 8, !tbaa !231
  %i.fr = load i64, ptr %i.c, align 8, !tbaa !1610
  %i.fs = icmp ugt i64 %i.fq, %i.fr
  br i1 %i.fs, label %bb.af, label %.critedge185

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i205
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 2, ptr %i.ft, align 8, !tbaa !1607
  br label %.critedge185

bb.ag:                                            ; preds = %bb.a, %bb.a
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fw = tail call noundef i64 @_ZN6duckdb8Utf8Proc11RenderWidthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.fu) ; 2 uses
  %i.fx = load i64, ptr %i.b, align 8, !tbaa !231
  %i.fy = add i64 %i.fx, %i.fw
  %i.fz = load i64, ptr %i.c, align 8, !tbaa !1610
  %.not15.i208 = icmp ugt i64 %i.fy, %i.fz
  br i1 %.not15.i208, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN6duckdb13JSONFormatter10AddNewlineERNS0_11FormatStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !1607
  %.not.i210 = icmp eq i32 %i.gb, 0
  br i1 %.not.i210, label %bb.ai, label %_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit211

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !300 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !300
  %i.gg = sub i64 4611686018427387903, %i.gf
  %i.gh = icmp ult i64 %i.gg, %i.gd
  br i1 %i.gh, label %bb.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i209

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2089) #59
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i209: ; preds = %bb.ai
  %i.gi = load ptr, ptr %i.fu, align 8, !tbaa !217
  %i.gj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, ptr noundef %i.gi, i64 noundef %i.gd) ; 0 uses
  %i.gk = load i64, ptr %i.b, align 8, !tbaa !231
  %i.gl = add i64 %i.gk, %i.fw                    ; 2 uses
  store i64 %i.gl, ptr %i.b, align 8, !tbaa !231
  %i.gm = load i64, ptr %i.c, align 8, !tbaa !1610
  %i.gn = icmp ugt i64 %i.gl, %i.gm
  br i1 %i.gn, label %bb.ak, label %_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit211

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i209
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 2, ptr %i.go, align 8, !tbaa !1607
  br label %_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit211

_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit211: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i209, %bb.ak
  %i.gp = load i32, ptr %1, align 8, !tbaa !1608  ; 2 uses
  %i.gq = icmp eq i32 %i.gp, 2
  br i1 %i.gq, label %.thread230, label %bb.al

bb.al:                                            ; preds = %_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit211
  %i.gr = load i32, ptr %2, align 8, !tbaa !1616
  %i.gs = icmp eq i32 %i.gr, 3
  %i.gt = icmp ne i32 %3, 0
  %or.cond = select i1 %i.gt, i1 true, i1 %i.gs
  br i1 %or.cond, label %bb.am, label %bb.an

.thread230:                                       ; preds = %_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit211
  %.not248 = icmp eq i32 %3, 0
  br i1 %.not248, label %.thread233, label %bb.am

bb.am:                                            ; preds = %.thread230, %bb.al
  tail call void @_ZN6duckdb13JSONFormatter8AddSpaceERNS0_11FormatStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %.critedge185

bb.an:                                            ; preds = %bb.al
  %.not = icmp eq i32 %i.gp, 0
  br i1 %.not, label %.critedge187, label %.thread233

.thread233:                                       ; preds = %.thread230, %bb.an
  %i.gu = load i64, ptr %i.d, align 8, !tbaa !231 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.0137274 = add i64 %i.gu, 1                    ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !591
  %i.gy = load ptr, ptr %i.gv, align 8, !tbaa !590
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = sdiv exact i64 %i.hb, 40
  %i.hd = icmp ult i64 %.0137274, %i.hc
  br i1 %i.hd, label %.lr.ph.preheader, label %.critedge187

.lr.ph.preheader:                                 ; preds = %.thread233
  %i.he = load i64, ptr %i.b, align 8, !tbaa !231
  %i.hf = add i64 %i.he, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread364
  %.0137278 = phi i64 [ %.0137, %.thread364 ], [ %.0137274, %.lr.ph.preheader ] ; 5 uses
  %.0137.in277 = phi i64 [ %.0137278, %.thread364 ], [ %i.gu, %.lr.ph.preheader ]
  %.0138276 = phi i64 [ %spec.select192, %.thread364 ], [ %i.hf, %.lr.ph.preheader ] ; 4 uses
  %.0141275 = phi i64 [ %.1142367, %.thread364 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.hg = load i64, ptr %i.c, align 8, !tbaa !231
  %.not176 = icmp ugt i64 %.0138276, %i.hg
  br i1 %.not176, label %.critedge187, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph
  %i.hh = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb6vectorINS_13JSONComponentELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i64 noundef %.0137278) ; 3 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !1616 ; 2 uses
  switch i32 %i.hi, label %bb.as [
    i32 0, label %bb.ap
    i32 1, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.hj = add i64 %.0141275, 1
  br label %.thread364

bb.aq:                                            ; preds = %bb.ao
  %i.hk = icmp eq i64 %.0141275, 0
  br i1 %i.hk, label %.split, label %bb.ar

.split:                                           ; preds = %bb.aq
  %i.hl = add i64 %.0138276, 1
  %i.hm = load i64, ptr %i.c, align 8, !tbaa !231
  %i.hn = icmp ult i64 %i.hl, %i.hm
  br i1 %i.hn, label %bb.at, label %.critedge187

bb.ar:                                            ; preds = %bb.aq
  %i.ho = add i64 %.0141275, -1
  br label %.thread364

bb.as:                                            ; preds = %bb.ao
  %i.hp = icmp eq i64 %.0141275, 0
  %i.hq = icmp eq i32 %i.hi, 4
  %or.cond247 = and i1 %i.hq, %i.hp
  br i1 %or.cond247, label %.critedge4, label %.thread364

.thread364:                                       ; preds = %bb.ap, %bb.ar, %bb.as
  %.1142367 = phi i64 [ %.0141275, %bb.as ], [ %i.ho, %bb.ar ], [ %i.hj, %bb.ap ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hs = tail call noundef i64 @_ZN6duckdb8Utf8Proc11RenderWidthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.hr)
  %i.ht = add i64 %i.hs, %.0138276
  %i.hu = load i32, ptr %i.hh, align 8, !tbaa !1616
  %.off190 = add i32 %i.hu, -3
  %switch191 = icmp ult i32 %.off190, 2
  %i.hv = zext i1 %switch191 to i64
  %spec.select192 = add i64 %i.ht, %i.hv
  %.0137 = add nuw i64 %.0137278, 1               ; 2 uses
  %i.hw = load ptr, ptr %i.gw, align 8, !tbaa !591
  %i.hx = load ptr, ptr %i.gv, align 8, !tbaa !590
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = sdiv exact i64 %i.ia, 40
  %i.ic = icmp ult i64 %.0137, %i.ib
  br i1 %i.ic, label %.lr.ph, label %.critedge187, !llvm.loop !4823

.critedge4:                                       ; preds = %bb.as
  %i.id = add i64 %.0138276, 2
  %i.ie = load i64, ptr %i.c, align 8, !tbaa !231
  %.not380 = icmp ugt i64 %i.id, %i.ie
  br i1 %.not380, label %.critedge187, label %bb.at

bb.at:                                            ; preds = %.split, %.critedge4
  tail call void @_ZN6duckdb13JSONFormatter8AddSpaceERNS0_11FormatStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %i.if = load i64, ptr %i.d, align 8, !tbaa !231
  %.0134280 = add i64 %i.if, 1                    ; 2 uses
  %i.ig = icmp ult i64 %.0134280, %.0137278
  br i1 %i.ig, label %.lr.ph282, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph282, %bb.at
  store i64 %.0137.in277, ptr %i.d, align 8, !tbaa !231
  br label %.critedge185

.lr.ph282:                                        ; preds = %bb.at, %.lr.ph282
  %.0134281 = phi i64 [ %.0134, %.lr.ph282 ], [ %.0134280, %bb.at ] ; 2 uses
  %i.ih = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb6vectorINS_13JSONComponentELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i64 noundef %.0134281)
  tail call void @_ZN6duckdb13JSONFormatter15FormatComponentERNS0_11FormatStateERNS_13JSONComponentENS0_10InlineModeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ih, i32 noundef 1)
  %.0134 = add nuw i64 %.0134281, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %.0134, %.0137278
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph282, !llvm.loop !4824

.critedge187:                                     ; preds = %.lr.ph, %.thread364, %.split, %.thread233, %.critedge4, %bb.an
  tail call void @_ZN6duckdb13JSONFormatter10AddNewlineERNS0_11FormatStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %.critedge185

bb.au:                                            ; preds = %bb.a, %bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ik = tail call noundef i64 @_ZN6duckdb8Utf8Proc11RenderWidthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ii) ; 2 uses
  %i.il = load i64, ptr %i.b, align 8, !tbaa !231
  %i.im = add i64 %i.il, %i.ik
  %i.in = load i64, ptr %i.c, align 8, !tbaa !1610
  %.not15.i212 = icmp ugt i64 %i.im, %i.in
  br i1 %.not15.i212, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void @_ZN6duckdb13JSONFormatter10AddNewlineERNS0_11FormatStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !1607
  %.not.i214 = icmp eq i32 %i.ip, 0
  br i1 %.not.i214, label %bb.aw, label %.critedge185

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !300 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.it = load i64, ptr %i.is, align 8, !tbaa !300
  %i.iu = sub i64 4611686018427387903, %i.it
  %i.iv = icmp ult i64 %i.iu, %i.ir
  br i1 %i.iv, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i213

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2089) #59
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i213: ; preds = %bb.aw
  %i.iw = load ptr, ptr %i.ii, align 8, !tbaa !217
  %i.ix = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, ptr noundef %i.iw, i64 noundef %i.ir) ; 0 uses
  %i.iy = load i64, ptr %i.b, align 8, !tbaa !231
  %i.iz = add i64 %i.iy, %i.ik                    ; 2 uses
  store i64 %i.iz, ptr %i.b, align 8, !tbaa !231
  %i.ja = load i64, ptr %i.c, align 8, !tbaa !1610
  %i.jb = icmp ugt i64 %i.iz, %i.ja
  br i1 %i.jb, label %bb.ay, label %.critedge185

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i213
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 2, ptr %i.jc, align 8, !tbaa !1607
  br label %.critedge185

bb.az:                                            ; preds = %bb.a
  %i.jd = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2042, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ba unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jd, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_throw(ptr nonnull %i.jd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.be unwind label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread: ; preds = %bb.az
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.0 = phi i1 [ false, %bb.bb ], [ true, %bb.ba ] ; 2 uses
  %i.jf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jg = load ptr, ptr %5, align 8, !tbaa !217   ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.jg) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br i1 %.0, label %bb.bd, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br i1 %.0, label %bb.bd, label %common.resume

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %.pn243 = phi { ptr, i32 } [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread ], [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %i.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ]
  call void @__cxa_free_exception(ptr %i.jd) #58
  br label %common.resume

.critedge185:                                     ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i213, %bb.av, %._crit_edge, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i205, %bb.ac, %._crit_edge309, %bb.x, %_ZN6duckdb13JSONFormatter10AddLiteralERNS0_11FormatStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %.critedge187, %bb.am, %bb.y
  ret void

bb.be:                                            ; preds = %bb.bb
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13JSONFormatter10AddNewlineERNS0_11FormatStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !300  ; 4 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a
  %i.k = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.i, align 8, !tbaa !254
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.f, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !217
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.b
  %i.o = phi ptr [ %.pre.i.i, %bb.b ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 10, ptr %i.p, align 1, !tbaa !254
  store i64 %i.g, ptr %i.e, align 8, !tbaa !300
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !217
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.g
  store i8 0, ptr %i.r, align 1, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.s = load i64, ptr %i.b, align 8, !tbaa !231
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !328
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.s, i8 noundef signext 32)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !300  ; 2 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !300
  %i.x = sub i64 4611686018427387903, %i.w
  %i.y = icmp ult i64 %i.x, %i.v
  br i1 %i.y, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2089) #59
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.z = load ptr, ptr %2, align 8, !tbaa !217
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.z, i64 noundef %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ab = load ptr, ptr %2, align 8, !tbaa !217   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.t
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.ab) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !231
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !231
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1609
  %i.ah = icmp ugt i64 %i.ae, %i.ag
  br i1 %i.ah, label %.sink.split, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8, !tbaa !217   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.t
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.aj) #60
end_hunk_0
