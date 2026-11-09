Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_mk_synchronize?download=true
inline.NumInlined: 784
inline.NumDeleted: 420
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7datalog14mk_synchronize19product_applicationERK10ptr_vectorI3appE:bb.a
  %i.af = shl i64 %i.ae, 1                        ; 4 uses
  %i.ag = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.af)
          to label %.noexc47 unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc47:                                         ; preds = %.lr.ph.i.i
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !97 ; 3 uses
  %i.ai = load i64, ptr %i.x, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ah, i64 %i.ai, i1 false)
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !99
  %i.ak = icmp ult i64 %i.aj, 65
  %i.al = icmp eq ptr %i.ah, null
  %or.cond.i.i.i = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond.i.i.i, label %_ZN13string_bufferILj64EE6expandEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc47
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ah)
          to label %_ZN13string_bufferILj64EE6expandEv.exit.i.i unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13string_bufferILj64EE6expandEv.exit.i.i:      ; preds = %bb.e, %.noexc47
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !99
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !97
  %i.am = icmp ugt i64 %i.z, %i.af
  br i1 %i.am, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !3

._crit_edge.loopexit.i.i:                         ; preds = %_ZN13string_bufferILj64EE6expandEv.exit.i.i
  %.pre6.i.i = load i64, ptr %i.x, align 8, !tbaa !98
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.loopexit.i.i, %.._crit_edge_crit_edge.i.i
  %i.an = phi i64 [ %i.y, %.._crit_edge_crit_edge.i.i ], [ %.pre6.i.i, %._crit_edge.loopexit.i.i ]
  %i.ao = phi ptr [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.ag, %._crit_edge.loopexit.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i16 8481, ptr %i.ap, align 1
  %i.aq = load i64, ptr %i.x, align 8, !tbaa !98
  %i.ar = add i64 %i.aq, 2
  store i64 %i.ar, ptr %i.x, align 8, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !347
  %i.au = add i32 %i.at, %.03266                  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.03965, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.lr.ph.i.i, %.lr.ph
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp55

bb.g:                                             ; preds = %_ZN13string_bufferILj64EE6expandEv.exit.i, %._crit_edge.i
  %.032.lcssa113 = phi i32 [ %.032.lcssa114, %._crit_edge.i ], [ %i.au, %_ZN13string_bufferILj64EE6expandEv.exit.i ] ; 5 uses
  %i.aw = phi i64 [ %i.k, %._crit_edge.i ], [ %.pre1.i, %_ZN13string_bufferILj64EE6expandEv.exit.i ]
  %i.ax = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.m, %_ZN13string_bufferILj64EE6expandEv.exit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 0, ptr %i.ay, align 1, !tbaa !110
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !97
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.az)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bb = load i64, ptr %4, align 8, !tbaa !103   ; 4 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 3 uses
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %_ZNK14core_hashtableI17default_map_entryI6symbolP9func_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8get_hashERK9_key_dataIS1_S3_E.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = and i64 %i.bb, 7
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = lshr i64 %i.bb, 3
  %i.bh = trunc i64 %i.bg to i32
  br label %_ZNK14core_hashtableI17default_map_entryI6symbolP9func_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8get_hashERK9_key_dataIS1_S3_E.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !112
  %i.bk = trunc i64 %i.bj to i32
  br label %_ZNK14core_hashtableI17default_map_entryI6symbolP9func_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8get_hashERK9_key_dataIS1_S3_E.exit.i.i.i.i

_ZNK14core_hashtableI17default_map_entryI6symbolP9func_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8get_hashERK9_key_dataIS1_S3_E.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.k ], [ %i.bh, %bb.j ], [ -1640531495, %bb.h ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !64 ; 3 uses
  %i.bn = add i32 %i.bm, -1
  %i.bo = and i32 %i.bn, %.0.i.i.i.i.i.i.i.i      ; 2 uses
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !67 ; 3 uses
  %i.bq = zext i32 %i.bm to i64
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bq
  %.not30.i.i.i.i = icmp eq i32 %i.bo, %i.bm
  br i1 %.not30.i.i.i.i, label %.lr.ph34.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNK14core_hashtableI17default_map_entryI6symbolP9func_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8get_hashERK9_key_dataIS1_S3_E.exit.i.i.i.i
  %i.bs = zext i32 %i.bo to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.bs, 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.n
  %.031.i.i.i.i = phi ptr [ %i.cb, %bb.n ], [ %i.bt, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !116
  %cond.i.i = icmp eq i32 %i.bv, 2
  br i1 %cond.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = load i32, ptr %.031.i.i.i.i, align 8, !tbaa !117
  %i.bx = icmp eq i32 %i.bw, %.0.i.i.i.i.i.i.i.i
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !118
  %i.ca = icmp eq ptr %i.bz, %i.bc
  br i1 %i.ca, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cb, %i.br
  br i1 %.not.i.i.i.i, label %.lr.ph34.i.i.i.i.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !4

.lr.ph34.i.i.i.i.preheader:                       ; preds = %bb.n, %_ZNK14core_hashtableI17default_map_entryI6symbolP9func_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8get_hashERK9_key_dataIS1_S3_E.exit.i.i.i.i
  br label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %.lr.ph34.i.i.i.i.preheader, %bb.q
  %.133.i.i.i.i = phi ptr [ %i.cj, %bb.q ], [ %i.bp, %.lr.ph34.i.i.i.i.preheader ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !116
  %cond4.i.i = icmp eq i32 %i.cd, 2
  br i1 %cond4.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph34.i.i.i.i
  %i.ce = load i32, ptr %.133.i.i.i.i, align 8, !tbaa !117
  %i.cf = icmp eq i32 %i.ce, %.0.i.i.i.i.i.i.i.i
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !118
  %i.ci = icmp eq ptr %i.ch, %i.bc
  br i1 %i.ci, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph34.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i, i64 24
  br label %.lr.ph34.i.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.m, %bb.p
  %.026.i.i.i.i = phi ptr [ %.133.i.i.i.i, %bb.p ], [ %.031.i.i.i.i, %bb.m ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !135
  %.not.not.i = icmp eq i32 %.032.lcssa113, 0
  br i1 %.not.not.i, label %_ZN6vectorIP4exprLb0EjE6resizeEj.exit, label %.preheader

thread-pre-split.i:                               ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !135
  br label %.preheader

.preheader:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %thread-pre-split.i
  %i.cm = phi ptr [ %.pr.pre.i, %thread-pre-split.i ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 4 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i:       ; preds = %.preheader
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !93
  %i.cq = icmp ugt i32 %.032.lcssa113, %i.cp
  br i1 %i.cq, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i, label %.lr.ph.preheader.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i, %.preheader
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %thread-pre-split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i
  %i.cr = getelementptr inbounds i8, ptr %i.cm, i64 -4
  store i32 %.032.lcssa113, ptr %i.cr, align 4, !tbaa !93
  %i.cs = zext i32 %.032.lcssa113 to i64
  %i.ct = shl nuw nsw i64 %i.cs, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cm, i8 0, i64 %i.ct, i1 false), !tbaa !136
  br label %_ZN6vectorIP4exprLb0EjE6resizeEj.exit

_ZN6vectorIP4exprLb0EjE6resizeEj.exit:            ; preds = %.lr.ph.preheader.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.cu = load ptr, ptr %2, align 8, !tbaa !92    ; 4 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZNK6vectorIP3appLb0EjE3endEv.exit51.thread, label %_ZNK6vectorIP3appLb0EjE3endEv.exit51

_ZNK6vectorIP3appLb0EjE3endEv.exit51.thread:      ; preds = %_ZN6vectorIP4exprLb0EjE6resizeEj.exit
  %.pre91117 = load ptr, ptr %5, align 8
  br label %._crit_edge77

_ZNK6vectorIP3appLb0EjE3endEv.exit51:             ; preds = %_ZN6vectorIP4exprLb0EjE6resizeEj.exit
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !93 ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz
  %.not4073 = icmp eq i32 %i.cx, 0
  %.pre91 = load ptr, ptr %5, align 8             ; 8 uses
  %.pre91135 = ptrtoaddr ptr %.pre91 to i64
  br i1 %.not4073, label %._crit_edge77, label %.lr.ph76

._crit_edge77.loopexit:                           ; preds = %._crit_edge71
  %.pre90 = load ptr, ptr %5, align 8, !tbaa !135
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %_ZNK6vectorIP3appLb0EjE3endEv.exit51.thread, %._crit_edge77.loopexit, %_ZNK6vectorIP3appLb0EjE3endEv.exit51
  %i.db = phi ptr [ %.pre90, %._crit_edge77.loopexit ], [ %.pre91, %_ZNK6vectorIP3appLb0EjE3endEv.exit51 ], [ %.pre91117, %_ZNK6vectorIP3appLb0EjE3endEv.exit51.thread ]
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !137, !nonnull !60, !align !61
  %i.de = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.dd, ptr noundef %i.cl, i32 noundef %.032.lcssa113, ptr noundef %i.db)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.r:                                             ; preds = %bb.c, %bb.b, %bb.g
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph76:                                         ; preds = %_ZNK6vectorIP3appLb0EjE3endEv.exit51, %._crit_edge71
  %.03075 = phi ptr [ %i.em, %._crit_edge71 ], [ %i.cu, %_ZNK6vectorIP3appLb0EjE3endEv.exit51 ] ; 2 uses
  %.03174 = phi i32 [ %.1.lcssa, %._crit_edge71 ], [ 0, %_ZNK6vectorIP3appLb0EjE3endEv.exit51 ] ; 8 uses
  %i.dg = load ptr, ptr %.03075, align 8, !tbaa !94 ; 3 uses
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !347 ; 3 uses
  %.not78 = icmp eq i32 %i.dj, 0
  br i1 %.not78, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph76
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 6 uses
  %wide.trip.count = zext i32 %i.dj to i64        ; 6 uses
  %min.iters.check = icmp ult i32 %i.dj, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph70
  %i.dl = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = xor i32 %.03174, -1
  %i.do = icmp ult i32 %i.dn, %i.dm
  %i.dp = icmp ugt i64 %i.dl, 4294967295
  %i.dq = or i1 %i.do, %i.dp
  br i1 %i.dq, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dr = zext i32 %.03174 to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %6 = add i64 %i.ds, %.pre91135
  %i.dt = sub i64 %6, %i.dh
  %i.du = add i64 %i.dt, -33
  %diff.check = icmp ult i64 %i.du, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 4 uses
  %i.dv = trunc nuw i64 %n.vec to i32
  %i.dw = add i32 %.03174, %i.dv                  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = trunc i64 %index to i32
  %i.dy = add i32 %.03174, %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load = load <2 x ptr>, ptr %i.dz, align 8, !tbaa !136
  %wide.load136 = load <2 x ptr>, ptr %i.ea, align 8, !tbaa !136
  %i.eb = zext i32 %i.dy to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.pre91, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <2 x ptr> %wide.load, ptr %i.ec, align 8, !tbaa !136
  store <2 x ptr> %wide.load136, ptr %i.ed, align 8, !tbaa !136
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge71, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph70, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph70 ], [ %n.vec, %middle.block ] ; 3 uses
  %.167.ph = phi i32 [ %.03174, %vector.memcheck ], [ %.03174, %vector.scevcheck ], [ %.03174, %.lr.ph70 ], [ %i.dw, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.167.prol = phi i32 [ %i.ej, %scalar.ph.prol ], [ %.167.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.prol
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !136
  %i.eh = zext i32 %.167.prol to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.pre91, i64 %i.eh
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !136
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.ej = add i32 %.167.prol, 1                   ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !345

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ej, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.167.unr = phi i32 [ %.167.ph, %scalar.ph.preheader ], [ %i.ej, %scalar.ph.prol ]
  %i.ek = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %._crit_edge71, label %scalar.ph

._crit_edge71:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph76
  %.1.lcssa = phi i32 [ %.03174, %.lr.ph76 ], [ %i.dw, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.fj, %scalar.ph ]
  %i.em = getelementptr inbounds nuw i8, ptr %.03075, i64 8 ; 2 uses
  %.not40 = icmp eq ptr %i.em, %i.da
  br i1 %.not40, label %._crit_edge77.loopexit, label %.lr.ph76

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.167 = phi i32 [ %i.fj, %scalar.ph ], [ %.167.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !136
  %i.ep = zext i32 %.167 to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.pre91, i64 %i.ep
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !136
  %i.er = add i32 %.167, 1
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !136
  %i.ev = zext i32 %i.er to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.pre91, i64 %i.ev
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !136
  %i.ex = add i32 %.167, 2
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !136
  %i.fb = zext i32 %i.ex to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.pre91, i64 %i.fb
  store ptr %i.fa, ptr %i.fc, align 8, !tbaa !136
  %i.fd = add i32 %.167, 3
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !136
  %i.fh = zext i32 %i.fd to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.pre91, i64 %i.fh
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !136
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.fj = add i32 %.167, 4                        ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge71, label %scalar.ph, !llvm.loop !346

bb.s:                                             ; preds = %._crit_edge77
  %i.fk = load ptr, ptr %i.dc, align 8, !tbaa !137, !nonnull !60, !align !61
  store ptr %i.de, ptr %0, align 8, !tbaa !124
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i, label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.s
  %i.fm = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !134
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !134
  br label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit:   ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %bb.s
  %i.fp = load ptr, ptr %5, align 8, !tbaa !135   ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i52, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fq)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #19
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ft = load i64, ptr %i.c, align 8, !tbaa !99
  %i.fu = icmp ugt i64 %i.ft, 64
  br i1 %i.fu, label %bb.v, label %_ZN13string_bufferILj64EED2Ev.exit

bb.v:                                             ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !97  ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %_ZN13string_bufferILj64EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fv)
          to label %_ZN13string_bufferILj64EED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #19
  unreachable

_ZN13string_bufferILj64EED2Ev.exit:               ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i, %._crit_edge77
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.r ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.loopexit.split-lp55

.loopexit.split-lp55:                             ; preds = %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y
  %.pn44 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.y ], [ %lpad.loopexit.split-lp143, %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN13string_bufferILj64EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn44
}

declare noundef ptr @_ZN7datalog12rule_manager2mkEP3appjPKS2_PKbRK6symbolb(ptr noundef nonnull align 8 dereferenceable(1104), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN7datalog8rule_set12replace_ruleEPNS_4ruleES2_(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132, !nonnull !60, !align !61
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit unwind label %bb.c

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
end_hunk_0
