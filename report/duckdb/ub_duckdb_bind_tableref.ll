inline.NumInlined: 9358
inline.NumDeleted: 4125
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6duckdb6Binder27BindTableFunctionParametersERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEERNS3_INS_11LogicalTypeELb1ESaISC_EEERNS3_INS_5ValueELb1ESaISG_EEERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_NS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSQ_SG_EEERNS_14BoundStatementERNS_9ErrorDataE:bb.a
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 13
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 14
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 15
  %i.co = load i8, ptr %next.gep432.a, align 8, !tbaa !547
  %i.cp = load i8, ptr %next.gep433.a, align 8, !tbaa !547
  %i.cq = load i8, ptr %next.gep434.a, align 8, !tbaa !547
  %i.cr = load i8, ptr %next.gep435.a, align 8, !tbaa !547
  %i.cs = load i8, ptr %next.gep436.a, align 8, !tbaa !547
  %i.ct = load i8, ptr %next.gep437.a, align 8, !tbaa !547
  %i.cu = load i8, ptr %next.gep438.a, align 8, !tbaa !547
  %i.cv = load i8, ptr %next.gep439.a, align 8, !tbaa !547
  %i.cw = load i8, ptr %next.gep440.a, align 8, !tbaa !547
  %i.cx = load i8, ptr %next.gep441.a, align 8, !tbaa !547
  %i.cy = load i8, ptr %next.gep442.a, align 8, !tbaa !547
  %i.cz = load i8, ptr %next.gep443.a, align 8, !tbaa !547
  %i.da = load i8, ptr %next.gep444.a, align 8, !tbaa !547
  %i.db = load i8, ptr %next.gep445.a, align 8, !tbaa !547
  %i.dc = load i8, ptr %next.gep446.a, align 8, !tbaa !547
  %i.dd = load i8, ptr %next.gep447, align 8, !tbaa !547
  %i.de = insertelement <16 x i8> poison, i8 %i.co, i64 0
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 1
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 2
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 3
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 4
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 5
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 6
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 7
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 8
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 9
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 10
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 11
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 12
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 13
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 14
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 15
  %i.du = icmp eq <16 x i8> %i.cn, splat (i8 103)
  %i.dv = icmp eq <16 x i8> %i.dt, splat (i8 103)
  %i.dw = or <16 x i1> %vec.phi, %i.du            ; 2 uses
  %i.dx = or <16 x i1> %vec.phi416, %i.dv         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !1787

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.dx, %i.dw
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.dz = bitcast <16 x i1> %bin.rdx.fr to i16
  %i.ea = icmp ne i16 %i.dz, 0
  %rdx.select = select i1 %i.ea, i1 true, i1 %.05033.i ; 3 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !1788

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %rdx.select, %vec.epilog.iter.check ], [ %.05033.i, %vector.main.loop.iter.check ]
  %i.eb = xor i1 %bc.merge.rdx, %.05033.i
  %n.vec449 = and i64 %i.z, 2305843009213693944   ; 3 uses
  %i.ec = mul i64 %n.vec449, 24
  %i.ed = getelementptr i8, ptr %i.r, i64 %i.ec
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %i.eb, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index450 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next460, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi451 = phi <8 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr465, %vec.epilog.vector.body ]
  %i.ee = mul i64 %index450, 24                   ; 8 uses
  %next.gep452.a = getelementptr i8, ptr %i.r, i64 %i.ee
  %i.ef = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep453.a = getelementptr i8, ptr %i.ef, i64 24
  %i.eg = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep454.a = getelementptr i8, ptr %i.eg, i64 48
  %i.eh = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep455.a = getelementptr i8, ptr %i.eh, i64 72
  %i.ei = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep456.a = getelementptr i8, ptr %i.ei, i64 96
  %i.ej = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep457.a = getelementptr i8, ptr %i.ej, i64 120
  %i.ek = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep458.a = getelementptr i8, ptr %i.ek, i64 144
  %i.el = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep459 = getelementptr i8, ptr %i.el, i64 168
  %i.em = load i8, ptr %next.gep452.a, align 8, !tbaa !547
  %i.en = load i8, ptr %next.gep453.a, align 8, !tbaa !547
  %i.eo = load i8, ptr %next.gep454.a, align 8, !tbaa !547
  %i.ep = load i8, ptr %next.gep455.a, align 8, !tbaa !547
  %i.eq = load i8, ptr %next.gep456.a, align 8, !tbaa !547
  %i.er = load i8, ptr %next.gep457.a, align 8, !tbaa !547
  %i.es = load i8, ptr %next.gep458.a, align 8, !tbaa !547
  %i.et = load i8, ptr %next.gep459, align 8, !tbaa !547
  %i.eu = insertelement <8 x i8> poison, i8 %i.em, i64 0
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.en, i64 1
  %i.ew = insertelement <8 x i8> %i.ev, i8 %i.eo, i64 2
  %i.ex = insertelement <8 x i8> %i.ew, i8 %i.ep, i64 3
  %i.ey = insertelement <8 x i8> %i.ex, i8 %i.eq, i64 4
  %i.ez = insertelement <8 x i8> %i.ey, i8 %i.er, i64 5
  %i.fa = insertelement <8 x i8> %i.ez, i8 %i.es, i64 6
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.et, i64 7
  %i.fc = icmp eq <8 x i8> %i.fb, splat (i8 103)
  %i.fd = or <8 x i1> %vec.phi451, %i.fc
  %.fr465 = freeze <8 x i1> %i.fd                 ; 2 uses
  %index.next460 = add nuw i64 %index450, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next460, %n.vec449
  br i1 %i.fe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1789

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ff = bitcast <8 x i1> %.fr465 to i8
  %i.fg = icmp ne i8 %i.ff, 0
  %rdx.select461 = select i1 %i.fg, i1 true, i1 %.05033.i ; 2 uses
  %cmp.n462 = icmp eq i64 %i.z, %n.vec449
  br i1 %cmp.n462, label %._crit_edge.i, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.15129.i.ph = phi i1 [ %.05033.i, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select461, %vec.epilog.middle.block ]
  %.sroa.01.028.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  br label %.lr.ph30.i

._crit_edge.i:                                    ; preds = %.lr.ph30.i, %middle.block, %vec.epilog.middle.block, %.lr.ph35.i
  %.151.lcssa.i = phi i1 [ %.05033.i, %.lr.ph35.i ], [ %rdx.select461, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %spec.select.i, %.lr.ph30.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1790
  %.not60.i = icmp eq ptr %i.fi, null
  br i1 %.not60.i, label %bb.c, label %bb.j

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.15129.i = phi i1 [ %spec.select.i, %.lr.ph30.i ], [ %.15129.i.ph, %.lr.ph30.i.preheader ]
  %.sroa.01.028.i = phi ptr [ %i.fl, %.lr.ph30.i ], [ %.sroa.01.028.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  %i.fj = load i8, ptr %.sroa.01.028.i, align 8, !tbaa !547
  %i.fk = icmp eq i8 %i.fj, 103
  %spec.select.i = select i1 %i.fk, i1 true, i1 %.15129.i ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i, i64 24 ; 2 uses
  %.not18.i = icmp eq ptr %i.fl, %i.t
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph30.i, !llvm.loop !1791

bb.c:                                             ; preds = %._crit_edge.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1792
  %.not61.i = icmp eq ptr %i.fn, null
  br i1 %.not61.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.fo = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1793
  %.not62.i = icmp eq ptr %i.fp, null
  br i1 %.not62.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.fq = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1794
  %.not63.i = icmp eq ptr %i.fr, null
  br i1 %.not63.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.fs = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.127, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ft)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.fs, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.u unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.f
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.035.i = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fw = load ptr, ptr %9, align 8, !tbaa !149   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.fw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.035.i, label %.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.035.i, label %.sink.split.i, label %common.resume

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.156.i = phi i8 [ 1, %._crit_edge.i ], [ %.05531.i, %bb.e ], [ %.05531.i, %bb.d ], [ %.05531.i, %bb.c ] ; 3 uses
  %.154.i = phi i1 [ %.05332.i, %._crit_edge.i ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.fz = add nuw i64 %.04934.i, 1                ; 2 uses
  %i.ga = load ptr, ptr %i.m, align 8, !tbaa !1783
  %i.gb = load ptr, ptr %i.l, align 8, !tbaa !1786
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd                    ; 2 uses
  %i.gf = sdiv exact i64 %i.ge, 544
  %i.gg = icmp ult i64 %i.fz, %i.gf
  br i1 %i.gg, label %.lr.ph35.i, label %._crit_edge36.i, !llvm.loop !1795

bb.k:                                             ; preds = %._crit_edge36.i
  %i.gh = icmp eq i64 %i.ge, 544
  br i1 %i.gh, label %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit.thread213, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gi = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.128, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i

bb.m:                                             ; preds = %bb.l
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.gj)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.gi, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.u unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i: ; preds = %bb.l
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %.033.i = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gm = load ptr, ptr %11, align 8, !tbaa !149  ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.gm) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br i1 %.033.i, label %.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br i1 %.033.i, label %.sink.split.i, label %common.resume

bb.p:                                             ; preds = %._crit_edge36.i
  %i.gp = trunc nuw i8 %.156.i to i1
  %or.cond.i = select i1 %i.gp, i1 %.154.i, i1 false
  br i1 %or.cond.i, label %bb.q, label %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit

bb.q:                                             ; preds = %bb.p
  %i.gq = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.129, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread.i

bb.r:                                             ; preds = %bb.q
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.gr)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.gq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.u unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread.i: ; preds = %bb.q
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gu = load ptr, ptr %13, align 8, !tbaa !149  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.gu) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.0.i, label %.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.0.i, label %.sink.split.i, label %common.resume

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.sink.i = phi ptr [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i ], [ %i.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread.i ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i ]
  %.pn64.pn.ph.i = phi { ptr, i32 } [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i ], [ %i.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i ], [ %i.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread.i ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #24
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  %common.resume.op = phi { ptr, i32 } [ %.pn108.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn64.pn.ph.i, %.sink.split.i ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.s, %bb.n, %bb.h
  unreachable

_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit: ; preds = %bb.p
  %.not221 = icmp eq i8 %.156.i, 0
  br i1 %.not221, label %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit.thread213, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit
  tail call void @_ZN6duckdb6Binder27BindTableInTableOutFunctionERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_14BoundStatementE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(136) %6)
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gy = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.gx) ; 0 uses
  br label %.critedge

_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit.thread213: ; preds = %bb.b, %bb.k, %bb.a, %.preheader.i, %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit
  %.144.i212 = phi i1 [ false, %.preheader.i ], [ false, %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit ], [ false, %bb.a ], [ true, %bb.k ], [ false, %bb.b ]
  %i.gz = load ptr, ptr %2, align 8, !tbaa !530   ; 2 uses
  %i.ha = load ptr, ptr %i.e, align 8, !tbaa !530 ; 2 uses
  %.not222356 = icmp eq ptr %i.gz, %i.ha
  br i1 %.not222356, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit.thread213
  %i.hb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hf = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hh = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hl = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %31, i64 72 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %31, i64 88 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %31, i64 80
  %i.hq = getelementptr inbounds nuw i8, ptr %31, i64 120
  %i.hr = getelementptr inbounds nuw i8, ptr %31, i64 40
  %i.hs = getelementptr inbounds nuw i8, ptr %31, i64 56
  %i.ht = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %23, i64 136
  %i.ib = getelementptr inbounds nuw i8, ptr %23, i64 152
  %i.ic = getelementptr inbounds nuw i8, ptr %23, i64 104
  %i.id = getelementptr inbounds nuw i8, ptr %23, i64 120
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %16, i64 264
  %i.ig = getelementptr inbounds nuw i8, ptr %16, i64 520
  %i.ih = getelementptr inbounds nuw i8, ptr %16, i64 528
  %i.ii = getelementptr inbounds nuw i8, ptr %16, i64 536
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ik = getelementptr inbounds nuw i8, ptr %16, i64 136
  %i.il = getelementptr inbounds nuw i8, ptr %16, i64 144
  %i.im = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %19, i64 72 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %19, i64 88 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.is = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.it = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.iu = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.iv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %25, i64 30
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.en
  %.055358 = phi i1 [ false, %.lr.ph ], [ %.257, %bb.en ] ; 2 uses
  %.sroa.0208.0357 = phi ptr [ %i.gz, %.lr.ph ], [ %i.sq, %bb.en ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store ptr %i.hb, ptr %15, align 8, !tbaa !144
  store i64 0, ptr %i.hc, align 8, !tbaa !117
  store i8 0, ptr %i.hb, align 8, !tbaa !148
  %i.iy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0208.0357)
          to label %bb.x unwind label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load i8, ptr %i.iz, align 8, !tbaa !889
  %i.jb = icmp eq i8 %i.ja, 25
  br i1 %i.jb, label %bb.y, label %bb.al

bb.y:                                             ; preds = %bb.x
  %i.jc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0208.0357)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.jd = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb14BaseExpression4CastINS_20ComparisonExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.jc)
          to label %bb.aa unwind label %bb.aj     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 56 ; 2 uses
  %i.jf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.je)
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load i8, ptr %i.jg, align 8, !tbaa !889
  %i.ji = icmp eq i8 %i.jh, -53
  br i1 %i.ji, label %bb.ac, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.jj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.je)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.jk = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN6duckdb14BaseExpression4CastINS_19ColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.jj)
          to label %bb.ae unwind label %bb.ak     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.jl = invoke noundef zeroext i1 @_ZNK6duckdb19ColumnRefExpression11IsQualifiedEv(ptr noundef nonnull align 8 dereferenceable(80) %i.jk)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  br i1 %i.jl, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb19ColumnRefExpression13GetColumnNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.jk)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.jm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ah
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 64 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !154
  store ptr null, ptr %i.jn, align 8, !tbaa !154
  %i.jp = load ptr, ptr %.sroa.0208.0357, align 8, !tbaa !154 ; 3 uses
  store ptr %i.jo, ptr %.sroa.0208.0357, align 8, !tbaa !154
  %.not.i.i.i.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !172
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(56) %i.jp) #24, !inline_history !1029
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.ai:                                            ; preds = %bb.ao, %bb.ap, %bb.an, %bb.al, %bb.w
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.aj:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ak:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.al:                                            ; preds = %bb.x
  %i.jw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0208.0357)
          to label %bb.am unwind label %bb.ai

bb.am:                                            ; preds = %bb.al
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !117
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ka = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0208.0357)
          to label %bb.ao unwind label %bb.ai

bb.ao:                                            ; preds = %bb.an
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.kb)
          to label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit unwind label %bb.ai

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.ao, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.ab, %bb.af, %bb.am
  br i1 %.144.i212, label %bb.ap, label %bb.ct

bb.ap:                                            ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.kc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0208.0357)
          to label %bb.aq unwind label %bb.ai

bb.aq:                                            ; preds = %bb.ap
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load i8, ptr %i.kd, align 8, !tbaa !889
  %i.kf = icmp eq i8 %i.ke, -81
  br i1 %i.kf, label %bb.ar, label %bb.ct

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  %i.kg = invoke noundef nonnull align 8 dereferenceable(544) ptr @_ZN6duckdb6vectorINS_13TableFunctionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i64 noundef 0)
          to label %.noexc unwind label %bb.ba    ; 5 uses

.noexc:                                           ; preds = %bb.ar
  invoke void @_ZN6duckdb28SimpleNamedParameterFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(544) %16, ptr noundef nonnull align 8 dereferenceable(544) %i.kg)
          to label %.noexc115 unwind label %bb.ba

.noexc115:                                        ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb13TableFunctionE, i64 16), ptr %16, align 8, !tbaa !172, !alias.scope !1796
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 264
end_hunk_0
