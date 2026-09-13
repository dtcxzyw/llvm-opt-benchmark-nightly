Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3LinkDot?download=true
inline.NumInlined: 14877
inline.NumDeleted: 2437
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN18LinkDotFindVisitor5visitEP11AstGenBlock:bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.l:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.at = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !76
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.k
  %.pn44 = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.as, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.q

bb.m:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %6, align 8, !tbaa !74
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !75
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85 unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85: ; preds = %bb.n
  %i.bc = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !76
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.p:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.p
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !76
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.o
  %.pn46 = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.bi, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.h
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.aj, %bb.h ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bk

bb.r:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bp, ptr %7, align 8, !tbaa !141, !alias.scope !1161
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !74, !noalias !1161 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !75, !noalias !1161 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !1161
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !146, !noalias !1161
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.r
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.bu, ptr %7, align 8, !tbaa !74, !alias.scope !1161
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !146, !noalias !1161
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !76, !alias.scope !1161
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.r
  %i.bw = phi ptr [ %i.bu, %.noexc.i.i ], [ %i.bp, %bb.r ] ; 2 uses
  switch i64 %i.bs, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNK11AstGenBlock4nameB5cxx11Ev.exit
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.bx = load i8, ptr %i.bq, align 1, !tbaa !76
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !76
  br label %_ZNK11AstGenBlock4nameB5cxx11Ev.exit

bb.t:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bq, i64 %i.bs, i1 false)
  br label %_ZNK11AstGenBlock4nameB5cxx11Ev.exit

_ZNK11AstGenBlock4nameB5cxx11Ev.exit:             ; preds = %._crit_edge.i.i.i, %bb.s, %bb.t
  %i.by = load i64, ptr %i.c, align 8, !tbaa !146, !noalias !1161 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !75, !alias.scope !1161
  %i.ca = load ptr, ptr %7, align 8, !tbaa !74, !alias.scope !1161
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !1161
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !75 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNK11AstGenBlock4nameB5cxx11Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !1164, !range !144, !noundef !145
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bp
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cj = load i64, ptr %i.bp, align 8, !tbaa !76
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.cg, label %bb.u, label %.loopexit186

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.028207 = load ptr, ptr %i.cl, align 8, !tbaa !335 ; 2 uses
  %.not49208 = icmp eq ptr %.028207, null
  br i1 %.not49208, label %.loopexit186, label %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit

bb.v:                                             ; preds = %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %.028209, i64 8
  %.028 = load ptr, ptr %i.cm, align 8, !tbaa !335 ; 2 uses
  %.not49 = icmp eq ptr %.028, null
  br i1 %.not49, label %.loopexit186, label %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit, !llvm.loop !1145

_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit:            ; preds = %bb.u, %bb.v
  %.028209 = phi ptr [ %.028, %bb.v ], [ %.028207, %bb.u ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.028209, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.cn, align 8, !tbaa !244
  switch i16 %.sroa.0.0.copyload.i.i.i, label %bb.v [
    i16 68, label %bb.w
    i16 479, label %bb.w
  ]

bb.w:                                             ; preds = %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.co, ptr %8, align 8, !tbaa !141
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !75
  store i8 0, ptr %i.co, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !206
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 336
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !187 ; 9 uses
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %._crit_edge.i.i, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

._crit_edge.i.i:                                  ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.cv, ptr %9, align 8, !tbaa !141
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !75
  store i8 0, ptr %i.cv, align 8, !tbaa !76
  br label %.critedge68

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %i.cx = icmp ult i8 %i.ct, 10
  %i.cy = icmp ult i8 %i.ct, 100
  %. = select i1 %i.cy, i32 2, i32 3              ; 2 uses
  %i.cz = zext nneg i32 %. to i64
  %i.da = select i1 %i.cx, i64 1, i64 %i.cz       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.db, ptr %10, align 8, !tbaa !141, !alias.scope !1165
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.da, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.dc = load ptr, ptr %10, align 8, !tbaa !74, !alias.scope !1165 ; 4 uses
  %i.dd = icmp ugt i8 %i.ct, 99
  br i1 %i.dd, label %._crit_edge.i.i100.thread, label %._crit_edge.i.i100

._crit_edge.i.i100.thread:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.de = urem i8 %i.ct, 100
  %i.df = shl nuw i8 %i.de, 1
  %i.dg = udiv i8 %i.ct, 100
  %i.dh = zext i8 %i.df to i64
  %i.di = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !76, !noalias !1165
  %i.dl = getelementptr i8, ptr %i.dc, i64 %i.da
  %i.dm = getelementptr i8, ptr %i.dl, i64 -1
  store i8 %i.dk, ptr %i.dm, align 1, !tbaa !76
  %i.dn = load i8, ptr %i.di, align 2, !tbaa !76, !noalias !1165
  %i.do = zext nneg i32 %. to i64
  %i.dp = getelementptr i8, ptr %i.dc, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 -2
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !76
  br label %bb.y

._crit_edge.i.i100:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.dr = icmp ugt i8 %i.ct, 9
  br i1 %i.dr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i100
  %i.ds = shl nuw i8 %i.ct, 1
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !76, !noalias !1165
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !76
  %i.dy = load i8, ptr %i.du, align 2, !tbaa !76, !noalias !1165
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.y:                                             ; preds = %._crit_edge.i.i100.thread, %._crit_edge.i.i100
  %.0.lcssa.i.i284 = phi i8 [ %i.dg, %._crit_edge.i.i100.thread ], [ %i.ct, %._crit_edge.i.i100 ]
  %i.dz = or disjoint i8 %.0.lcssa.i.i284, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.z:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #25
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.x, %bb.y
  %storemerge.i.i = phi i8 [ %i.dz, %bb.y ], [ %i.dy, %bb.x ]
  store i8 %storemerge.i.i, ptr %i.dc, align 1, !tbaa !76
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !75, !noalias !1166
  %i.ee = icmp eq i64 %i.ed, 4611686018427387903
  br i1 %i.ee, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.aa:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #27
          to label %.noexc102 unwind label %bb.as

.noexc102:                                        ; preds = %bb.aa
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.657, i64 noundef 1)
          to label %.noexc103 unwind label %bb.as ; 6 uses

.noexc103:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.eg, ptr %9, align 8, !tbaa !141, !alias.scope !1166
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !74 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 5 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

bb.ab:                                            ; preds = %.noexc103
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !75 ; 3 uses
  %i.em = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.em)
  %i.en = add nuw nsw i64 %i.el, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eg, ptr noundef nonnull align 8 dereferenceable(1) %i.ei, i64 %i.en, i1 false)
  br label %.critedge65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %.noexc103
  store ptr %i.eh, ptr %9, align 8, !tbaa !74, !alias.scope !1166
  %i.eo = load i64, ptr %i.ei, align 8, !tbaa !76
  store i64 %i.eo, ptr %i.eg, align 8, !tbaa !76, !alias.scope !1166
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !75
  br label %.critedge65

.critedge65:                                      ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  %i.ep = phi i64 [ %i.el, %bb.ab ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ep, ptr %i.er, align 8, !tbaa !75, !alias.scope !1166
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !74
  store i64 0, ptr %i.eq, align 8, !tbaa !75
  store i8 0, ptr %i.ei, align 8, !tbaa !76
  %i.es = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.db
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %.critedge65
  %i.eu = load i64, ptr %i.db, align 8, !tbaa !76
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %.critedge65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge68

.critedge68:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %._crit_edge.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK7VSymEnt10findIdFlatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.critedge68
  %i.ff = load i32, ptr %i.ew, align 4, !tbaa !427
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.ew, align 4, !tbaa !427
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %i.fh = load ptr, ptr %9, align 8, !tbaa !74, !noalias !1167
  %i.fi = load i64, ptr %i.ex, align 8, !tbaa !75, !noalias !1167 ; 3 uses
  store ptr %i.ey, ptr %12, align 8, !tbaa !141, !alias.scope !1168
  store i64 0, ptr %i.ez, align 8, !tbaa !75, !alias.scope !1168
  store i8 0, ptr %i.ey, align 8, !tbaa !76, !alias.scope !1168
  %i.fj = add i64 %i.fi, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.fj)
          to label %bb.ad unwind label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.fk = load i64, ptr %i.ez, align 8, !tbaa !75, !alias.scope !1168
  %i.fl = add i64 %i.fk, -4611686018427387894
  %i.fm = icmp ult i64 %i.fl, 10
  br i1 %i.fm, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.fn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.658, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.fo = load i64, ptr %i.ez, align 8, !tbaa !75, !alias.scope !1168
  %i.fp = sub i64 4611686018427387903, %i.fo
  %i.fq = icmp ult i64 %i.fp, %i.fi
  br i1 %i.fq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #27
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.fr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.fh, i64 noundef %i.fi)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fs = load ptr, ptr %12, align 8, !tbaa !74, !alias.scope !1168 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ey
  br i1 %i.ft, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %i.ew)
          to label %bb.af unwind label %bb.at

bb.af:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %i.fu = load i64, ptr %i.ez, align 8, !tbaa !75, !noalias !1169 ; 4 uses
  %i.fv = load i64, ptr %i.fa, align 8, !tbaa !75, !noalias !1169 ; 4 uses
  %i.fw = add i64 %i.fv, %i.fu                    ; 2 uses
  %i.fx = load ptr, ptr %12, align 8, !tbaa !74, !noalias !1169 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.ey
  br i1 %i.fy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109: ; preds = %bb.af
  %i.fz = icmp ult i64 %i.fu, 16
  call void @llvm.assume(i1 %i.fz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.af
  %i.ga = load i64, ptr %i.ey, align 8, !tbaa !76, !noalias !1169
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109
  %i.gb = phi i64 [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109 ]
  %i.gc = icmp ugt i64 %i.fw, %i.gb
end_hunk_0
begin_hunk_1_@_ZN18LinkDotFindVisitor5visitEP12AstNodeBlock:bb.a
  br label %bb.q

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.l:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.aq = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.l
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !76
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.k
  %.pn47 = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.ap, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.q

bb.m:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %6, align 8, !tbaa !74
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !75
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91 unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91: ; preds = %bb.n
  %i.az = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !76
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !76
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.o
  %.pn49 = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.bf, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.h
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.ag, %bb.h ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bi

bb.r:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bl = load ptr, ptr %1, align 8, !tbaa !52
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(185) %1)
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !75 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !1202, !range !144, !noundef !145
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !76
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.bt, label %bb.s, label %_ZZN18LinkDotFindVisitor5visitEP12AstNodeBlockENKUlPK7AstNodeE_clES4_.exit107.thread

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !262
  %.not52 = icmp eq ptr %i.ca, null
  br i1 %.not52, label %bb.t, label %_ZN7AstNode4castI7AstFork12AstNodeBlockEEPT_PT0_.exit

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !417 ; 2 uses
  %.not11.not.i = icmp eq ptr %i.cc, null
  br i1 %.not11.not.i, label %_ZN7AstNode4castI7AstFork12AstNodeBlockEEPT_PT0_.exit, label %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i

_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i:          ; preds = %bb.t, %bb.u
  %.0612.i = phi ptr [ %i.cf, %bb.u ], [ %i.cc, %bb.t ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0612.i, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.cd, align 8, !tbaa !244
  switch i16 %.sroa.0.0.copyload.i.i.i.i, label %bb.u [
    i16 479, label %_ZN7AstNode4castI7AstFork12AstNodeBlockEEPT_PT0_.exit
    i16 68, label %_ZN7AstNode4castI7AstFork12AstNodeBlockEEPT_PT0_.exit
  ]

bb.u:                                             ; preds = %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0612.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !418 ; 2 uses
  %.not.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.not.i, label %_ZN7AstNode4castI7AstFork12AstNodeBlockEEPT_PT0_.exit, label %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i, !llvm.loop !1189

_ZN7AstNode4castI7AstFork12AstNodeBlockEEPT_PT0_.exit: ; preds = %bb.u, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i, %bb.t, %bb.s
  %i.cg = phi i1 [ true, %bb.s ], [ false, %bb.t ], [ true, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i ], [ false, %bb.u ], [ true, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ch, align 8, !tbaa !244
  %.not190 = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 473
  br i1 %.not190, label %bb.v, label %_ZZN18LinkDotFindVisitor5visitEP12AstNodeBlockENKUlPK7AstNodeE_clES4_.exit107

bb.v:                                             ; preds = %_ZN7AstNode4castI7AstFork12AstNodeBlockEEPT_PT0_.exit
  br i1 %i.cg, label %.critedge69, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !434 ; 2 uses
  %.not11.not.i101 = icmp eq ptr %i.cj, null
  br i1 %.not11.not.i101, label %_ZZN18LinkDotFindVisitor5visitEP12AstNodeBlockENKUlPK7AstNodeE_clES4_.exit107.thread, label %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i102

_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i102:       ; preds = %bb.w, %bb.x
  %.0612.i103 = phi ptr [ %i.cm, %bb.x ], [ %i.cj, %bb.w ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0612.i103, i64 64
  %.sroa.0.0.copyload.i.i.i.i104 = load i16, ptr %i.ck, align 8, !tbaa !244
  switch i16 %.sroa.0.0.copyload.i.i.i.i104, label %bb.x [
    i16 479, label %.critedge69
    i16 68, label %.critedge69
  ]

bb.x:                                             ; preds = %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i102
  %i.cl = getelementptr inbounds nuw i8, ptr %.0612.i103, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !418 ; 2 uses
  %.not.not.i106 = icmp eq ptr %i.cm, null
  br i1 %.not.not.i106, label %_ZZN18LinkDotFindVisitor5visitEP12AstNodeBlockENKUlPK7AstNodeE_clES4_.exit107.thread, label %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i102, !llvm.loop !1189

_ZZN18LinkDotFindVisitor5visitEP12AstNodeBlockENKUlPK7AstNodeE_clES4_.exit107: ; preds = %_ZN7AstNode4castI7AstFork12AstNodeBlockEEPT_PT0_.exit
  br i1 %i.cg, label %.critedge69, label %_ZZN18LinkDotFindVisitor5visitEP12AstNodeBlockENKUlPK7AstNodeE_clES4_.exit107.thread

.critedge69:                                      ; preds = %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i102, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit.i102, %bb.v, %_ZZN18LinkDotFindVisitor5visitEP12AstNodeBlockENKUlPK7AstNodeE_clES4_.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 336
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !187 ; 9 uses
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %._crit_edge.i.i, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

._crit_edge.i.i:                                  ; preds = %.critedge69
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.cs, ptr %8, align 8, !tbaa !141
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ct, align 8, !tbaa !75
  store i8 0, ptr %i.cs, align 8, !tbaa !76
  br label %.critedge74

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %.critedge69
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.cu = icmp ult i8 %i.cq, 10
  %i.cv = icmp ult i8 %i.cq, 100
  %. = select i1 %i.cv, i32 2, i32 3              ; 2 uses
  %i.cw = zext nneg i32 %. to i64
  %i.cx = select i1 %i.cu, i64 1, i64 %i.cw       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.cy, ptr %9, align 8, !tbaa !141, !alias.scope !1203
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.cx, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.cz = load ptr, ptr %9, align 8, !tbaa !74, !alias.scope !1203 ; 4 uses
  %i.da = icmp ugt i8 %i.cq, 99
  br i1 %i.da, label %._crit_edge.i.i111.thread, label %._crit_edge.i.i111

._crit_edge.i.i111.thread:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.db = urem i8 %i.cq, 100
  %i.dc = shl nuw i8 %i.db, 1
  %i.dd = udiv i8 %i.cq, 100
  %i.de = zext i8 %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !76, !noalias !1203
  %i.di = getelementptr i8, ptr %i.cz, i64 %i.cx
  %i.dj = getelementptr i8, ptr %i.di, i64 -1
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !76
  %i.dk = load i8, ptr %i.df, align 2, !tbaa !76, !noalias !1203
  %i.dl = zext nneg i32 %. to i64
  %i.dm = getelementptr i8, ptr %i.cz, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -2
  store i8 %i.dk, ptr %i.dn, align 1, !tbaa !76
  br label %bb.z

._crit_edge.i.i111:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.do = icmp ugt i8 %i.cq, 9
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i111
  %i.dp = shl nuw i8 %i.cq, 1
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !76, !noalias !1203
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !76
  %i.dv = load i8, ptr %i.dr, align 2, !tbaa !76, !noalias !1203
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.z:                                             ; preds = %._crit_edge.i.i111.thread, %._crit_edge.i.i111
  %.0.lcssa.i.i294 = phi i8 [ %i.dd, %._crit_edge.i.i111.thread ], [ %i.cq, %._crit_edge.i.i111 ]
  %i.dw = or disjoint i8 %.0.lcssa.i.i294, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.aa:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #25
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.y, %bb.z
  %storemerge.i.i = phi i8 [ %i.dw, %bb.z ], [ %i.dv, %bb.y ]
  store i8 %storemerge.i.i, ptr %i.cz, align 1, !tbaa !76
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !75, !noalias !1204
  %i.eb = icmp eq i64 %i.ea, 4611686018427387903
  br i1 %i.eb, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ab:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #27
          to label %.noexc113 unwind label %bb.au

.noexc113:                                        ; preds = %bb.ab
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.ec = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.657, i64 noundef 1)
          to label %.noexc114 unwind label %bb.au ; 6 uses

.noexc114:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ed, ptr %8, align 8, !tbaa !141, !alias.scope !1204
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !74 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 5 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

bb.ac:                                            ; preds = %.noexc114
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !75 ; 3 uses
  %i.ej = icmp ult i64 %i.ei, 16
  call void @llvm.assume(i1 %i.ej)
  %i.ek = add nuw nsw i64 %i.ei, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ed, ptr noundef nonnull align 8 dereferenceable(1) %i.ef, i64 %i.ek, i1 false)
  br label %.critedge71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %.noexc114
  store ptr %i.ee, ptr %8, align 8, !tbaa !74, !alias.scope !1204
  %i.el = load i64, ptr %i.ef, align 8, !tbaa !76
  store i64 %i.el, ptr %i.ed, align 8, !tbaa !76, !alias.scope !1204
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !75
  br label %.critedge71

.critedge71:                                      ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %i.em = phi i64 [ %i.ei, %bb.ac ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.em, ptr %i.eo, align 8, !tbaa !75, !alias.scope !1204
  store ptr %i.ef, ptr %i.ec, align 8, !tbaa !74
  store i64 0, ptr %i.en, align 8, !tbaa !75
  store i8 0, ptr %i.ef, align 8, !tbaa !76
  %i.ep = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.cy
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %.critedge71
  %i.er = load i64, ptr %i.cy, align 8, !tbaa !76
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %.critedge71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.critedge74

.critedge74:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.et, ptr %10, align 8, !tbaa !141
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 0, ptr %i.eu, align 8, !tbaa !75
  store i8 0, ptr %i.et, align 8, !tbaa !76
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK7VSymEnt10findIdFlatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.critedge74
  %i.fe = load i32, ptr %i.ev, align 4, !tbaa !427
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.ev, align 4, !tbaa !427
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.fg = load ptr, ptr %8, align 8, !tbaa !74, !noalias !1205
  %i.fh = load i64, ptr %i.ew, align 8, !tbaa !75, !noalias !1205 ; 3 uses
  store ptr %i.ex, ptr %12, align 8, !tbaa !141, !alias.scope !1206
  store i64 0, ptr %i.ey, align 8, !tbaa !75, !alias.scope !1206
  store i8 0, ptr %i.ex, align 8, !tbaa !76, !alias.scope !1206
  %i.fi = add i64 %i.fh, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.fi)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.fj = load i64, ptr %i.ey, align 8, !tbaa !75, !alias.scope !1206
  %i.fk = add i64 %i.fj, -4611686018427387894
  %i.fl = icmp ult i64 %i.fk, 10
  br i1 %i.fl, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ae
  %i.fm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.658, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.fn = load i64, ptr %i.ey, align 8, !tbaa !75, !alias.scope !1206
  %i.fo = sub i64 4611686018427387903, %i.fn
  %i.fp = icmp ult i64 %i.fo, %i.fh
  br i1 %i.fp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #27
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.fq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.fg, i64 noundef %i.fh)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fr = load ptr, ptr %12, align 8, !tbaa !74, !alias.scope !1206 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.ex
  br i1 %i.fs, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %i.ev)
          to label %bb.ag unwind label %bb.av

bb.ag:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.ft = load i64, ptr %i.ey, align 8, !tbaa !75, !noalias !1207 ; 4 uses
  %i.fu = load i64, ptr %i.ez, align 8, !tbaa !75, !noalias !1207 ; 4 uses
  %i.fv = add i64 %i.fu, %i.ft                    ; 2 uses
  %i.fw = load ptr, ptr %12, align 8, !tbaa !74, !noalias !1207 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ex
  br i1 %i.fx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i120: ; preds = %bb.ag
  %i.fy = icmp ult i64 %i.ft, 16
  call void @llvm.assume(i1 %i.fy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.ag
end_hunk_1
