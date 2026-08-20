inline.NumInlined: 1835
inline.NumDeleted: 1081
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotERKNS2_5BlockE:bb.a
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cv, ptr noundef nonnull %i.cl) #19
  %.sroa.046.063 = load ptr, ptr %i.j, align 8    ; 2 uses
  %.not5864 = icmp eq ptr %.sroa.046.063, null
  br i1 %.not5864, label %._crit_edge69, label %.lr.ph68

._crit_edge69:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.h
  %i.cw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 898), align 2, !range !10, !noundef !5
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.m, label %bb.p

.lr.ph68:                                         ; preds = %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %.sroa.046.066 = phi ptr [ %.sroa.046.0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %.sroa.046.063, %bb.h ] ; 2 uses
  %.02365 = phi i64 [ %i.dr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %bb.h ] ; 3 uses
  %.not = icmp eq i64 %.02365, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph68
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.14, i64 noundef 2) #19 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 98, ptr %i.a, align 1
  %i.cz = load ptr, ptr %i.bw, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 -24
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds i8, ptr %i.bw, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i64, ptr %i.dd, align 8
  %.not.i27 = icmp eq i64 %i.de, 0
  br i1 %.not.i27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %i.a, i64 noundef 1) #19
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.l:                                             ; preds = %bb.j
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i8 noundef signext 98) #19 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi ptr [ %i.df, %bb.k ], [ %i.bw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.046.066, i64 52
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.dh, align 4
  %i.di = zext i32 %.sroa.0.0.copyload.i28 to i64
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i64 noundef %i.di) #19
  %i.dk = load ptr, ptr %3, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.02365
  %i.dm = load i8, ptr %i.dl, align 1, !range !10, !noundef !5
  %i.dn = trunc nuw i8 %i.dm to i1                ; 2 uses
  %i.do = select i1 %i.dn, ptr @.str.8, ptr @.str.7
  %not. = xor i1 %i.dn, true
  %i.dp = zext i1 %not. to i64
  %i.dq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull %i.do, i64 noundef %i.dp) #19 ; 0 uses
  %i.dr = add i64 %.02365, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.046.066, i64 64
  %.sroa.046.0 = load ptr, ptr %i.ds, align 8     ; 2 uses
  %.not58 = icmp eq ptr %.sroa.046.0, null
  br i1 %.not58, label %._crit_edge69, label %.lr.ph68

bb.m:                                             ; preds = %._crit_edge69
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.dt, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.du, ptr %5, align 8, !alias.scope !37
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.dv, align 8, !alias.scope !37
  store i8 0, ptr %i.du, align 8, !alias.scope !37
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !37 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.dx, null
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !37 ; 2 uses
  %i.ea = icmp ugt ptr %i.dx, %i.dz
  %.08.i.i.i = select i1 %i.ea, ptr %i.dx, ptr %i.dz ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !37 ; 2 uses
  %i.ed = ptrtoint ptr %.08.i.i.i to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ec, i64 noundef %i.ef) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.o:                                             ; preds = %bb.m
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.o
  %i.eh = load ptr, ptr %5, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.15, i32 noundef %.sroa.0.0.copyload.i30, ptr noundef %i.eh) #19
  %i.ei = load ptr, ptr %5, align 8               ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.du
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ek = load i64, ptr %i.du, align 8
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge69
  %i.em = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.em, ptr %4, align 8
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.eo = getelementptr i8, ptr %i.em, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr %4, i64 %i.ep
  store ptr %i.en, ptr %i.eq, align 8
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.er, ptr %i.bw, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cl, align 8
  %i.es = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.cq
  br i1 %i.et, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.eu = load i64, ptr %i.cq, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cl, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #19
  store ptr %i.bm, ptr %4, align 8
  %i.ew = load i64, ptr %i.bo, align 8
  %i.ex = getelementptr inbounds i8, ptr %4, i64 %i.ew
  store ptr %i.bn, ptr %i.ex, align 8
  store i64 0, ptr %i.br, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bh) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.f
  %i.ey = load ptr, ptr %2, align 8               ; 3 uses
  %i.ez = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.fa = icmp ne ptr %i.ey, %i.ez
  %.012.i.i = getelementptr inbounds i8, ptr %i.ez, i64 -8 ; 2 uses
  %i.fb = icmp ult ptr %i.ey, %.012.i.i
  %or.cond.i.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %bb.q ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.fd, %.lr.ph.i.i ], [ %i.ey, %bb.q ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.0913.i.i, align 8
  %i.fc = load i64, ptr %.014.i.i, align 8
  store i64 %i.fc, ptr %.0913.i.i, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.014.i.i, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 8 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -8 ; 2 uses
  %i.fe = icmp ult ptr %i.fd, %.0.i.i
  br i1 %i.fe, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit, !llvm.loop !38

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %bb.q
  %i.ff = load ptr, ptr %3, align 8               ; 12 uses
  %i.fg = ptrtoaddr ptr %i.ff to i64              ; 4 uses
  %i.fh = load ptr, ptr %i.g, align 8             ; 6 uses
  %i.fi = ptrtoaddr ptr %i.fh to i64              ; 2 uses
  %i.fj = icmp ne ptr %i.ff, %i.fh
  %.012.i.i31 = getelementptr inbounds i8, ptr %i.fh, i64 -1 ; 7 uses
  %i.fk = icmp ult ptr %i.ff, %.012.i.i31
  %or.cond.i.i32 = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond.i.i32, label %iter.check, label %_ZSt7reverseIPbEvT_S1_.exit

iter.check:                                       ; preds = %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit
  %i.fl = add i64 %i.fi, -2
  %i.fm = add i64 %i.fg, 1
  %umax79 = call i64 @llvm.umax.i64(i64 %i.fl, i64 %i.fm)
  %i.fn = xor i64 %i.fg, -1
  %i.fo = add i64 %umax79, %i.fn                  ; 2 uses
  %i.fp = icmp ne i64 %i.fo, 0
  %umin80 = zext i1 %i.fp to i64                  ; 2 uses
  %i.fq = sub i64 %i.fo, %umin80
  %i.fr = lshr i64 %i.fq, 1
  %i.fs = add nuw i64 %i.fr, %umin80
  %i.ft = add i64 %i.fs, 1                        ; 7 uses
  %min.iters.check = icmp ult i64 %i.ft, 4
  br i1 %min.iters.check, label %.lr.ph.i.i33.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fu = add i64 %i.fi, -2
  %i.fv = add i64 %i.fg, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.fu, i64 %i.fv)
  %i.fw = xor i64 %i.fg, -1
  %i.fx = add i64 %umax, %i.fw                    ; 2 uses
  %i.fy = icmp ne i64 %i.fx, 0
  %umin = zext i1 %i.fy to i64                    ; 3 uses
  %i.fz = sub i64 %i.fx, %umin
  %i.ga = lshr i64 %i.fz, 1                       ; 2 uses
  %6 = getelementptr i8, ptr %i.ff, i64 %i.ga
  %i.gb = getelementptr i8, ptr %6, i64 %umin
  %scevgep = getelementptr i8, ptr %i.gb, i64 1
  %7 = add nuw i64 %i.ga, %umin
  %i.gc = xor i64 %7, -1
  %scevgep78 = getelementptr i8, ptr %i.fh, i64 %i.gc
  %bound0 = icmp ult ptr %i.ff, %i.fh
  %bound1 = icmp ult ptr %scevgep78, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i33.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check81 = icmp ult i64 %i.ft, 16
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gd = and i64 %i.ft, 12
  %n.vec = and i64 %i.ft, -16                     ; 5 uses
  %i.ge = sub i64 0, %n.vec
  %i.gf = getelementptr i8, ptr %.012.i.i31, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.ff, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gh = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.012.i.i31, i64 %i.gh
  %next.gep82 = getelementptr i8, ptr %i.ff, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep82, align 1, !alias.scope !39, !noalias !42
  %i.gi = getelementptr i8, ptr %next.gep, i64 -15 ; 2 uses
  %wide.load83 = load <16 x i8>, ptr %i.gi, align 1, !alias.scope !42
  %reverse = shufflevector <16 x i8> %wide.load83, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %next.gep82, align 1, !alias.scope !39, !noalias !42
  %reverse84 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse84, ptr %i.gi, align 1, !alias.scope !42
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ft, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIPbEvT_S1_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i33.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec86 = and i64 %i.ft, -4                    ; 4 uses
  %i.gk = sub i64 0, %n.vec86
  %i.gl = getelementptr i8, ptr %.012.i.i31, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.ff, i64 %n.vec86
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 3 uses
  %i.gn = sub i64 0, %index87
  %next.gep88 = getelementptr i8, ptr %.012.i.i31, i64 %i.gn
  %next.gep89 = getelementptr i8, ptr %i.ff, i64 %index87 ; 2 uses
  %wide.load90 = load <4 x i8>, ptr %next.gep89, align 1, !alias.scope !39, !noalias !42
  %i.go = getelementptr i8, ptr %next.gep88, i64 -3 ; 2 uses
  %wide.load91 = load <4 x i8>, ptr %i.go, align 1, !alias.scope !42
  %reverse92 = shufflevector <4 x i8> %wide.load91, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse92, ptr %next.gep89, align 1, !alias.scope !39, !noalias !42
  %reverse93 = shufflevector <4 x i8> %wide.load90, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse93, ptr %i.go, align 1, !alias.scope !42
  %index.next94 = add nuw i64 %index87, 4         ; 2 uses
  %i.gp = icmp eq i64 %index.next94, %n.vec86
  br i1 %i.gp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n95 = icmp eq i64 %i.ft, %n.vec86
  br i1 %cmp.n95, label %_ZSt7reverseIPbEvT_S1_.exit.loopexit, label %.lr.ph.i.i33.preheader

.lr.ph.i.i33.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.i.i34.ph = phi ptr [ %.012.i.i31, %iter.check ], [ %.012.i.i31, %vector.memcheck ], [ %i.gf, %vec.epilog.iter.check ], [ %i.gl, %vec.epilog.middle.block ]
  %.0913.i.i35.ph = phi ptr [ %i.ff, %iter.check ], [ %i.ff, %vector.memcheck ], [ %i.gg, %vec.epilog.iter.check ], [ %i.gm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %.lr.ph.i.i33.preheader, %.lr.ph.i.i33
  %.014.i.i34 = phi ptr [ %.0.i.i36, %.lr.ph.i.i33 ], [ %.014.i.i34.ph, %.lr.ph.i.i33.preheader ] ; 3 uses
  %.0913.i.i35 = phi ptr [ %i.gs, %.lr.ph.i.i33 ], [ %.0913.i.i35.ph, %.lr.ph.i.i33.preheader ] ; 3 uses
  %i.gq = load i8, ptr %.0913.i.i35, align 1, !range !10, !noundef !5
  %i.gr = load i8, ptr %.014.i.i34, align 1, !range !10, !noundef !5
  store i8 %i.gr, ptr %.0913.i.i35, align 1
  store i8 %i.gq, ptr %.014.i.i34, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.0913.i.i35, i64 1 ; 2 uses
  %.0.i.i36 = getelementptr inbounds i8, ptr %.014.i.i34, i64 -1 ; 2 uses
  %i.gt = icmp ult ptr %i.gs, %.0.i.i36
  br i1 %i.gt, label %.lr.ph.i.i33, label %_ZSt7reverseIPbEvT_S1_.exit.loopexit, !llvm.loop !47

_ZSt7reverseIPbEvT_S1_.exit.loopexit:             ; preds = %.lr.ph.i.i33, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %3, align 8
  %.pre70 = load ptr, ptr %i.g, align 8
  br label %_ZSt7reverseIPbEvT_S1_.exit

_ZSt7reverseIPbEvT_S1_.exit:                      ; preds = %_ZSt7reverseIPbEvT_S1_.exit.loopexit, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit
  %i.gu = phi ptr [ %.pre70, %_ZSt7reverseIPbEvT_S1_.exit.loopexit ], [ %i.fh, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit ]
  %i.gv = phi ptr [ %.pre, %_ZSt7reverseIPbEvT_S1_.exit.loopexit ], [ %i.ff, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE8SnapshotEEvT_SB_.exit ] ; 2 uses
  %i.gw = load ptr, ptr %2, align 8               ; 2 uses
  %i.gx = load ptr, ptr %i.c, align 8
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 3
  %i.hc = ptrtoint ptr %i.gu to i64
  %i.hd = ptrtoint ptr %i.gv to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr %i.gw, i64 %i.hb, ptr %i.gv, i64 %i.he) ; 0 uses
  call preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft13SnapshotTableINS2_4wasm9ValueTypeENS4_9NoKeyDataEE8SnapshotELm8ESaISA_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer21ProcessBranchOnTargetERKNS2_8BranchOpERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(100) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr                 ; 9 uses
  %i.j = load i8, ptr %i.i, align 4
  switch i8 %i.j, label %.critedge [
    i8 18, label %bb.b
    i8 15, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, %2
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.m, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i52 = load i32, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.020.0.copyload = load i32, ptr %i.o, align 4
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %.sroa.0.0.copyload.i.i52, i32 %.sroa.020.0.copyload, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %.critedge

.preheader:                                       ; preds = %bb.b, %bb.f
  %.sroa.08.0.i.i.in = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.b ]
  %.sroa.08.0.i.i = load i32, ptr %.sroa.08.0.i.i.in, align 4 ; 2 uses
  %i.q = zext i32 %.sroa.08.0.i.i to i64
  %i.r = add i64 %i.q, %i.f
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4
  switch i8 %i.t, label %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer15GetResolvedTypeENS2_7OpIndexE.exit [
    i8 19, label %bb.f
    i8 16, label %bb.d
    i8 22, label %bb.e
  ]

bb.d:                                             ; preds = %.preheader
  br label %bb.f

bb.e:                                             ; preds = %.preheader
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.preheader
  %.sink.i.i = phi i64 [ 8, %bb.e ], [ 12, %bb.d ], [ 16, %.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink.i.i
  br label %.preheader

_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer15GetResolvedTypeENS2_7OpIndexE.exit: ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = tail call i32 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.v, i32 %.sroa.08.0.i.i) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.015.0.copyload = load i32, ptr %i.x, align 4 ; 2 uses
  %i.y = icmp eq i32 %i.w, %.sroa.015.0.copyload
  br i1 %i.y, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit, !prof !13

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer15GetResolvedTypeENS2_7OpIndexE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %i.w, i32 %.sroa.015.0.copyload, ptr noundef %i.aa, ptr noundef %i.aa) #19
  br i1 %i.ab, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread, label %.critedge

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer15GetResolvedTypeENS2_7OpIndexE.exit, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ac, align 4 ; 3 uses
  %i.ad = and i32 %.sroa.0.0.copyload.i, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp sgt i32 %.sroa.0.0.copyload.i, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = lshr i32 %.sroa.0.0.copyload.i, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = or i64 %i.am, %i.af
  store i64 %i.an, ptr %i.al, align 8
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 898), align 2, !range !10, !noundef !5
end_hunk_0
