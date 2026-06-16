inline.NumInlined: 6973
inline.NumDeleted: 2254
begin_hunk_0_@_ZN5o3dgc12BinaryStream15WriteFloat32BinEf:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 %.1.extract.trunc, ptr %i.br, align 1
  %i.bs = load i64, ptr %i.d, align 8             ; 6 uses
  %i.bt = load i64, ptr %i.f, align 8
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.ab, label %._crit_edge.i44

._crit_edge.i44:                                  ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit43
  %.pre.i45 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit50

bb.ab:                                            ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit43
  %i.bv = shl i64 %i.bs, 1
  %spec.select.i46 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 32) ; 2 uses
  store i64 %spec.select.i46, ptr %i.f, align 8
  %i.bw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i46) #33 ; 3 uses
  %.not.i47 = icmp eq i64 %i.bs, 0
  br i1 %.not.i47, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = load ptr, ptr %0, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr align 1 %i.bx, i64 %i.bs, i1 false)
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZdaPv(ptr noundef nonnull %i.bx) #31
  %.pre6.pre.i48 = load i64, ptr %i.d, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.pre6.i49 = phi i64 [ %i.bs, %bb.ac ], [ %.pre6.pre.i48, %bb.ad ], [ 0, %bb.ab ]
  store ptr %i.bw, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit50

_ZN5o3dgc6VectorIhE8PushBackERKh.exit50:          ; preds = %._crit_edge.i44, %bb.ae
  %i.bz = phi i64 [ %i.bs, %._crit_edge.i44 ], [ %.pre6.i49, %bb.ae ] ; 2 uses
  %i.ca = phi ptr [ %.pre.i45, %._crit_edge.i44 ], [ %i.bw, %bb.ae ]
  %.2.extract.shift = lshr i32 %i.be, 16
  %.2.extract.trunc = trunc i32 %.2.extract.shift to i8
  %i.cb = add i64 %i.bz, 1
  store i64 %i.cb, ptr %i.d, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store i8 %.2.extract.trunc, ptr %i.cc, align 1
  %i.cd = load i64, ptr %i.d, align 8             ; 6 uses
  %i.ce = load i64, ptr %i.f, align 8
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.af, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit50
  %.pre.i52 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit57

bb.af:                                            ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit50
  %i.cg = shl i64 %i.cd, 1
  %spec.select.i53 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 32) ; 2 uses
  store i64 %spec.select.i53, ptr %i.f, align 8
  %i.ch = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i53) #33 ; 3 uses
  %.not.i54 = icmp eq i64 %i.cd, 0
  br i1 %.not.i54, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ci = load ptr, ptr %0, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr align 1 %i.ci, i64 %i.cd, i1 false)
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZdaPv(ptr noundef nonnull %i.ci) #31
  %.pre6.pre.i55 = load i64, ptr %i.d, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.pre6.i56 = phi i64 [ %i.cd, %bb.ag ], [ %.pre6.pre.i55, %bb.ah ], [ 0, %bb.af ]
  store ptr %i.ch, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit57

_ZN5o3dgc6VectorIhE8PushBackERKh.exit57:          ; preds = %._crit_edge.i51, %bb.ai
  %i.ck = phi i64 [ %i.cd, %._crit_edge.i51 ], [ %.pre6.i56, %bb.ai ] ; 2 uses
  %i.cl = phi ptr [ %.pre.i52, %._crit_edge.i51 ], [ %i.ch, %bb.ai ]
  %.3.extract.shift = lshr i32 %i.be, 24
  %.3.extract.trunc = trunc nuw i32 %.3.extract.shift to i8
  %i.cm = add i64 %i.ck, 1
  store i64 %i.cm, ptr %i.d, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 %.3.extract.trunc, ptr %i.cn, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit57, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc19TriangleListEncoderItE6EncodeEPKtPKmllRNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(556) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(28) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5o3dgc19TriangleListEncoderItE4InitEPKtll(ptr noundef nonnull align 8 dereferenceable(556) %0, ptr noundef %1, i64 noundef %3, i64 noundef %4) ; 0 uses
  %i.b = icmp ne ptr %2, null                     ; 3 uses
  br i1 %i.b, label %.preheader64, label %.loopexit63

.preheader64:                                     ; preds = %bb.a
  %i.c = icmp sgt i64 %3, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit63

.lr.ph:                                           ; preds = %.preheader64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.e = icmp eq i64 %3, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %3, 9223372036854775806
  br label %bb.b

.preheader62.unr-lcssa:                           ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader62, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader62.unr-lcssa, %.lr.ph
  %.04666.epil.init = phi i64 [ 0, %.lr.ph ], [ %spec.select.1, %.preheader62.unr-lcssa ] ; 2 uses
  %.04765.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ah, %.preheader62.unr-lcssa ]
  %lcmp.mod94 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04765.epil.init
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not55.epil = icmp sle i64 %.04666.epil.init, %i.g
  %i.h = zext i1 %.not55.epil to i64
  %spec.select.epil = add nuw nsw i64 %.04666.epil.init, %i.h
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add nsw i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8
  br label %.preheader62

.preheader62:                                     ; preds = %.preheader62.unr-lcssa, %.epil.preheader
  %spec.select.lcssa = phi i64 [ %spec.select.1, %.preheader62.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ] ; 3 uses
  %.not67 = icmp samesign ult i64 %spec.select.lcssa, 2
  br i1 %.not67, label %.loopexit63, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader62
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.o = add i64 %spec.select.lcssa, -1           ; 3 uses
  %xtraiter96 = and i64 %i.o, 1
  %i.p = icmp eq i64 %spec.select.lcssa, 2
  br i1 %i.p, label %.epil.preheader95, label %.lr.ph69.new

.lr.ph69.new:                                     ; preds = %.lr.ph69
  %unroll_iter99 = and i64 %i.o, -2
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.04666 = phi i64 [ 0, %.lr.ph.new ], [ %spec.select.1, %bb.b ] ; 2 uses
  %.04765 = phi i64 [ 0, %.lr.ph.new ], [ %i.ah, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04765
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %.not55 = icmp sle i64 %.04666, %i.r
  %i.s = zext i1 %.not55 to i64
  %spec.select = add nuw nsw i64 %.04666, %i.s    ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add nsw i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04765
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not55.1 = icmp sle i64 %spec.select, %i.aa
  %i.ab = zext i1 %.not55.1 to i64
  %spec.select.1 = add nuw nsw i64 %spec.select, %i.ab ; 3 uses
  %i.ac = load ptr, ptr %i.d, align 8
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = getelementptr i8, ptr %i.ad, i64 8      ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add nsw i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8
  %i.ah = add nuw nsw i64 %.04765, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader62.unr-lcssa, label %bb.b, !llvm.loop !944

bb.c:                                             ; preds = %bb.c, %.lr.ph69.new
  %.04868 = phi i64 [ 2, %.lr.ph69.new ], [ %i.au, %bb.c ] ; 3 uses
  %niter100 = phi i64 [ 0, %.lr.ph69.new ], [ %niter100.next.1, %bb.c ]
  %i.ai = load ptr, ptr %i.n, align 8
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %.04868 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = load i64, ptr %i.aj, align 8
  %i.an = add nsw i64 %i.am, %i.al
  store i64 %i.an, ptr %i.aj, align 8
  %i.ao = load ptr, ptr %i.n, align 8
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.04868 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8      ; 2 uses
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add nsw i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.aq, align 8
  %i.au = add nuw nsw i64 %.04868, 2              ; 2 uses
  %niter100.next.1 = add i64 %niter100, 2         ; 2 uses
  %niter100.ncmp.1 = icmp eq i64 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %.loopexit63.loopexit.unr-lcssa, label %bb.c, !llvm.loop !945

.loopexit63.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.loopexit63, label %.epil.preheader95

.epil.preheader95:                                ; preds = %.loopexit63.loopexit.unr-lcssa, %.lr.ph69
  %.04868.epil.init = phi i64 [ 2, %.lr.ph69 ], [ %i.au, %.loopexit63.loopexit.unr-lcssa ]
  %lcmp.mod98 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.av = load ptr, ptr %i.n, align 8
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %.04868.epil.init ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = load i64, ptr %i.aw, align 8
  %i.ba = add nsw i64 %i.az, %i.ay
  store i64 %i.ba, ptr %i.aw, align 8
  br label %.loopexit63

.loopexit63:                                      ; preds = %.epil.preheader95, %.loopexit63.loopexit.unr-lcssa, %.preheader64, %.preheader62, %bb.a
  %.044 = phi i8 [ 0, %bb.a ], [ 2, %.preheader62 ], [ 2, %.preheader64 ], [ 2, %.loopexit63.loopexit.unr-lcssa ], [ 2, %.epil.preheader95 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 noundef zeroext %.044, i32 noundef %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = load i32, ptr %i.bb, align 8
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit63
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %5, i64 noundef %i.be)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit

bb.e:                                             ; preds = %.loopexit63
  tail call void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %5, i64 noundef %i.be)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit: ; preds = %bb.d, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %.loopexit61, %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit
  %i.bs = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.b, %i.bs
  br i1 %or.cond, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph73, %.loopexit61
  %storemerge72 = phi i64 [ 0, %.lr.ph73 ], [ %i.dk, %.loopexit61 ] ; 7 uses
  %i.bz = load ptr, ptr %i.bk, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %storemerge72
  %i.cb = load i64, ptr %i.ca, align 8
  %.not53 = icmp eq i64 %i.cb, 0
  br i1 %.not53, label %bb.g, label %.loopexit61

bb.g:                                             ; preds = %bb.f
  %i.cc = load ptr, ptr %i.bl, align 8
  %i.cd = load i64, ptr %i.bm, align 8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  store i64 %storemerge72, ptr %i.ce, align 8
  %i.cf = load i64, ptr %i.bn, align 8
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.bn, align 8
  %i.ch = load i64, ptr %i.bm, align 8
  %i.ci = add i64 %i.ch, 1                        ; 2 uses
  %i.cj = load i64, ptr %i.bo, align 8
  %i.ck = icmp eq i64 %i.ci, %i.cj
  %spec.store.select.i = select i1 %i.ck, i64 0, i64 %i.ci
  store i64 %spec.store.select.i, ptr %i.bm, align 8
  %i.cl = load ptr, ptr %i.bk, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %storemerge72
  store i64 1, ptr %i.cm, align 8
  %i.cn = load i64, ptr %0, align 8               ; 2 uses
  %i.co = add nsw i64 %i.cn, 1
  store i64 %i.co, ptr %0, align 8
  %i.cp = load ptr, ptr %i.bp, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %storemerge72
  store i64 %i.cn, ptr %i.cq, align 8
  %i.cr = load ptr, ptr %i.bq, align 8
  %i.cs = load ptr, ptr %i.bp, align 8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %storemerge72
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cu
  store i64 %storemerge72, ptr %i.cv, align 8
  %i.cw = load i64, ptr %i.bn, align 8            ; 2 uses
  %.not5470 = icmp eq i64 %i.cw, 0
  br i1 %.not5470, label %.loopexit61, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.g, %_ZN5o3dgc4FIFOIlE8PopFirstEv.exit
  %i.cx = phi i64 [ %i.dj, %_ZN5o3dgc4FIFOIlE8PopFirstEv.exit ], [ %i.cw, %bb.g ]
  %i.cy = add i64 %i.cx, -1
  store i64 %i.cy, ptr %i.bn, align 8
  %i.cz = load i64, ptr %i.br, align 8            ; 2 uses
  %i.da = add i64 %i.cz, 1                        ; 2 uses
  store i64 %i.da, ptr %i.br, align 8
  %i.db = load i64, ptr %i.bo, align 8
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %bb.h, label %_ZN5o3dgc4FIFOIlE8PopFirstEv.exit

bb.h:                                             ; preds = %.lr.ph71
  store i64 0, ptr %i.bm, align 8
  br label %_ZN5o3dgc4FIFOIlE8PopFirstEv.exit

_ZN5o3dgc4FIFOIlE8PopFirstEv.exit:                ; preds = %.lr.ph71, %bb.h
  %i.dd = load ptr, ptr %i.bl, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.cz
  %i.df = load i64, ptr %i.de, align 8            ; 3 uses
  %i.dg = tail call noundef i32 @_ZN5o3dgc19TriangleListEncoderItE27CompueLocalConnectivityInfoEl(ptr noundef nonnull align 8 dereferenceable(556) %0, i64 noundef %i.df) ; 0 uses
  %i.dh = tail call noundef i32 @_ZN5o3dgc19TriangleListEncoderItE24ComputeTFANDecompositionEl(ptr noundef nonnull align 8 dereferenceable(556) %0, i64 noundef %i.df) ; 0 uses
  %i.di = tail call noundef i32 @_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl(ptr noundef nonnull align 8 dereferenceable(556) %0, i64 noundef %i.df) ; 0 uses
  %i.dj = load i64, ptr %i.bn, align 8            ; 2 uses
  %.not54 = icmp eq i64 %i.dj, 0
  br i1 %.not54, label %.loopexit61, label %.lr.ph71, !llvm.loop !946

.loopexit61:                                      ; preds = %_ZN5o3dgc4FIFOIlE8PopFirstEv.exit, %bb.g, %bb.f
  %i.dk = add nuw nsw i64 %storemerge72, 1        ; 2 uses
  %i.dl = load i64, ptr %i.bh, align 8
  %i.dm = icmp slt i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.f, label %._crit_edge, !llvm.loop !947

.lr.ph78:                                         ; preds = %_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %xtraiter102 = and i64 %3, 3                    ; 3 uses
  %i.dp = icmp ult i64 %3, 4
  br i1 %i.dp, label %.epil.preheader101, label %.lr.ph78.new

.lr.ph78.new:                                     ; preds = %.lr.ph78
  %unroll_iter105 = and i64 %3, 9223372036854775804
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph76, %_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit
  %.04375 = phi i64 [ 0, %.lr.ph76 ], [ %i.fa, %_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit ] ; 2 uses
  %.04574 = phi i64 [ 0, %.lr.ph76 ], [ %i.ez, %_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit ]
  %i.dq = load ptr, ptr %i.bt, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.04375
  %i.ds = load i64, ptr %i.dr, align 8            ; 4 uses
  %i.dt = load ptr, ptr %i.bu, align 8
  %i.du = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ds
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dv ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = add nsw i64 %i.dx, 1
  store i64 %i.dy, ptr %i.dw, align 8
  %i.dz = load ptr, ptr %i.bv, align 8
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ds
  store i64 %i.dx, ptr %i.ea, align 8
  %i.eb = load ptr, ptr %i.bv, align 8
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ds
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = sub nsw i64 %i.ed, %.04574              ; 2 uses
  %i.ef = load i64, ptr %i.bx, align 8            ; 6 uses
  %i.eg = load i64, ptr %i.by, align 8
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.j, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.i
  %.pre.i.i = load ptr, ptr %i.bw, align 8
  br label %_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit

bb.j:                                             ; preds = %bb.i
  %i.ei = shl i64 %i.ef, 1                        ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 32) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.by, align 8
  %i.ej = icmp ugt i64 %i.ei, 2305843009213693951
  %i.ek = shl i64 %spec.select.i.i, 3
  %i.el = select i1 %i.ej, i64 -1, i64 %i.ek
  %i.em = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.el) #33 ; 3 uses
  %.not.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.en = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.eo = shl i64 %i.ef, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.em, ptr align 8 %i.en, i64 %i.eo, i1 false)
  %i.ep = icmp eq ptr %i.en, null
end_hunk_0
