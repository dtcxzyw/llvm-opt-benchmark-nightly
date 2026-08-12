inline.NumInlined: 3652
inline.NumDeleted: 1163
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN2qe12conjunctions14partition_varsEjPP12contains_appjPKP4exprR6vectorI7svectorIjjELb1EjE:bb.a
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i191: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body166

bb.be:                                            ; preds = %bb.ba
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_free_exception(ptr %i.ja) #24
  br label %.body166

bb.bf:                                            ; preds = %bb.az
  %i.ju = zext i32 %i.ix to i64
  %i.jv = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.in, i64 noundef %i.ju)
          to label %.noexc197 unwind label %bb.bi ; 2 uses

.noexc197:                                        ; preds = %bb.bf
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  store ptr %i.jw, ptr %i.if, align 8, !tbaa !703
  store i32 %i.iv, ptr %i.jv, align 4, !tbaa !15
  br label %.noexc111

bb.bg:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i189
  unreachable

.noexc111:                                        ; preds = %.noexc197, %.noexc194
  %.pre.i.i.i = phi ptr [ %i.jw, %.noexc197 ], [ %i.is, %.noexc194 ] ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !15
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc111, %bb.ax
  %i.jx = phi i32 [ %.pre2.i.i.i, %.noexc111 ], [ %i.im, %bb.ax ] ; 2 uses
  %i.jy = phi ptr [ %.pre.i.i.i, %.noexc111 ], [ %i.ij, %bb.ax ] ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -4
  %i.ka = zext i32 %i.jx to i64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.ka
  store ptr %i.ih, ptr %i.kb, align 8, !tbaa !706
  %i.kc = add i32 %i.jx, 1
  store i32 %i.kc, ptr %i.jz, align 4, !tbaa !15
  br label %_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit

bb.bi:                                            ; preds = %bb.bf, %bb.ay, %.noexc.i
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body166

bb.bj:                                            ; preds = %_ZN6vectorIjLb0EjE6resizeIjEEvjRKT_.exit
  store i32 %i.eb, ptr %i.hc, align 4, !tbaa !15
  br label %_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit

_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit: ; preds = %bb.bh, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit4.i, %bb.bj
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1
  %i.ke = load ptr, ptr %14, align 8, !tbaa !403  ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %.critedge230, label %_ZNK6vectorIjLb0EjE4sizeEv.exit104, !llvm.loop !708

.critedge230:                                     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit104, %_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit, %_ZN6vectorIjLb0EjE9push_backERKj.exit102, %_ZN6vectorIjLb0EjE9push_backERKj.exit97
  %i.kg = phi ptr [ %i.af, %_ZN6vectorIjLb0EjE9push_backERKj.exit97 ], [ null, %_ZN6vectorIjLb0EjE9push_backERKj.exit102 ], [ %i.er, %_ZNK6vectorIjLb0EjE4sizeEv.exit104 ], [ null, %_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit ]
  %i.kh = phi ptr [ %i.ag, %_ZN6vectorIjLb0EjE9push_backERKj.exit97 ], [ null, %_ZN6vectorIjLb0EjE9push_backERKj.exit102 ], [ %i.er, %_ZNK6vectorIjLb0EjE4sizeEv.exit104 ], [ null, %_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit ]
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count263
  br i1 %exitcond264.not, label %._crit_edge242, label %bb.f, !llvm.loop !709

bb.bk:                                            ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit
  %i.ki = load ptr, ptr %i.e, align 8, !tbaa !403 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %.08.i = phi i32 [ 0, %bb.bk ], [ %i.kl, %bb.bl ] ; 3 uses
  %i.kj = zext i32 %.08.i to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !15 ; 2 uses
  %.not.i112 = icmp eq i32 %i.kl, %.08.i
  br i1 %.not.i112, label %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.preheader, label %bb.bl

_ZNK10union_findI22union_find_default_ctxE4findEj.exit.preheader: ; preds = %bb.bl
  %exitcond265.not392 = icmp eq i32 %i.x, 1
  br i1 %exitcond265.not392, label %.critedge, label %.preheader.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit114:               ; preds = %_ZNK10union_findI22union_find_default_ctxE4findEj.exit117
  %i.km = add i32 %.047243393, 1                  ; 2 uses
  %exitcond265.not = icmp eq i32 %i.km, %i.x
  br i1 %exitcond265.not, label %.critedge, label %.preheader.preheader, !llvm.loop !710

.preheader.preheader:                             ; preds = %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.preheader, %_ZNK6vectorIjLb0EjE4sizeEv.exit114
  %.047243393 = phi i32 [ %i.km, %_ZNK6vectorIjLb0EjE4sizeEv.exit114 ], [ 1, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.preheader ] ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.08.i115 = phi i32 [ %i.kp, %.preheader ], [ %.047243393, %.preheader.preheader ] ; 3 uses
  %i.kn = zext i32 %.08.i115 to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !15 ; 2 uses
  %.not.i116 = icmp eq i32 %i.kp, %.08.i115
  br i1 %.not.i116, label %_ZNK10union_findI22union_find_default_ctxE4findEj.exit117, label %.preheader

_ZNK10union_findI22union_find_default_ctxE4findEj.exit117: ; preds = %.preheader
  %.not248 = icmp eq i32 %.08.i115, %.08.i
  br i1 %.not248, label %_ZNK6vectorIjLb0EjE4sizeEv.exit114, label %.critedge85, !llvm.loop !710

.critedge85:                                      ; preds = %_ZNK10union_findI22union_find_default_ctxE4findEj.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  store ptr null, ptr %20, align 8, !tbaa !403
  %i.kq = load ptr, ptr %5, align 8, !tbaa !572   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118.thread, label %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118

_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118:   ; preds = %.critedge85
  %i.ks = getelementptr inbounds i8, ptr %i.kq, i64 -4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !15
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118.thread, label %bb.bm

bb.bm:                                            ; preds = %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.pre.i119 = load ptr, ptr %20, align 8, !tbaa !403 ; 3 uses
  %.phi.trans.insert.i120 = getelementptr inbounds i8, ptr %.pre.i119, i64 -4 ; 2 uses
  %.pre2.i121 = load i32, ptr %.phi.trans.insert.i120, align 4, !tbaa !15 ; 2 uses
  %i.kv = zext i32 %.pre2.i121 to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i119, i64 %i.kv
  store i32 -1, ptr %i.kw, align 4, !tbaa !15
  %i.kx = add i32 %.pre2.i121, 1
  store i32 %i.kx, ptr %.phi.trans.insert.i120, align 4, !tbaa !15
  %.pre = load ptr, ptr %16, align 8, !tbaa !403
  br label %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118.thread

bb.bo:                                            ; preds = %bb.bm
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %.body209

_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118.thread: ; preds = %.critedge85, %bb.bn, %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118
  %i.kz = phi ptr [ null, %.critedge85 ], [ %.pre.i119, %bb.bn ], [ null, %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118 ]
  %i.la = phi ptr [ %i.u, %.critedge85 ], [ %.pre, %bb.bn ], [ %i.u, %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118 ] ; 2 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %.critedge231, label %_ZNK6vectorIjLb0EjE4sizeEv.exit124

_ZNK6vectorIjLb0EjE4sizeEv.exit124:               ; preds = %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118.thread, %.critedge86
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %.critedge86 ], [ 0, %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118.thread ] ; 4 uses
  %i.lc = phi ptr [ %i.pb, %.critedge86 ], [ %i.la, %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118.thread ] ; 3 uses
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 -4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !15
  %i.lf = zext i32 %i.le to i64
  %i.lg = icmp samesign ult i64 %indvars.iv269, %i.lf
  br i1 %i.lg, label %bb.br, label %.critedge231.loopexit

.critedge231.loopexit:                            ; preds = %.critedge86, %_ZNK6vectorIjLb0EjE4sizeEv.exit124
  %.pre276 = load ptr, ptr %20, align 8, !tbaa !403
  br label %.critedge231

.critedge231:                                     ; preds = %.critedge231.loopexit, %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118.thread
  %i.lh = phi ptr [ %.pre276, %.critedge231.loopexit ], [ %i.kz, %_ZNK6vectorI7svectorIjjELb1EjE5emptyEv.exit118.thread ] ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i125, label %_ZN6vectorIjLb0EjED2Ev.exit126, label %bb.bp

bb.bp:                                            ; preds = %.critedge231
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.li)
          to label %_ZN6vectorIjLb0EjED2Ev.exit126 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #25
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit126:                   ; preds = %.critedge231, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.critedge

bb.br:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit124
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv269
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !15
  %i.ln = load ptr, ptr %i.e, align 8, !tbaa !403
  %i.lo = trunc nuw i64 %indvars.iv269 to i32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %bb.br
  %.08.i127 = phi i32 [ %i.lo, %bb.br ], [ %i.lr, %bb.bs ] ; 2 uses
  %i.lp = zext i32 %.08.i127 to i64               ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !15 ; 2 uses
  %.not.i128 = icmp eq i32 %i.lr, %.08.i127
  br i1 %.not.i128, label %_ZNK10union_findI22union_find_default_ctxE4findEj.exit129, label %bb.bs

_ZNK10union_findI22union_find_default_ctxE4findEj.exit129: ; preds = %bb.bs
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.lp
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !15 ; 2 uses
  %i.lu = load ptr, ptr %20, align 8, !tbaa !403  ; 5 uses
  %i.lv = icmp eq ptr %i.lu, null
  %22 = getelementptr inbounds i8, ptr %i.lu, i64 -4
  br i1 %i.lv, label %.critedge2, label %_ZNK6vectorIjLb0EjE4sizeEv.exit131.thread.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit131.thread.preheader: ; preds = %_ZNK10union_findI22union_find_default_ctxE4findEj.exit129
  %i.lw = load i32, ptr %22, align 4, !tbaa !15   ; 3 uses
  %i.lx = zext i32 %i.lw to i64                   ; 2 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit131.thread

_ZNK6vectorIjLb0EjE4sizeEv.exit131.thread:        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit131.thread.preheader, %bb.ch
  %indvars.iv266394 = phi i64 [ %indvars.iv.next267, %bb.ch ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit131.thread.preheader ] ; 4 uses
  %23 = icmp samesign ult i64 %indvars.iv266394, %i.lx
  br i1 %23, label %bb.bt, label %bb.ci

bb.bt:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit131.thread
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv266394
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !15
  %i.ma = icmp eq i32 %i.lz, %i.lt
  br i1 %i.ma, label %bb.bu, label %bb.ch

bb.bu:                                            ; preds = %bb.bt
  %i.mb = load ptr, ptr %5, align 8, !tbaa !572
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv266394 ; 3 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !403 ; 4 uses
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mf = getelementptr inbounds i8, ptr %i.md, i64 -4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !15 ; 5 uses
  %i.mh = getelementptr inbounds i8, ptr %i.md, i64 -8 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !15
  %i.mj = icmp eq i32 %i.mg, %i.mi
  br i1 %i.mj, label %bb.bx, label %.critedge86

bb.bw:                                            ; preds = %bb.bu
  %i.mk = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc208 unwind label %bb.cg ; 3 uses

.noexc208:                                        ; preds = %bb.bw
  store i32 2, ptr %i.mk, align 4, !tbaa !15
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store i32 0, ptr %i.ml, align 4, !tbaa !15
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 2 uses
  store ptr %i.mm, ptr %i.mc, align 8, !tbaa !403
  br label %.critedge86.sink.split

bb.bx:                                            ; preds = %bb.bv
  %i.mn = mul i32 %i.mg, 3
  %i.mo = add i32 %i.mn, 1
  %i.mp = lshr i32 %i.mo, 1                       ; 3 uses
  %i.mq = shl i32 %i.mp, 2
  %i.mr = add i32 %i.mq, 8                        ; 2 uses
  %.not.i198 = icmp ugt i32 %i.mp, %i.mg
  br i1 %.not.i198, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ms = shl i32 %i.mg, 2
  %i.mt = add i32 %i.ms, 8
  %.not27.i207 = icmp ugt i32 %i.mr, %i.mt
  br i1 %.not27.i207, label %bb.ce, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.mu = call ptr @__cxa_allocate_exception(i64 40) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.mu, align 8, !tbaa !76
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 24 ; 3 uses
  store ptr %i.mw, ptr %i.mv, align 8, !tbaa !390
  %i.mx = load ptr, ptr %6, align 8, !tbaa !383   ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.mz = icmp eq ptr %i.mx, %i.my
  br i1 %i.mz, label %bb.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i200

bb.cb:                                            ; preds = %bb.ca
  %i.na = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !392 ; 3 uses
  %i.nc = icmp ult i64 %i.nb, 16
  call void @llvm.assume(i1 %i.nc)
  %i.nd = add nuw nsw i64 %i.nb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mw, ptr noundef nonnull align 8 dereferenceable(1) %i.my, i64 %i.nd, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i200: ; preds = %bb.ca
  store ptr %i.mx, ptr %i.mv, align 8, !tbaa !383
  %i.ne = load i64, ptr %i.my, align 8, !tbaa !384
  store i64 %i.ne, ptr %i.mw, align 8, !tbaa !384
  %.phi.trans.insert.i201 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i202 = load i64, ptr %.phi.trans.insert.i201, align 8, !tbaa !392
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i203

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i203: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i200, %bb.cb
  %i.nf = phi i64 [ %i.nb, %bb.cb ], [ %.pre.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i200 ]
  %i.ng = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store i64 %i.nf, ptr %i.nh, align 8, !tbaa !392
  store ptr %i.my, ptr %6, align 8, !tbaa !383
  store i64 0, ptr %i.ng, align 8, !tbaa !392
  store i8 0, ptr %i.my, align 8, !tbaa !384
  invoke void @__cxa_throw(ptr nonnull %i.mu, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #26
          to label %bb.cf unwind label %bb.cc

bb.cc:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i203
  %i.ni = landingpad { ptr, i32 }
          cleanup
  %i.nj = load ptr, ptr %6, align 8, !tbaa !383   ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.my
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i204: ; preds = %bb.cc
  %i.nl = load i64, ptr %i.my, align 8, !tbaa !384
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i205: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body209

bb.cd:                                            ; preds = %bb.bz
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @__cxa_free_exception(ptr %i.mu) #24
  br label %.body209

bb.ce:                                            ; preds = %bb.by
  %i.no = zext i32 %i.mr to i64
  %i.np = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.mh, i64 noundef %i.no)
          to label %.noexc211 unwind label %bb.cg ; 2 uses

.noexc211:                                        ; preds = %bb.ce
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 2 uses
  store ptr %i.nq, ptr %i.mc, align 8, !tbaa !403
  store i32 %i.mp, ptr %i.np, align 4, !tbaa !15
  br label %.critedge86.sink.split

bb.cf:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i203
  unreachable

bb.cg:                                            ; preds = %bb.ce, %bb.bw
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %.body209

bb.ch:                                            ; preds = %bb.bt
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266394, 1
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit131.thread

bb.ci:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit131.thread
  %i.ns = getelementptr inbounds i8, ptr %i.lu, i64 -8
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !15
  %i.nu = icmp eq i32 %i.lw, %i.nt
  br i1 %i.nu, label %.critedge2, label %bb.cj

.critedge2:                                       ; preds = %_ZNK10union_findI22union_find_default_ctxE4findEj.exit129, %bb.ci
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc140 unwind label %bb.cp

.noexc140:                                        ; preds = %.critedge2
  %.pre.i137 = load ptr, ptr %20, align 8, !tbaa !403 ; 2 uses
  %.phi.trans.insert.i138 = getelementptr inbounds i8, ptr %.pre.i137, i64 -4
  %.pre2.i139 = load i32, ptr %.phi.trans.insert.i138, align 4, !tbaa !15 ; 2 uses
  %.pre277 = zext i32 %.pre2.i139 to i64
  br label %bb.cj

bb.cj:                                            ; preds = %.noexc140, %bb.ci
  %.pre-phi = phi i64 [ %.pre277, %.noexc140 ], [ %i.lx, %bb.ci ]
  %i.nv = phi i32 [ %.pre2.i139, %.noexc140 ], [ %i.lw, %bb.ci ]
  %i.nw = phi ptr [ %.pre.i137, %.noexc140 ], [ %i.lu, %bb.ci ] ; 2 uses
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 -4
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %.pre-phi
  store i32 %i.lt, ptr %i.ny, align 4, !tbaa !15
  %i.nz = add i32 %i.nv, 1
  store i32 %i.nz, ptr %i.nx, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  store ptr null, ptr %21, align 8, !tbaa !403
  %i.oa = load ptr, ptr %5, align 8, !tbaa !572   ; 4 uses
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oc = getelementptr inbounds i8, ptr %i.oa, i64 -4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !15 ; 2 uses
  %i.oe = getelementptr inbounds i8, ptr %i.oa, i64 -8
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !15
  %i.og = icmp eq i32 %i.od, %i.of
  br i1 %i.og, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  invoke void @_ZN6vectorI7svectorIjjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc145 unwind label %bb.cq

.noexc145:                                        ; preds = %bb.cl
  %.pre.i142 = load ptr, ptr %5, align 8, !tbaa !572 ; 2 uses
  %.phi.trans.insert.i143 = getelementptr inbounds i8, ptr %.pre.i142, i64 -4
  %.pre2.i144 = load i32, ptr %.phi.trans.insert.i143, align 4, !tbaa !15
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %.noexc145
  %i.oh = phi i32 [ %.pre2.i144, %.noexc145 ], [ %i.od, %bb.ck ] ; 2 uses
  %i.oi = phi ptr [ %.pre.i142, %.noexc145 ], [ %i.oa, %bb.ck ] ; 3 uses
  %i.oj = getelementptr inbounds i8, ptr %i.oi, i64 -4
  %i.ok = zext i32 %i.oh to i64                   ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ok
  store ptr null, ptr %i.ol, align 8, !tbaa !403
  %i.om = add i32 %i.oh, 1
  store i32 %i.om, ptr %i.oj, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ok ; 3 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !403 ; 4 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oq = getelementptr inbounds i8, ptr %i.oo, i64 -4
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !15 ; 2 uses
  %i.os = getelementptr inbounds i8, ptr %i.oo, i64 -8
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !15
  %i.ou = icmp eq i32 %i.or, %i.ot
  br i1 %i.ou, label %bb.co, label %.critedge86

bb.co:                                            ; preds = %bb.cn, %bb.cm
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.on)
          to label %.noexc154 unwind label %bb.cp

.noexc154:                                        ; preds = %bb.co
  %.pre.i151 = load ptr, ptr %i.on, align 8, !tbaa !403
  br label %.critedge86.sink.split

bb.cp:                                            ; preds = %bb.co, %.critedge2
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.body209

bb.cq:                                            ; preds = %bb.cl
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %.body209

.critedge86.sink.split:                           ; preds = %.noexc208, %.noexc211, %.noexc154
  %.pre.i132.sink = phi ptr [ %.pre.i151, %.noexc154 ], [ %i.nq, %.noexc211 ], [ %i.mm, %.noexc208 ] ; 2 uses
  %.phi.trans.insert.i133 = getelementptr inbounds i8, ptr %.pre.i132.sink, i64 -4
  %.pre2.i134 = load i32, ptr %.phi.trans.insert.i133, align 4, !tbaa !15
  br label %.critedge86

.critedge86:                                      ; preds = %.critedge86.sink.split, %bb.bv, %bb.cn
  %.sink380 = phi ptr [ %i.oo, %bb.cn ], [ %i.md, %bb.bv ], [ %.pre.i132.sink, %.critedge86.sink.split ] ; 2 uses
  %.sink = phi i32 [ %i.or, %bb.cn ], [ %i.mg, %bb.bv ], [ %.pre2.i134, %.critedge86.sink.split ] ; 2 uses
  %i.ox = getelementptr inbounds i8, ptr %.sink380, i64 -4
  %i.oy = zext i32 %.sink to i64
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.sink380, i64 %i.oy
  store i32 %i.lm, ptr %i.oz, align 4, !tbaa !15
  %i.pa = add i32 %.sink, 1
  store i32 %i.pa, ptr %i.ox, align 4, !tbaa !15
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1
  %i.pb = load ptr, ptr %16, align 8, !tbaa !403  ; 2 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %.critedge231.loopexit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit124, !llvm.loop !711

.body209:                                         ; preds = %bb.cq, %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i205, %bb.cd, %bb.cg, %bb.bo
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ky, %bb.bo ], [ %i.nn, %bb.cd ], [ %i.ov, %bb.cp ], [ %i.ow, %bb.cq ], [ %i.nr, %bb.cg ], [ %i.ni, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i205 ]
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.body166

.critedge:                                        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit114, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.preheader, %._crit_edge242, %_ZN6vectorIjLb0EjED2Ev.exit126, %_ZNK6vectorIjLb0EjE5emptyEv.exit
  %.150 = phi i1 [ false, %_ZNK6vectorIjLb0EjE5emptyEv.exit ], [ false, %._crit_edge242 ], [ true, %_ZN6vectorIjLb0EjED2Ev.exit126 ], [ false, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.preheader ], [ false, %_ZNK6vectorIjLb0EjE4sizeEv.exit114 ]
  %i.pd = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !403 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit.i, label %bb.cr

bb.cr:                                            ; preds = %.critedge
  %i.pf = getelementptr inbounds i8, ptr %i.pe, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.pf)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pg = landingpad { ptr, i32 }
          catch ptr null
  %i.ph = extractvalue { ptr, i32 } %i.pg, 0
  call void @__clang_call_terminate(ptr %i.ph) #25
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i:                    ; preds = %bb.cr, %.critedge
  %i.pi = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !403 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.pj, null
  br i1 %.not.i.i1.i, label %_ZN6vectorIjLb0EjED2Ev.exit2.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.pk)
          to label %_ZN6vectorIjLb0EjED2Ev.exit2.i unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pl = landingpad { ptr, i32 }
          catch ptr null
  %i.pm = extractvalue { ptr, i32 } %i.pl, 0
  call void @__clang_call_terminate(ptr %i.pm) #25
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit2.i:                   ; preds = %bb.ct, %_ZN6vectorIjLb0EjED2Ev.exit.i
  %i.pn = load ptr, ptr %i.e, align 8, !tbaa !403 ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.pn, null
  br i1 %.not.i.i3.i, label %_ZN10union_findI22union_find_default_ctxED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit2.i
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.po)
          to label %_ZN10union_findI22union_find_default_ctxED2Ev.exit unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.pp = landingpad { ptr, i32 }
          catch ptr null
  %i.pq = extractvalue { ptr, i32 } %i.pp, 0
  call void @__clang_call_terminate(ptr %i.pq) #25
  unreachable

_ZN10union_findI22union_find_default_ctxED2Ev.exit: ; preds = %_ZN6vectorIjLb0EjED2Ev.exit2.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @_ZN6regionD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #24
  %i.pr = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !403 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit.i.i, label %bb.cx

bb.cx:                                            ; preds = %_ZN10union_findI22union_find_default_ctxED2Ev.exit
  %i.pt = getelementptr inbounds i8, ptr %i.ps, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.pt)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i.i unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  %i.pv = extractvalue { ptr, i32 } %i.pu, 0
  call void @__clang_call_terminate(ptr %i.pv) #25
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i.i:                  ; preds = %bb.cx, %_ZN10union_findI22union_find_default_ctxED2Ev.exit
  %i.pw = load ptr, ptr %17, align 8, !tbaa !703  ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i1.i.i, label %_ZN22union_find_default_ctxD2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i
  %i.px = getelementptr inbounds i8, ptr %i.pw, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.px)
end_hunk_0
