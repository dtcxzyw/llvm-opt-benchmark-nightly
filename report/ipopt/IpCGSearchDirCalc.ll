Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCGSearchDirCalc?download=true
inline.NumInlined: 1245
inline.NumDeleted: 429
begin_hunk_0_@_ZN5Ipopt21CGSearchDirCalculator22ComputeSearchDirectionEv:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities28curr_grad_lag_with_damping_xEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.52") align 8 %2, ptr noundef nonnull align 8 dereferenceable(2185) %i.u)
          to label %bb.f unwind label %bb.au

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %2, align 8, !tbaa !302
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.s, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %i.v)
          to label %_ZN5Ipopt14IteratesVector5Set_xERKNS_6VectorE.exit unwind label %bb.av

_ZN5Ipopt14IteratesVector5Set_xERKNS_6VectorE.exit: ; preds = %bb.f
  %i.w = load ptr, ptr %2, align 8, !tbaa !302    ; 4 uses
  %.not.i.i252 = icmp eq ptr %i.w, null
  br i1 %.not.i.i252, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5Ipopt14IteratesVector5Set_xERKNS_6VectorE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !12
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.x, align 8, !tbaa !12
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(205) %i.w) #18, !inline_history !128
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN5Ipopt14IteratesVector5Set_xERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.ae = load ptr, ptr %1, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities28curr_grad_lag_with_damping_sEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.52") align 8 %3, ptr noundef nonnull align 8 dereferenceable(2185) %i.af)
          to label %bb.j unwind label %bb.ay

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !302
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.ae, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(205) %i.ag)
          to label %_ZN5Ipopt14IteratesVector5Set_sERKNS_6VectorE.exit unwind label %bb.az

_ZN5Ipopt14IteratesVector5Set_sERKNS_6VectorE.exit: ; preds = %bb.j
  %i.ah = load ptr, ptr %3, align 8, !tbaa !302   ; 4 uses
  %.not.i.i253 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i253, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5Ipopt14IteratesVector5Set_sERKNS_6VectorE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !12
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !12
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(205) %i.ah) #18, !inline_history !128
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZN5Ipopt14IteratesVector5Set_sERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ap = load ptr, ptr %1, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities22curr_relaxed_compl_x_LEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.52") align 8 %4, ptr noundef nonnull align 8 dereferenceable(2185) %i.aq)
          to label %bb.n unwind label %bb.bc

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %4, align 8, !tbaa !302
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.ap, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(205) %i.ar)
          to label %_ZN5Ipopt14IteratesVector7Set_z_LERKNS_6VectorE.exit unwind label %bb.bd

_ZN5Ipopt14IteratesVector7Set_z_LERKNS_6VectorE.exit: ; preds = %bb.n
  %i.as = load ptr, ptr %4, align 8, !tbaa !302   ; 4 uses
  %.not.i.i255 = icmp eq ptr %i.as, null
  br i1 %.not.i.i255, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN5Ipopt14IteratesVector7Set_z_LERKNS_6VectorE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !12
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.at, align 8, !tbaa !12
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(205) %i.as) #18, !inline_history !128
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZN5Ipopt14IteratesVector7Set_z_LERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ba = load ptr, ptr %1, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities22curr_relaxed_compl_x_UEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.52") align 8 %5, ptr noundef nonnull align 8 dereferenceable(2185) %i.bb)
          to label %bb.r unwind label %bb.bg

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %5, align 8, !tbaa !302
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.ba, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(205) %i.bc)
          to label %_ZN5Ipopt14IteratesVector7Set_z_UERKNS_6VectorE.exit unwind label %bb.bh

_ZN5Ipopt14IteratesVector7Set_z_UERKNS_6VectorE.exit: ; preds = %bb.r
  %i.bd = load ptr, ptr %5, align 8, !tbaa !302   ; 4 uses
  %.not.i.i257 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i257, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN5Ipopt14IteratesVector7Set_z_UERKNS_6VectorE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !12
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !12
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(205) %i.bd) #18, !inline_history !128
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %_ZN5Ipopt14IteratesVector7Set_z_UERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bl = load ptr, ptr %1, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bm = load ptr, ptr %i.t, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities22curr_relaxed_compl_s_LEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.52") align 8 %6, ptr noundef nonnull align 8 dereferenceable(2185) %i.bm)
          to label %bb.v unwind label %bb.bk

bb.v:                                             ; preds = %bb.u
  %i.bn = load ptr, ptr %6, align 8, !tbaa !302
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.bl, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(205) %i.bn)
          to label %_ZN5Ipopt14IteratesVector7Set_v_LERKNS_6VectorE.exit unwind label %bb.bl

_ZN5Ipopt14IteratesVector7Set_v_LERKNS_6VectorE.exit: ; preds = %bb.v
  %i.bo = load ptr, ptr %6, align 8, !tbaa !302   ; 4 uses
  %.not.i.i259 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i259, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZN5Ipopt14IteratesVector7Set_v_LERKNS_6VectorE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !12
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !12
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(205) %i.bo) #18, !inline_history !128
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZN5Ipopt14IteratesVector7Set_v_LERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.bw = load ptr, ptr %1, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.bx = load ptr, ptr %i.t, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities22curr_relaxed_compl_s_UEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.52") align 8 %7, ptr noundef nonnull align 8 dereferenceable(2185) %i.bx)
          to label %bb.z unwind label %bb.bo

bb.z:                                             ; preds = %bb.y
  %i.by = load ptr, ptr %7, align 8, !tbaa !302
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.bw, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(205) %i.by)
          to label %_ZN5Ipopt14IteratesVector7Set_v_UERKNS_6VectorE.exit unwind label %bb.bp

_ZN5Ipopt14IteratesVector7Set_v_UERKNS_6VectorE.exit: ; preds = %bb.z
  %i.bz = load ptr, ptr %7, align 8, !tbaa !302   ; 4 uses
  %.not.i.i261 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i261, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZN5Ipopt14IteratesVector7Set_v_UERKNS_6VectorE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !12
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !12
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(205) %i.bz) #18, !inline_history !128
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_ZN5Ipopt14IteratesVector7Set_v_UERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !24  ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2192
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !305 ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !308, !range !46, !noundef !47
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !309, !range !46, !noundef !47
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.cc, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 41
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !310, !range !46, !noundef !47
  %.not = icmp eq i8 %i.cr, 0
  br i1 %.not, label %bb.af, label %bb.by

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !296, !noalias !311 ; 10 uses
  %.not.i.i.i.i263 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i263, label %_ZNK5Ipopt9IpoptData4currEv.exit264, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !12, !noalias !311
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !12, !noalias !311
  br label %_ZNK5Ipopt9IpoptData4currEv.exit264

_ZNK5Ipopt9IpoptData4currEv.exit264:              ; preds = %bb.ag, %bb.af
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 208
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !314, !noalias !315
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !317, !noalias !315 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit264
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 232
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !320, !noalias !315
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !302, !noalias !315, !nonnull !47, !noundef !47
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt9IpoptData4currEv.exit264
  %.0.i3.i.i.i = phi ptr [ %i.da, %_ZNK5Ipopt9IpoptData4currEv.exit264 ], [ %i.de, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ] ; 11 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 6 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !12, !noalias !321
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !12, !noalias !321
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 120 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !325
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 48 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !58
  %.not.i = icmp eq i32 %i.dj, %i.dl
  br i1 %.not.i, label %._crit_edge.i, label %bb.ah

._crit_edge.i:                                    ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 128
  %.pre.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !326
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %i.dm = load ptr, ptr %.0.i3.i.i.i, align 8, !tbaa !14
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = invoke noundef double %i.do(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i)
          to label %.noexc unwind label %bb.bs, !inline_history !137 ; 2 uses

.noexc:                                           ; preds = %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 128
  store double %i.dp, ptr %i.dq, align 8, !tbaa !326
  %i.dr = load i32, ptr %i.dk, align 8, !tbaa !58
  store i32 %i.dr, ptr %i.di, align 8, !tbaa !325
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !24
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i, %.noexc
  %i.ds = phi ptr [ %i.ch, %._crit_edge.i ], [ %.pre, %.noexc ]
  %i.dt = phi double [ %.pre.i, %._crit_edge.i ], [ %i.dp, %.noexc ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !296, !noalias !327 ; 10 uses
  %.not.i.i.i.i265 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i265, label %_ZNK5Ipopt9IpoptData4currEv.exit266, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !12, !noalias !327
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !12, !noalias !327
  br label %_ZNK5Ipopt9IpoptData4currEv.exit266

_ZNK5Ipopt9IpoptData4currEv.exit266:              ; preds = %bb.aj, %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 208
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !314, !noalias !328
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !317, !noalias !328 ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i267, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i271, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i268

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i271: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit266
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 232
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !320, !noalias !328
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !302, !noalias !328, !nonnull !47, !noundef !47
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i268

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i268: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i271, %_ZNK5Ipopt9IpoptData4currEv.exit266
  %.0.i3.i.i.i269 = phi ptr [ %i.ec, %_ZNK5Ipopt9IpoptData4currEv.exit266 ], [ %i.eg, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i271 ] ; 11 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i269, i64 8 ; 6 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !12, !noalias !329 ; 2 uses
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !12, !noalias !329
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i269, i64 120 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !325
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i269, i64 48 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !58
  %.not.i273 = icmp eq i32 %i.el, %i.en
  br i1 %.not.i273, label %._crit_edge.i274, label %bb.ak

._crit_edge.i274:                                 ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i268
  %.phi.trans.insert.i275 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i269, i64 128
  %.pre.i276 = load double, ptr %.phi.trans.insert.i275, align 8, !tbaa !326
  br label %bb.al

bb.ak:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i268
  %i.eo = load ptr, ptr %.0.i3.i.i.i269, align 8, !tbaa !14
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef double %i.eq(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i269)
          to label %.noexc277 unwind label %bb.bt, !inline_history !137 ; 2 uses

.noexc277:                                        ; preds = %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i269, i64 128
  store double %i.er, ptr %i.es, align 8, !tbaa !326
  %i.et = load i32, ptr %i.em, align 8, !tbaa !58
  store i32 %i.et, ptr %i.ek, align 8, !tbaa !325
  %.pre966 = load i32, ptr %i.eh, align 8, !tbaa !12
  %i.eu = add nsw i32 %.pre966, -1
  br label %bb.al

bb.al:                                            ; preds = %.noexc277, %._crit_edge.i274
  %i.ev = phi i32 [ %i.ei, %._crit_edge.i274 ], [ %i.eu, %.noexc277 ] ; 2 uses
  %i.ew = phi double [ %.pre.i276, %._crit_edge.i274 ], [ %i.er, %.noexc277 ] ; 2 uses
  %i.ex = fcmp olt double %i.dt, %i.ew
  %.sroa.speculated.i = select i1 %i.ex, double %i.ew, double %i.dt ; 3 uses
  store i32 %i.ev, ptr %i.eh, align 8, !tbaa !12
  %i.ey = icmp eq i32 %i.ev, 0
  br i1 %i.ey, label %bb.am, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit280

bb.am:                                            ; preds = %bb.al
  %i.ez = load ptr, ptr %.0.i3.i.i.i269, align 8, !tbaa !14
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i269) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit280

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit280:     ; preds = %bb.am, %bb.al
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !12
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.fc, align 8, !tbaa !12
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.an, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit282

bb.an:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit280
  %i.fg = load ptr, ptr %i.dv, align 8, !tbaa !14
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(280) %i.dv) #18, !inline_history !127
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit282

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit282: ; preds = %bb.an, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit280
  %i.fj = load i32, ptr %i.df, align 8, !tbaa !12
  %i.fk = add nsw i32 %i.fj, -1                   ; 2 uses
  store i32 %i.fk, ptr %i.df, align 8, !tbaa !12
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.ao, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit284

bb.ao:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit282
  %i.fm = load ptr, ptr %.0.i3.i.i.i, align 8, !tbaa !14
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit284

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit284:     ; preds = %bb.ao, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit282
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !12
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 8, !tbaa !12
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit284
  %i.ft = load ptr, ptr %i.ct, align 8, !tbaa !14
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(280) %i.ct) #18, !inline_history !127
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit284
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !30 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
end_hunk_0
begin_hunk_1_@_ZN5Ipopt21CGSearchDirCalculator22ComputeSearchDirectionEv:bb.a
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300

bb.bl:                                            ; preds = %bb.v
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ig = load ptr, ptr %6, align 8, !tbaa !302   ; 4 uses
  %.not.i.i299 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i299, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !12
  %i.ij = add nsw i32 %i.ii, -1                   ; 2 uses
  store i32 %i.ij, ptr %i.ih, align 8, !tbaa !12
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.bn, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300

bb.bn:                                            ; preds = %bb.bm
  %i.il = load ptr, ptr %i.ig, align 8, !tbaa !14
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(205) %i.ig) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300:     ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.pn151 = phi { ptr, i32 } [ %i.ie, %bb.bk ], [ %i.if, %bb.bl ], [ %i.if, %bb.bm ], [ %i.if, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310

bb.bo:                                            ; preds = %bb.y
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit302

bb.bp:                                            ; preds = %bb.z
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.iq = load ptr, ptr %7, align 8, !tbaa !302   ; 4 uses
  %.not.i.i301 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i301, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit302, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !12
  %i.it = add nsw i32 %i.is, -1                   ; 2 uses
  store i32 %i.it, ptr %i.ir, align 8, !tbaa !12
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.br, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit302

bb.br:                                            ; preds = %bb.bq
  %i.iv = load ptr, ptr %i.iq, align 8, !tbaa !14
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(205) %i.iq) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit302

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit302:     ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.pn153 = phi { ptr, i32 } [ %i.io, %bb.bo ], [ %i.ip, %bb.bp ], [ %i.ip, %bb.bq ], [ %i.ip, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310

bb.bs:                                            ; preds = %bb.ah
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit306.thread

bb.bt:                                            ; preds = %bb.ak
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ja = load i32, ptr %i.eh, align 8, !tbaa !12
  %i.jb = add nsw i32 %i.ja, -1                   ; 2 uses
  store i32 %i.jb, ptr %i.eh, align 8, !tbaa !12
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.bu, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit304.thread

bb.bu:                                            ; preds = %bb.bt
  %i.jd = load ptr, ptr %.0.i3.i.i.i269, align 8, !tbaa !14
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i269) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit304.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit304.thread: ; preds = %bb.bt, %bb.bu
  %i.jg = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !12
  %i.ji = add nsw i32 %i.jh, -1                   ; 2 uses
  store i32 %i.ji, ptr %i.jg, align 8, !tbaa !12
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.bv, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit306.thread

bb.bv:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit304.thread
  %i.jk = load ptr, ptr %i.dv, align 8, !tbaa !14
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(280) %i.dv) #18, !inline_history !127
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit306.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit306.thread: ; preds = %bb.bs, %bb.bv, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit304.thread
  %.pn155.pn.pn924 = phi { ptr, i32 } [ %i.iy, %bb.bs ], [ %i.iz, %bb.bv ], [ %i.iz, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit304.thread ] ; 2 uses
  %i.jn = load i32, ptr %i.df, align 8, !tbaa !12
  %i.jo = add nsw i32 %i.jn, -1                   ; 2 uses
  store i32 %i.jo, ptr %i.df, align 8, !tbaa !12
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.bw, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit308.thread

bb.bw:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit306.thread
  %i.jq = load ptr, ptr %.0.i3.i.i.i, align 8, !tbaa !14
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit308.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit308.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit306.thread, %bb.bw
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !12
  %i.jv = add nsw i32 %i.ju, -1                   ; 2 uses
  store i32 %i.jv, ptr %i.jt, align 8, !tbaa !12
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.bx, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310

bb.bx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit308.thread
  %i.jx = load ptr, ptr %i.ct, align 8, !tbaa !14
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(280) %i.ct) #18, !inline_history !127
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310

bb.by:                                            ; preds = %bb.ae
  %i.ka = load ptr, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !14
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 120
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = invoke noundef double %i.kd(ptr noundef nonnull align 8 dereferenceable(2185) %i.ka, i32 noundef 1)
          to label %bb.bz unwind label %bb.ce

bb.bz:                                            ; preds = %bb.by
  %i.kf = fmul double %i.ke, 1.000000e+02         ; 2 uses
  %i.kg = fcmp ogt double %i.kf, 1.000000e+01
  %.sroa.speculated.i311 = select i1 %i.kg, double %i.kf, double 1.000000e+01 ; 2 uses
  %i.kh = fcmp olt double %.sroa.speculated.i311, 1.000000e+05
  %.sroa.speculated.i312 = select i1 %i.kh, double %.sroa.speculated.i311, double 1.000000e+05 ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.as, %bb.bz
  %.057 = phi double [ %.sroa.speculated.i288, %bb.as ], [ %.sroa.speculated.i312, %bb.bz ] ; 2 uses
  %.056 = phi double [ %i.gg, %bb.as ], [ %.sroa.speculated.i312, %bb.bz ] ; 2 uses
  %i.ki = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 2192
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !305 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 56
  store double %.057, ptr %i.kl, align 8, !tbaa !332
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 64
  store i8 1, ptr %i.km, align 8, !tbaa !308
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 72
  store double %.056, ptr %i.kn, align 8, !tbaa !333
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 80
  store i8 1, ptr %i.ko, align 8, !tbaa !309
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !30 ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !14
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.kt(ptr noundef nonnull align 8 dereferenceable(40) %i.kq, i32 noundef 7, i32 noundef 8, ptr noundef nonnull @.str.21, double noundef %.057)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.ku = load ptr, ptr %i.kp, align 8, !tbaa !30 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !14
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.kx(ptr noundef nonnull align 8 dereferenceable(40) %i.ku, i32 noundef 7, i32 noundef 8, ptr noundef nonnull @.str.22, double noundef %.056)
          to label %._crit_edge unwind label %bb.ce

._crit_edge:                                      ; preds = %bb.cb
  %.pre967 = load ptr, ptr %i.e, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre967, i64 2192
  %.pre968 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !305
  br label %bb.cf

bb.cc:                                            ; preds = %bb.ad
  %i.ky = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !334
  %i.la = getelementptr inbounds nuw i8, ptr %i.ch, i64 68
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !342
  %i.lc = icmp eq i32 %i.kz, %i.lb
  br i1 %i.lc, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.ld = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.le = load double, ptr %i.ld, align 8, !tbaa !343
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !344
  %i.lh = call double @pow(double noundef 1.000000e-01, double noundef %i.le) #18
  %i.li = fmul double %i.lg, %i.lh                ; 2 uses
  %i.lj = fcmp ogt double %i.li, 1.000000e+01
  %.sroa.speculated.i313 = select i1 %i.lj, double %i.li, double 1.000000e+01 ; 2 uses
  %i.lk = fcmp olt double %.sroa.speculated.i313, 1.000000e+06
  %.sroa.speculated.i314 = select i1 %i.lk, double %.sroa.speculated.i313, double 1.000000e+06 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  store double %.sroa.speculated.i314, ptr %i.ll, align 8, !tbaa !332
  %i.lm = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  store double %.sroa.speculated.i314, ptr %i.lm, align 8, !tbaa !333
  br label %bb.cf

bb.ce:                                            ; preds = %bb.aq, %bb.ar, %bb.cb, %bb.ca, %bb.by
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310

bb.cf:                                            ; preds = %._crit_edge, %bb.cd, %bb.cc
  %i.lo = phi ptr [ %.pre968, %._crit_edge ], [ %i.cj, %bb.cd ], [ %i.cj, %bb.cc ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 88
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.lp, align 8, !tbaa !59
  %i.lq = load ptr, ptr %1, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.lr = load ptr, ptr %i.t, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities6curr_cEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.52") align 8 %8, ptr noundef nonnull align 8 dereferenceable(2185) %i.lr)
          to label %bb.cg unwind label %bb.cs

bb.cg:                                            ; preds = %bb.cf
  %i.ls = load ptr, ptr %8, align 8, !tbaa !302
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.lq, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(205) %i.ls)
          to label %_ZN5Ipopt14IteratesVector7Set_y_cERKNS_6VectorE.exit unwind label %bb.ct

_ZN5Ipopt14IteratesVector7Set_y_cERKNS_6VectorE.exit: ; preds = %bb.cg
  %i.lt = load ptr, ptr %8, align 8, !tbaa !302   ; 4 uses
  %.not.i.i316 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i316, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %_ZN5Ipopt14IteratesVector7Set_y_cERKNS_6VectorE.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !12
  %i.lw = add nsw i32 %i.lv, -1                   ; 2 uses
  store i32 %i.lw, ptr %i.lu, align 8, !tbaa !12
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ly = load ptr, ptr %i.lt, align 8, !tbaa !14
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(205) %i.lt) #18, !inline_history !128
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %_ZN5Ipopt14IteratesVector7Set_y_cERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.mb = load ptr, ptr %1, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.mc = load ptr, ptr %i.t, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_d_minus_sEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.52") align 8 %9, ptr noundef nonnull align 8 dereferenceable(2185) %i.mc)
          to label %bb.ck unwind label %bb.cw

bb.ck:                                            ; preds = %bb.cj
  %i.md = load ptr, ptr %9, align 8, !tbaa !302
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.mb, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(205) %i.md)
          to label %_ZN5Ipopt14IteratesVector7Set_y_dERKNS_6VectorE.exit unwind label %bb.cx

_ZN5Ipopt14IteratesVector7Set_y_dERKNS_6VectorE.exit: ; preds = %bb.ck
  %i.me = load ptr, ptr %9, align 8, !tbaa !302   ; 4 uses
  %.not.i.i319 = icmp eq ptr %i.me, null
  br i1 %.not.i.i319, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %_ZN5Ipopt14IteratesVector7Set_y_dERKNS_6VectorE.exit
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !12
  %i.mh = add nsw i32 %i.mg, -1                   ; 2 uses
  store i32 %i.mh, ptr %i.mf, align 8, !tbaa !12
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.mj = load ptr, ptr %i.me, align 8, !tbaa !14
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(205) %i.me) #18, !inline_history !128
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %_ZN5Ipopt14IteratesVector7Set_y_dERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.mm = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !296, !noalias !345 ; 8 uses
  %.not.i.i.i.i321 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i.i321, label %_ZNK5Ipopt9IpoptData4currEv.exit322, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !12, !noalias !345
  %i.mr = add nsw i32 %i.mq, 1
  store i32 %i.mr, ptr %i.mp, align 8, !tbaa !12, !noalias !345
  br label %_ZNK5Ipopt9IpoptData4currEv.exit322

_ZNK5Ipopt9IpoptData4currEv.exit322:              ; preds = %bb.co, %bb.cn
  invoke void @_ZNK5Ipopt14IteratesVector21MakeNewIteratesVectorEb(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.35") align 8 %10, ptr noundef nonnull align 8 dereferenceable(280) %i.mo, i1 noundef zeroext true)
          to label %bb.cp unwind label %bb.da

bb.cp:                                            ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit322
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !12
  %i.mu = add nsw i32 %i.mt, -1                   ; 2 uses
  store i32 %i.mu, ptr %i.ms, align 8, !tbaa !12
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %bb.cq, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

bb.cq:                                            ; preds = %bb.cp
  %i.mw = load ptr, ptr %i.mo, align 8, !tbaa !14
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(280) %i.mo) #18, !inline_history !127
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324: ; preds = %bb.cp, %bb.cq
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !18 ; 2 uses
  %i.nb = load ptr, ptr %1, align 8, !tbaa !299
  %i.nc = load ptr, ptr %10, align 8, !tbaa !299
  %i.nd = load ptr, ptr %i.na, align 8, !tbaa !14
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = invoke noundef zeroext i1 %i.nf(ptr noundef nonnull align 8 dereferenceable(49) %i.na, double noundef -1.000000e+00, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(280) %i.nb, ptr noundef nonnull align 8 dereferenceable(280) %i.nc, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.cr unwind label %bb.db

bb.cr:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324
  br i1 %i.ng, label %bb.dc, label %bb.ls

bb.cs:                                            ; preds = %bb.cf
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit326

bb.ct:                                            ; preds = %bb.cg
  %i.ni = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.nj = load ptr, ptr %8, align 8, !tbaa !302   ; 4 uses
  %.not.i.i325 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i325, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit326, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !12
  %i.nm = add nsw i32 %i.nl, -1                   ; 2 uses
  store i32 %i.nm, ptr %i.nk, align 8, !tbaa !12
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %bb.cv, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit326

bb.cv:                                            ; preds = %bb.cu
  %i.no = load ptr, ptr %i.nj, align 8, !tbaa !14
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(205) %i.nj) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit326

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit326:     ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs
  %.pn167 = phi { ptr, i32 } [ %i.nh, %bb.cs ], [ %i.ni, %bb.ct ], [ %i.ni, %bb.cu ], [ %i.ni, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310

bb.cw:                                            ; preds = %bb.cj
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit328

bb.cx:                                            ; preds = %bb.ck
  %i.ns = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.nt = load ptr, ptr %9, align 8, !tbaa !302   ; 4 uses
  %.not.i.i327 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i327, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit328, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !12
  %i.nw = add nsw i32 %i.nv, -1                   ; 2 uses
  store i32 %i.nw, ptr %i.nu, align 8, !tbaa !12
  %i.nx = icmp eq i32 %i.nw, 0
  br i1 %i.nx, label %bb.cz, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit328

bb.cz:                                            ; preds = %bb.cy
  %i.ny = load ptr, ptr %i.nt, align 8, !tbaa !14
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(205) %i.nt) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit328

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit328:     ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cw
  %.pn169 = phi { ptr, i32 } [ %i.nr, %bb.cw ], [ %i.ns, %bb.cx ], [ %i.ns, %bb.cy ], [ %i.ns, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310

bb.da:                                            ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit322
  %i.ob = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !12
  %i.oe = add nsw i32 %i.od, -1                   ; 2 uses
  store i32 %i.oe, ptr %i.oc, align 8, !tbaa !12
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330

bb.db:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324
  %i.og = landingpad { ptr, i32 }
end_hunk_1
