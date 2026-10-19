Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APInt?download=true
inline.NumInlined: 1403
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZN4llvm5APInt10fromStringEjNS_9StringRefEh:bb.a
  %i.ab = add nsw i32 %.pre.i, -55
  br label %_ZL8getDigitch.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = add nsw i32 %.pre.i, -97
  %.not26.i = icmp ugt i32 %i.ac, %i.u
  br i1 %.not26.i, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %.pre.i, -87
  br label %_ZL8getDigitch.exit

._crit_edge.i:                                    ; preds = %bb.d, %bb.h
  %.0.i = phi i32 [ 10, %bb.h ], [ %i.t, %bb.d ]
  %i.ae = icmp ult i32 %.pre28.i, %.0.i
  %..i = select i1 %i.ae, i32 %.pre28.i, i32 -1
  br label %_ZL8getDigitch.exit

_ZL8getDigitch.exit:                              ; preds = %bb.e, %bb.g, %bb.i, %._crit_edge.i
  %.020.i = phi i32 [ %.pre28.i, %bb.e ], [ %i.ab, %bb.g ], [ %i.ad, %bb.i ], [ %..i, %._crit_edge.i ]
  br i1 %i.v, label %bb.j, label %_ZN4llvm5APIntlSEj.exit

bb.j:                                             ; preds = %_ZL8getDigitch.exit
  br i1 %.not23, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.e, align 8, !tbaa !23  ; 4 uses
  %i.ag = icmp ult i32 %i.af, 65
  br i1 %i.ag, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, label %bb.l

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.k
  %i.ah = icmp eq i32 %i.r, %i.af
  %i.ai = load i64, ptr %0, align 8
  %i.aj = shl i64 %i.ai, %i.w
  %storemerge.i = select i1 %i.ah, i64 0, i64 %i.aj
  %i.ak = sub nsw i32 0, %i.af
  %i.al = and i32 %i.ak, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 -1, %i.am
  %i.ao = icmp eq i32 %i.af, 0
  %.04.i.i = select i1 %i.ao, i64 0, i64 %i.an, !prof !27
  %i.ap = and i64 %storemerge.i, %.04.i.i
  store i64 %i.ap, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntlSEj.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.r)
  br label %_ZN4llvm5APIntlSEj.exit

bb.m:                                             ; preds = %bb.j
  %i.aq = tail call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmLEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %i.x) ; 0 uses
  br label %_ZN4llvm5APIntlSEj.exit

_ZN4llvm5APIntlSEj.exit:                          ; preds = %bb.l, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, %bb.m, %_ZL8getDigitch.exit
  %i.ar = zext i32 %.020.i to i64                 ; 3 uses
  %i.as = load i32, ptr %i.e, align 8, !tbaa !23  ; 5 uses
  %i.at = icmp ult i32 %i.as, 65
  br i1 %i.at, label %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm5APIntlSEj.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !24    ; 3 uses
  %i.av = zext i32 %i.as to i64
  %i.aw = add nuw nsw i64 %i.av, 63
  %i.ax = lshr i64 %i.aw, 6                       ; 2 uses
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !26
  %i.az = add i64 %i.ay, %i.ar                    ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !26
  %.not.peel.i.i = icmp ult i64 %i.az, %i.ar
  br i1 %.not.peel.i.i, label %.lr.ph.i.i, label %.thread.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 1, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !26
  %i.bc = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !26
  %.not.i.i = icmp ne i64 %i.bc, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ax
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i:     ; preds = %_ZN4llvm5APIntlSEj.exit
  %i.bd = load i64, ptr %0, align 8, !tbaa !24
  %i.be = add i64 %i.bd, %i.ar
  %i.bf = sub nsw i32 0, %i.as
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = lshr i64 -1, %i.bh
  %i.bj = icmp eq i32 %i.as, 0
  %spec.select.i = select i1 %i.bj, i64 0, i64 %i.bi, !prof !30
  %i.bk = and i64 %i.be, %spec.select.i
  store i64 %i.bk, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntpLEm.exit

.thread.i:                                        ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.pn.in.in.i = sub i32 0, %i.as
  %.pn.in.i = and i32 %.pn.in.in.i, 63
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %i.bl = lshr i64 -1, %.pn.i
  %i.bm = load ptr, ptr %0, align 8, !tbaa !24
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %i.ax
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8     ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !26
  %i.bq = and i64 %i.bp, %i.bl
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !26
  br label %_ZN4llvm5APIntpLEm.exit

_ZN4llvm5APIntpLEm.exit:                          ; preds = %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i, %.thread.i
  %i.br = getelementptr inbounds nuw i8, ptr %.128, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.s
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !51

bb.n:                                             ; preds = %._crit_edge
  %i.bs = load i32, ptr %i.e, align 8, !tbaa !23  ; 6 uses
  %i.bt = icmp ult i32 %i.bs, 65
  br i1 %i.bt, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.bv = zext i32 %i.bs to i64
  %i.bw = add nuw nsw i64 %i.bv, 63
  %i.bx = lshr i64 %i.bw, 6                       ; 6 uses
  %min.iters.check = icmp ult i32 %i.bs, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.o
  %n.vec = and i64 %i.bx, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %index ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.by, align 8, !tbaa !26
  %wide.load38 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !26
  %i.ca = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.cb = xor <2 x i64> %wide.load38, splat (i64 -1)
  store <2 x i64> %i.ca, ptr %i.by, align 8, !tbaa !26
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.o, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %bb.o ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !26
  %i.cf = xor i64 %i.ce, -1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !26
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.bx
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !53

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %middle.block
  %i.cg = sub i32 0, %i.bs
  %i.ch = and i32 %i.cg, 63
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = lshr i64 -1, %i.ci                      ; 2 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !24
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %i.bx
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8     ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !26
  %i.co = and i64 %i.cn, %i.cj
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !26
  %i.cp = load ptr, ptr %0, align 8, !tbaa !24    ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !26
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !26
  %.not.peel.i.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.peel.i.i.i.i, label %.lr.ph.i.i.i2.i, label %.thread.i.i

.lr.ph.i.i.i2.i:                                  ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i2.i
  %indvars.iv.i.i.i3.i = phi i64 [ %indvars.iv.next.i.i.i4.i, %.lr.ph.i.i.i2.i ], [ 1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i.i.i3.i ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !26
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !26
  %.not.i.i.i.i = icmp ne i64 %i.cu, 0
  %indvars.iv.next.i.i.i4.i = add nuw nsw i64 %indvars.iv.i.i.i3.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i = icmp eq i64 %indvars.iv.next.i.i.i4.i, %i.bx
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i
  br i1 %or.cond.i.i, label %.thread.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i: ; preds = %bb.n
  %i.cv = load i64, ptr %0, align 8, !tbaa !24
  %i.cw = xor i64 %i.cv, -1
  %i.cx = sub nsw i32 0, %i.bs
  %i.cy = and i32 %i.cx, 63
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = lshr i64 -1, %i.cz
  %i.db = icmp eq i32 %i.bs, 0
  %spec.select.i.i = select i1 %i.db, i64 0, i64 %i.da ; 2 uses
  %i.dc = and i64 %spec.select.i.i, %i.cw
  %i.dd = add i64 %i.dc, 1
  %i.de = and i64 %i.dd, %spec.select.i.i
  store i64 %i.de, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APInt6negateEv.exit

.thread.i.i:                                      ; preds = %.lr.ph.i.i.i2.i, %.lr.ph.preheader.i.i.i.i
  %i.df = load ptr, ptr %0, align 8, !tbaa !24
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.bx
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8     ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !26
  %i.dj = and i64 %i.di, %i.cj
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !26
  br label %_ZN4llvm5APInt6negateEv.exit

_ZN4llvm5APInt6negateEv.exit:                     ; preds = %.thread.i.i, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm5APInt10reallocateEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6
  %i.f = zext i32 %1 to i64
  %i.g = add nuw nsw i64 %i.f, 63
  %i.h = lshr i64 %i.g, 6                         ; 2 uses
  %i.i = icmp eq i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !23
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i32 %i.b, 65
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  store i32 %1, ptr %i.a, align 8, !tbaa !23
  %i.m = icmp ult i32 %1, 65
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = shl nuw nsw i64 %i.h, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #21
  store ptr %i.o, ptr %0, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 63
  %i.h = lshr i64 %i.g, 6
  %i.i = zext i32 %i.c to i64
  %i.j = add nuw nsw i64 %i.i, 63
  %i.k = lshr i64 %i.j, 6                         ; 2 uses
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.d, align 8, !tbaa !23
  br label %_ZN4llvm5APInt10reallocateEj.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp ult i32 %i.e, 65
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store i32 %i.c, ptr %i.d, align 8, !tbaa !23
  %i.p = icmp ult i32 %i.c, 65
  br i1 %i.p, label %_ZN4llvm5APInt10reallocateEj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i64 %i.k, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #21
  store ptr %i.r, ptr %0, align 8, !tbaa !24
  %.pr = load i32, ptr %i.d, align 8, !tbaa !23
  br label %_ZN4llvm5APInt10reallocateEj.exit

_ZN4llvm5APInt10reallocateEj.exit:                ; preds = %bb.c, %bb.h
  %i.s = phi i32 [ %i.c, %bb.c ], [ %.pr, %bb.h ] ; 2 uses
  %i.t = icmp ult i32 %i.s, 65
  br i1 %i.t, label %_ZN4llvm5APInt10reallocateEj.exit.thread, label %bb.i

_ZN4llvm5APInt10reallocateEj.exit.thread:         ; preds = %bb.g, %_ZN4llvm5APInt10reallocateEj.exit
  %i.u = load i64, ptr %1, align 8, !tbaa !24
  store i64 %i.u, ptr %0, align 8, !tbaa !24
  br label %bb.j

bb.i:                                             ; preds = %_ZN4llvm5APInt10reallocateEj.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !24
  %i.w = load ptr, ptr %1, align 8, !tbaa !24
  %i.x = zext i32 %i.s to i64
  %i.y = add nuw nsw i64 %i.x, 63
  %sh.diff = lshr i64 %i.y, 3
  %i.z = and i64 %sh.diff, 1073741816
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.w, i64 %i.z, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %_ZN4llvm5APInt10reallocateEj.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt7ProfileERNS_16FoldingSetNodeIDE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !55
  %.not.i.i.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.b)
  br label %_ZN4llvm16FoldingSetNodeID10AddIntegerEj.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %1, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g
  store i32 %i.b, ptr %i.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !35
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !35
  br label %_ZN4llvm16FoldingSetNodeID10AddIntegerEj.exit

_ZN4llvm16FoldingSetNodeID10AddIntegerEj.exit:    ; preds = %bb.b, %bb.c
  %i.l = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.m = icmp ult i32 %i.l, 65
  br i1 %i.m, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %_ZN4llvm16FoldingSetNodeID10AddIntegerEj.exit
  %i.n = load i64, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = load i32, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.q = load i32, ptr %i.e, align 4, !tbaa !55
  %.not.i.i.i7 = icmp ult i32 %i.p, %i.q
  br i1 %.not.i.i.i7, label %bb.f, label %bb.e, !prof !36

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.o)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !35
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = zext i32 %i.p to i64
  %i.s = load ptr, ptr %1, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  store i32 %i.o, ptr %i.t, align 1
  %i.u = load i32, ptr %i.c, align 8, !tbaa !35
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %i.c, align 8, !tbaa !35
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i: ; preds = %bb.f, %bb.e
  %i.w = phi i32 [ %.pre.i.i, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.x = lshr i64 %i.n, 32
  %i.y = trunc nuw i64 %i.x to i32                ; 2 uses
  %i.z = load i32, ptr %i.e, align 4, !tbaa !55
end_hunk_0
begin_hunk_1_@_ZN4llvm8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !26
  %i.qh = shl i64 %i.qg, %i.pb
  %i.qi = or i64 %i.qh, %i.qb
  store i64 %i.qi, ptr %i.qc, align 8, !tbaa !26
  %i.qj = trunc nuw i64 %indvars.iv.next.i.i.i108 to i32
  %i.qk = add i32 %.sroa.speculated.i.i.i100, %i.qj ; 3 uses
  %i.ql = zext i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.ql
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !26
  %i.qo = lshr i64 %i.qn, %i.oz                   ; 3 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %indvars.iv.next.i.i.i108 ; 3 uses
  store i64 %i.qo, ptr %i.qp, align 8, !tbaa !26
  %indvars.iv.next.i.i.i108.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i107, 2 ; 2 uses
  %niter299.next.1 = add nuw i64 %niter299, 2     ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %.loopexit.i.i.i103.loopexit.unr-lcssa, label %.lr.ph.i.i106

.loopexit.i.i.i103.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i106
  %lcmp.mod296.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod296.not, label %.loopexit.i.i.i103, label %.lr.ph.i.i106.epil.preheader

.lr.ph.i.i106.epil.preheader:                     ; preds = %.loopexit.i.i.i103.loopexit.unr-lcssa, %.lr.ph.i.i106.preheader
  %indvars.iv.next.i2.i.i107.epil.init = phi i64 [ 1, %.lr.ph.i.i106.preheader ], [ %indvars.iv.next.i.i.i108.1, %.loopexit.i.i.i103.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init291 = phi ptr [ %i.oj, %.lr.ph.i.i106.preheader ], [ %i.qp, %.loopexit.i.i.i103.loopexit.unr-lcssa ]
  %.epil.init293 = phi i64 [ %i.pf, %.lr.ph.i.i106.preheader ], [ %i.qo, %.loopexit.i.i.i103.loopexit.unr-lcssa ]
  %.epil.init295 = phi i32 [ %.sroa.speculated.i.i.i100, %.lr.ph.i.i106.preheader ], [ %i.qk, %.loopexit.i.i.i103.loopexit.unr-lcssa ]
  %lcmp.mod297 = trunc i64 %i.ph to i1
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.qq = add i32 %.epil.init295, 1
  %i.qr = zext i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.qr
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !26
  %i.qu = shl i64 %i.qt, %i.pb
  %i.qv = or i64 %i.qu, %.epil.init293
  store i64 %i.qv, ptr %.epil.init291, align 8, !tbaa !26
  %i.qw = trunc nuw i64 %indvars.iv.next.i2.i.i107.epil.init to i32
  %i.qx = add i32 %.sroa.speculated.i.i.i100, %i.qw
  %i.qy = zext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.qy
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !26
  %i.rb = lshr i64 %i.ra, %i.oz
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %indvars.iv.next.i2.i.i107.epil.init
  store i64 %i.rb, ptr %i.rc, align 8, !tbaa !26
  br label %.loopexit.i.i.i103

.loopexit.i.i.i103:                               ; preds = %.lr.ph.i.i106.epil.preheader, %.loopexit.i.i.i103.loopexit.unr-lcssa, %bb.az, %.lr.ph.i.i.i104, %.preheader.i.i.i101
  %i.rd = zext nneg i32 %i.ox to i64
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.rd
  %i.rf = shl nuw nsw i32 %.sroa.speculated.i.i.i100, 3
  %i.rg = zext nneg i32 %i.rf to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.re, i8 0, i64 %i.rg, i1 false)
  br label %_ZN4llvm5APInt11lshrInPlaceEj.exit77.backedge

_ZN4llvm5APInt11lshrInPlaceEj.exit77.backedge:    ; preds = %.loopexit.i.i.i103, %_ZNK4llvm5APInt11countr_zeroEv.exit98, %bb.ax, %bb.aw, %.loopexit.i.i.i70, %_ZNK4llvm5APInt11countr_zeroEv.exit65, %bb.an, %bb.am
  br label %_ZN4llvm5APInt11lshrInPlaceEj.exit77, !llvm.loop !157

bb.ba:                                            ; preds = %_ZNK4llvm5APIntneERKS0_.exit.thread, %_ZNK4llvm5APIntneERKS0_.exit
  %i.rh = phi i64 [ %i.ik, %_ZNK4llvm5APIntneERKS0_.exit.thread ], [ %i.id, %_ZNK4llvm5APIntneERKS0_.exit ]
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ib, ptr %i.ri, align 8, !tbaa !23
  store i64 %i.rh, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.i, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8APIntOps18RoundDoubleToAPIntEdj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APInt") align 8 captures(none) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %1 to i64                 ; 3 uses
  %.not = icmp slt i64 %i.a, 0                    ; 3 uses
  %i.b = lshr i64 %i.a, 52
  %i.c = and i64 %i.b, 2047                       ; 5 uses
  %i.d = icmp samesign ult i64 %i.c, 1023
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.e, align 8, !tbaa !23
  %i.f = icmp ult i32 %2, 65
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.d:                                             ; preds = %bb.b
  %i.g = zext i32 %2 to i64
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741816                 ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false)
  store ptr %i.k, ptr %0, align 8, !tbaa !24
  store i64 0, ptr %i.k, align 8, !tbaa !26
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.e:                                             ; preds = %bb.a
  %i.l = and i64 %i.a, 4503599627370495
  %i.m = or disjoint i64 %i.l, 4503599627370496   ; 3 uses
  %i.n = icmp samesign ult i64 %i.c, 1075
  br i1 %i.n, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.o = sub nuw nsw i64 1075, %i.c
  %i.p = lshr i64 %i.m, %i.o                      ; 4 uses
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = icmp ult i32 %2, 65
  br i1 %i.q, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = zext i32 %2 to i64
  %i.s = add nuw nsw i64 %i.r, 63                 ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741816                 ; 2 uses
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #21 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.u, i1 false)
  store i64 %i.p, ptr %i.v, align 8, !tbaa !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.w = lshr i64 %i.s, 6                         ; 5 uses
  %min.iters.check123 = icmp ult i32 %2, 193
  br i1 %min.iters.check123, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %bb.h
  %n.vec125 = and i64 %i.w, 134217724             ; 3 uses
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next130, %vector.body126 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index127 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %wide.load128 = load <2 x i64>, ptr %i.x, align 8, !tbaa !26, !noalias !166
  %wide.load129 = load <2 x i64>, ptr %i.y, align 8, !tbaa !26, !noalias !166
  %i.z = xor <2 x i64> %wide.load128, splat (i64 -1)
  %i.aa = xor <2 x i64> %wide.load129, splat (i64 -1)
  store <2 x i64> %i.z, ptr %i.x, align 8, !tbaa !26, !noalias !166
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !26, !noalias !166
  %index.next130 = add nuw i64 %index127, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next130, %n.vec125
  br i1 %i.ab, label %middle.block131, label %vector.body126, !llvm.loop !160

middle.block131:                                  ; preds = %vector.body126
  %cmp.n132 = icmp eq i64 %i.w, %n.vec125
  br i1 %cmp.n132, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %middle.block131
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.h ], [ %n.vec125, %middle.block131 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !26, !noalias !166
  %i.ae = xor i64 %i.ad, -1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !26, !noalias !166
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.w
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !161

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block131
  %i.af = ptrtoint ptr %i.v to i64
  %i.ag = sub i32 0, %2
  %i.ah = and i32 %i.ag, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 -1, %i.ai                      ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %i.al = getelementptr i8, ptr %i.ak, i64 -8     ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26, !noalias !166
  %i.an = and i64 %i.am, %i.aj
  store i64 %i.an, ptr %i.al, align 8, !tbaa !26, !noalias !166
  %i.ao = load i64, ptr %i.v, align 8, !tbaa !26, !noalias !166
  %i.ap = add i64 %i.ao, 1                        ; 2 uses
  store i64 %i.ap, ptr %i.v, align 8, !tbaa !26, !noalias !166
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26, !noalias !166
  %i.as = add i64 %i.ar, 1                        ; 2 uses
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !26, !noalias !166
  %.not.i.i.i.i.i = icmp ne i64 %i.as, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.w
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.g
  %i.at = xor i64 %i.p, -1
  %i.au = sub nsw i32 0, %2
  %i.av = and i32 %i.au, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 -1, %i.aw
  %i.ay = icmp eq i32 %2, 0
  %spec.select.i.i.i = select i1 %i.ay, i64 0, i64 %i.ax ; 2 uses
  %i.az = and i64 %spec.select.i.i.i, %i.at
  %i.ba = add nuw i64 %i.az, 1
  %i.bb = and i64 %i.ba, %spec.select.i.i.i
  br label %_ZN4llvm5APIntD2Ev.exit

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !26, !noalias !166
  %i.bd = and i64 %i.bc, %i.aj
  store i64 %i.bd, ptr %i.al, align 8, !tbaa !26, !noalias !166
  br label %_ZN4llvm5APIntD2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.be, align 8, !tbaa !23
  %i.bf = icmp ult i32 %2, 65
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.p, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.k:                                             ; preds = %bb.i
  %i.bg = zext i32 %2 to i64
  %i.bh = add nuw nsw i64 %i.bg, 63
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741816               ; 2 uses
  %i.bk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bk, i8 0, i64 %i.bj, i1 false)
  store ptr %i.bk, ptr %0, align 8, !tbaa !24
  store i64 %i.p, ptr %i.bk, align 8, !tbaa !26
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.thread.i.i.i, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i
  %.sroa.074.2 = phi i64 [ %i.bb, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %i.af, %.thread.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.bl, align 8, !tbaa !23, !alias.scope !166
  store i64 %.sroa.074.2, ptr %0, align 8, !alias.scope !166
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.l:                                             ; preds = %bb.e
  %i.bm = zext i32 %2 to i64                      ; 3 uses
  %i.bn = add nsw i64 %i.c, -1075                 ; 2 uses
  %.not23 = icmp samesign ult i64 %i.bn, %i.bm
  br i1 %.not23, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.bo, align 8, !tbaa !23
  %i.bp = icmp ult i32 %2, 65
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.o:                                             ; preds = %bb.m
  %i.bq = add nuw nsw i64 %i.bm, 63
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741816               ; 2 uses
  %i.bt = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bs) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bt, i8 0, i64 %i.bs, i1 false)
  store ptr %i.bt, ptr %0, align 8, !tbaa !24
  store i64 0, ptr %i.bt, align 8, !tbaa !26
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.p:                                             ; preds = %bb.l
  %i.bu = icmp ult i32 %2, 65
  br i1 %i.bu, label %_ZN4llvm5APIntlSEj.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = add nuw nsw i64 %i.bm, 63               ; 2 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741816               ; 6 uses
  %i.by = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bx) #21 ; 18 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.by, i8 0, i64 %i.bx, i1 false)
  store i64 %i.m, ptr %i.by, align 8, !tbaa !26
  %i.bz = trunc nuw nsw i64 %i.c to i32
  %i.ca = add nsw i32 %i.bz, -1075                ; 3 uses
  %i.cb = lshr i64 %i.bv, 6                       ; 9 uses
  %i.cc = trunc nuw nsw i64 %i.cb to i32          ; 4 uses
  %.not.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i, label %_ZN4llvm5APIntlSEj.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = lshr i32 %i.ca, 6                       ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.cd) ; 11 uses
  %i.ce = and i32 %i.ca, 63                       ; 3 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.s, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.r
  %i.cg = icmp samesign ult i32 %i.cd, %i.cc
  br i1 %i.cg, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ch = zext nneg i32 %i.ce to i64              ; 4 uses
  %i.ci = sub nuw nsw i32 64, %i.ce
  %i.cj = zext nneg i32 %i.ci to i64              ; 3 uses
  %indvars.iv.next.i1.i = add nsw i64 %i.cb, -1   ; 4 uses
  %indvars.i2.i = trunc nuw nsw i64 %indvars.iv.next.i1.i to i32 ; 2 uses
  %i.ck = sub nuw nsw i32 %indvars.i2.i, %.sroa.speculated.i.i ; 2 uses
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !26
  %i.co = shl i64 %i.cn, %i.ch                    ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i1.i ; 3 uses
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !26
  %i.cq = icmp samesign ult i32 %.sroa.speculated.i.i, %indvars.i2.i
  br i1 %i.cq, label %.lr.ph.preheader.i, label %.loopexit.i.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i
  %i.cr = xor i32 %.sroa.speculated.i.i, -1
  %i.cs = sext i32 %i.cr to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.by, i64 %i.cs ; 3 uses
  %i.ct = add nsw i32 %i.cc, -2
  %xtraiter = and i32 %i.ck, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i1.i
  %i.cu = load i64, ptr %gep.i.prol, align 8, !tbaa !26
  %i.cv = lshr i64 %i.cu, %i.cj
  %i.cw = or i64 %i.cv, %i.co
  store i64 %i.cw, ptr %i.cp, align 8, !tbaa !26
  %indvars.iv.next.i.prol = add nsw i64 %i.cb, -2 ; 3 uses
  %indvars.i.prol = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %i.cx = sub nuw nsw i32 %indvars.i.prol, %.sroa.speculated.i.i
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !26
  %i.db = shl i64 %i.da, %i.ch                    ; 2 uses
  %i.dc = and i64 %indvars.iv.next.i.prol, 4294967295
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.dc ; 2 uses
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !26
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.next.i1.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %i.cp, %.lr.ph.preheader.i ], [ %i.dd, %.lr.ph.i.prol ]
  %.unr134 = phi i64 [ %i.co, %.lr.ph.preheader.i ], [ %i.db, %.lr.ph.i.prol ]
  %i.de = icmp eq i32 %i.ct, %.sroa.speculated.i.i
  br i1 %i.de, label %.loopexit.i.i, label %.lr.ph.i

bb.s:                                             ; preds = %bb.r
  %i.df = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.df
  %i.dh = sub nuw nsw i32 %i.cc, %.sroa.speculated.i.i
  %i.di = shl nuw nsw i32 %i.dh, 3
  %i.dj = zext nneg i32 %i.di to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr nonnull align 8 %i.by, i64 %i.dj, i1 false)
  br label %.loopexit.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.dk = phi ptr [ %i.ef, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.dl = phi i64 [ %i.ed, %.lr.ph.i ], [ %.unr134, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.dm = load i64, ptr %gep.i, align 8, !tbaa !26
  %i.dn = lshr i64 %i.dm, %i.cj
  %i.do = or i64 %i.dn, %i.dl
  store i64 %i.do, ptr %i.dk, align 8, !tbaa !26
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.dp = sub nuw i32 %indvars.i, %.sroa.speculated.i.i
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !26
  %i.dt = shl i64 %i.ds, %i.ch                    ; 2 uses
  %i.du = and i64 %indvars.iv.next.i, 4294967295
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.du ; 2 uses
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !26
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.dw = load i64, ptr %gep.i.1, align 8, !tbaa !26
  %i.dx = lshr i64 %i.dw, %i.cj
  %i.dy = or i64 %i.dx, %i.dt
  store i64 %i.dy, ptr %i.dv, align 8, !tbaa !26
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %indvars.i.1 = trunc i64 %indvars.iv.next.i.1 to i32 ; 2 uses
  %i.dz = sub nuw i32 %indvars.i.1, %.sroa.speculated.i.i
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !26
  %i.ed = shl i64 %i.ec, %i.ch                    ; 2 uses
  %i.ee = and i64 %indvars.iv.next.i.1, 4294967295
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ee ; 2 uses
  store i64 %i.ed, ptr %i.ef, align 8, !tbaa !26
  %i.eg = icmp ult i32 %.sroa.speculated.i.i, %indvars.i.1
  br i1 %i.eg, label %.lr.ph.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.s, %.lr.ph.i.i, %.preheader.i.i
  %i.eh = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.ei = zext nneg i32 %i.eh to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.by, i8 0, i64 %i.ei, i1 false)
  br label %_ZN4llvm5APIntlSEj.exit.thread

_ZN4llvm5APIntlSEj.exit:                          ; preds = %bb.p
  %i.ej = shl i64 %i.m, %i.bn
  %i.ek = sub nsw i32 0, %2
  %i.el = and i32 %i.ek, 63
end_hunk_1
begin_hunk_2_@_ZNK4llvm5APInt21multiplicativeInverseEv:bb.a
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 8 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !23
  %i.d = icmp ult i32 %i.c, 65                    ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !24
  %i.f = inttoptr i64 %i.e to ptr
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.c to i64
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741816                 ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #21 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %i.l, i64 %i.j, i1 false)
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.b, %bb.c
  %.sink = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  store ptr %.sink, ptr %0, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = ptrtoint ptr %.sink to i64
  %i.o = zext i32 %i.c to i64
  %i.p = add nuw nsw i64 %i.o, 63                 ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741816
  %i.s = lshr i64 %i.p, 6                         ; 8 uses
  %i.t = trunc nuw nsw i64 %i.s to i32            ; 3 uses
  %i.u = sub i32 0, %i.c
  %i.v = and i32 %i.u, 63
  %i.w = zext nneg i32 %i.v to i64
  %i.x = lshr i64 -1, %i.w
  %i.y = sub nsw i32 0, %i.c
  %i.z = and i32 %i.y, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = lshr i64 -1, %i.aa
  %i.ac = icmp eq i32 %i.c, 0
  %spec.select.i.i = select i1 %i.ac, i64 0, i64 %i.ab, !prof !27
  br label %_ZN4llvm5APIntaSEOS0_.exit

_ZN4llvm5APIntaSEOS0_.exit:                       ; preds = %_ZN4llvm5APIntaSEOS0_.exit.backedge, %_ZN4llvm5APIntC2ERKS0_.exit
  %i.ad = phi i64 [ %i.n, %_ZN4llvm5APIntC2ERKS0_.exit ], [ %.sroa.028.032, %_ZN4llvm5APIntaSEOS0_.exit.backedge ]
  %i.ae = phi ptr [ %.sink, %_ZN4llvm5APIntC2ERKS0_.exit ], [ %i.gq, %_ZN4llvm5APIntaSEOS0_.exit.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.af = load i64, ptr %2, align 8               ; 5 uses
  %i.ag = load i32, ptr %i.m, align 8, !tbaa !23  ; 9 uses
  %i.ah = icmp ult i32 %i.ag, 65                  ; 2 uses
  br i1 %i.ah, label %.split, label %.lr.ph.i.i

.split:                                           ; preds = %_ZN4llvm5APIntaSEOS0_.exit
  %i.ai = icmp eq i64 %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.ai, label %_ZN4llvm5APIntD2Ev.exit5, label %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm5APIntaSEOS0_.exit
  %i.aj = zext i32 %i.ag to i64
  %i.ak = add nuw nsw i64 %i.aj, 63
  %i.al = lshr i64 %i.ak, 6                       ; 8 uses
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = inttoptr i64 %i.af to ptr               ; 11 uses
  %i.ao = shl i32 %i.am, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ %i.al, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.av, %bb.e ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !26 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = or disjoint i32 %.019.i.i, %i.at
  br label %_ZN4llvm5APIntD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.av = add i32 %.019.i.i, 64
  %i.aw = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.aw, label %bb.d, label %_ZN4llvm5APIntD2Ev.exit, !llvm.loop !1

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.e, %.thread.i.i
  %.2.i.i = phi i32 [ %i.au, %.thread.i.i ], [ %i.ao, %bb.e ]
  %i.ax = and i32 %i.ag, 63
  %.not.i.i = icmp eq i32 %i.ax, 0
  %.neg.i.i = or i32 %i.ag, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.ay = add i32 %.2.i.i, %.neg15.i.i
  %i.az = add i32 %i.ag, -1
  %i.ba = icmp eq i32 %i.ay, %i.az
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.ba, label %bb.n, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN4llvm5APIntD2Ev.exit
  %min.iters.check = icmp ult i32 %i.ag, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.al, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bb, align 8, !tbaa !26, !noalias !239
  %wide.load79 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !26, !noalias !239
  %i.bd = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.be = xor <2 x i64> %wide.load79, splat (i64 -1)
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !26, !noalias !239
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !26, !noalias !239
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader82

.lr.ph.i.i.i.i.i.preheader82:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader82, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader82 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26, !noalias !239
  %i.bi = xor i64 %i.bh, -1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !26, !noalias !239
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.al
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !235

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %i.bj = sub i32 0, %i.ag
  %i.bk = and i32 %i.bj, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = lshr i64 -1, %i.bl                      ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %i.an, i64 %i.al
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8     ; 6 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  %i.bq = and i64 %i.bp, %i.bm
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  %i.br = load i64, ptr %i.an, align 8, !tbaa !26, !noalias !239
  %i.bs = add i64 %i.br, 1                        ; 2 uses
  store i64 %i.bs, ptr %i.an, align 8, !tbaa !26, !noalias !239
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26, !noalias !239
  %i.bv = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !26, !noalias !239
  %.not.i.i.i.i.i = icmp ne i64 %i.bv, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.al
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bw = load i64, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  %i.bx = and i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  %i.by = load i64, ptr %i.an, align 8, !tbaa !26, !noalias !239 ; 2 uses
  %i.bz = add i64 %i.by, 2
  store i64 %i.bz, ptr %i.an, align 8, !tbaa !26, !noalias !239
  %.not.peel.i.i.i = icmp ugt i64 %i.by, -3
  br i1 %.not.peel.i.i.i, label %.lr.ph.i.i.i, label %.thread.i.i2

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 1, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.i.i ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !26, !noalias !239
  %i.cc = add i64 %i.cb, 1                        ; 2 uses
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !26, !noalias !239
  %.not.i.i.i = icmp ne i64 %i.cc, 0
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.al
  %or.cond.i.i = select i1 %.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i, label %.thread.i.i2, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i:   ; preds = %.split
  %i.cd = xor i64 %i.af, -1
  %i.ce = sub nsw i32 0, %i.ag
  %i.cf = and i32 %i.ce, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = lshr i64 -1, %i.cg
  %i.ci = icmp eq i32 %i.ag, 0
  %spec.select.i.i.i = select i1 %i.ci, i64 0, i64 %i.ch, !prof !30 ; 3 uses
  %i.cj = and i64 %spec.select.i.i.i, %i.cd
  %i.ck = add i64 %i.cj, 1
  %i.cl = and i64 %i.ck, %spec.select.i.i.i
  %i.cm = add i64 %i.cl, 2
  %i.cn = and i64 %i.cm, %spec.select.i.i.i
  br label %_ZN4llvmmiEmNS_5APIntE.exit

.thread.i.i2:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.co = load i64, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  %i.cp = and i64 %i.co, %i.bm
  store i64 %i.cp, ptr %i.bo, align 8, !tbaa !26, !noalias !239
  br label %_ZN4llvmmiEmNS_5APIntE.exit

_ZN4llvmmiEmNS_5APIntE.exit:                      ; preds = %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i, %.thread.i.i2
  %.sroa.0.0 = phi i64 [ %i.cn, %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i.i ], [ %i.af, %.thread.i.i2 ] ; 4 uses
  br i1 %i.d, label %_ZNK4llvm5APIntmlERKS0_.exit.thread, label %bb.f

_ZNK4llvm5APIntmlERKS0_.exit.thread:              ; preds = %_ZN4llvmmiEmNS_5APIntE.exit
  %i.cq = mul i64 %i.ad, %.sroa.0.0
  %i.cr = and i64 %i.cq, %spec.select.i.i
  br label %_ZN4llvm5APIntmLERKS0_.exit

bb.f:                                             ; preds = %_ZN4llvmmiEmNS_5APIntE.exit
  %i.cs = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #21, !noalias !240 ; 4 uses
  %i.ct = inttoptr i64 %.sroa.0.0 to ptr
  br label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %bb.f, %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit ], [ 0, %bb.f ] ; 8 uses
  %i.cu = sub nsw i64 %i.s, %indvars.iv.i.i
  %i.cv = and i64 %i.cu, 4294967295
  %umin89 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.cv)
  %i.cw = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.cx = getelementptr i8, ptr %i.cs, i64 %i.cw
  %scevgep = getelementptr i8, ptr %i.cx, i64 8
  %i.cy = sub nsw i64 %i.s, %indvars.iv.i.i
  %i.cz = and i64 %i.cy, 4294967295
  %umin = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.cz)
  %i.da = shl nuw nsw i64 %umin, 3
  %i.db = add nsw i64 %i.da, -8
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i ; 7 uses
  %.not = icmp eq i64 %indvars.iv.i.i, 0          ; 2 uses
  %i.dd = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
  %i.de = sub i32 %i.t, %i.dd
  %i.df = icmp ugt i32 %i.dd, %i.t
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.de) ; 4 uses
  %.not102.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not102.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i7
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i.i
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !26, !noalias !240 ; 3 uses
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = and i64 %i.dh, 4294967295               ; 4 uses
  %i.dk = lshr i64 %i.dh, 32                      ; 4 uses
  %wide.trip.count121.i = zext nneg i32 %.sroa.speculated.i to i64 ; 4 uses
  br i1 %i.di, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %.not, label %.lr.ph.split.us.split.preheader.i, label %.lr.ph.split.us.split.us.i.preheader

.lr.ph.split.us.split.us.i.preheader:             ; preds = %.lr.ph.split.us.i
  %xtraiter = and i64 %wide.trip.count121.i, 1
  %i.dl = icmp eq i64 %umin89, 1
  br i1 %i.dl, label %.lr.ph.split.us.split.us.i.epil.preheader, label %.lr.ph.split.us.split.us.i.preheader.new

.lr.ph.split.us.split.us.i.preheader.new:         ; preds = %.lr.ph.split.us.split.us.i.preheader
  %unroll_iter = and i64 %wide.trip.count121.i, 2147483646
  br label %.lr.ph.split.us.split.us.i

.lr.ph.split.us.split.preheader.i:                ; preds = %.lr.ph.split.us.i
  store i64 0, ptr %i.dc, align 8, !tbaa !26, !noalias !240
  %exitcond116.peel.not.i = icmp eq i32 %.sroa.speculated.i, 1
  br i1 %exitcond116.peel.not.i, label %._crit_edge.i, label %.lr.ph.split.us.split.i.preheader

.lr.ph.split.us.split.i.preheader:                ; preds = %.lr.ph.split.us.split.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.db, i1 false), !tbaa !26, !noalias !240
  br label %._crit_edge.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.split.us.i, %.lr.ph.split.us.split.us.i.preheader.new
  %indvars.iv118.i = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader.new ], [ %indvars.iv.next119.i.1, %.lr.ph.split.us.split.us.i ] ; 3 uses
  %.06985.us.us.i = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader.new ], [ %i.dx, %.lr.ph.split.us.split.us.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.us.split.us.i ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv118.i ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !26, !noalias !240 ; 2 uses
  %i.do = xor i64 %.06985.us.us.i, -1
  %i.dp = icmp ugt i64 %i.dn, %i.do
  %i.dq = zext i1 %i.dp to i64                    ; 2 uses
  %i.dr = add i64 %i.dn, %.06985.us.us.i
  store i64 %i.dr, ptr %i.dm, align 8, !tbaa !26, !noalias !240
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv118.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !26, !noalias !240 ; 2 uses
  %i.dv = xor i64 %i.dq, -1
  %i.dw = icmp ugt i64 %i.du, %i.dv
  %i.dx = zext i1 %i.dw to i64                    ; 3 uses
  %i.dy = add i64 %i.du, %i.dq
  store i64 %i.dy, ptr %i.dt, align 8, !tbaa !26, !noalias !240
  %indvars.iv.next119.i.1 = add nuw nsw i64 %indvars.iv118.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us.i, !llvm.loop !7

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %.not, label %.lr.ph.split.split.i, label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %bb.h
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %bb.h ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %.06985.us88.i = phi i64 [ %spec.select77.us91.i, %bb.h ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv107.i
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !26, !noalias !240 ; 3 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split.us.i
  %i.ec = and i64 %i.ea, 4294967295               ; 2 uses
  %i.ed = mul nuw i64 %i.ec, %i.dj                ; 2 uses
  %i.ee = lshr i64 %i.ea, 32                      ; 2 uses
  %i.ef = mul nuw i64 %i.ee, %i.dk
  %i.eg = mul nuw i64 %i.ec, %i.dk                ; 2 uses
  %i.eh = lshr i64 %i.eg, 32
  %i.ei = add nuw i64 %i.eh, %i.ef
  %i.ej = shl i64 %i.eg, 32
  %i.ek = add i64 %i.ej, %i.ed                    ; 3 uses
  %i.el = icmp ult i64 %i.ek, %i.ed
  %i.em = zext i1 %i.el to i64
  %i.en = mul nuw i64 %i.ee, %i.dj                ; 2 uses
  %i.eo = lshr i64 %i.en, 32
  %i.ep = shl i64 %i.en, 32
  %i.eq = add i64 %i.ek, %i.ep                    ; 3 uses
  %i.er = icmp ult i64 %i.eq, %i.ek
  %i.es = zext i1 %i.er to i64
  %i.et = add i64 %i.eq, %.06985.us88.i           ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq
  %i.ev = zext i1 %i.eu to i64
  %spec.select.us.i = add nuw i64 %i.ei, %i.eo
  %i.ew = add nuw i64 %spec.select.us.i, %i.em
  %.1.us.i = add nuw i64 %i.ew, %i.es
  %.2.us.i = add i64 %.1.us.i, %i.ev
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.split.us.i
  %.065.us89.i = phi i64 [ %i.et, %bb.g ], [ %.06985.us88.i, %.lr.ph.split.split.us.i ] ; 2 uses
  %.3.us90.i = phi i64 [ %.2.us.i, %bb.g ], [ 0, %.lr.ph.split.split.us.i ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv107.i ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !26, !noalias !240 ; 2 uses
  %i.ez = xor i64 %.065.us89.i, -1
  %i.fa = icmp ugt i64 %i.ey, %i.ez
  %i.fb = zext i1 %i.fa to i64
  %spec.select77.us91.i = add i64 %.3.us90.i, %i.fb ; 2 uses
  %i.fc = add i64 %i.ey, %.065.us89.i
  store i64 %i.fc, ptr %i.ex, align 8, !tbaa !26, !noalias !240
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count121.i
  br i1 %exitcond111.not.i, label %._crit_edge.i, label %.lr.ph.split.split.us.i, !llvm.loop !7

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.split.us.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.split.us.split.us.i.epil.preheader

.lr.ph.split.us.split.us.i.epil.preheader:        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.i.preheader
  %indvars.iv118.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader ], [ %indvars.iv.next119.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.06985.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.i.preheader ], [ %i.dx, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod91 = trunc i32 %.sroa.speculated.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv118.i.epil.init ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !26, !noalias !240 ; 2 uses
  %i.ff = xor i64 %.06985.us.us.i.epil.init, -1
  %i.fg = icmp ugt i64 %i.fe, %i.ff
  %i.fh = zext i1 %i.fg to i64
  %i.fi = add i64 %i.fe, %.06985.us.us.i.epil.init
  store i64 %i.fi, ptr %i.fd, align 8, !tbaa !26, !noalias !240
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.j, %.lr.ph.split.us.split.us.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.split.us.split.i.preheader, %.lr.ph.split.us.split.preheader.i, %.lr.ph.i.i7
  %.069.lcssa.i = phi i64 [ 0, %.lr.ph.i.i7 ], [ %.3.i, %bb.j ], [ 0, %.lr.ph.split.us.split.preheader.i ], [ %i.fh, %.lr.ph.split.us.split.us.i.epil.preheader ], [ 0, %.lr.ph.split.us.split.i.preheader ], [ %i.dx, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select77.us91.i, %bb.h ]
  br i1 %i.df, label %bb.k, label %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %bb.j
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i10, %bb.j ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %.06985.i = phi i64 [ %.3.i, %bb.j ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i9
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !26, !noalias !240 ; 3 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split.i
  %i.fm = and i64 %i.fk, 4294967295               ; 2 uses
  %i.fn = mul nuw i64 %i.fm, %i.dj                ; 2 uses
  %i.fo = lshr i64 %i.fk, 32                      ; 2 uses
  %i.fp = mul nuw i64 %i.fo, %i.dk
  %i.fq = mul nuw i64 %i.fm, %i.dk                ; 2 uses
  %i.fr = lshr i64 %i.fq, 32
  %i.fs = add nuw i64 %i.fr, %i.fp
  %i.ft = shl i64 %i.fq, 32
  %i.fu = add i64 %i.ft, %i.fn                    ; 3 uses
  %i.fv = icmp ult i64 %i.fu, %i.fn
  %i.fw = zext i1 %i.fv to i64
  %i.fx = mul nuw i64 %i.fo, %i.dj                ; 2 uses
  %i.fy = lshr i64 %i.fx, 32
end_hunk_2
begin_hunk_3_@_ZNK4llvm5APInt4udivEm:bb.a
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = or disjoint i32 %.019.i.i.i.i11, %i.bg
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i14

bb.f:                                             ; preds = %.lr.ph.i.i.i.i9
  %i.bi = add i32 %.019.i.i.i.i11, 64
  %i.bj = icmp samesign ugt i64 %indvars.iv.i.i.i10, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i9, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i14, !llvm.loop !1

_ZNK4llvm5APInt13getActiveBitsEv.exit.i14:        ; preds = %bb.f, %.thread.i.i.i.i13
  %.2.i.i.i.i15 = phi i32 [ %i.bh, %.thread.i.i.i.i13 ], [ %i.m, %bb.f ]
  %i.bk = add i32 %.neg15.i.i.i, %.2.i.i.i.i15
  %i.bl = sub i32 %i.c, %i.bk
  %i.bm = icmp ult i32 %i.bl, 65
  br i1 %i.bm, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit:                         ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i14
  %.0.i.i20 = load i64, ptr %i.l, align 8, !tbaa !24
  %i.bn = icmp eq i64 %.0.i.i20, %2
  br i1 %i.bn, label %_ZN4llvm5APIntC2Ejmbb.exit21, label %_ZNK4llvm5APInteqEm.exit.thread

_ZN4llvm5APIntC2Ejmbb.exit21:                     ; preds = %_ZNK4llvm5APInteqEm.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.bo, align 8, !tbaa !23
  %i.bp = lshr i64 %i.i, 3
  %i.bq = and i64 %i.bp, 1073741816               ; 2 uses
  %i.br = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bq) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.br, i8 0, i64 %i.bq, i1 false)
  store ptr %i.br, ptr %0, align 8, !tbaa !24
  store i64 1, ptr %i.br, align 8, !tbaa !26
  br label %bb.g

_ZNK4llvm5APInteqEm.exit.thread:                  ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i14, %_ZNK4llvm5APInteqEm.exit
  %i.bs = icmp eq i64 %i.aa, 1
  br i1 %i.bs, label %_ZN4llvm5APIntC2Ejmbb.exit23, label %_ZN4llvm5APIntC2Ejmbb.exit24

_ZN4llvm5APIntC2Ejmbb.exit23:                     ; preds = %_ZNK4llvm5APInteqEm.exit.thread
  %i.bt = load i64, ptr %i.l, align 8, !tbaa !26
  %i.bu = udiv i64 %i.bt, %2
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.bv, align 8, !tbaa !23
  %i.bw = lshr i64 %i.i, 3
  %i.bx = and i64 %i.bw, 1073741816               ; 2 uses
  %i.by = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bx) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.by, i8 0, i64 %i.bx, i1 false)
  store ptr %i.by, ptr %0, align 8, !tbaa !24
  store i64 %i.bu, ptr %i.by, align 8, !tbaa !26
  br label %bb.g

_ZN4llvm5APIntC2Ejmbb.exit24:                     ; preds = %_ZNK4llvm5APInteqEm.exit.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.bz, align 8, !tbaa !23
  %i.ca = lshr i64 %i.i, 3
  %i.cb = and i64 %i.ca, 1073741816               ; 2 uses
  %i.cc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cb) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cc, i8 0, i64 %i.cb, i1 false)
  store ptr %i.cc, ptr %0, align 8, !tbaa !24
  store i64 0, ptr %i.cc, align 8, !tbaa !26
  %i.cd = load ptr, ptr %1, align 8, !tbaa !24
  call void @_ZN4llvm5APInt6divideEPKmjS2_jPmS3_(ptr noundef %i.cd, i32 noundef %i.ab, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.cc, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit5, %_ZN4llvm5APIntC2ERKS0_.exit, %_ZN4llvm5APIntC2Ejmbb.exit7, %_ZN4llvm5APIntC2Ejmbb.exit21, %_ZN4llvm5APIntC2Ejmbb.exit23, %_ZN4llvm5APIntC2Ejmbb.exit24, %_ZN4llvm5APIntC2Ejmbb.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt4sdivERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 4 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 4 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 16 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i = select i1 %i.g, ptr %1, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i, align 8, !tbaa !24
  %i.m = and i64 %i.f, %i.l
  %.not = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23   ; 10 uses
  %i.q = add i32 %i.p, -1                         ; 2 uses
  %i.r = and i32 %i.q, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = icmp ult i32 %i.p, 65                    ; 2 uses
  %i.v = load ptr, ptr %2, align 8                ; 2 uses
  %i.w = lshr i32 %i.q, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %.in.i.i.i69 = select i1 %i.u, ptr %2, ptr %i.y
  %i.z = load i64, ptr %.in.i.i.i69, align 8, !tbaa !24
  %i.aa = and i64 %i.t, %i.z
  %.not151 = icmp eq i64 %i.aa, 0                 ; 2 uses
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not151, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = zext i32 %i.b to i64
  %i.ac = add nuw nsw i64 %i.ab, 63               ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741816               ; 2 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #21 ; 8 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ag, i64 %i.ae, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.ah = lshr i64 %i.ac, 6                       ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.ah, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ai, align 8, !tbaa !26, !noalias !287
  %wide.load174 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !26, !noalias !287
  %i.ak = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.al = xor <2 x i64> %wide.load174, splat (i64 -1)
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !tbaa !26, !noalias !287
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !26, !noalias !287
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !26, !noalias !287
  %i.ap = xor i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !26, !noalias !287
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.ah
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !266

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %i.aq = ptrtoint ptr %i.af to i64
  %i.ar = sub i32 0, %i.b
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 -1, %i.at                      ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.af, i64 %i.ah
  %i.aw = getelementptr i8, ptr %i.av, i64 -8     ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26, !noalias !287
  %i.ay = and i64 %i.ax, %i.au
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !26, !noalias !287
  %i.az = load i64, ptr %i.af, align 8, !tbaa !26, !noalias !287
  %i.ba = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.ba, ptr %i.af, align 8, !tbaa !26, !noalias !287
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26, !noalias !287
  %i.bd = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !26, !noalias !287
  %.not.i.i.i.i.i = icmp ne i64 %i.bd, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.ah
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.c
  %i.be = xor i64 %i.n, -1
  %i.bf = sub nsw i32 0, %i.b
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = lshr i64 -1, %i.bh
  %i.bj = icmp eq i32 %i.b, 0
  %spec.select.i.i.i = select i1 %i.bj, i64 0, i64 %i.bi ; 2 uses
  %i.bk = and i64 %spec.select.i.i.i, %i.be
  %i.bl = add i64 %i.bk, 1
  %i.bm = and i64 %i.bl, %spec.select.i.i.i
  br label %_ZN4llvmngENS_5APIntE.exit

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bn = load i64, ptr %i.aw, align 8, !tbaa !26, !noalias !287
  %i.bo = and i64 %i.bn, %i.au
  store i64 %i.bo, ptr %i.aw, align 8, !tbaa !26, !noalias !287
  %.pre = load i32, ptr %i.o, align 8, !tbaa !23
  br label %_ZN4llvmngENS_5APIntE.exit

_ZN4llvmngENS_5APIntE.exit:                       ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, %.thread.i.i.i
  %i.bp = phi i32 [ %i.p, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %.pre, %.thread.i.i.i ] ; 8 uses
  %.sroa.0134.1 = phi i64 [ %i.bm, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %i.aq, %.thread.i.i.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.b, ptr %i.bq, align 8, !tbaa !23, !alias.scope !287
  store i64 %.sroa.0134.1, ptr %3, align 8, !alias.scope !287
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.br = icmp ult i32 %i.bp, 65
  %i.bs = inttoptr i64 %.sroa.0134.1 to ptr
  br i1 %i.br, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i24, label %bb.e

bb.e:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit
  %i.bt = zext i32 %i.bp to i64
  %i.bu = add nuw nsw i64 %i.bt, 63               ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 1073741816               ; 2 uses
  %i.bx = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bw) #21 ; 8 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %i.by, i64 %i.bw, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.bz = lshr i64 %i.bu, 6                       ; 5 uses
  %min.iters.check176 = icmp ult i32 %i.bp, 193
  br i1 %min.iters.check176, label %.lr.ph.i.i.i.i.i10.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %bb.e
  %n.vec178 = and i64 %i.bz, 134217724            ; 3 uses
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next183, %vector.body179 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index180 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %wide.load181 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !26, !noalias !288
  %wide.load182 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !26, !noalias !288
  %i.cc = xor <2 x i64> %wide.load181, splat (i64 -1)
  %i.cd = xor <2 x i64> %wide.load182, splat (i64 -1)
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !tbaa !26, !noalias !288
  store <2 x i64> %i.cd, ptr %i.cb, align 8, !tbaa !26, !noalias !288
  %index.next183 = add nuw i64 %index180, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next183, %n.vec178
  br i1 %i.ce, label %middle.block184, label %vector.body179, !llvm.loop !269

middle.block184:                                  ; preds = %vector.body179
  %cmp.n185 = icmp eq i64 %i.bz, %n.vec178
  br i1 %cmp.n185, label %.lr.ph.preheader.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i10.preheader

.lr.ph.i.i.i.i.i10.preheader:                     ; preds = %bb.e, %middle.block184
  %indvars.iv.i.i.i.i.i11.ph = phi i64 [ 0, %bb.e ], [ %n.vec178, %middle.block184 ]
  br label %.lr.ph.i.i.i.i.i10

.lr.ph.i.i.i.i.i10:                               ; preds = %.lr.ph.i.i.i.i.i10.preheader, %.lr.ph.i.i.i.i.i10
  %indvars.iv.i.i.i.i.i11 = phi i64 [ %indvars.iv.next.i.i.i.i.i12, %.lr.ph.i.i.i.i.i10 ], [ %indvars.iv.i.i.i.i.i11.ph, %.lr.ph.i.i.i.i.i10.preheader ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i.i.i.i.i11 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !26, !noalias !288
  %i.ch = xor i64 %i.cg, -1
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !26, !noalias !288
  %indvars.iv.next.i.i.i.i.i12 = add nuw nsw i64 %indvars.iv.i.i.i.i.i11, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i13 = icmp eq i64 %indvars.iv.next.i.i.i.i.i12, %i.bz
  br i1 %exitcond.not.i.i.i.i.i13, label %.lr.ph.preheader.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i10, !llvm.loop !270

.lr.ph.preheader.i.i.i.i.i14:                     ; preds = %.lr.ph.i.i.i.i.i10, %middle.block184
  %i.ci = ptrtoint ptr %i.bx to i64
  %i.cj = sub i32 0, %i.bp
  %i.ck = and i32 %i.cj, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = lshr i64 -1, %i.cl                      ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.bx, i64 %i.bz
  %i.co = getelementptr i8, ptr %i.cn, i64 -8     ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !26, !noalias !288
  %i.cq = and i64 %i.cp, %i.cm
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !26, !noalias !288
  %i.cr = load i64, ptr %i.bx, align 8, !tbaa !26, !noalias !288
  %i.cs = add i64 %i.cr, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.bx, align 8, !tbaa !26, !noalias !288
  %.not.peel.i.i.i.i.i15 = icmp eq i64 %i.cs, 0
  br i1 %.not.peel.i.i.i.i.i15, label %.lr.ph.i.i.i2.i.i18, label %.thread.i.i.i16

.lr.ph.i.i.i2.i.i18:                              ; preds = %.lr.ph.preheader.i.i.i.i.i14, %.lr.ph.i.i.i2.i.i18
  %indvars.iv.i.i.i3.i.i19 = phi i64 [ %indvars.iv.next.i.i.i4.i.i21, %.lr.ph.i.i.i2.i.i18 ], [ 1, %.lr.ph.preheader.i.i.i.i.i14 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i.i.i3.i.i19 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !26, !noalias !288
  %i.cv = add i64 %i.cu, 1                        ; 2 uses
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !26, !noalias !288
  %.not.i.i.i.i.i20 = icmp ne i64 %i.cv, 0
  %indvars.iv.next.i.i.i4.i.i21 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i19, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i22 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i21, %i.bz
  %or.cond.i.i.i23 = select i1 %.not.i.i.i.i.i20, i1 true, i1 %exitcond.not.i.i.i5.i.i22
  br i1 %or.cond.i.i.i23, label %.thread.i.i.i16, label %.lr.ph.i.i.i2.i.i18, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i24: ; preds = %_ZN4llvmngENS_5APIntE.exit
  %i.cw = load i64, ptr %2, align 8, !tbaa !24
  %i.cx = xor i64 %i.cw, -1
  %i.cy = sub nsw i32 0, %i.bp
  %i.cz = and i32 %i.cy, 63
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = lshr i64 -1, %i.da
  %i.dc = icmp eq i32 %i.bp, 0
  %spec.select.i.i.i25 = select i1 %i.dc, i64 0, i64 %i.db ; 2 uses
  %i.dd = and i64 %spec.select.i.i.i25, %i.cx
  %i.de = add i64 %i.dd, 1
  %i.df = and i64 %i.de, %spec.select.i.i.i25
  br label %_ZN4llvmngENS_5APIntE.exit26

.thread.i.i.i16:                                  ; preds = %.lr.ph.i.i.i2.i.i18, %.lr.ph.preheader.i.i.i.i.i14
  %i.dg = load i64, ptr %i.co, align 8, !tbaa !26, !noalias !288
  %i.dh = and i64 %i.dg, %i.cm
  store i64 %i.dh, ptr %i.co, align 8, !tbaa !26, !noalias !288
  br label %_ZN4llvmngENS_5APIntE.exit26

_ZN4llvmngENS_5APIntE.exit26:                     ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i24, %.thread.i.i.i16
  %.sroa.0125.1 = phi i64 [ %i.df, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i24 ], [ %i.ci, %.thread.i.i.i16 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bp, ptr %i.di, align 8, !tbaa !23, !alias.scope !288
  store i64 %.sroa.0125.1, ptr %4, align 8, !alias.scope !288
  call void @_ZNK4llvm5APInt4udivERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4)
  %i.dj = icmp ult i32 %i.bp, 65
  %i.dk = icmp eq i64 %.sroa.0125.1, 0
  %or.cond = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit27, label %bb.f

bb.f:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit26
  %i.dl = inttoptr i64 %.sroa.0125.1 to ptr
  tail call void @_ZdaPv(ptr noundef nonnull %i.dl) #22
  br label %_ZN4llvm5APIntD2Ev.exit27

_ZN4llvm5APIntD2Ev.exit27:                        ; preds = %bb.f, %_ZN4llvmngENS_5APIntE.exit26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dm = icmp ult i32 %i.b, 65
  %i.dn = icmp eq i64 %.sroa.0134.1, 0
  %or.cond171 = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond171, label %_ZN4llvm5APIntD2Ev.exit29, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit27
  tail call void @_ZdaPv(ptr noundef nonnull %i.bs) #22
  br label %_ZN4llvm5APIntD2Ev.exit29

_ZN4llvm5APIntD2Ev.exit29:                        ; preds = %bb.g, %_ZN4llvm5APIntD2Ev.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.r

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i46, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.do = zext i32 %i.b to i64
  %i.dp = add nuw nsw i64 %i.do, 63               ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = and i64 %i.dq, 1073741816               ; 2 uses
  %i.ds = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dr) #21 ; 8 uses
  %i.dt = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr align 8 %i.dt, i64 %i.dr, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.du = lshr i64 %i.dp, 6                       ; 5 uses
  %min.iters.check188 = icmp ult i32 %i.b, 193
  br i1 %min.iters.check188, label %.lr.ph.i.i.i.i.i32.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %bb.i
  %n.vec190 = and i64 %i.du, 134217724            ; 3 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next195, %vector.body191 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index192 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load193 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !26, !noalias !289
  %wide.load194 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !26, !noalias !289
  %i.dx = xor <2 x i64> %wide.load193, splat (i64 -1)
  %i.dy = xor <2 x i64> %wide.load194, splat (i64 -1)
  store <2 x i64> %i.dx, ptr %i.dv, align 8, !tbaa !26, !noalias !289
  store <2 x i64> %i.dy, ptr %i.dw, align 8, !tbaa !26, !noalias !289
  %index.next195 = add nuw i64 %index192, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next195, %n.vec190
  br i1 %i.dz, label %middle.block196, label %vector.body191, !llvm.loop !273

middle.block196:                                  ; preds = %vector.body191
  %cmp.n197 = icmp eq i64 %i.du, %n.vec190
  br i1 %cmp.n197, label %.lr.ph.preheader.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i32.preheader:                     ; preds = %bb.i, %middle.block196
  %indvars.iv.i.i.i.i.i33.ph = phi i64 [ 0, %bb.i ], [ %n.vec190, %middle.block196 ]
  br label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %.lr.ph.i.i.i.i.i32.preheader, %.lr.ph.i.i.i.i.i32
  %indvars.iv.i.i.i.i.i33 = phi i64 [ %indvars.iv.next.i.i.i.i.i34, %.lr.ph.i.i.i.i.i32 ], [ %indvars.iv.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i32.preheader ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i.i.i.i.i33 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !26, !noalias !289
  %i.ec = xor i64 %i.eb, -1
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !26, !noalias !289
  %indvars.iv.next.i.i.i.i.i34 = add nuw nsw i64 %indvars.iv.i.i.i.i.i33, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i35 = icmp eq i64 %indvars.iv.next.i.i.i.i.i34, %i.du
  br i1 %exitcond.not.i.i.i.i.i35, label %.lr.ph.preheader.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i32, !llvm.loop !274

.lr.ph.preheader.i.i.i.i.i36:                     ; preds = %.lr.ph.i.i.i.i.i32, %middle.block196
  %i.ed = ptrtoint ptr %i.ds to i64
  %i.ee = sub i32 0, %i.b
  %i.ef = and i32 %i.ee, 63
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = lshr i64 -1, %i.eg                      ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.ds, i64 %i.du
  %i.ej = getelementptr i8, ptr %i.ei, i64 -8     ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !26, !noalias !289
  %i.el = and i64 %i.ek, %i.eh
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !26, !noalias !289
  %i.em = load i64, ptr %i.ds, align 8, !tbaa !26, !noalias !289
  %i.en = add i64 %i.em, 1                        ; 2 uses
  store i64 %i.en, ptr %i.ds, align 8, !tbaa !26, !noalias !289
  %.not.peel.i.i.i.i.i37 = icmp eq i64 %i.en, 0
  br i1 %.not.peel.i.i.i.i.i37, label %.lr.ph.i.i.i2.i.i40, label %.thread.i.i.i38

.lr.ph.i.i.i2.i.i40:                              ; preds = %.lr.ph.preheader.i.i.i.i.i36, %.lr.ph.i.i.i2.i.i40
  %indvars.iv.i.i.i3.i.i41 = phi i64 [ %indvars.iv.next.i.i.i4.i.i43, %.lr.ph.i.i.i2.i.i40 ], [ 1, %.lr.ph.preheader.i.i.i.i.i36 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i.i.i3.i.i41 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !26, !noalias !289
  %i.eq = add i64 %i.ep, 1                        ; 2 uses
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !26, !noalias !289
  %.not.i.i.i.i.i42 = icmp ne i64 %i.eq, 0
  %indvars.iv.next.i.i.i4.i.i43 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i41, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i44 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i43, %i.du
  %or.cond.i.i.i45 = select i1 %.not.i.i.i.i.i42, i1 true, i1 %exitcond.not.i.i.i5.i.i44
  br i1 %or.cond.i.i.i45, label %.thread.i.i.i38, label %.lr.ph.i.i.i2.i.i40, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i46: ; preds = %bb.h
  %i.er = xor i64 %i.n, -1
  %i.es = sub nsw i32 0, %i.b
  %i.et = and i32 %i.es, 63
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = lshr i64 -1, %i.eu
  %i.ew = icmp eq i32 %i.b, 0
  %spec.select.i.i.i47 = select i1 %i.ew, i64 0, i64 %i.ev ; 2 uses
  %i.ex = and i64 %spec.select.i.i.i47, %i.er
  %i.ey = add i64 %i.ex, 1
  %i.ez = and i64 %i.ey, %spec.select.i.i.i47
  br label %_ZN4llvmngENS_5APIntE.exit48

.thread.i.i.i38:                                  ; preds = %.lr.ph.i.i.i2.i.i40, %.lr.ph.preheader.i.i.i.i.i36
  %i.fa = load i64, ptr %i.ej, align 8, !tbaa !26, !noalias !289
  %i.fb = and i64 %i.fa, %i.eh
  store i64 %i.fb, ptr %i.ej, align 8, !tbaa !26, !noalias !289
  br label %_ZN4llvmngENS_5APIntE.exit48

_ZN4llvmngENS_5APIntE.exit48:                     ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i46, %.thread.i.i.i38
  %.sroa.0116.1 = phi i64 [ %i.ez, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i46 ], [ %i.ed, %.thread.i.i.i38 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.b, ptr %i.fc, align 8, !tbaa !23, !alias.scope !289
  store i64 %.sroa.0116.1, ptr %6, align 8, !alias.scope !289
  call void @_ZNK4llvm5APInt4udivERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !23, !noalias !290 ; 7 uses
  %i.ff = icmp ult i32 %i.fe, 65
  %i.fg = inttoptr i64 %.sroa.0116.1 to ptr
  br i1 %i.ff, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i63, label %bb.j

bb.j:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit48
  %i.fh = load ptr, ptr %5, align 8, !noalias !290 ; 7 uses
  %i.fi = zext i32 %i.fe to i64
  %i.fj = add nuw nsw i64 %i.fi, 63
  %i.fk = lshr i64 %i.fj, 6                       ; 5 uses
  %i.fl = ptrtoint ptr %i.fh to i64
  %min.iters.check200 = icmp ult i32 %i.fe, 193
  br i1 %min.iters.check200, label %.lr.ph.i.i.i.i.i49.preheader, label %vector.ph201

vector.ph201:                                     ; preds = %bb.j
  %n.vec202 = and i64 %i.fk, 134217724            ; 3 uses
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph201
  %index204 = phi i64 [ 0, %vector.ph201 ], [ %index.next207, %vector.body203 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %index204 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %wide.load205 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !26, !noalias !290
  %wide.load206 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !26, !noalias !290
  %i.fo = xor <2 x i64> %wide.load205, splat (i64 -1)
  %i.fp = xor <2 x i64> %wide.load206, splat (i64 -1)
  store <2 x i64> %i.fo, ptr %i.fm, align 8, !tbaa !26, !noalias !290
  store <2 x i64> %i.fp, ptr %i.fn, align 8, !tbaa !26, !noalias !290
  %index.next207 = add nuw i64 %index204, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next207, %n.vec202
  br i1 %i.fq, label %middle.block208, label %vector.body203, !llvm.loop !277

middle.block208:                                  ; preds = %vector.body203
  %cmp.n209 = icmp eq i64 %i.fk, %n.vec202
  br i1 %cmp.n209, label %.lr.ph.preheader.i.i.i.i.i53, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %bb.j, %middle.block208
  %indvars.iv.i.i.i.i.i50.ph = phi i64 [ 0, %bb.j ], [ %n.vec202, %middle.block208 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader, %.lr.ph.i.i.i.i.i49
  %indvars.iv.i.i.i.i.i50 = phi i64 [ %indvars.iv.next.i.i.i.i.i51, %.lr.ph.i.i.i.i.i49 ], [ %indvars.iv.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i.i.i.i.i50 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !26, !noalias !290
  %i.ft = xor i64 %i.fs, -1
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !26, !noalias !290
  %indvars.iv.next.i.i.i.i.i51 = add nuw nsw i64 %indvars.iv.i.i.i.i.i50, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i52 = icmp eq i64 %indvars.iv.next.i.i.i.i.i51, %i.fk
  br i1 %exitcond.not.i.i.i.i.i52, label %.lr.ph.preheader.i.i.i.i.i53, label %.lr.ph.i.i.i.i.i49, !llvm.loop !278

.lr.ph.preheader.i.i.i.i.i53:                     ; preds = %.lr.ph.i.i.i.i.i49, %middle.block208
  %i.fu = sub i32 0, %i.fe
  %i.fv = and i32 %i.fu, 63
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = lshr i64 -1, %i.fw                      ; 2 uses
  %i.fy = getelementptr [8 x i8], ptr %i.fh, i64 %i.fk
  %i.fz = getelementptr i8, ptr %i.fy, i64 -8     ; 4 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !26, !noalias !290
  %i.gb = and i64 %i.ga, %i.fx
  store i64 %i.gb, ptr %i.fz, align 8, !tbaa !26, !noalias !290
  %i.gc = load i64, ptr %i.fh, align 8, !tbaa !26, !noalias !290
  %i.gd = add i64 %i.gc, 1                        ; 2 uses
  store i64 %i.gd, ptr %i.fh, align 8, !tbaa !26, !noalias !290
  %.not.peel.i.i.i.i.i54 = icmp eq i64 %i.gd, 0
  br i1 %.not.peel.i.i.i.i.i54, label %.lr.ph.i.i.i2.i.i57, label %.thread.i.i.i55

.lr.ph.i.i.i2.i.i57:                              ; preds = %.lr.ph.preheader.i.i.i.i.i53, %.lr.ph.i.i.i2.i.i57
  %indvars.iv.i.i.i3.i.i58 = phi i64 [ %indvars.iv.next.i.i.i4.i.i60, %.lr.ph.i.i.i2.i.i57 ], [ 1, %.lr.ph.preheader.i.i.i.i.i53 ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i.i.i3.i.i58 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !26, !noalias !290
  %i.gg = add i64 %i.gf, 1                        ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !26, !noalias !290
  %.not.i.i.i.i.i59 = icmp ne i64 %i.gg, 0
  %indvars.iv.next.i.i.i4.i.i60 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i58, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i61 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i60, %i.fk
  %or.cond.i.i.i62 = select i1 %.not.i.i.i.i.i59, i1 true, i1 %exitcond.not.i.i.i5.i.i61
  br i1 %or.cond.i.i.i62, label %.thread.i.i.i55, label %.lr.ph.i.i.i2.i.i57, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i63: ; preds = %_ZN4llvmngENS_5APIntE.exit48
  %i.gh = load i64, ptr %5, align 8, !tbaa !24, !noalias !290
  %i.gi = xor i64 %i.gh, -1
  %i.gj = sub nsw i32 0, %i.fe
  %i.gk = and i32 %i.gj, 63
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = lshr i64 -1, %i.gl
  %i.gn = icmp eq i32 %i.fe, 0
  %spec.select.i.i.i64 = select i1 %i.gn, i64 0, i64 %i.gm ; 2 uses
  %i.go = and i64 %spec.select.i.i.i64, %i.gi
  %i.gp = add i64 %i.go, 1
  %i.gq = and i64 %i.gp, %spec.select.i.i.i64
  br label %_ZN4llvm5APIntD2Ev.exit66

.thread.i.i.i55:                                  ; preds = %.lr.ph.i.i.i2.i.i57, %.lr.ph.preheader.i.i.i.i.i53
  %i.gr = load i64, ptr %i.fz, align 8, !tbaa !26, !noalias !290
  %i.gs = and i64 %i.gr, %i.fx
  store i64 %i.gs, ptr %i.fz, align 8, !tbaa !26, !noalias !290
  br label %_ZN4llvm5APIntD2Ev.exit66

_ZN4llvm5APIntD2Ev.exit66:                        ; preds = %.thread.i.i.i55, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i63
  %i.gt = phi i64 [ %i.gq, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i63 ], [ %i.fl, %.thread.i.i.i55 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.fe, ptr %i.gu, align 8, !tbaa !23, !alias.scope !290
  store i64 %i.gt, ptr %0, align 8, !alias.scope !290
  %i.gv = icmp ult i32 %i.b, 65
  %i.gw = icmp eq i64 %.sroa.0116.1, 0
  %or.cond172 = select i1 %i.gv, i1 true, i1 %i.gw
  br i1 %or.cond172, label %_ZN4llvm5APIntD2Ev.exit68, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit66
  tail call void @_ZdaPv(ptr noundef nonnull %i.fg) #22
  br label %_ZN4llvm5APIntD2Ev.exit68

_ZN4llvm5APIntD2Ev.exit68:                        ; preds = %bb.k, %_ZN4llvm5APIntD2Ev.exit66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.gx = ptrtoint ptr %i.v to i64
  br i1 %.not151, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.u, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i86, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gy = zext i32 %i.p to i64
  %i.gz = add nuw nsw i64 %i.gy, 63               ; 2 uses
  %i.ha = lshr i64 %i.gz, 3
  %i.hb = and i64 %i.ha, 1073741816               ; 2 uses
  %i.hc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hb) #21 ; 8 uses
  %i.hd = load ptr, ptr %2, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hc, ptr align 8 %i.hd, i64 %i.hb, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.he = lshr i64 %i.gz, 6                       ; 5 uses
  %min.iters.check212 = icmp ult i32 %i.p, 193
  br i1 %min.iters.check212, label %.lr.ph.i.i.i.i.i72.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %bb.n
  %n.vec214 = and i64 %i.he, 134217724            ; 3 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next219, %vector.body215 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %index216 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %wide.load217 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !26, !noalias !291
  %wide.load218 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !26, !noalias !291
  %i.hh = xor <2 x i64> %wide.load217, splat (i64 -1)
  %i.hi = xor <2 x i64> %wide.load218, splat (i64 -1)
  store <2 x i64> %i.hh, ptr %i.hf, align 8, !tbaa !26, !noalias !291
  store <2 x i64> %i.hi, ptr %i.hg, align 8, !tbaa !26, !noalias !291
  %index.next219 = add nuw i64 %index216, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.hj, label %middle.block220, label %vector.body215, !llvm.loop !281

middle.block220:                                  ; preds = %vector.body215
  %cmp.n221 = icmp eq i64 %i.he, %n.vec214
  br i1 %cmp.n221, label %.lr.ph.preheader.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i72.preheader

.lr.ph.i.i.i.i.i72.preheader:                     ; preds = %bb.n, %middle.block220
  %indvars.iv.i.i.i.i.i73.ph = phi i64 [ 0, %bb.n ], [ %n.vec214, %middle.block220 ]
  br label %.lr.ph.i.i.i.i.i72

.lr.ph.i.i.i.i.i72:                               ; preds = %.lr.ph.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i72
  %indvars.iv.i.i.i.i.i73 = phi i64 [ %indvars.iv.next.i.i.i.i.i74, %.lr.ph.i.i.i.i.i72 ], [ %indvars.iv.i.i.i.i.i73.ph, %.lr.ph.i.i.i.i.i72.preheader ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i.i.i.i.i73 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !26, !noalias !291
  %i.hm = xor i64 %i.hl, -1
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !26, !noalias !291
  %indvars.iv.next.i.i.i.i.i74 = add nuw nsw i64 %indvars.iv.i.i.i.i.i73, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i75 = icmp eq i64 %indvars.iv.next.i.i.i.i.i74, %i.he
  br i1 %exitcond.not.i.i.i.i.i75, label %.lr.ph.preheader.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i72, !llvm.loop !282

.lr.ph.preheader.i.i.i.i.i76:                     ; preds = %.lr.ph.i.i.i.i.i72, %middle.block220
  %i.hn = ptrtoint ptr %i.hc to i64
  %i.ho = sub i32 0, %i.p
  %i.hp = and i32 %i.ho, 63
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = lshr i64 -1, %i.hq                      ; 2 uses
  %i.hs = getelementptr [8 x i8], ptr %i.hc, i64 %i.he
  %i.ht = getelementptr i8, ptr %i.hs, i64 -8     ; 4 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !26, !noalias !291
  %i.hv = and i64 %i.hu, %i.hr
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !26, !noalias !291
  %i.hw = load i64, ptr %i.hc, align 8, !tbaa !26, !noalias !291
  %i.hx = add i64 %i.hw, 1                        ; 2 uses
  store i64 %i.hx, ptr %i.hc, align 8, !tbaa !26, !noalias !291
  %.not.peel.i.i.i.i.i77 = icmp eq i64 %i.hx, 0
  br i1 %.not.peel.i.i.i.i.i77, label %.lr.ph.i.i.i2.i.i80, label %.thread.i.i.i78

.lr.ph.i.i.i2.i.i80:                              ; preds = %.lr.ph.preheader.i.i.i.i.i76, %.lr.ph.i.i.i2.i.i80
  %indvars.iv.i.i.i3.i.i81 = phi i64 [ %indvars.iv.next.i.i.i4.i.i83, %.lr.ph.i.i.i2.i.i80 ], [ 1, %.lr.ph.preheader.i.i.i.i.i76 ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i.i.i3.i.i81 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !26, !noalias !291
  %i.ia = add i64 %i.hz, 1                        ; 2 uses
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !26, !noalias !291
  %.not.i.i.i.i.i82 = icmp ne i64 %i.ia, 0
  %indvars.iv.next.i.i.i4.i.i83 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i81, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i84 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i83, %i.he
  %or.cond.i.i.i85 = select i1 %.not.i.i.i.i.i82, i1 true, i1 %exitcond.not.i.i.i5.i.i84
  br i1 %or.cond.i.i.i85, label %.thread.i.i.i78, label %.lr.ph.i.i.i2.i.i80, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i86: ; preds = %bb.m
  %i.ib = xor i64 %i.gx, -1
  %i.ic = sub nsw i32 0, %i.p
  %i.id = and i32 %i.ic, 63
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = lshr i64 -1, %i.ie
  %i.ig = icmp eq i32 %i.p, 0
  %spec.select.i.i.i87 = select i1 %i.ig, i64 0, i64 %i.if ; 2 uses
  %i.ih = and i64 %spec.select.i.i.i87, %i.ib
  %i.ii = add i64 %i.ih, 1
  %i.ij = and i64 %i.ii, %spec.select.i.i.i87
  br label %_ZN4llvmngENS_5APIntE.exit88

.thread.i.i.i78:                                  ; preds = %.lr.ph.i.i.i2.i.i80, %.lr.ph.preheader.i.i.i.i.i76
  %i.ik = load i64, ptr %i.ht, align 8, !tbaa !26, !noalias !291
  %i.il = and i64 %i.ik, %i.hr
  store i64 %i.il, ptr %i.ht, align 8, !tbaa !26, !noalias !291
  br label %_ZN4llvmngENS_5APIntE.exit88

_ZN4llvmngENS_5APIntE.exit88:                     ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i86, %.thread.i.i.i78
  %.sroa.0.1 = phi i64 [ %i.ij, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i86 ], [ %i.hn, %.thread.i.i.i78 ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.p, ptr %i.im, align 8, !tbaa !23, !alias.scope !291
  store i64 %.sroa.0.1, ptr %8, align 8, !alias.scope !291
  call void @_ZNK4llvm5APInt4udivERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.in = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.io = load i32, ptr %i.in, align 8, !tbaa !23, !noalias !292 ; 7 uses
  %i.ip = icmp ult i32 %i.io, 65
  %i.iq = inttoptr i64 %.sroa.0.1 to ptr
  br i1 %i.ip, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i103, label %bb.o

bb.o:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit88
  %i.ir = load ptr, ptr %7, align 8, !noalias !292 ; 7 uses
  %i.is = zext i32 %i.io to i64
  %i.it = add nuw nsw i64 %i.is, 63
  %i.iu = lshr i64 %i.it, 6                       ; 5 uses
  %i.iv = ptrtoint ptr %i.ir to i64
  %min.iters.check224 = icmp ult i32 %i.io, 193
  br i1 %min.iters.check224, label %.lr.ph.i.i.i.i.i89.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %bb.o
  %n.vec226 = and i64 %i.iu, 134217724            ; 3 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body227 ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %index228 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %wide.load229 = load <2 x i64>, ptr %i.iw, align 8, !tbaa !26, !noalias !292
  %wide.load230 = load <2 x i64>, ptr %i.ix, align 8, !tbaa !26, !noalias !292
  %i.iy = xor <2 x i64> %wide.load229, splat (i64 -1)
  %i.iz = xor <2 x i64> %wide.load230, splat (i64 -1)
  store <2 x i64> %i.iy, ptr %i.iw, align 8, !tbaa !26, !noalias !292
  store <2 x i64> %i.iz, ptr %i.ix, align 8, !tbaa !26, !noalias !292
  %index.next231 = add nuw i64 %index228, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.ja, label %middle.block232, label %vector.body227, !llvm.loop !285

middle.block232:                                  ; preds = %vector.body227
  %cmp.n233 = icmp eq i64 %i.iu, %n.vec226
  br i1 %cmp.n233, label %.lr.ph.preheader.i.i.i.i.i93, label %.lr.ph.i.i.i.i.i89.preheader

.lr.ph.i.i.i.i.i89.preheader:                     ; preds = %bb.o, %middle.block232
  %indvars.iv.i.i.i.i.i90.ph = phi i64 [ 0, %bb.o ], [ %n.vec226, %middle.block232 ]
  br label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %.lr.ph.i.i.i.i.i89.preheader, %.lr.ph.i.i.i.i.i89
  %indvars.iv.i.i.i.i.i90 = phi i64 [ %indvars.iv.next.i.i.i.i.i91, %.lr.ph.i.i.i.i.i89 ], [ %indvars.iv.i.i.i.i.i90.ph, %.lr.ph.i.i.i.i.i89.preheader ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i.i.i.i.i90 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !26, !noalias !292
  %i.jd = xor i64 %i.jc, -1
  store i64 %i.jd, ptr %i.jb, align 8, !tbaa !26, !noalias !292
  %indvars.iv.next.i.i.i.i.i91 = add nuw nsw i64 %indvars.iv.i.i.i.i.i90, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i92 = icmp eq i64 %indvars.iv.next.i.i.i.i.i91, %i.iu
  br i1 %exitcond.not.i.i.i.i.i92, label %.lr.ph.preheader.i.i.i.i.i93, label %.lr.ph.i.i.i.i.i89, !llvm.loop !286

.lr.ph.preheader.i.i.i.i.i93:                     ; preds = %.lr.ph.i.i.i.i.i89, %middle.block232
  %i.je = sub i32 0, %i.io
  %i.jf = and i32 %i.je, 63
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = lshr i64 -1, %i.jg                      ; 2 uses
  %i.ji = getelementptr [8 x i8], ptr %i.ir, i64 %i.iu
  %i.jj = getelementptr i8, ptr %i.ji, i64 -8     ; 4 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !26, !noalias !292
  %i.jl = and i64 %i.jk, %i.jh
  store i64 %i.jl, ptr %i.jj, align 8, !tbaa !26, !noalias !292
  %i.jm = load i64, ptr %i.ir, align 8, !tbaa !26, !noalias !292
  %i.jn = add i64 %i.jm, 1                        ; 2 uses
  store i64 %i.jn, ptr %i.ir, align 8, !tbaa !26, !noalias !292
  %.not.peel.i.i.i.i.i94 = icmp eq i64 %i.jn, 0
  br i1 %.not.peel.i.i.i.i.i94, label %.lr.ph.i.i.i2.i.i97, label %.thread.i.i.i95

.lr.ph.i.i.i2.i.i97:                              ; preds = %.lr.ph.preheader.i.i.i.i.i93, %.lr.ph.i.i.i2.i.i97
  %indvars.iv.i.i.i3.i.i98 = phi i64 [ %indvars.iv.next.i.i.i4.i.i100, %.lr.ph.i.i.i2.i.i97 ], [ 1, %.lr.ph.preheader.i.i.i.i.i93 ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i.i.i3.i.i98 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !26, !noalias !292
  %i.jq = add i64 %i.jp, 1                        ; 2 uses
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !26, !noalias !292
  %.not.i.i.i.i.i99 = icmp ne i64 %i.jq, 0
  %indvars.iv.next.i.i.i4.i.i100 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i98, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i101 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i100, %i.iu
  %or.cond.i.i.i102 = select i1 %.not.i.i.i.i.i99, i1 true, i1 %exitcond.not.i.i.i5.i.i101
  br i1 %or.cond.i.i.i102, label %.thread.i.i.i95, label %.lr.ph.i.i.i2.i.i97, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i103: ; preds = %_ZN4llvmngENS_5APIntE.exit88
  %i.jr = load i64, ptr %7, align 8, !tbaa !24, !noalias !292
  %i.js = xor i64 %i.jr, -1
  %i.jt = sub nsw i32 0, %i.io
  %i.ju = and i32 %i.jt, 63
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = lshr i64 -1, %i.jv
  %i.jx = icmp eq i32 %i.io, 0
  %spec.select.i.i.i104 = select i1 %i.jx, i64 0, i64 %i.jw ; 2 uses
  %i.jy = and i64 %spec.select.i.i.i104, %i.js
  %i.jz = add i64 %i.jy, 1
  %i.ka = and i64 %i.jz, %spec.select.i.i.i104
  br label %_ZN4llvm5APIntD2Ev.exit106

.thread.i.i.i95:                                  ; preds = %.lr.ph.i.i.i2.i.i97, %.lr.ph.preheader.i.i.i.i.i93
  %i.kb = load i64, ptr %i.jj, align 8, !tbaa !26, !noalias !292
  %i.kc = and i64 %i.kb, %i.jh
  store i64 %i.kc, ptr %i.jj, align 8, !tbaa !26, !noalias !292
  br label %_ZN4llvm5APIntD2Ev.exit106

_ZN4llvm5APIntD2Ev.exit106:                       ; preds = %.thread.i.i.i95, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i103
  %i.kd = phi i64 [ %i.ka, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i103 ], [ %i.iv, %.thread.i.i.i95 ]
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.io, ptr %i.ke, align 8, !tbaa !23, !alias.scope !292
  store i64 %i.kd, ptr %0, align 8, !alias.scope !292
  %i.kf = icmp ult i32 %i.p, 65
  %i.kg = icmp eq i64 %.sroa.0.1, 0
  %or.cond173 = select i1 %i.kf, i1 true, i1 %i.kg
  br i1 %or.cond173, label %_ZN4llvm5APIntD2Ev.exit108, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit106
  tail call void @_ZdaPv(ptr noundef nonnull %i.iq) #22
  br label %_ZN4llvm5APIntD2Ev.exit108

_ZN4llvm5APIntD2Ev.exit108:                       ; preds = %bb.p, %_ZN4llvm5APIntD2Ev.exit106
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  tail call void @_ZNK4llvm5APInt4udivERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4llvm5APIntD2Ev.exit108, %_ZN4llvm5APIntD2Ev.exit68, %_ZN4llvm5APIntD2Ev.exit29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt4sdivEl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 4 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 16 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i = select i1 %i.g, ptr %1, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i, align 8, !tbaa !24
  %i.m = and i64 %i.f, %i.l
  %.not = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.o = icmp slt i64 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext i32 %i.b to i64
  %i.q = add nuw nsw i64 %i.p, 63                 ; 2 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.r, 1073741816                 ; 2 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #21 ; 8 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.u, i64 %i.s, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.v = lshr i64 %i.q, 6                         ; 5 uses
  %min.iters.check113 = icmp ult i32 %i.b, 193
  br i1 %min.iters.check113, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %bb.d
  %n.vec115 = and i64 %i.v, 134217724             ; 3 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next120, %vector.body116 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index117 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load118 = load <2 x i64>, ptr %i.w, align 8, !tbaa !26, !noalias !309
  %wide.load119 = load <2 x i64>, ptr %i.x, align 8, !tbaa !26, !noalias !309
  %i.y = xor <2 x i64> %wide.load118, splat (i64 -1)
  %i.z = xor <2 x i64> %wide.load119, splat (i64 -1)
  store <2 x i64> %i.y, ptr %i.w, align 8, !tbaa !26, !noalias !309
  store <2 x i64> %i.z, ptr %i.x, align 8, !tbaa !26, !noalias !309
  %index.next120 = add nuw i64 %index117, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.aa, label %middle.block121, label %vector.body116, !llvm.loop !295

middle.block121:                                  ; preds = %vector.body116
  %cmp.n122 = icmp eq i64 %i.v, %n.vec115
  br i1 %cmp.n122, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block121
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec115, %middle.block121 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26, !noalias !309
  %i.ad = xor i64 %i.ac, -1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !26, !noalias !309
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.v
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !296

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block121
  %i.ae = ptrtoint ptr %i.t to i64
  %i.af = sub i32 0, %i.b
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah                      ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.t, i64 %i.v
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8     ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26, !noalias !309
  %i.am = and i64 %i.al, %i.ai
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !26, !noalias !309
  %i.an = load i64, ptr %i.t, align 8, !tbaa !26, !noalias !309
  %i.ao = add i64 %i.an, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.t, align 8, !tbaa !26, !noalias !309
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !26, !noalias !309
  %i.ar = add i64 %i.aq, 1                        ; 2 uses
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !26, !noalias !309
  %.not.i.i.i.i.i = icmp ne i64 %i.ar, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.v
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.c
  %i.as = xor i64 %i.n, -1
  %i.at = sub nsw i32 0, %i.b
  %i.au = and i32 %i.at, 63
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = lshr i64 -1, %i.av
  %i.ax = icmp eq i32 %i.b, 0
  %spec.select.i.i.i = select i1 %i.ax, i64 0, i64 %i.aw ; 2 uses
  %i.ay = and i64 %spec.select.i.i.i, %i.as
  %i.az = add i64 %i.ay, 1
  %i.ba = and i64 %i.az, %spec.select.i.i.i
  br label %_ZN4llvmngENS_5APIntE.exit

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bb = load i64, ptr %i.ak, align 8, !tbaa !26, !noalias !309
  %i.bc = and i64 %i.bb, %i.ai
  store i64 %i.bc, ptr %i.ak, align 8, !tbaa !26, !noalias !309
  br label %_ZN4llvmngENS_5APIntE.exit

_ZN4llvmngENS_5APIntE.exit:                       ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, %.thread.i.i.i
  %.sroa.071.1 = phi i64 [ %i.ba, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %i.ae, %.thread.i.i.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.b, ptr %i.bd, align 8, !tbaa !23, !alias.scope !309
  store i64 %.sroa.071.1, ptr %3, align 8, !alias.scope !309
  %i.be = sub nsw i64 0, %2
  call void @_ZNK4llvm5APInt4udivEm(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %i.be)
  %i.bf = icmp ult i32 %i.b, 65
  %i.bg = icmp eq i64 %.sroa.071.1, 0
  %or.cond = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit
  %i.bh = inttoptr i64 %.sroa.071.1 to ptr
  tail call void @_ZdaPv(ptr noundef nonnull %i.bh) #22
  br label %_ZN4llvm5APIntD2Ev.exit6

_ZN4llvm5APIntD2Ev.exit6:                         ; preds = %bb.e, %_ZN4llvmngENS_5APIntE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = zext i32 %i.b to i64
  %i.bj = add nuw nsw i64 %i.bi, 63               ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741816               ; 2 uses
  %i.bm = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bl) #21 ; 8 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.bn, i64 %i.bl, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.bo = lshr i64 %i.bj, 6                       ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i9.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %i.bo, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bp, align 8, !tbaa !26, !noalias !310
  %wide.load99 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !26, !noalias !310
  %i.br = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bs = xor <2 x i64> %wide.load99, splat (i64 -1)
  store <2 x i64> %i.br, ptr %i.bp, align 8, !tbaa !26, !noalias !310
  store <2 x i64> %i.bs, ptr %i.bq, align 8, !tbaa !26, !noalias !310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i13, label %.lr.ph.i.i.i.i.i9.preheader

.lr.ph.i.i.i.i.i9.preheader:                      ; preds = %bb.g, %middle.block
  %indvars.iv.i.i.i.i.i10.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %.lr.ph.i.i.i.i.i9.preheader, %.lr.ph.i.i.i.i.i9
  %indvars.iv.i.i.i.i.i10 = phi i64 [ %indvars.iv.next.i.i.i.i.i11, %.lr.ph.i.i.i.i.i9 ], [ %indvars.iv.i.i.i.i.i10.ph, %.lr.ph.i.i.i.i.i9.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i.i.i.i.i10 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !26, !noalias !310
  %i.bw = xor i64 %i.bv, -1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !26, !noalias !310
  %indvars.iv.next.i.i.i.i.i11 = add nuw nsw i64 %indvars.iv.i.i.i.i.i10, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i12 = icmp eq i64 %indvars.iv.next.i.i.i.i.i11, %i.bo
  br i1 %exitcond.not.i.i.i.i.i12, label %.lr.ph.preheader.i.i.i.i.i13, label %.lr.ph.i.i.i.i.i9, !llvm.loop !300

.lr.ph.preheader.i.i.i.i.i13:                     ; preds = %.lr.ph.i.i.i.i.i9, %middle.block
  %i.bx = ptrtoint ptr %i.bm to i64
  %i.by = sub i32 0, %i.b
  %i.bz = and i32 %i.by, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = lshr i64 -1, %i.ca                      ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %i.bm, i64 %i.bo
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8     ; 4 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !26, !noalias !310
  %i.cf = and i64 %i.ce, %i.cb
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !26, !noalias !310
  %i.cg = load i64, ptr %i.bm, align 8, !tbaa !26, !noalias !310
  %i.ch = add i64 %i.cg, 1                        ; 2 uses
  store i64 %i.ch, ptr %i.bm, align 8, !tbaa !26, !noalias !310
  %.not.peel.i.i.i.i.i14 = icmp eq i64 %i.ch, 0
  br i1 %.not.peel.i.i.i.i.i14, label %.lr.ph.i.i.i2.i.i17, label %.thread.i.i.i15

.lr.ph.i.i.i2.i.i17:                              ; preds = %.lr.ph.preheader.i.i.i.i.i13, %.lr.ph.i.i.i2.i.i17
  %indvars.iv.i.i.i3.i.i18 = phi i64 [ %indvars.iv.next.i.i.i4.i.i20, %.lr.ph.i.i.i2.i.i17 ], [ 1, %.lr.ph.preheader.i.i.i.i.i13 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i.i.i3.i.i18 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !26, !noalias !310
  %i.ck = add i64 %i.cj, 1                        ; 2 uses
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !26, !noalias !310
  %.not.i.i.i.i.i19 = icmp ne i64 %i.ck, 0
  %indvars.iv.next.i.i.i4.i.i20 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i18, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i21 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i20, %i.bo
  %or.cond.i.i.i22 = select i1 %.not.i.i.i.i.i19, i1 true, i1 %exitcond.not.i.i.i5.i.i21
  br i1 %or.cond.i.i.i22, label %.thread.i.i.i15, label %.lr.ph.i.i.i2.i.i17, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i23: ; preds = %bb.f
  %i.cl = xor i64 %i.n, -1
  %i.cm = sub nsw i32 0, %i.b
  %i.cn = and i32 %i.cm, 63
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = lshr i64 -1, %i.co
  %i.cq = icmp eq i32 %i.b, 0
  %spec.select.i.i.i24 = select i1 %i.cq, i64 0, i64 %i.cp ; 2 uses
  %i.cr = and i64 %spec.select.i.i.i24, %i.cl
  %i.cs = add i64 %i.cr, 1
  %i.ct = and i64 %i.cs, %spec.select.i.i.i24
  br label %_ZN4llvmngENS_5APIntE.exit25

.thread.i.i.i15:                                  ; preds = %.lr.ph.i.i.i2.i.i17, %.lr.ph.preheader.i.i.i.i.i13
  %i.cu = load i64, ptr %i.cd, align 8, !tbaa !26, !noalias !310
  %i.cv = and i64 %i.cu, %i.cb
  store i64 %i.cv, ptr %i.cd, align 8, !tbaa !26, !noalias !310
  br label %_ZN4llvmngENS_5APIntE.exit25

_ZN4llvmngENS_5APIntE.exit25:                     ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i23, %.thread.i.i.i15
  %.sroa.0.1 = phi i64 [ %i.ct, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i23 ], [ %i.bx, %.thread.i.i.i15 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.b, ptr %i.cw, align 8, !tbaa !23, !alias.scope !310
  store i64 %.sroa.0.1, ptr %5, align 8, !alias.scope !310
  call void @_ZNK4llvm5APInt4udivEm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !23, !noalias !311 ; 7 uses
  %i.cz = icmp ult i32 %i.cy, 65
  %i.da = inttoptr i64 %.sroa.0.1 to ptr
  br i1 %i.cz, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i40, label %bb.h

bb.h:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit25
  %i.db = load ptr, ptr %4, align 8, !noalias !311 ; 7 uses
  %i.dc = zext i32 %i.cy to i64
  %i.dd = add nuw nsw i64 %i.dc, 63
  %i.de = lshr i64 %i.dd, 6                       ; 5 uses
  %i.df = ptrtoint ptr %i.db to i64
  %min.iters.check101 = icmp ult i32 %i.cy, 193
  br i1 %min.iters.check101, label %.lr.ph.i.i.i.i.i26.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %bb.h
  %n.vec103 = and i64 %i.de, 134217724            ; 3 uses
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph102
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next108, %vector.body104 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index105 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %wide.load106 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !26, !noalias !311
  %wide.load107 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !26, !noalias !311
  %i.di = xor <2 x i64> %wide.load106, splat (i64 -1)
  %i.dj = xor <2 x i64> %wide.load107, splat (i64 -1)
  store <2 x i64> %i.di, ptr %i.dg, align 8, !tbaa !26, !noalias !311
  store <2 x i64> %i.dj, ptr %i.dh, align 8, !tbaa !26, !noalias !311
  %index.next108 = add nuw i64 %index105, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.dk, label %middle.block109, label %vector.body104, !llvm.loop !303

middle.block109:                                  ; preds = %vector.body104
  %cmp.n110 = icmp eq i64 %i.de, %n.vec103
  br i1 %cmp.n110, label %.lr.ph.preheader.i.i.i.i.i30, label %.lr.ph.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h, %middle.block109
  %indvars.iv.i.i.i.i.i27.ph = phi i64 [ 0, %bb.h ], [ %n.vec103, %middle.block109 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i26
  %indvars.iv.i.i.i.i.i27 = phi i64 [ %indvars.iv.next.i.i.i.i.i28, %.lr.ph.i.i.i.i.i26 ], [ %indvars.iv.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i.i.i.i.i27 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !26, !noalias !311
  %i.dn = xor i64 %i.dm, -1
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !26, !noalias !311
  %indvars.iv.next.i.i.i.i.i28 = add nuw nsw i64 %indvars.iv.i.i.i.i.i27, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29 = icmp eq i64 %indvars.iv.next.i.i.i.i.i28, %i.de
  br i1 %exitcond.not.i.i.i.i.i29, label %.lr.ph.preheader.i.i.i.i.i30, label %.lr.ph.i.i.i.i.i26, !llvm.loop !304

.lr.ph.preheader.i.i.i.i.i30:                     ; preds = %.lr.ph.i.i.i.i.i26, %middle.block109
  %i.do = sub i32 0, %i.cy
  %i.dp = and i32 %i.do, 63
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = lshr i64 -1, %i.dq                      ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.db, i64 %i.de
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8     ; 4 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !26, !noalias !311
  %i.dv = and i64 %i.du, %i.dr
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !26, !noalias !311
  %i.dw = load i64, ptr %i.db, align 8, !tbaa !26, !noalias !311
  %i.dx = add i64 %i.dw, 1                        ; 2 uses
  store i64 %i.dx, ptr %i.db, align 8, !tbaa !26, !noalias !311
  %.not.peel.i.i.i.i.i31 = icmp eq i64 %i.dx, 0
  br i1 %.not.peel.i.i.i.i.i31, label %.lr.ph.i.i.i2.i.i34, label %.thread.i.i.i32

.lr.ph.i.i.i2.i.i34:                              ; preds = %.lr.ph.preheader.i.i.i.i.i30, %.lr.ph.i.i.i2.i.i34
  %indvars.iv.i.i.i3.i.i35 = phi i64 [ %indvars.iv.next.i.i.i4.i.i37, %.lr.ph.i.i.i2.i.i34 ], [ 1, %.lr.ph.preheader.i.i.i.i.i30 ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i.i.i3.i.i35 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !26, !noalias !311
  %i.ea = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !26, !noalias !311
  %.not.i.i.i.i.i36 = icmp ne i64 %i.ea, 0
  %indvars.iv.next.i.i.i4.i.i37 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i35, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i38 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i37, %i.de
  %or.cond.i.i.i39 = select i1 %.not.i.i.i.i.i36, i1 true, i1 %exitcond.not.i.i.i5.i.i38
  br i1 %or.cond.i.i.i39, label %.thread.i.i.i32, label %.lr.ph.i.i.i2.i.i34, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i40: ; preds = %_ZN4llvmngENS_5APIntE.exit25
  %i.eb = load i64, ptr %4, align 8, !tbaa !24, !noalias !311
  %i.ec = xor i64 %i.eb, -1
  %i.ed = sub nsw i32 0, %i.cy
  %i.ee = and i32 %i.ed, 63
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = lshr i64 -1, %i.ef
  %i.eh = icmp eq i32 %i.cy, 0
  %spec.select.i.i.i41 = select i1 %i.eh, i64 0, i64 %i.eg ; 2 uses
  %i.ei = and i64 %spec.select.i.i.i41, %i.ec
  %i.ej = add i64 %i.ei, 1
  %i.ek = and i64 %i.ej, %spec.select.i.i.i41
  br label %_ZN4llvm5APIntD2Ev.exit43

.thread.i.i.i32:                                  ; preds = %.lr.ph.i.i.i2.i.i34, %.lr.ph.preheader.i.i.i.i.i30
  %i.el = load i64, ptr %i.dt, align 8, !tbaa !26, !noalias !311
  %i.em = and i64 %i.el, %i.dr
  store i64 %i.em, ptr %i.dt, align 8, !tbaa !26, !noalias !311
  br label %_ZN4llvm5APIntD2Ev.exit43

_ZN4llvm5APIntD2Ev.exit43:                        ; preds = %.thread.i.i.i32, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i40
  %i.en = phi i64 [ %i.ek, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i40 ], [ %i.df, %.thread.i.i.i32 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cy, ptr %i.eo, align 8, !tbaa !23, !alias.scope !311
  store i64 %i.en, ptr %0, align 8, !alias.scope !311
  %i.ep = icmp ult i32 %i.b, 65
  %i.eq = icmp eq i64 %.sroa.0.1, 0
  %or.cond98 = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond98, label %_ZN4llvm5APIntD2Ev.exit45, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit43
  tail call void @_ZdaPv(ptr noundef nonnull %i.da) #22
  br label %_ZN4llvm5APIntD2Ev.exit45

_ZN4llvm5APIntD2Ev.exit45:                        ; preds = %bb.i, %_ZN4llvm5APIntD2Ev.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  br i1 %i.o, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.er = sub nsw i64 0, %2
  call void @_ZNK4llvm5APInt4udivEm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 noundef %i.er)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !23, !noalias !312 ; 7 uses
  %i.eu = icmp ult i32 %i.et, 65
  br i1 %i.eu, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i60, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ev = load ptr, ptr %6, align 8, !noalias !312 ; 7 uses
  %i.ew = zext i32 %i.et to i64
  %i.ex = add nuw nsw i64 %i.ew, 63
  %i.ey = lshr i64 %i.ex, 6                       ; 5 uses
  %i.ez = ptrtoint ptr %i.ev to i64
  %min.iters.check125 = icmp ult i32 %i.et, 193
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i46.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %bb.l
  %n.vec127 = and i64 %i.ey, 134217724            ; 3 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next132, %vector.body128 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %index129 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %wide.load130 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !26, !noalias !312
  %wide.load131 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !26, !noalias !312
  %i.fc = xor <2 x i64> %wide.load130, splat (i64 -1)
  %i.fd = xor <2 x i64> %wide.load131, splat (i64 -1)
  store <2 x i64> %i.fc, ptr %i.fa, align 8, !tbaa !26, !noalias !312
  store <2 x i64> %i.fd, ptr %i.fb, align 8, !tbaa !26, !noalias !312
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.fe, label %middle.block133, label %vector.body128, !llvm.loop !307

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.ey, %n.vec127
  br i1 %cmp.n134, label %.lr.ph.preheader.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i46.preheader

.lr.ph.i.i.i.i.i46.preheader:                     ; preds = %bb.l, %middle.block133
  %indvars.iv.i.i.i.i.i47.ph = phi i64 [ 0, %bb.l ], [ %n.vec127, %middle.block133 ]
  br label %.lr.ph.i.i.i.i.i46

.lr.ph.i.i.i.i.i46:                               ; preds = %.lr.ph.i.i.i.i.i46.preheader, %.lr.ph.i.i.i.i.i46
  %indvars.iv.i.i.i.i.i47 = phi i64 [ %indvars.iv.next.i.i.i.i.i48, %.lr.ph.i.i.i.i.i46 ], [ %indvars.iv.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i46.preheader ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.i.i.i.i47 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !26, !noalias !312
  %i.fh = xor i64 %i.fg, -1
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !26, !noalias !312
  %indvars.iv.next.i.i.i.i.i48 = add nuw nsw i64 %indvars.iv.i.i.i.i.i47, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i49 = icmp eq i64 %indvars.iv.next.i.i.i.i.i48, %i.ey
  br i1 %exitcond.not.i.i.i.i.i49, label %.lr.ph.preheader.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i46, !llvm.loop !308

.lr.ph.preheader.i.i.i.i.i50:                     ; preds = %.lr.ph.i.i.i.i.i46, %middle.block133
  %i.fi = sub i32 0, %i.et
  %i.fj = and i32 %i.fi, 63
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = lshr i64 -1, %i.fk                      ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.ev, i64 %i.ey
  %i.fn = getelementptr i8, ptr %i.fm, i64 -8     ; 4 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !26, !noalias !312
  %i.fp = and i64 %i.fo, %i.fl
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !26, !noalias !312
  %i.fq = load i64, ptr %i.ev, align 8, !tbaa !26, !noalias !312
  %i.fr = add i64 %i.fq, 1                        ; 2 uses
  store i64 %i.fr, ptr %i.ev, align 8, !tbaa !26, !noalias !312
  %.not.peel.i.i.i.i.i51 = icmp eq i64 %i.fr, 0
  br i1 %.not.peel.i.i.i.i.i51, label %.lr.ph.i.i.i2.i.i54, label %.thread.i.i.i52

.lr.ph.i.i.i2.i.i54:                              ; preds = %.lr.ph.preheader.i.i.i.i.i50, %.lr.ph.i.i.i2.i.i54
  %indvars.iv.i.i.i3.i.i55 = phi i64 [ %indvars.iv.next.i.i.i4.i.i57, %.lr.ph.i.i.i2.i.i54 ], [ 1, %.lr.ph.preheader.i.i.i.i.i50 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.i.i3.i.i55 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !26, !noalias !312
  %i.fu = add i64 %i.ft, 1                        ; 2 uses
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !26, !noalias !312
  %.not.i.i.i.i.i56 = icmp ne i64 %i.fu, 0
  %indvars.iv.next.i.i.i4.i.i57 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i55, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i58 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i57, %i.ey
  %or.cond.i.i.i59 = select i1 %.not.i.i.i.i.i56, i1 true, i1 %exitcond.not.i.i.i5.i.i58
  br i1 %or.cond.i.i.i59, label %.thread.i.i.i52, label %.lr.ph.i.i.i2.i.i54, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i60: ; preds = %bb.k
  %i.fv = load i64, ptr %6, align 8, !tbaa !24, !noalias !312
  %i.fw = xor i64 %i.fv, -1
  %i.fx = sub nsw i32 0, %i.et
  %i.fy = and i32 %i.fx, 63
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = lshr i64 -1, %i.fz
  %i.gb = icmp eq i32 %i.et, 0
  %spec.select.i.i.i61 = select i1 %i.gb, i64 0, i64 %i.ga ; 2 uses
  %i.gc = and i64 %spec.select.i.i.i61, %i.fw
  %i.gd = add i64 %i.gc, 1
  %i.ge = and i64 %i.gd, %spec.select.i.i.i61
  br label %_ZN4llvm5APIntD2Ev.exit63

.thread.i.i.i52:                                  ; preds = %.lr.ph.i.i.i2.i.i54, %.lr.ph.preheader.i.i.i.i.i50
  %i.gf = load i64, ptr %i.fn, align 8, !tbaa !26, !noalias !312
  %i.gg = and i64 %i.gf, %i.fl
  store i64 %i.gg, ptr %i.fn, align 8, !tbaa !26, !noalias !312
  br label %_ZN4llvm5APIntD2Ev.exit63

_ZN4llvm5APIntD2Ev.exit63:                        ; preds = %.thread.i.i.i52, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i60
  %i.gh = phi i64 [ %i.ge, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i60 ], [ %i.ez, %.thread.i.i.i52 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.et, ptr %i.gi, align 8, !tbaa !23, !alias.scope !312
  store i64 %i.gh, ptr %0, align 8, !alias.scope !312
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @_ZNK4llvm5APInt4udivEm(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4llvm5APIntD2Ev.exit63, %_ZN4llvm5APIntD2Ev.exit45, %_ZN4llvm5APIntD2Ev.exit6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt4uremERKS0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 11 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %_ZN4llvm5APIntC2Ejmbb.exit, label %.lr.ph.i.i.i

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !24
  %i.e = load i64, ptr %2, align 8, !tbaa !24
  %i.f = urem i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.g, align 8, !tbaa !23
  store i64 %i.f, ptr %0, align 8, !tbaa !24
  br label %bb.o

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = zext i32 %i.b to i64
  %i.i = add nuw nsw i64 %i.h, 63                 ; 5 uses
  %i.j = lshr i64 %i.i, 6                         ; 4 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = load ptr, ptr %1, align 8, !tbaa !24     ; 4 uses
  %i.m = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i ] ; 2 uses
  %.019.i.i.i = phi i32 [ %i.t, %bb.c ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = or disjoint i32 %.019.i.i.i, %i.r
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.t = add i32 %.019.i.i.i, 64
  %i.u = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.u, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit, !llvm.loop !1

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.c, %.thread.i.i.i
  %.2.i.i.i = phi i32 [ %i.s, %.thread.i.i.i ], [ %i.m, %bb.c ]
  %i.v = and i32 %i.b, 63
  %.not.i.i.i = icmp eq i32 %i.v, 0
  %.neg.i.i.i = or i32 %i.b, -64
  %.neg15.i.i.i = select i1 %.not.i.i.i, i32 0, i32 %.neg.i.i.i
  %i.w = add i32 %.neg15.i.i.i, %.2.i.i.i
  %i.x = sub i32 %i.b, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 63
  %i.aa = lshr i64 %i.z, 6                        ; 4 uses
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !23 ; 6 uses
  %i.ae = icmp ult i32 %i.ad, 65
  br i1 %i.ae, label %bb.d, label %.lr.ph.i.i.i19

bb.d:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %.neg.i.i30 = add nsw i32 %i.ad, -64
  %i.af = load i64, ptr %2, align 8               ; 2 uses
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 false)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = add nsw i32 %.neg.i.i30, %i.ah
  %i.aj = inttoptr i64 %i.af to ptr
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit31

.lr.ph.i.i.i19:                                   ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %i.ak = zext i32 %i.ad to i64
  %i.al = add nuw nsw i64 %i.ak, 63
  %i.am = lshr i64 %i.al, 6                       ; 2 uses
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.ap = shl i32 %i.an, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i19
  %indvars.iv.i.i20 = phi i64 [ %indvars.iv.next.i.i22, %bb.f ], [ %i.am, %.lr.ph.i.i.i19 ] ; 2 uses
  %.019.i.i.i21 = phi i32 [ %i.aw, %bb.f ], [ 0, %.lr.ph.i.i.i19 ] ; 2 uses
  %indvars.iv.next.i.i22 = add nsw i64 %indvars.iv.i.i20, -1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next.i.i22
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.f, label %.thread.i.i.i23

.thread.i.i.i23:                                  ; preds = %bb.e
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = or disjoint i32 %.019.i.i.i21, %i.au
  br label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i24

bb.f:                                             ; preds = %bb.e
  %i.aw = add i32 %.019.i.i.i21, 64
  %i.ax = icmp samesign ugt i64 %indvars.iv.i.i20, 1
  br i1 %i.ax, label %bb.e, label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i24, !llvm.loop !1

_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i24: ; preds = %bb.f, %.thread.i.i.i23
  %.2.i.i.i25 = phi i32 [ %i.av, %.thread.i.i.i23 ], [ %i.ap, %bb.f ]
  %i.ay = and i32 %i.ad, 63
  %.not.i.i.i26 = icmp eq i32 %i.ay, 0
  %.neg.i.i.i27 = or i32 %i.ad, -64
  %.neg15.i.i.i28 = select i1 %.not.i.i.i26, i32 0, i32 %.neg.i.i.i27
  %i.az = add i32 %.2.i.i.i25, %.neg15.i.i.i28
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit31

_ZNK4llvm5APInt13getActiveBitsEv.exit31:          ; preds = %bb.d, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i24
  %i.ba = phi ptr [ %i.aj, %bb.d ], [ %i.ao, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i24 ] ; 3 uses
  %.0.i.i29 = phi i32 [ %i.ai, %bb.d ], [ %i.az, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i24 ]
  %i.bb = sub i32 %i.ad, %.0.i.i29                ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add nuw nsw i64 %i.bc, 63
  %i.be = lshr i64 %i.bd, 6                       ; 2 uses
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = icmp eq i64 %i.aa, 0
  br i1 %i.bg, label %_ZN4llvm5APIntC2Ejmbb.exit32, label %bb.g

_ZN4llvm5APIntC2Ejmbb.exit32:                     ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit31
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bh, align 8, !tbaa !23
  %i.bi = lshr i64 %i.i, 3
  %i.bj = and i64 %i.bi, 1073741816               ; 2 uses
  %i.bk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bk, i8 0, i64 %i.bj, i1 false)
  store ptr %i.bk, ptr %0, align 8, !tbaa !24
  store i64 0, ptr %i.bk, align 8, !tbaa !26
  br label %bb.o

bb.g:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit31
  %i.bl = icmp eq i32 %i.bb, 1
  br i1 %i.bl, label %_ZN4llvm5APIntC2Ejmbb.exit33, label %bb.h

_ZN4llvm5APIntC2Ejmbb.exit33:                     ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bm, align 8, !tbaa !23
  %i.bn = lshr i64 %i.i, 3
  %i.bo = and i64 %i.bn, 1073741816               ; 2 uses
  %i.bp = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bo) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bp, i8 0, i64 %i.bo, i1 false)
  store ptr %i.bp, ptr %0, align 8, !tbaa !24
  store i64 0, ptr %i.bp, align 8, !tbaa !26
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.bq = icmp samesign ult i64 %i.aa, %i.be
  br i1 %i.bq, label %_ZN4llvm5APIntC2ERKS0_.exit, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.not.i.i.i3477 = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i3477, label %_ZNK4llvm5APInteqERKS0_.exit, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %.not.i.i.i34 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i34, label %_ZNK4llvm5APInteqERKS0_.exit, label %.lr.ph, !llvm.loop !8

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %indvars.iv.i.i.i78 = phi i64 [ %i.br, %bb.i ], [ %i.j, %.preheader ]
  %i.br = add nsw i64 %indvars.iv.i.i.i78, -1     ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !26 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.br
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.bt, %i.bv
  br i1 %.not13.i.i.i, label %bb.i, label %_ZNK4llvm5APInt3ultERKS0_.exit, !llvm.loop !8

_ZNK4llvm5APInt3ultERKS0_.exit:                   ; preds = %.lr.ph
  %.not = icmp ugt i64 %i.bt, %i.bv
  br i1 %.not, label %_ZNK4llvm5APInteqERKS0_.exit, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %_ZNK4llvm5APInt3ultERKS0_.exit, %bb.h
end_hunk_3
begin_hunk_4_@_ZNK4llvm5APInt4uremEm:bb.a
  br label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %.lr.ph.i.i.i.i8.preheader, %bb.f
  %indvars.iv.i.i.i9 = phi i64 [ %indvars.iv.next.i.i.i11, %bb.f ], [ %i.j, %.lr.ph.i.i.i.i8.preheader ] ; 2 uses
  %.019.i.i.i.i10 = phi i32 [ %i.aw, %bb.f ], [ 0, %.lr.ph.i.i.i.i8.preheader ] ; 2 uses
  %indvars.iv.next.i.i.i11 = add nsw i64 %indvars.iv.i.i.i9, -1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i11
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.f, label %.thread.i.i.i.i12

.thread.i.i.i.i12:                                ; preds = %.lr.ph.i.i.i.i8
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = or disjoint i32 %.019.i.i.i.i10, %i.au
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i13

bb.f:                                             ; preds = %.lr.ph.i.i.i.i8
  %i.aw = add i32 %.019.i.i.i.i10, 64
  %i.ax = icmp samesign ugt i64 %indvars.iv.i.i.i9, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i8, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i13, !llvm.loop !1

_ZNK4llvm5APInt13getActiveBitsEv.exit.i13:        ; preds = %bb.f, %.thread.i.i.i.i12
  %.2.i.i.i.i14 = phi i32 [ %i.av, %.thread.i.i.i.i12 ], [ %i.m, %bb.f ]
  %i.ay = add i32 %.neg15.i.i.i, %.2.i.i.i.i14
  %i.az = sub i32 %i.d, %i.ay
  %i.ba = icmp ult i32 %i.az, 65
  br i1 %i.ba, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit:                         ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i13
  %.0.i.i19 = load i64, ptr %i.l, align 8, !tbaa !24
  %i.bb = icmp eq i64 %.0.i.i19, %1
  br i1 %i.bb, label %bb.j, label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit.thread:                  ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i13, %_ZNK4llvm5APInteqEm.exit
  %i.bc = icmp eq i64 %i.aa, 1
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm5APInteqEm.exit.thread
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !26
  %i.be = urem i64 %i.bd, %1
  br label %bb.j

bb.h:                                             ; preds = %_ZNK4llvm5APInteqEm.exit.thread
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond21 = icmp eq i64 %i.bf, 1
  br i1 %or.cond21, label %bb.i, label %_ZN4llvm13isPowerOf2_64Em.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bg = load i64, ptr %i.l, align 8, !tbaa !26
  %i.bh = add i64 %1, -1
  %i.bi = and i64 %i.bg, %i.bh
  br label %bb.j

_ZN4llvm13isPowerOf2_64Em.exit.thread:            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @_ZN4llvm5APInt6divideEPKmjS2_jPmS3_(ptr noundef nonnull %i.l, i32 noundef %i.ab, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.b)
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm5APInt3ultEm.exit, %bb.g, %bb.i, %_ZN4llvm13isPowerOf2_64Em.exit.thread, %_ZNK4llvm5APInt13getActiveBitsEv.exit, %_ZNK4llvm5APInteqEm.exit, %bb.b
  %.1 = phi i64 [ %i.g, %bb.b ], [ %i.bj, %_ZN4llvm13isPowerOf2_64Em.exit.thread ], [ 0, %_ZNK4llvm5APInt13getActiveBitsEv.exit ], [ %i.bi, %bb.i ], [ 0, %_ZNK4llvm5APInteqEm.exit ], [ %i.be, %bb.g ], [ %.0.i.i6, %_ZNK4llvm5APInt3ultEm.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt4sremERKS0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 14 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i = select i1 %i.g, ptr %1, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i, align 8, !tbaa !24
  %i.m = and i64 %i.f, %i.l
  %.not = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23   ; 9 uses
  %i.q = add i32 %i.p, -1                         ; 2 uses
  %i.r = and i32 %i.q, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = icmp ult i32 %i.p, 65                    ; 2 uses
  %i.v = load ptr, ptr %2, align 8                ; 2 uses
  %i.w = lshr i32 %i.q, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %.in.i.i.i87 = select i1 %i.u, ptr %2, ptr %i.y
  %i.z = load i64, ptr %.in.i.i.i87, align 8, !tbaa !24
  %i.aa = and i64 %i.t, %i.z
  %.not151 = icmp eq i64 %i.aa, 0                 ; 2 uses
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not151, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = zext i32 %i.b to i64
  %i.ac = add nuw nsw i64 %i.ab, 63               ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741816               ; 2 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #21 ; 8 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ag, i64 %i.ae, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.ah = lshr i64 %i.ac, 6                       ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.ah, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ai, align 8, !tbaa !26, !noalias !338
  %wide.load171 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !26, !noalias !338
  %i.ak = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.al = xor <2 x i64> %wide.load171, splat (i64 -1)
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !tbaa !26, !noalias !338
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !26, !noalias !338
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !26, !noalias !338
  %i.ap = xor i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !26, !noalias !338
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.ah
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !317

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %i.aq = ptrtoint ptr %i.af to i64
  %i.ar = sub i32 0, %i.b
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 -1, %i.at                      ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.af, i64 %i.ah
  %i.aw = getelementptr i8, ptr %i.av, i64 -8     ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26, !noalias !338
  %i.ay = and i64 %i.ax, %i.au
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !26, !noalias !338
  %i.az = load i64, ptr %i.af, align 8, !tbaa !26, !noalias !338
  %i.ba = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.ba, ptr %i.af, align 8, !tbaa !26, !noalias !338
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26, !noalias !338
  %i.bd = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !26, !noalias !338
  %.not.i.i.i.i.i = icmp ne i64 %i.bd, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.ah
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.c
  %i.be = xor i64 %i.n, -1
  %i.bf = sub nsw i32 0, %i.b
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = lshr i64 -1, %i.bh
  %i.bj = icmp eq i32 %i.b, 0
  %spec.select.i.i.i = select i1 %i.bj, i64 0, i64 %i.bi ; 2 uses
  %i.bk = and i64 %spec.select.i.i.i, %i.be
  %i.bl = add i64 %i.bk, 1
  %i.bm = and i64 %i.bl, %spec.select.i.i.i
  br label %_ZN4llvmngENS_5APIntE.exit

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bn = load i64, ptr %i.aw, align 8, !tbaa !26, !noalias !338
  %i.bo = and i64 %i.bn, %i.au
  store i64 %i.bo, ptr %i.aw, align 8, !tbaa !26, !noalias !338
  %.pre = load i32, ptr %i.o, align 8, !tbaa !23
  br label %_ZN4llvmngENS_5APIntE.exit

_ZN4llvmngENS_5APIntE.exit:                       ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, %.thread.i.i.i
  %i.bp = phi i32 [ %i.p, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %.pre, %.thread.i.i.i ] ; 7 uses
  %.sroa.0134.1 = phi i64 [ %i.bm, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %i.aq, %.thread.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.bq, align 8, !tbaa !23, !alias.scope !338
  store i64 %.sroa.0134.1, ptr %4, align 8, !alias.scope !338
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.br = icmp ult i32 %i.bp, 65
  br i1 %i.br, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i24, label %bb.e

bb.e:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit
  %i.bs = zext i32 %i.bp to i64
  %i.bt = add nuw nsw i64 %i.bs, 63               ; 2 uses
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741816               ; 2 uses
  %i.bw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bv) #21 ; 8 uses
  %i.bx = load ptr, ptr %2, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.bx, i64 %i.bv, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.by = lshr i64 %i.bt, 6                       ; 5 uses
  %min.iters.check173 = icmp ult i32 %i.bp, 193
  br i1 %min.iters.check173, label %.lr.ph.i.i.i.i.i10.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %bb.e
  %n.vec175 = and i64 %i.by, 134217724            ; 3 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next180, %vector.body176 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %index177 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load178 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !26, !noalias !339
  %wide.load179 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !26, !noalias !339
  %i.cb = xor <2 x i64> %wide.load178, splat (i64 -1)
  %i.cc = xor <2 x i64> %wide.load179, splat (i64 -1)
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !tbaa !26, !noalias !339
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !tbaa !26, !noalias !339
  %index.next180 = add nuw i64 %index177, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.cd, label %middle.block181, label %vector.body176, !llvm.loop !320

middle.block181:                                  ; preds = %vector.body176
  %cmp.n182 = icmp eq i64 %i.by, %n.vec175
  br i1 %cmp.n182, label %.lr.ph.preheader.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i10.preheader

.lr.ph.i.i.i.i.i10.preheader:                     ; preds = %bb.e, %middle.block181
  %indvars.iv.i.i.i.i.i11.ph = phi i64 [ 0, %bb.e ], [ %n.vec175, %middle.block181 ]
  br label %.lr.ph.i.i.i.i.i10

.lr.ph.i.i.i.i.i10:                               ; preds = %.lr.ph.i.i.i.i.i10.preheader, %.lr.ph.i.i.i.i.i10
  %indvars.iv.i.i.i.i.i11 = phi i64 [ %indvars.iv.next.i.i.i.i.i12, %.lr.ph.i.i.i.i.i10 ], [ %indvars.iv.i.i.i.i.i11.ph, %.lr.ph.i.i.i.i.i10.preheader ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i.i.i.i.i11 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !26, !noalias !339
  %i.cg = xor i64 %i.cf, -1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !26, !noalias !339
  %indvars.iv.next.i.i.i.i.i12 = add nuw nsw i64 %indvars.iv.i.i.i.i.i11, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i13 = icmp eq i64 %indvars.iv.next.i.i.i.i.i12, %i.by
  br i1 %exitcond.not.i.i.i.i.i13, label %.lr.ph.preheader.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i10, !llvm.loop !321

.lr.ph.preheader.i.i.i.i.i14:                     ; preds = %.lr.ph.i.i.i.i.i10, %middle.block181
  %i.ch = ptrtoint ptr %i.bw to i64
  %i.ci = sub i32 0, %i.bp
  %i.cj = and i32 %i.ci, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 -1, %i.ck                      ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.bw, i64 %i.by
  %i.cn = getelementptr i8, ptr %i.cm, i64 -8     ; 4 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !26, !noalias !339
  %i.cp = and i64 %i.co, %i.cl
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !26, !noalias !339
  %i.cq = load i64, ptr %i.bw, align 8, !tbaa !26, !noalias !339
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  store i64 %i.cr, ptr %i.bw, align 8, !tbaa !26, !noalias !339
  %.not.peel.i.i.i.i.i15 = icmp eq i64 %i.cr, 0
  br i1 %.not.peel.i.i.i.i.i15, label %.lr.ph.i.i.i2.i.i18, label %.thread.i.i.i16

.lr.ph.i.i.i2.i.i18:                              ; preds = %.lr.ph.preheader.i.i.i.i.i14, %.lr.ph.i.i.i2.i.i18
  %indvars.iv.i.i.i3.i.i19 = phi i64 [ %indvars.iv.next.i.i.i4.i.i21, %.lr.ph.i.i.i2.i.i18 ], [ 1, %.lr.ph.preheader.i.i.i.i.i14 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i.i.i3.i.i19 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !26, !noalias !339
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !26, !noalias !339
  %.not.i.i.i.i.i20 = icmp ne i64 %i.cu, 0
  %indvars.iv.next.i.i.i4.i.i21 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i19, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i22 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i21, %i.by
  %or.cond.i.i.i23 = select i1 %.not.i.i.i.i.i20, i1 true, i1 %exitcond.not.i.i.i5.i.i22
  br i1 %or.cond.i.i.i23, label %.thread.i.i.i16, label %.lr.ph.i.i.i2.i.i18, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i24: ; preds = %_ZN4llvmngENS_5APIntE.exit
  %i.cv = load i64, ptr %2, align 8, !tbaa !24
  %i.cw = xor i64 %i.cv, -1
  %i.cx = sub nsw i32 0, %i.bp
  %i.cy = and i32 %i.cx, 63
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = lshr i64 -1, %i.cz
  %i.db = icmp eq i32 %i.bp, 0
  %spec.select.i.i.i25 = select i1 %i.db, i64 0, i64 %i.da ; 2 uses
  %i.dc = and i64 %spec.select.i.i.i25, %i.cw
  %i.dd = add i64 %i.dc, 1
  %i.de = and i64 %i.dd, %spec.select.i.i.i25
  br label %_ZN4llvmngENS_5APIntE.exit26

.thread.i.i.i16:                                  ; preds = %.lr.ph.i.i.i2.i.i18, %.lr.ph.preheader.i.i.i.i.i14
  %i.df = load i64, ptr %i.cn, align 8, !tbaa !26, !noalias !339
  %i.dg = and i64 %i.df, %i.cl
  store i64 %i.dg, ptr %i.cn, align 8, !tbaa !26, !noalias !339
  br label %_ZN4llvmngENS_5APIntE.exit26

_ZN4llvmngENS_5APIntE.exit26:                     ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i24, %.thread.i.i.i16
  %.sroa.0125.1 = phi i64 [ %i.de, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i24 ], [ %i.ch, %.thread.i.i.i16 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %i.bp, ptr %i.dh, align 8, !tbaa !23, !alias.scope !339
  store i64 %.sroa.0125.1, ptr %5, align 8, !alias.scope !339
  call void @_ZNK4llvm5APInt4uremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !23, !noalias !340 ; 7 uses
  %i.dk = icmp ult i32 %i.dj, 65
  br i1 %i.dk, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i41, label %bb.f

bb.f:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit26
  %i.dl = load ptr, ptr %3, align 8, !tbaa !24, !noalias !340 ; 2 uses
  %i.dm = zext i32 %i.dj to i64
  %i.dn = add nuw nsw i64 %i.dm, 63
  %i.do = lshr i64 %i.dn, 6                       ; 6 uses
  %min.iters.check185 = icmp ult i32 %i.dj, 193
  br i1 %min.iters.check185, label %.lr.ph.i.i.i.i.i27.preheader, label %vector.ph186

vector.ph186:                                     ; preds = %bb.f
  %n.vec187 = and i64 %i.do, 134217724            ; 3 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next192, %vector.body188 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %index189 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %wide.load190 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !26, !noalias !340
  %wide.load191 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !26, !noalias !340
  %i.dr = xor <2 x i64> %wide.load190, splat (i64 -1)
  %i.ds = xor <2 x i64> %wide.load191, splat (i64 -1)
  store <2 x i64> %i.dr, ptr %i.dp, align 8, !tbaa !26, !noalias !340
  store <2 x i64> %i.ds, ptr %i.dq, align 8, !tbaa !26, !noalias !340
  %index.next192 = add nuw i64 %index189, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next192, %n.vec187
  br i1 %i.dt, label %middle.block193, label %vector.body188, !llvm.loop !324

middle.block193:                                  ; preds = %vector.body188
  %cmp.n194 = icmp eq i64 %i.do, %n.vec187
  br i1 %cmp.n194, label %.lr.ph.preheader.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i27.preheader

.lr.ph.i.i.i.i.i27.preheader:                     ; preds = %bb.f, %middle.block193
  %indvars.iv.i.i.i.i.i28.ph = phi i64 [ 0, %bb.f ], [ %n.vec187, %middle.block193 ]
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27.preheader, %.lr.ph.i.i.i.i.i27
  %indvars.iv.i.i.i.i.i28 = phi i64 [ %indvars.iv.next.i.i.i.i.i29, %.lr.ph.i.i.i.i.i27 ], [ %indvars.iv.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i27.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i.i.i.i.i28 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !26, !noalias !340
  %i.dw = xor i64 %i.dv, -1
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !26, !noalias !340
  %indvars.iv.next.i.i.i.i.i29 = add nuw nsw i64 %indvars.iv.i.i.i.i.i28, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i30 = icmp eq i64 %indvars.iv.next.i.i.i.i.i29, %i.do
  br i1 %exitcond.not.i.i.i.i.i30, label %.lr.ph.preheader.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i27, !llvm.loop !325

.lr.ph.preheader.i.i.i.i.i31:                     ; preds = %.lr.ph.i.i.i.i.i27, %middle.block193
  %i.dx = sub i32 0, %i.dj
  %i.dy = and i32 %i.dx, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = lshr i64 -1, %i.dz                      ; 2 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !24, !noalias !340
  %i.ec = getelementptr [8 x i8], ptr %i.eb, i64 %i.do
  %i.ed = getelementptr i8, ptr %i.ec, i64 -8     ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !26, !noalias !340
  %i.ef = and i64 %i.ee, %i.ea
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !26, !noalias !340
  %i.eg = load ptr, ptr %3, align 8, !tbaa !24, !noalias !340 ; 3 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !26, !noalias !340
  %i.ei = add i64 %i.eh, 1                        ; 2 uses
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !26, !noalias !340
  %.not.peel.i.i.i.i.i32 = icmp eq i64 %i.ei, 0
  br i1 %.not.peel.i.i.i.i.i32, label %.lr.ph.i.i.i2.i.i35, label %.thread.i.i.i33

.lr.ph.i.i.i2.i.i35:                              ; preds = %.lr.ph.preheader.i.i.i.i.i31, %.lr.ph.i.i.i2.i.i35
  %indvars.iv.i.i.i3.i.i36 = phi i64 [ %indvars.iv.next.i.i.i4.i.i38, %.lr.ph.i.i.i2.i.i35 ], [ 1, %.lr.ph.preheader.i.i.i.i.i31 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv.i.i.i3.i.i36 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !26, !noalias !340
  %i.el = add i64 %i.ek, 1                        ; 2 uses
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !26, !noalias !340
  %.not.i.i.i.i.i37 = icmp ne i64 %i.el, 0
  %indvars.iv.next.i.i.i4.i.i38 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i36, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i39 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i38, %i.do
  %or.cond.i.i.i40 = select i1 %.not.i.i.i.i.i37, i1 true, i1 %exitcond.not.i.i.i5.i.i39
  br i1 %or.cond.i.i.i40, label %.thread.i.i.i33, label %.lr.ph.i.i.i2.i.i35, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i41: ; preds = %_ZN4llvmngENS_5APIntE.exit26
  %i.em = load i64, ptr %3, align 8, !tbaa !24, !noalias !340
  %i.en = xor i64 %i.em, -1
  %i.eo = sub nsw i32 0, %i.dj
  %i.ep = and i32 %i.eo, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 -1, %i.eq
  %i.es = icmp eq i32 %i.dj, 0
  %spec.select.i.i.i42 = select i1 %i.es, i64 0, i64 %i.er ; 2 uses
  %i.et = and i64 %spec.select.i.i.i42, %i.en
  %i.eu = add i64 %i.et, 1
  %i.ev = and i64 %i.eu, %spec.select.i.i.i42     ; 2 uses
  store i64 %i.ev, ptr %3, align 8, !tbaa !24, !noalias !340
  br label %_ZN4llvm5APIntD2Ev.exit

.thread.i.i.i33:                                  ; preds = %.lr.ph.i.i.i2.i.i35, %.lr.ph.preheader.i.i.i.i.i31
  %i.ew = load ptr, ptr %3, align 8, !tbaa !24, !noalias !340
  %i.ex = getelementptr [8 x i8], ptr %i.ew, i64 %i.do
  %i.ey = getelementptr i8, ptr %i.ex, i64 -8     ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !26, !noalias !340
  %i.fa = and i64 %i.ez, %i.ea
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !26, !noalias !340
  %.pre.i34 = load i64, ptr %3, align 8, !noalias !340
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.thread.i.i.i33, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i41
  %i.fb = phi i64 [ %i.ev, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i41 ], [ %.pre.i34, %.thread.i.i.i33 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.dj, ptr %i.fc, align 8, !tbaa !23, !alias.scope !340
  store i64 %i.fb, ptr %0, align 8, !alias.scope !340
  store i32 0, ptr %i.di, align 8, !tbaa !23, !noalias !340
  %i.fd = load i32, ptr %i.dh, align 8, !tbaa !23
  %i.fe = icmp ugt i32 %i.fd, 64
  br i1 %i.fe, label %bb.g, label %_ZN4llvm5APIntD2Ev.exit45

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ff = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_ZN4llvm5APIntD2Ev.exit45, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ff) #22
  br label %_ZN4llvm5APIntD2Ev.exit45

_ZN4llvm5APIntD2Ev.exit45:                        ; preds = %bb.h, %bb.g, %_ZN4llvm5APIntD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.fh = load i32, ptr %i.bq, align 8, !tbaa !23
  %i.fi = icmp ugt i32 %i.fh, 64
  br i1 %i.fi, label %bb.i, label %_ZN4llvm5APIntD2Ev.exit47

bb.i:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit45
  %i.fj = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_ZN4llvm5APIntD2Ev.exit47, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.fj) #22
  br label %_ZN4llvm5APIntD2Ev.exit47

_ZN4llvm5APIntD2Ev.exit47:                        ; preds = %bb.j, %bb.i, %_ZN4llvm5APIntD2Ev.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.v

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i64, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fl = zext i32 %i.b to i64
  %i.fm = add nuw nsw i64 %i.fl, 63               ; 2 uses
  %i.fn = lshr i64 %i.fm, 3
  %i.fo = and i64 %i.fn, 1073741816               ; 2 uses
  %i.fp = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fo) #21 ; 8 uses
  %i.fq = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr align 8 %i.fq, i64 %i.fo, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.fr = lshr i64 %i.fm, 6                       ; 5 uses
  %min.iters.check197 = icmp ult i32 %i.b, 193
  br i1 %min.iters.check197, label %.lr.ph.i.i.i.i.i50.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %bb.l
  %n.vec199 = and i64 %i.fr, 134217724            ; 3 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next204, %vector.body200 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %index201 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %wide.load202 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !26, !noalias !341
  %wide.load203 = load <2 x i64>, ptr %i.ft, align 8, !tbaa !26, !noalias !341
  %i.fu = xor <2 x i64> %wide.load202, splat (i64 -1)
  %i.fv = xor <2 x i64> %wide.load203, splat (i64 -1)
  store <2 x i64> %i.fu, ptr %i.fs, align 8, !tbaa !26, !noalias !341
  store <2 x i64> %i.fv, ptr %i.ft, align 8, !tbaa !26, !noalias !341
  %index.next204 = add nuw i64 %index201, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next204, %n.vec199
  br i1 %i.fw, label %middle.block205, label %vector.body200, !llvm.loop !328

middle.block205:                                  ; preds = %vector.body200
  %cmp.n206 = icmp eq i64 %i.fr, %n.vec199
  br i1 %cmp.n206, label %.lr.ph.preheader.i.i.i.i.i54, label %.lr.ph.i.i.i.i.i50.preheader

.lr.ph.i.i.i.i.i50.preheader:                     ; preds = %bb.l, %middle.block205
  %indvars.iv.i.i.i.i.i51.ph = phi i64 [ 0, %bb.l ], [ %n.vec199, %middle.block205 ]
  br label %.lr.ph.i.i.i.i.i50

.lr.ph.i.i.i.i.i50:                               ; preds = %.lr.ph.i.i.i.i.i50.preheader, %.lr.ph.i.i.i.i.i50
  %indvars.iv.i.i.i.i.i51 = phi i64 [ %indvars.iv.next.i.i.i.i.i52, %.lr.ph.i.i.i.i.i50 ], [ %indvars.iv.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i50.preheader ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv.i.i.i.i.i51 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !26, !noalias !341
  %i.fz = xor i64 %i.fy, -1
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !26, !noalias !341
  %indvars.iv.next.i.i.i.i.i52 = add nuw nsw i64 %indvars.iv.i.i.i.i.i51, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i53 = icmp eq i64 %indvars.iv.next.i.i.i.i.i52, %i.fr
  br i1 %exitcond.not.i.i.i.i.i53, label %.lr.ph.preheader.i.i.i.i.i54, label %.lr.ph.i.i.i.i.i50, !llvm.loop !329

.lr.ph.preheader.i.i.i.i.i54:                     ; preds = %.lr.ph.i.i.i.i.i50, %middle.block205
  %i.ga = ptrtoint ptr %i.fp to i64
  %i.gb = sub i32 0, %i.b
  %i.gc = and i32 %i.gb, 63
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = lshr i64 -1, %i.gd                      ; 2 uses
  %i.gf = getelementptr [8 x i8], ptr %i.fp, i64 %i.fr
  %i.gg = getelementptr i8, ptr %i.gf, i64 -8     ; 4 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !26, !noalias !341
  %i.gi = and i64 %i.gh, %i.ge
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !26, !noalias !341
  %i.gj = load i64, ptr %i.fp, align 8, !tbaa !26, !noalias !341
  %i.gk = add i64 %i.gj, 1                        ; 2 uses
  store i64 %i.gk, ptr %i.fp, align 8, !tbaa !26, !noalias !341
  %.not.peel.i.i.i.i.i55 = icmp eq i64 %i.gk, 0
  br i1 %.not.peel.i.i.i.i.i55, label %.lr.ph.i.i.i2.i.i58, label %.thread.i.i.i56

.lr.ph.i.i.i2.i.i58:                              ; preds = %.lr.ph.preheader.i.i.i.i.i54, %.lr.ph.i.i.i2.i.i58
  %indvars.iv.i.i.i3.i.i59 = phi i64 [ %indvars.iv.next.i.i.i4.i.i61, %.lr.ph.i.i.i2.i.i58 ], [ 1, %.lr.ph.preheader.i.i.i.i.i54 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv.i.i.i3.i.i59 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !26, !noalias !341
  %i.gn = add i64 %i.gm, 1                        ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !26, !noalias !341
  %.not.i.i.i.i.i60 = icmp ne i64 %i.gn, 0
  %indvars.iv.next.i.i.i4.i.i61 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i59, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i62 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i61, %i.fr
  %or.cond.i.i.i63 = select i1 %.not.i.i.i.i.i60, i1 true, i1 %exitcond.not.i.i.i5.i.i62
  br i1 %or.cond.i.i.i63, label %.thread.i.i.i56, label %.lr.ph.i.i.i2.i.i58, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i64: ; preds = %bb.k
  %i.go = xor i64 %i.n, -1
  %i.gp = sub nsw i32 0, %i.b
  %i.gq = and i32 %i.gp, 63
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = lshr i64 -1, %i.gr
  %i.gt = icmp eq i32 %i.b, 0
  %spec.select.i.i.i65 = select i1 %i.gt, i64 0, i64 %i.gs ; 2 uses
  %i.gu = and i64 %spec.select.i.i.i65, %i.go
  %i.gv = add i64 %i.gu, 1
  %i.gw = and i64 %i.gv, %spec.select.i.i.i65
  br label %_ZN4llvmngENS_5APIntE.exit66

.thread.i.i.i56:                                  ; preds = %.lr.ph.i.i.i2.i.i58, %.lr.ph.preheader.i.i.i.i.i54
  %i.gx = load i64, ptr %i.gg, align 8, !tbaa !26, !noalias !341
  %i.gy = and i64 %i.gx, %i.ge
  store i64 %i.gy, ptr %i.gg, align 8, !tbaa !26, !noalias !341
  br label %_ZN4llvmngENS_5APIntE.exit66

_ZN4llvmngENS_5APIntE.exit66:                     ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i64, %.thread.i.i.i56
  %.sroa.0116.1 = phi i64 [ %i.gw, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i64 ], [ %i.ga, %.thread.i.i.i56 ]
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.gz, align 8, !tbaa !23, !alias.scope !341
  store i64 %.sroa.0116.1, ptr %7, align 8, !alias.scope !341
  call void @_ZNK4llvm5APInt4uremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !23, !noalias !342 ; 7 uses
  %i.hc = icmp ult i32 %i.hb, 65
  br i1 %i.hc, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i81, label %bb.m

bb.m:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit66
  %i.hd = load ptr, ptr %6, align 8, !tbaa !24, !noalias !342 ; 2 uses
  %i.he = zext i32 %i.hb to i64
  %i.hf = add nuw nsw i64 %i.he, 63
  %i.hg = lshr i64 %i.hf, 6                       ; 6 uses
  %min.iters.check209 = icmp ult i32 %i.hb, 193
  br i1 %min.iters.check209, label %.lr.ph.i.i.i.i.i67.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %bb.m
  %n.vec211 = and i64 %i.hg, 134217724            ; 3 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next216, %vector.body212 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %index213 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %wide.load214 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !26, !noalias !342
  %wide.load215 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !26, !noalias !342
  %i.hj = xor <2 x i64> %wide.load214, splat (i64 -1)
  %i.hk = xor <2 x i64> %wide.load215, splat (i64 -1)
  store <2 x i64> %i.hj, ptr %i.hh, align 8, !tbaa !26, !noalias !342
  store <2 x i64> %i.hk, ptr %i.hi, align 8, !tbaa !26, !noalias !342
  %index.next216 = add nuw i64 %index213, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next216, %n.vec211
  br i1 %i.hl, label %middle.block217, label %vector.body212, !llvm.loop !332

middle.block217:                                  ; preds = %vector.body212
  %cmp.n218 = icmp eq i64 %i.hg, %n.vec211
  br i1 %cmp.n218, label %.lr.ph.preheader.i.i.i.i.i71, label %.lr.ph.i.i.i.i.i67.preheader

.lr.ph.i.i.i.i.i67.preheader:                     ; preds = %bb.m, %middle.block217
  %indvars.iv.i.i.i.i.i68.ph = phi i64 [ 0, %bb.m ], [ %n.vec211, %middle.block217 ]
  br label %.lr.ph.i.i.i.i.i67

.lr.ph.i.i.i.i.i67:                               ; preds = %.lr.ph.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i67
  %indvars.iv.i.i.i.i.i68 = phi i64 [ %indvars.iv.next.i.i.i.i.i69, %.lr.ph.i.i.i.i.i67 ], [ %indvars.iv.i.i.i.i.i68.ph, %.lr.ph.i.i.i.i.i67.preheader ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i.i.i.i.i68 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !26, !noalias !342
  %i.ho = xor i64 %i.hn, -1
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !26, !noalias !342
  %indvars.iv.next.i.i.i.i.i69 = add nuw nsw i64 %indvars.iv.i.i.i.i.i68, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i70 = icmp eq i64 %indvars.iv.next.i.i.i.i.i69, %i.hg
  br i1 %exitcond.not.i.i.i.i.i70, label %.lr.ph.preheader.i.i.i.i.i71, label %.lr.ph.i.i.i.i.i67, !llvm.loop !333

.lr.ph.preheader.i.i.i.i.i71:                     ; preds = %.lr.ph.i.i.i.i.i67, %middle.block217
  %i.hp = sub i32 0, %i.hb
  %i.hq = and i32 %i.hp, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = lshr i64 -1, %i.hr                      ; 2 uses
  %i.ht = load ptr, ptr %6, align 8, !tbaa !24, !noalias !342
  %i.hu = getelementptr [8 x i8], ptr %i.ht, i64 %i.hg
  %i.hv = getelementptr i8, ptr %i.hu, i64 -8     ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !26, !noalias !342
  %i.hx = and i64 %i.hw, %i.hs
  store i64 %i.hx, ptr %i.hv, align 8, !tbaa !26, !noalias !342
  %i.hy = load ptr, ptr %6, align 8, !tbaa !24, !noalias !342 ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !26, !noalias !342
  %i.ia = add i64 %i.hz, 1                        ; 2 uses
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !26, !noalias !342
  %.not.peel.i.i.i.i.i72 = icmp eq i64 %i.ia, 0
  br i1 %.not.peel.i.i.i.i.i72, label %.lr.ph.i.i.i2.i.i75, label %.thread.i.i.i73

.lr.ph.i.i.i2.i.i75:                              ; preds = %.lr.ph.preheader.i.i.i.i.i71, %.lr.ph.i.i.i2.i.i75
  %indvars.iv.i.i.i3.i.i76 = phi i64 [ %indvars.iv.next.i.i.i4.i.i78, %.lr.ph.i.i.i2.i.i75 ], [ 1, %.lr.ph.preheader.i.i.i.i.i71 ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.i.i.i3.i.i76 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !26, !noalias !342
  %i.id = add i64 %i.ic, 1                        ; 2 uses
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !26, !noalias !342
  %.not.i.i.i.i.i77 = icmp ne i64 %i.id, 0
  %indvars.iv.next.i.i.i4.i.i78 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i76, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i79 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i78, %i.hg
  %or.cond.i.i.i80 = select i1 %.not.i.i.i.i.i77, i1 true, i1 %exitcond.not.i.i.i5.i.i79
  br i1 %or.cond.i.i.i80, label %.thread.i.i.i73, label %.lr.ph.i.i.i2.i.i75, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i81: ; preds = %_ZN4llvmngENS_5APIntE.exit66
  %i.ie = load i64, ptr %6, align 8, !tbaa !24, !noalias !342
  %i.if = xor i64 %i.ie, -1
  %i.ig = sub nsw i32 0, %i.hb
  %i.ih = and i32 %i.ig, 63
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = lshr i64 -1, %i.ii
  %i.ik = icmp eq i32 %i.hb, 0
  %spec.select.i.i.i82 = select i1 %i.ik, i64 0, i64 %i.ij ; 2 uses
  %i.il = and i64 %spec.select.i.i.i82, %i.if
  %i.im = add i64 %i.il, 1
  %i.in = and i64 %i.im, %spec.select.i.i.i82     ; 2 uses
  store i64 %i.in, ptr %6, align 8, !tbaa !24, !noalias !342
  br label %_ZN4llvm5APIntD2Ev.exit84

.thread.i.i.i73:                                  ; preds = %.lr.ph.i.i.i2.i.i75, %.lr.ph.preheader.i.i.i.i.i71
  %i.io = load ptr, ptr %6, align 8, !tbaa !24, !noalias !342
  %i.ip = getelementptr [8 x i8], ptr %i.io, i64 %i.hg
  %i.iq = getelementptr i8, ptr %i.ip, i64 -8     ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !26, !noalias !342
  %i.is = and i64 %i.ir, %i.hs
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !26, !noalias !342
  %.pre.i74 = load i64, ptr %6, align 8, !noalias !342
  br label %_ZN4llvm5APIntD2Ev.exit84

_ZN4llvm5APIntD2Ev.exit84:                        ; preds = %.thread.i.i.i73, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i81
  %i.it = phi i64 [ %i.in, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i81 ], [ %.pre.i74, %.thread.i.i.i73 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.hb, ptr %i.iu, align 8, !tbaa !23, !alias.scope !342
  store i64 %i.it, ptr %0, align 8, !alias.scope !342
  store i32 0, ptr %i.ha, align 8, !tbaa !23, !noalias !342
  %i.iv = load i32, ptr %i.gz, align 8, !tbaa !23
  %i.iw = icmp ugt i32 %i.iv, 64
  br i1 %i.iw, label %bb.n, label %_ZN4llvm5APIntD2Ev.exit86

bb.n:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit84
  %i.ix = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %_ZN4llvm5APIntD2Ev.exit86, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ix) #22
  br label %_ZN4llvm5APIntD2Ev.exit86

_ZN4llvm5APIntD2Ev.exit86:                        ; preds = %bb.o, %bb.n, %_ZN4llvm5APIntD2Ev.exit84
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.iz = ptrtoint ptr %i.v to i64
  br i1 %.not151, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.u, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i104, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ja = zext i32 %i.p to i64
  %i.jb = add nuw nsw i64 %i.ja, 63               ; 2 uses
  %i.jc = lshr i64 %i.jb, 3
  %i.jd = and i64 %i.jc, 1073741816               ; 2 uses
  %i.je = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.jd) #21 ; 8 uses
  %i.jf = load ptr, ptr %2, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.je, ptr align 8 %i.jf, i64 %i.jd, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.jg = lshr i64 %i.jb, 6                       ; 5 uses
  %min.iters.check221 = icmp ult i32 %i.p, 193
  br i1 %min.iters.check221, label %.lr.ph.i.i.i.i.i90.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %bb.r
  %n.vec223 = and i64 %i.jg, 134217724            ; 3 uses
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next228, %vector.body224 ] ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %index225 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 2 uses
  %wide.load226 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !26, !noalias !343
  %wide.load227 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !26, !noalias !343
  %i.jj = xor <2 x i64> %wide.load226, splat (i64 -1)
  %i.jk = xor <2 x i64> %wide.load227, splat (i64 -1)
  store <2 x i64> %i.jj, ptr %i.jh, align 8, !tbaa !26, !noalias !343
  store <2 x i64> %i.jk, ptr %i.ji, align 8, !tbaa !26, !noalias !343
  %index.next228 = add nuw i64 %index225, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next228, %n.vec223
  br i1 %i.jl, label %middle.block229, label %vector.body224, !llvm.loop !336

middle.block229:                                  ; preds = %vector.body224
  %cmp.n230 = icmp eq i64 %i.jg, %n.vec223
  br i1 %cmp.n230, label %.lr.ph.preheader.i.i.i.i.i94, label %.lr.ph.i.i.i.i.i90.preheader

.lr.ph.i.i.i.i.i90.preheader:                     ; preds = %bb.r, %middle.block229
  %indvars.iv.i.i.i.i.i91.ph = phi i64 [ 0, %bb.r ], [ %n.vec223, %middle.block229 ]
  br label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader, %.lr.ph.i.i.i.i.i90
  %indvars.iv.i.i.i.i.i91 = phi i64 [ %indvars.iv.next.i.i.i.i.i92, %.lr.ph.i.i.i.i.i90 ], [ %indvars.iv.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i90.preheader ] ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.i.i.i.i.i91 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !26, !noalias !343
  %i.jo = xor i64 %i.jn, -1
  store i64 %i.jo, ptr %i.jm, align 8, !tbaa !26, !noalias !343
  %indvars.iv.next.i.i.i.i.i92 = add nuw nsw i64 %indvars.iv.i.i.i.i.i91, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i93 = icmp eq i64 %indvars.iv.next.i.i.i.i.i92, %i.jg
  br i1 %exitcond.not.i.i.i.i.i93, label %.lr.ph.preheader.i.i.i.i.i94, label %.lr.ph.i.i.i.i.i90, !llvm.loop !337

.lr.ph.preheader.i.i.i.i.i94:                     ; preds = %.lr.ph.i.i.i.i.i90, %middle.block229
  %i.jp = ptrtoint ptr %i.je to i64
  %i.jq = sub i32 0, %i.p
  %i.jr = and i32 %i.jq, 63
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = lshr i64 -1, %i.js                      ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %i.je, i64 %i.jg
  %i.jv = getelementptr i8, ptr %i.ju, i64 -8     ; 4 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !26, !noalias !343
  %i.jx = and i64 %i.jw, %i.jt
  store i64 %i.jx, ptr %i.jv, align 8, !tbaa !26, !noalias !343
  %i.jy = load i64, ptr %i.je, align 8, !tbaa !26, !noalias !343
  %i.jz = add i64 %i.jy, 1                        ; 2 uses
  store i64 %i.jz, ptr %i.je, align 8, !tbaa !26, !noalias !343
  %.not.peel.i.i.i.i.i95 = icmp eq i64 %i.jz, 0
  br i1 %.not.peel.i.i.i.i.i95, label %.lr.ph.i.i.i2.i.i98, label %.thread.i.i.i96

.lr.ph.i.i.i2.i.i98:                              ; preds = %.lr.ph.preheader.i.i.i.i.i94, %.lr.ph.i.i.i2.i.i98
  %indvars.iv.i.i.i3.i.i99 = phi i64 [ %indvars.iv.next.i.i.i4.i.i101, %.lr.ph.i.i.i2.i.i98 ], [ 1, %.lr.ph.preheader.i.i.i.i.i94 ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.i.i.i3.i.i99 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !26, !noalias !343
  %i.kc = add i64 %i.kb, 1                        ; 2 uses
  store i64 %i.kc, ptr %i.ka, align 8, !tbaa !26, !noalias !343
  %.not.i.i.i.i.i100 = icmp ne i64 %i.kc, 0
  %indvars.iv.next.i.i.i4.i.i101 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i99, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i102 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i101, %i.jg
  %or.cond.i.i.i103 = select i1 %.not.i.i.i.i.i100, i1 true, i1 %exitcond.not.i.i.i5.i.i102
  br i1 %or.cond.i.i.i103, label %.thread.i.i.i96, label %.lr.ph.i.i.i2.i.i98, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i104: ; preds = %bb.q
  %i.kd = xor i64 %i.iz, -1
  %i.ke = sub nsw i32 0, %i.p
  %i.kf = and i32 %i.ke, 63
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = lshr i64 -1, %i.kg
  %i.ki = icmp eq i32 %i.p, 0
  %spec.select.i.i.i105 = select i1 %i.ki, i64 0, i64 %i.kh ; 2 uses
  %i.kj = and i64 %spec.select.i.i.i105, %i.kd
  %i.kk = add i64 %i.kj, 1
  %i.kl = and i64 %i.kk, %spec.select.i.i.i105
  br label %_ZN4llvmngENS_5APIntE.exit106

.thread.i.i.i96:                                  ; preds = %.lr.ph.i.i.i2.i.i98, %.lr.ph.preheader.i.i.i.i.i94
  %i.km = load i64, ptr %i.jv, align 8, !tbaa !26, !noalias !343
  %i.kn = and i64 %i.km, %i.jt
  store i64 %i.kn, ptr %i.jv, align 8, !tbaa !26, !noalias !343
  br label %_ZN4llvmngENS_5APIntE.exit106

_ZN4llvmngENS_5APIntE.exit106:                    ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i104, %.thread.i.i.i96
  %.sroa.0.1 = phi i64 [ %i.kl, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i104 ], [ %i.jp, %.thread.i.i.i96 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %i.p, ptr %i.ko, align 8, !tbaa !23, !alias.scope !343
  store i64 %.sroa.0.1, ptr %8, align 8, !alias.scope !343
  call void @_ZNK4llvm5APInt4uremERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %8)
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !23
  %i.kq = icmp ugt i32 %i.kp, 64
  br i1 %i.kq, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit108

bb.s:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit106
  %i.kr = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %_ZN4llvm5APIntD2Ev.exit108, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.kr) #22
  br label %_ZN4llvm5APIntD2Ev.exit108

_ZN4llvm5APIntD2Ev.exit108:                       ; preds = %bb.t, %bb.s, %_ZN4llvmngENS_5APIntE.exit106
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  tail call void @_ZNK4llvm5APInt4uremERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4llvm5APIntD2Ev.exit108, %_ZN4llvm5APIntD2Ev.exit86, %_ZN4llvm5APIntD2Ev.exit47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK4llvm5APInt4sremEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 16 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i = select i1 %i.g, ptr %0, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i, align 8, !tbaa !24
  %i.m = and i64 %i.f, %i.l
  %.not = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.o = icmp slt i64 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext i32 %i.b to i64
  %i.q = add nuw nsw i64 %i.p, 63                 ; 2 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.r, 1073741816                 ; 2 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #21 ; 8 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.u, i64 %i.s, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.v = lshr i64 %i.q, 6                         ; 5 uses
  %min.iters.check62 = icmp ult i32 %i.b, 193
  br i1 %min.iters.check62, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %bb.d
  %n.vec64 = and i64 %i.v, 134217724              ; 3 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next69, %vector.body65 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index66 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load67 = load <2 x i64>, ptr %i.w, align 8, !tbaa !26, !noalias !352
  %wide.load68 = load <2 x i64>, ptr %i.x, align 8, !tbaa !26, !noalias !352
  %i.y = xor <2 x i64> %wide.load67, splat (i64 -1)
  %i.z = xor <2 x i64> %wide.load68, splat (i64 -1)
  store <2 x i64> %i.y, ptr %i.w, align 8, !tbaa !26, !noalias !352
  store <2 x i64> %i.z, ptr %i.x, align 8, !tbaa !26, !noalias !352
  %index.next69 = add nuw i64 %index66, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next69, %n.vec64
  br i1 %i.aa, label %middle.block70, label %vector.body65, !llvm.loop !346

middle.block70:                                   ; preds = %vector.body65
  %cmp.n71 = icmp eq i64 %i.v, %n.vec64
  br i1 %cmp.n71, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block70
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec64, %middle.block70 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26, !noalias !352
  %i.ad = xor i64 %i.ac, -1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !26, !noalias !352
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.v
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !347

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block70
  %i.ae = ptrtoint ptr %i.t to i64
  %i.af = sub i32 0, %i.b
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah                      ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.t, i64 %i.v
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8     ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26, !noalias !352
  %i.am = and i64 %i.al, %i.ai
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !26, !noalias !352
  %i.an = load i64, ptr %i.t, align 8, !tbaa !26, !noalias !352
  %i.ao = add i64 %i.an, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.t, align 8, !tbaa !26, !noalias !352
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !26, !noalias !352
  %i.ar = add i64 %i.aq, 1                        ; 2 uses
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !26, !noalias !352
  %.not.i.i.i.i.i = icmp ne i64 %i.ar, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.v
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.c
  %i.as = xor i64 %i.n, -1
  %i.at = sub nsw i32 0, %i.b
  %i.au = and i32 %i.at, 63
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = lshr i64 -1, %i.av
  %i.ax = icmp eq i32 %i.b, 0
  %spec.select.i.i.i = select i1 %i.ax, i64 0, i64 %i.aw ; 2 uses
  %i.ay = and i64 %spec.select.i.i.i, %i.as
  %i.az = add i64 %i.ay, 1
  %i.ba = and i64 %i.az, %spec.select.i.i.i
  br label %_ZN4llvmngENS_5APIntE.exit

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bb = load i64, ptr %i.ak, align 8, !tbaa !26, !noalias !352
  %i.bc = and i64 %i.bb, %i.ai
  store i64 %i.bc, ptr %i.ak, align 8, !tbaa !26, !noalias !352
  br label %_ZN4llvmngENS_5APIntE.exit

_ZN4llvmngENS_5APIntE.exit:                       ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, %.thread.i.i.i
  %.sroa.037.1 = phi i64 [ %i.ba, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %i.ae, %.thread.i.i.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.b, ptr %i.bd, align 8, !tbaa !23, !alias.scope !352
  store i64 %.sroa.037.1, ptr %2, align 8, !alias.scope !352
  %i.be = sub nsw i64 0, %1
  %i.bf = call noundef i64 @_ZNK4llvm5APInt4uremEm(ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.be)
  %i.bg = sub i64 0, %i.bf
  %i.bh = icmp ult i32 %i.b, 65
  %i.bi = icmp eq i64 %.sroa.037.1, 0
  %or.cond = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit8, label %bb.e

bb.e:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit
  %i.bj = inttoptr i64 %.sroa.037.1 to ptr
  tail call void @_ZdaPv(ptr noundef nonnull %i.bj) #22
  br label %_ZN4llvm5APIntD2Ev.exit8

_ZN4llvm5APIntD2Ev.exit8:                         ; preds = %bb.e, %_ZN4llvmngENS_5APIntE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = zext i32 %i.b to i64
  %i.bl = add nuw nsw i64 %i.bk, 63               ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = and i64 %i.bm, 1073741816               ; 2 uses
  %i.bo = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bn) #21 ; 8 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 8 %i.bp, i64 %i.bn, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.bq = lshr i64 %i.bl, 6                       ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i11.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %i.bq, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.br, align 8, !tbaa !26, !noalias !353
  %wide.load60 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !26, !noalias !353
  %i.bt = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bu = xor <2 x i64> %wide.load60, splat (i64 -1)
  store <2 x i64> %i.bt, ptr %i.br, align 8, !tbaa !26, !noalias !353
  store <2 x i64> %i.bu, ptr %i.bs, align 8, !tbaa !26, !noalias !353
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i15, label %.lr.ph.i.i.i.i.i11.preheader

.lr.ph.i.i.i.i.i11.preheader:                     ; preds = %bb.g, %middle.block
  %indvars.iv.i.i.i.i.i12.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %.lr.ph.i.i.i.i.i11.preheader, %.lr.ph.i.i.i.i.i11
  %indvars.iv.i.i.i.i.i12 = phi i64 [ %indvars.iv.next.i.i.i.i.i13, %.lr.ph.i.i.i.i.i11 ], [ %indvars.iv.i.i.i.i.i12.ph, %.lr.ph.i.i.i.i.i11.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i.i.i12 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !26, !noalias !353
  %i.by = xor i64 %i.bx, -1
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !26, !noalias !353
  %indvars.iv.next.i.i.i.i.i13 = add nuw nsw i64 %indvars.iv.i.i.i.i.i12, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i14 = icmp eq i64 %indvars.iv.next.i.i.i.i.i13, %i.bq
  br i1 %exitcond.not.i.i.i.i.i14, label %.lr.ph.preheader.i.i.i.i.i15, label %.lr.ph.i.i.i.i.i11, !llvm.loop !351

.lr.ph.preheader.i.i.i.i.i15:                     ; preds = %.lr.ph.i.i.i.i.i11, %middle.block
  %i.bz = ptrtoint ptr %i.bo to i64
  %i.ca = sub i32 0, %i.b
  %i.cb = and i32 %i.ca, 63
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = lshr i64 -1, %i.cc                      ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bo, i64 %i.bq
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8     ; 4 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !26, !noalias !353
  %i.ch = and i64 %i.cg, %i.cd
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !26, !noalias !353
  %i.ci = load i64, ptr %i.bo, align 8, !tbaa !26, !noalias !353
  %i.cj = add i64 %i.ci, 1                        ; 2 uses
  store i64 %i.cj, ptr %i.bo, align 8, !tbaa !26, !noalias !353
  %.not.peel.i.i.i.i.i16 = icmp eq i64 %i.cj, 0
  br i1 %.not.peel.i.i.i.i.i16, label %.lr.ph.i.i.i2.i.i19, label %.thread.i.i.i17

.lr.ph.i.i.i2.i.i19:                              ; preds = %.lr.ph.preheader.i.i.i.i.i15, %.lr.ph.i.i.i2.i.i19
  %indvars.iv.i.i.i3.i.i20 = phi i64 [ %indvars.iv.next.i.i.i4.i.i22, %.lr.ph.i.i.i2.i.i19 ], [ 1, %.lr.ph.preheader.i.i.i.i.i15 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i3.i.i20 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !26, !noalias !353
  %i.cm = add i64 %i.cl, 1                        ; 2 uses
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !26, !noalias !353
  %.not.i.i.i.i.i21 = icmp ne i64 %i.cm, 0
  %indvars.iv.next.i.i.i4.i.i22 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i20, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i23 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i22, %i.bq
  %or.cond.i.i.i24 = select i1 %.not.i.i.i.i.i21, i1 true, i1 %exitcond.not.i.i.i5.i.i23
  br i1 %or.cond.i.i.i24, label %.thread.i.i.i17, label %.lr.ph.i.i.i2.i.i19, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i25: ; preds = %bb.f
  %i.cn = xor i64 %i.n, -1
  %i.co = sub nsw i32 0, %i.b
  %i.cp = and i32 %i.co, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = lshr i64 -1, %i.cq
  %i.cs = icmp eq i32 %i.b, 0
  %spec.select.i.i.i26 = select i1 %i.cs, i64 0, i64 %i.cr ; 2 uses
  %i.ct = and i64 %spec.select.i.i.i26, %i.cn
  %i.cu = add i64 %i.ct, 1
  %i.cv = and i64 %i.cu, %spec.select.i.i.i26
  br label %_ZN4llvmngENS_5APIntE.exit27

.thread.i.i.i17:                                  ; preds = %.lr.ph.i.i.i2.i.i19, %.lr.ph.preheader.i.i.i.i.i15
  %i.cw = load i64, ptr %i.cf, align 8, !tbaa !26, !noalias !353
  %i.cx = and i64 %i.cw, %i.cd
  store i64 %i.cx, ptr %i.cf, align 8, !tbaa !26, !noalias !353
  br label %_ZN4llvmngENS_5APIntE.exit27

_ZN4llvmngENS_5APIntE.exit27:                     ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i25, %.thread.i.i.i17
  %.sroa.0.1 = phi i64 [ %i.cv, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i25 ], [ %i.bz, %.thread.i.i.i17 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.b, ptr %i.cy, align 8, !tbaa !23, !alias.scope !353
  store i64 %.sroa.0.1, ptr %3, align 8, !alias.scope !353
  %i.cz = call noundef i64 @_ZNK4llvm5APInt4uremEm(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1)
  %i.da = sub i64 0, %i.cz
  %i.db = icmp ult i32 %i.b, 65
  %i.dc = icmp eq i64 %.sroa.0.1, 0
  %or.cond59 = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond59, label %_ZN4llvm5APIntD2Ev.exit29, label %bb.h

bb.h:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit27
  %i.dd = inttoptr i64 %.sroa.0.1 to ptr
  tail call void @_ZdaPv(ptr noundef nonnull %i.dd) #22
  br label %_ZN4llvm5APIntD2Ev.exit29

_ZN4llvm5APIntD2Ev.exit29:                        ; preds = %bb.h, %_ZN4llvmngENS_5APIntE.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.de = sub nsw i64 0, %1
  %i.df = tail call noundef i64 @_ZNK4llvm5APInt4uremEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %i.de)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dg = tail call noundef i64 @_ZNK4llvm5APInt4uremEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_ZN4llvm5APIntD2Ev.exit29, %_ZN4llvm5APIntD2Ev.exit8
  %.0 = phi i64 [ %i.bg, %_ZN4llvm5APIntD2Ev.exit8 ], [ %i.da, %_ZN4llvm5APIntD2Ev.exit29 ], [ %i.df, %bb.j ], [ %i.dg, %bb.k ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm5APInt7udivremERKS0_S2_RS0_S3_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 20 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %_ZN4llvm5APIntC2Ejmbb.exit, label %.lr.ph.i.i.i

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.f = udiv i64 %i.d, %i.e
  %i.g = urem i64 %i.d, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %_ZN4llvm5APIntC2Ejmbb.exit66, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4llvm5APIntC2Ejmbb.exit66, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #22
  br label %_ZN4llvm5APIntC2Ejmbb.exit66

_ZN4llvm5APIntC2Ejmbb.exit66:                     ; preds = %bb.c, %bb.b, %_ZN4llvm5APIntC2Ejmbb.exit
  store i64 %i.f, ptr %2, align 8
  store i32 %i.b, ptr %i.h, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !23
  %i.o = icmp ult i32 %i.n, 65
  br i1 %i.o, label %_ZN4llvm5APIntD2Ev.exit68, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit66
  %i.p = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN4llvm5APIntD2Ev.exit68, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #22
  br label %_ZN4llvm5APIntD2Ev.exit68

_ZN4llvm5APIntD2Ev.exit68:                        ; preds = %bb.e, %bb.d, %_ZN4llvm5APIntC2Ejmbb.exit66
  store i64 %i.g, ptr %3, align 8
  store i32 %i.b, ptr %i.m, align 8, !tbaa !23
  br label %bb.bi

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.r = zext i32 %i.b to i64
  %i.s = add nuw nsw i64 %i.r, 63                 ; 5 uses
  %i.t = lshr i64 %i.s, 6                         ; 10 uses
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = load ptr, ptr %0, align 8, !tbaa !24
  %i.w = shl i32 %i.u, 6
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.g ], [ %i.t, %.lr.ph.i.i.i ] ; 2 uses
  %.019.i.i.i = phi i32 [ %i.ad, %bb.g ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.f
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = or disjoint i32 %.019.i.i.i, %i.ab
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = add i32 %.019.i.i.i, 64
  %i.ae = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.ae, label %bb.f, label %_ZNK4llvm5APInt13getActiveBitsEv.exit, !llvm.loop !1

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.g, %.thread.i.i.i
  %.2.i.i.i = phi i32 [ %i.ac, %.thread.i.i.i ], [ %i.w, %bb.g ]
  %i.af = and i32 %i.b, 63
  %.not.i.i.i = icmp eq i32 %i.af, 0
  %.neg.i.i.i = or i32 %i.b, -64
  %.neg15.i.i.i = select i1 %.not.i.i.i, i32 0, i32 %.neg.i.i.i
  %i.ag = add i32 %.neg15.i.i.i, %.2.i.i.i
  %i.ah = sub i32 %i.b, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 63
  %i.ak = lshr i64 %i.aj, 6                       ; 6 uses
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !23 ; 6 uses
  %i.ao = icmp ult i32 %i.an, 65
  br i1 %i.ao, label %bb.h, label %.lr.ph.i.i.i69

bb.h:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %.neg.i.i80 = add nsw i32 %i.an, -64
  %i.ap = load i64, ptr %1, align 8, !tbaa !24
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 false)
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = add nsw i32 %.neg.i.i80, %i.ar
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit81

.lr.ph.i.i.i69:                                   ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %i.at = zext i32 %i.an to i64
  %i.au = add nuw nsw i64 %i.at, 63
  %i.av = lshr i64 %i.au, 6                       ; 2 uses
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = load ptr, ptr %1, align 8, !tbaa !24
  %i.ay = shl i32 %i.aw, 6
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i69
  %indvars.iv.i.i70 = phi i64 [ %indvars.iv.next.i.i72, %bb.j ], [ %i.av, %.lr.ph.i.i.i69 ] ; 2 uses
  %.019.i.i.i71 = phi i32 [ %i.bf, %bb.j ], [ 0, %.lr.ph.i.i.i69 ] ; 2 uses
  %indvars.iv.next.i.i72 = add nsw i64 %indvars.iv.i.i70, -1 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %.thread.i.i.i73

.thread.i.i.i73:                                  ; preds = %bb.i
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = or disjoint i32 %.019.i.i.i71, %i.bd
  br label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i74

bb.j:                                             ; preds = %bb.i
  %i.bf = add i32 %.019.i.i.i71, 64
  %i.bg = icmp samesign ugt i64 %indvars.iv.i.i70, 1
  br i1 %i.bg, label %bb.i, label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i74, !llvm.loop !1

_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i74: ; preds = %bb.j, %.thread.i.i.i73
  %.2.i.i.i75 = phi i32 [ %i.be, %.thread.i.i.i73 ], [ %i.ay, %bb.j ]
  %i.bh = and i32 %i.an, 63
  %.not.i.i.i76 = icmp eq i32 %i.bh, 0
  %.neg.i.i.i77 = or i32 %i.an, -64
  %.neg15.i.i.i78 = select i1 %.not.i.i.i76, i32 0, i32 %.neg.i.i.i77
  %i.bi = add i32 %.2.i.i.i75, %.neg15.i.i.i78
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit81

_ZNK4llvm5APInt13getActiveBitsEv.exit81:          ; preds = %bb.h, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i74
  %.0.i.i79 = phi i32 [ %i.as, %bb.h ], [ %i.bi, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i74 ]
  %i.bj = sub i32 %i.an, %.0.i.i79                ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 63
  %i.bm = lshr i64 %i.bl, 6                       ; 4 uses
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = icmp eq i64 %i.ak, 0
  br i1 %i.bo, label %_ZN4llvm5APIntC2Ejmbb.exit82, label %bb.o

end_hunk_4
begin_hunk_5_@_ZN4llvm5APInt7udivremERKS0_mRS0_Rm:bb.a

_ZN4llvm5APIntD2Ev.exit63:                        ; preds = %bb.v, %bb.u, %_ZN4llvm5APIntC2Ejmbb.exit61
  store i64 %i.cw, ptr %2, align 8
  store i32 %i.c, ptr %i.cx, align 8, !tbaa !23
  store i64 0, ptr %3, align 8, !tbaa !26
  br label %bb.ad

_ZNK4llvm5APInteqEm.exit.thread:                  ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i54, %_ZNK4llvm5APInteqEm.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !23 ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = add nuw nsw i64 %i.de, 63
  %i.dg = lshr i64 %i.df, 6
  %i.dh = icmp eq i64 %i.dg, %i.o
  br i1 %i.dh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK4llvm5APInteqEm.exit.thread
  store i32 %i.c, ptr %i.dc, align 8, !tbaa !23
  br label %_ZN4llvm5APInt10reallocateEj.exit

bb.x:                                             ; preds = %_ZNK4llvm5APInteqEm.exit.thread
  %i.di = icmp ult i32 %i.dd, 65
  br i1 %i.di, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZdaPv(ptr noundef nonnull %i.dj) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z
  store i32 %i.c, ptr %i.dc, align 8, !tbaa !23
  %i.dl = shl nuw nsw i64 %i.o, 3
  %i.dm = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dl) #21
  store ptr %i.dm, ptr %2, align 8, !tbaa !24
  br label %_ZN4llvm5APInt10reallocateEj.exit

_ZN4llvm5APInt10reallocateEj.exit:                ; preds = %bb.w, %bb.aa
  %i.dn = icmp eq i64 %i.af, 1
  %i.do = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  br i1 %i.dn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4llvm5APInt10reallocateEj.exit
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !26 ; 2 uses
  %i.dq = udiv i64 %i.dp, %1
  %i.dr = tail call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntaSEm(ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.dq) ; 0 uses
  %i.ds = urem i64 %i.dp, %1
  store i64 %i.ds, ptr %3, align 8, !tbaa !26
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm5APInt10reallocateEj.exit
  %i.dt = load ptr, ptr %2, align 8, !tbaa !24
  call void @_ZN4llvm5APInt6divideEPKmjS2_jPmS3_(ptr noundef %i.do, i32 noundef %i.ag, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.dt, ptr noundef nonnull %3)
  %i.du = load ptr, ptr %2, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.af
  %i.dw = sub nsw i64 %i.o, %i.af
  %i.dx = shl nsw i64 %i.dw, 3
  %i.dy = and i64 %i.dx, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dv, i8 0, i64 %i.dy, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit43, %_ZN4llvm5APIntaSERKS0_.exit, %_ZN4llvm5APIntD2Ev.exit47, %_ZN4llvm5APIntD2Ev.exit63, %bb.ab, %bb.ac, %_ZN4llvm5APIntD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm5APInt7sdivremERKS0_S2_RS0_S3_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 16 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i = select i1 %i.g, ptr %0, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i, align 8, !tbaa !24
  %i.m = and i64 %i.f, %i.l
  %.not = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23   ; 10 uses
  %i.q = add i32 %i.p, -1                         ; 2 uses
  %i.r = and i32 %i.q, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = icmp ult i32 %i.p, 65                    ; 2 uses
  %i.v = load ptr, ptr %1, align 8                ; 2 uses
  %i.w = lshr i32 %i.q, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %.in.i.i.i82 = select i1 %i.u, ptr %1, ptr %i.y
  %i.z = load i64, ptr %.in.i.i.i82, align 8, !tbaa !24
  %i.aa = and i64 %i.t, %i.z
  %.not162 = icmp eq i64 %i.aa, 0                 ; 2 uses
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not162, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = zext i32 %i.b to i64
  %i.ac = add nuw nsw i64 %i.ab, 63               ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741816               ; 2 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #21 ; 8 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ag, i64 %i.ae, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.ah = lshr i64 %i.ac, 6                       ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.ah, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ai, align 8, !tbaa !26, !noalias !376
  %wide.load188 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !26, !noalias !376
  %i.ak = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.al = xor <2 x i64> %wide.load188, splat (i64 -1)
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !tbaa !26, !noalias !376
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !26, !noalias !376
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !356

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !26, !noalias !376
  %i.ap = xor i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !26, !noalias !376
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.ah
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !357

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %i.aq = ptrtoint ptr %i.af to i64
  %i.ar = sub i32 0, %i.b
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 -1, %i.at                      ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.af, i64 %i.ah
  %i.aw = getelementptr i8, ptr %i.av, i64 -8     ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26, !noalias !376
  %i.ay = and i64 %i.ax, %i.au
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !26, !noalias !376
  %i.az = load i64, ptr %i.af, align 8, !tbaa !26, !noalias !376
  %i.ba = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.ba, ptr %i.af, align 8, !tbaa !26, !noalias !376
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26, !noalias !376
  %i.bd = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !26, !noalias !376
  %.not.i.i.i.i.i = icmp ne i64 %i.bd, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.ah
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.c
  %i.be = xor i64 %i.n, -1
  %i.bf = sub nsw i32 0, %i.b
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = lshr i64 -1, %i.bh
  %i.bj = icmp eq i32 %i.b, 0
  %spec.select.i.i.i = select i1 %i.bj, i64 0, i64 %i.bi ; 2 uses
  %i.bk = and i64 %spec.select.i.i.i, %i.be
  %i.bl = add i64 %i.bk, 1
  %i.bm = and i64 %i.bl, %spec.select.i.i.i
  br label %_ZN4llvmngENS_5APIntE.exit

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bn = load i64, ptr %i.aw, align 8, !tbaa !26, !noalias !376
  %i.bo = and i64 %i.bn, %i.au
  store i64 %i.bo, ptr %i.aw, align 8, !tbaa !26, !noalias !376
  %.pre = load i32, ptr %i.o, align 8, !tbaa !23
  br label %_ZN4llvmngENS_5APIntE.exit

_ZN4llvmngENS_5APIntE.exit:                       ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, %.thread.i.i.i
  %i.bp = phi i32 [ %i.p, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %.pre, %.thread.i.i.i ] ; 8 uses
  %.sroa.0145.1 = phi i64 [ %i.bm, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %i.aq, %.thread.i.i.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.b, ptr %i.bq, align 8, !tbaa !23, !alias.scope !376
  store i64 %.sroa.0145.1, ptr %4, align 8, !alias.scope !376
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.br = icmp ult i32 %i.bp, 65
  %i.bs = inttoptr i64 %.sroa.0145.1 to ptr
  br i1 %i.br, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i39, label %bb.e

bb.e:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit
  %i.bt = zext i32 %i.bp to i64
  %i.bu = add nuw nsw i64 %i.bt, 63               ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 1073741816               ; 2 uses
  %i.bx = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bw) #21 ; 8 uses
  %i.by = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %i.by, i64 %i.bw, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.bz = lshr i64 %i.bu, 6                       ; 5 uses
  %min.iters.check190 = icmp ult i32 %i.bp, 193
  br i1 %min.iters.check190, label %.lr.ph.i.i.i.i.i25.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %bb.e
  %n.vec192 = and i64 %i.bz, 134217724            ; 3 uses
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next197, %vector.body193 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index194 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %wide.load195 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !26, !noalias !377
  %wide.load196 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !26, !noalias !377
  %i.cc = xor <2 x i64> %wide.load195, splat (i64 -1)
  %i.cd = xor <2 x i64> %wide.load196, splat (i64 -1)
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !tbaa !26, !noalias !377
  store <2 x i64> %i.cd, ptr %i.cb, align 8, !tbaa !26, !noalias !377
  %index.next197 = add nuw i64 %index194, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next197, %n.vec192
  br i1 %i.ce, label %middle.block198, label %vector.body193, !llvm.loop !360

middle.block198:                                  ; preds = %vector.body193
  %cmp.n199 = icmp eq i64 %i.bz, %n.vec192
  br i1 %cmp.n199, label %.lr.ph.preheader.i.i.i.i.i29, label %.lr.ph.i.i.i.i.i25.preheader

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %bb.e, %middle.block198
  %indvars.iv.i.i.i.i.i26.ph = phi i64 [ 0, %bb.e ], [ %n.vec192, %middle.block198 ]
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25.preheader, %.lr.ph.i.i.i.i.i25
  %indvars.iv.i.i.i.i.i26 = phi i64 [ %indvars.iv.next.i.i.i.i.i27, %.lr.ph.i.i.i.i.i25 ], [ %indvars.iv.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i25.preheader ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i.i.i.i.i26 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !26, !noalias !377
  %i.ch = xor i64 %i.cg, -1
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !26, !noalias !377
  %indvars.iv.next.i.i.i.i.i27 = add nuw nsw i64 %indvars.iv.i.i.i.i.i26, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i28 = icmp eq i64 %indvars.iv.next.i.i.i.i.i27, %i.bz
  br i1 %exitcond.not.i.i.i.i.i28, label %.lr.ph.preheader.i.i.i.i.i29, label %.lr.ph.i.i.i.i.i25, !llvm.loop !361

.lr.ph.preheader.i.i.i.i.i29:                     ; preds = %.lr.ph.i.i.i.i.i25, %middle.block198
  %i.ci = ptrtoint ptr %i.bx to i64
  %i.cj = sub i32 0, %i.bp
  %i.ck = and i32 %i.cj, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = lshr i64 -1, %i.cl                      ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.bx, i64 %i.bz
  %i.co = getelementptr i8, ptr %i.cn, i64 -8     ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !26, !noalias !377
  %i.cq = and i64 %i.cp, %i.cm
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !26, !noalias !377
  %i.cr = load i64, ptr %i.bx, align 8, !tbaa !26, !noalias !377
  %i.cs = add i64 %i.cr, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.bx, align 8, !tbaa !26, !noalias !377
  %.not.peel.i.i.i.i.i30 = icmp eq i64 %i.cs, 0
  br i1 %.not.peel.i.i.i.i.i30, label %.lr.ph.i.i.i2.i.i33, label %.thread.i.i.i31

.lr.ph.i.i.i2.i.i33:                              ; preds = %.lr.ph.preheader.i.i.i.i.i29, %.lr.ph.i.i.i2.i.i33
  %indvars.iv.i.i.i3.i.i34 = phi i64 [ %indvars.iv.next.i.i.i4.i.i36, %.lr.ph.i.i.i2.i.i33 ], [ 1, %.lr.ph.preheader.i.i.i.i.i29 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i.i.i3.i.i34 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !26, !noalias !377
  %i.cv = add i64 %i.cu, 1                        ; 2 uses
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !26, !noalias !377
  %.not.i.i.i.i.i35 = icmp ne i64 %i.cv, 0
  %indvars.iv.next.i.i.i4.i.i36 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i34, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i37 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i36, %i.bz
  %or.cond.i.i.i38 = select i1 %.not.i.i.i.i.i35, i1 true, i1 %exitcond.not.i.i.i5.i.i37
  br i1 %or.cond.i.i.i38, label %.thread.i.i.i31, label %.lr.ph.i.i.i2.i.i33, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i39: ; preds = %_ZN4llvmngENS_5APIntE.exit
  %i.cw = load i64, ptr %1, align 8, !tbaa !24
  %i.cx = xor i64 %i.cw, -1
  %i.cy = sub nsw i32 0, %i.bp
  %i.cz = and i32 %i.cy, 63
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = lshr i64 -1, %i.da
  %i.dc = icmp eq i32 %i.bp, 0
  %spec.select.i.i.i40 = select i1 %i.dc, i64 0, i64 %i.db ; 2 uses
  %i.dd = and i64 %spec.select.i.i.i40, %i.cx
  %i.de = add i64 %i.dd, 1
  %i.df = and i64 %i.de, %spec.select.i.i.i40
  br label %_ZN4llvmngENS_5APIntE.exit41

.thread.i.i.i31:                                  ; preds = %.lr.ph.i.i.i2.i.i33, %.lr.ph.preheader.i.i.i.i.i29
  %i.dg = load i64, ptr %i.co, align 8, !tbaa !26, !noalias !377
  %i.dh = and i64 %i.dg, %i.cm
  store i64 %i.dh, ptr %i.co, align 8, !tbaa !26, !noalias !377
  br label %_ZN4llvmngENS_5APIntE.exit41

_ZN4llvmngENS_5APIntE.exit41:                     ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i39, %.thread.i.i.i31
  %.sroa.0136.1 = phi i64 [ %i.df, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i39 ], [ %i.ci, %.thread.i.i.i31 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bp, ptr %i.di, align 8, !tbaa !23, !alias.scope !377
  store i64 %.sroa.0136.1, ptr %5, align 8, !alias.scope !377
  call void @_ZN4llvm5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  %i.dj = icmp ult i32 %i.bp, 65
  %i.dk = icmp eq i64 %.sroa.0136.1, 0
  %or.cond = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit42, label %bb.f

bb.f:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit41
  %i.dl = inttoptr i64 %.sroa.0136.1 to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #22
  br label %_ZN4llvm5APIntD2Ev.exit42

_ZN4llvm5APIntD2Ev.exit42:                        ; preds = %bb.f, %_ZN4llvmngENS_5APIntE.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dm = icmp ult i32 %i.b, 65
  %i.dn = icmp eq i64 %.sroa.0145.1, 0
  %or.cond185 = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond185, label %_ZN4llvm5APIntD2Ev.exit44, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit42
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #22
  br label %_ZN4llvm5APIntD2Ev.exit44

_ZN4llvm5APIntD2Ev.exit44:                        ; preds = %bb.g, %_ZN4llvm5APIntD2Ev.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN4llvm5APInt6negateEv.exit

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i61, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.do = zext i32 %i.b to i64
  %i.dp = add nuw nsw i64 %i.do, 63               ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = and i64 %i.dq, 1073741816               ; 2 uses
  %i.ds = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dr) #21 ; 8 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr align 8 %i.dt, i64 %i.dr, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.du = lshr i64 %i.dp, 6                       ; 5 uses
  %min.iters.check202 = icmp ult i32 %i.b, 193
  br i1 %min.iters.check202, label %.lr.ph.i.i.i.i.i47.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %bb.i
  %n.vec204 = and i64 %i.du, 134217724            ; 3 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next209, %vector.body205 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index206 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load207 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !26, !noalias !378
  %wide.load208 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !26, !noalias !378
  %i.dx = xor <2 x i64> %wide.load207, splat (i64 -1)
  %i.dy = xor <2 x i64> %wide.load208, splat (i64 -1)
  store <2 x i64> %i.dx, ptr %i.dv, align 8, !tbaa !26, !noalias !378
  store <2 x i64> %i.dy, ptr %i.dw, align 8, !tbaa !26, !noalias !378
  %index.next209 = add nuw i64 %index206, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next209, %n.vec204
  br i1 %i.dz, label %middle.block210, label %vector.body205, !llvm.loop !364

middle.block210:                                  ; preds = %vector.body205
  %cmp.n211 = icmp eq i64 %i.du, %n.vec204
  br i1 %cmp.n211, label %.lr.ph.preheader.i.i.i.i.i51, label %.lr.ph.i.i.i.i.i47.preheader

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %bb.i, %middle.block210
  %indvars.iv.i.i.i.i.i48.ph = phi i64 [ 0, %bb.i ], [ %n.vec204, %middle.block210 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i47
  %indvars.iv.i.i.i.i.i48 = phi i64 [ %indvars.iv.next.i.i.i.i.i49, %.lr.ph.i.i.i.i.i47 ], [ %indvars.iv.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i47.preheader ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i.i.i.i.i48 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !26, !noalias !378
  %i.ec = xor i64 %i.eb, -1
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !26, !noalias !378
  %indvars.iv.next.i.i.i.i.i49 = add nuw nsw i64 %indvars.iv.i.i.i.i.i48, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i50 = icmp eq i64 %indvars.iv.next.i.i.i.i.i49, %i.du
  br i1 %exitcond.not.i.i.i.i.i50, label %.lr.ph.preheader.i.i.i.i.i51, label %.lr.ph.i.i.i.i.i47, !llvm.loop !365

.lr.ph.preheader.i.i.i.i.i51:                     ; preds = %.lr.ph.i.i.i.i.i47, %middle.block210
  %i.ed = ptrtoint ptr %i.ds to i64
  %i.ee = sub i32 0, %i.b
  %i.ef = and i32 %i.ee, 63
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = lshr i64 -1, %i.eg                      ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.ds, i64 %i.du
  %i.ej = getelementptr i8, ptr %i.ei, i64 -8     ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !26, !noalias !378
  %i.el = and i64 %i.ek, %i.eh
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !26, !noalias !378
  %i.em = load i64, ptr %i.ds, align 8, !tbaa !26, !noalias !378
  %i.en = add i64 %i.em, 1                        ; 2 uses
  store i64 %i.en, ptr %i.ds, align 8, !tbaa !26, !noalias !378
  %.not.peel.i.i.i.i.i52 = icmp eq i64 %i.en, 0
  br i1 %.not.peel.i.i.i.i.i52, label %.lr.ph.i.i.i2.i.i55, label %.thread.i.i.i53

.lr.ph.i.i.i2.i.i55:                              ; preds = %.lr.ph.preheader.i.i.i.i.i51, %.lr.ph.i.i.i2.i.i55
  %indvars.iv.i.i.i3.i.i56 = phi i64 [ %indvars.iv.next.i.i.i4.i.i58, %.lr.ph.i.i.i2.i.i55 ], [ 1, %.lr.ph.preheader.i.i.i.i.i51 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i.i.i3.i.i56 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !26, !noalias !378
  %i.eq = add i64 %i.ep, 1                        ; 2 uses
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !26, !noalias !378
  %.not.i.i.i.i.i57 = icmp ne i64 %i.eq, 0
  %indvars.iv.next.i.i.i4.i.i58 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i56, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i59 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i58, %i.du
  %or.cond.i.i.i60 = select i1 %.not.i.i.i.i.i57, i1 true, i1 %exitcond.not.i.i.i5.i.i59
  br i1 %or.cond.i.i.i60, label %.thread.i.i.i53, label %.lr.ph.i.i.i2.i.i55, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i61: ; preds = %bb.h
  %i.er = xor i64 %i.n, -1
  %i.es = sub nsw i32 0, %i.b
  %i.et = and i32 %i.es, 63
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = lshr i64 -1, %i.eu
  %i.ew = icmp eq i32 %i.b, 0
  %spec.select.i.i.i62 = select i1 %i.ew, i64 0, i64 %i.ev ; 2 uses
  %i.ex = and i64 %spec.select.i.i.i62, %i.er
  %i.ey = add i64 %i.ex, 1
  %i.ez = and i64 %i.ey, %spec.select.i.i.i62
  br label %_ZN4llvmngENS_5APIntE.exit63

.thread.i.i.i53:                                  ; preds = %.lr.ph.i.i.i2.i.i55, %.lr.ph.preheader.i.i.i.i.i51
  %i.fa = load i64, ptr %i.ej, align 8, !tbaa !26, !noalias !378
  %i.fb = and i64 %i.fa, %i.eh
  store i64 %i.fb, ptr %i.ej, align 8, !tbaa !26, !noalias !378
  br label %_ZN4llvmngENS_5APIntE.exit63

_ZN4llvmngENS_5APIntE.exit63:                     ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i61, %.thread.i.i.i53
  %.sroa.0127.1 = phi i64 [ %i.ez, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i61 ], [ %i.ed, %.thread.i.i.i53 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.b, ptr %i.fc, align 8, !tbaa !23, !alias.scope !378
  store i64 %.sroa.0127.1, ptr %6, align 8, !alias.scope !378
  call void @_ZN4llvm5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  %i.fd = icmp ult i32 %i.b, 65
  %i.fe = icmp eq i64 %.sroa.0127.1, 0
  %or.cond186 = select i1 %i.fd, i1 true, i1 %i.fe
  br i1 %or.cond186, label %_ZN4llvm5APIntD2Ev.exit65, label %bb.j

bb.j:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit63
  %i.ff = inttoptr i64 %.sroa.0127.1 to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.ff) #22
  br label %_ZN4llvm5APIntD2Ev.exit65

_ZN4llvm5APIntD2Ev.exit65:                        ; preds = %bb.j, %_ZN4llvmngENS_5APIntE.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !23 ; 6 uses
  %i.fi = icmp ult i32 %i.fh, 65
  br i1 %i.fi, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit65
  %i.fj = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.fk = zext i32 %i.fh to i64
  %i.fl = add nuw nsw i64 %i.fk, 63
  %i.fm = lshr i64 %i.fl, 6                       ; 6 uses
  %min.iters.check214 = icmp ult i32 %i.fh, 193
  br i1 %min.iters.check214, label %.lr.ph.i.i.i.i.preheader, label %vector.ph215

vector.ph215:                                     ; preds = %bb.k
  %n.vec216 = and i64 %i.fm, 134217724            ; 3 uses
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next221, %vector.body217 ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %index218 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %wide.load219 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !26
  %wide.load220 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !26
  %i.fp = xor <2 x i64> %wide.load219, splat (i64 -1)
  %i.fq = xor <2 x i64> %wide.load220, splat (i64 -1)
  store <2 x i64> %i.fp, ptr %i.fn, align 8, !tbaa !26
  store <2 x i64> %i.fq, ptr %i.fo, align 8, !tbaa !26
  %index.next221 = add nuw i64 %index218, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next221, %n.vec216
  br i1 %i.fr, label %middle.block222, label %vector.body217, !llvm.loop !366

middle.block222:                                  ; preds = %vector.body217
  %cmp.n223 = icmp eq i64 %i.fm, %n.vec216
  br i1 %cmp.n223, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.k, %middle.block222
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %bb.k ], [ %n.vec216, %middle.block222 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !26
  %i.fu = xor i64 %i.ft, -1
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !26
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.fm
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !367

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %middle.block222
  %i.fv = sub i32 0, %i.fh
  %i.fw = and i32 %i.fv, 63
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = lshr i64 -1, %i.fx                      ; 2 uses
  %i.fz = load ptr, ptr %2, align 8, !tbaa !24
  %i.ga = getelementptr [8 x i8], ptr %i.fz, i64 %i.fm
  %i.gb = getelementptr i8, ptr %i.ga, i64 -8     ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !26
  %i.gd = and i64 %i.gc, %i.fy
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !26
  %i.ge = load ptr, ptr %2, align 8, !tbaa !24    ; 3 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !26
  %i.gg = add i64 %i.gf, 1                        ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !26
  %.not.peel.i.i.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not.peel.i.i.i.i, label %.lr.ph.i.i.i2.i, label %.thread.i.i

.lr.ph.i.i.i2.i:                                  ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i2.i
  %indvars.iv.i.i.i3.i = phi i64 [ %indvars.iv.next.i.i.i4.i, %.lr.ph.i.i.i2.i ], [ 1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.i.i3.i ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !26
  %i.gj = add i64 %i.gi, 1                        ; 2 uses
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !26
  %.not.i.i.i.i = icmp ne i64 %i.gj, 0
  %indvars.iv.next.i.i.i4.i = add nuw nsw i64 %indvars.iv.i.i.i3.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i = icmp eq i64 %indvars.iv.next.i.i.i4.i, %i.fm
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i
  br i1 %or.cond.i.i, label %.thread.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i: ; preds = %_ZN4llvm5APIntD2Ev.exit65
  %i.gk = load i64, ptr %2, align 8, !tbaa !24
  %i.gl = xor i64 %i.gk, -1
  %i.gm = sub nsw i32 0, %i.fh
  %i.gn = and i32 %i.gm, 63
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = lshr i64 -1, %i.go
  %i.gq = icmp eq i32 %i.fh, 0
  %spec.select.i.i = select i1 %i.gq, i64 0, i64 %i.gp ; 2 uses
  %i.gr = and i64 %spec.select.i.i, %i.gl
  %i.gs = add i64 %i.gr, 1
  %i.gt = and i64 %i.gs, %spec.select.i.i
  store i64 %i.gt, ptr %2, align 8, !tbaa !24
  br label %_ZN4llvm5APInt6negateEv.exit

.thread.i.i:                                      ; preds = %.lr.ph.i.i.i2.i, %.lr.ph.preheader.i.i.i.i
  %i.gu = load ptr, ptr %2, align 8, !tbaa !24
  %i.gv = getelementptr [8 x i8], ptr %i.gu, i64 %i.fm
  %i.gw = getelementptr i8, ptr %i.gv, i64 -8     ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !26
  %i.gy = and i64 %i.gx, %i.fy
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !26
  br label %_ZN4llvm5APInt6negateEv.exit

_ZN4llvm5APInt6negateEv.exit:                     ; preds = %.thread.i.i, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i, %_ZN4llvm5APIntD2Ev.exit44
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !23 ; 6 uses
  %i.hb = icmp ult i32 %i.ha, 65
  br i1 %i.hb, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i79, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm5APInt6negateEv.exit
  %i.hc = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.hd = zext i32 %i.ha to i64
  %i.he = add nuw nsw i64 %i.hd, 63
  %i.hf = lshr i64 %i.he, 6                       ; 6 uses
  %min.iters.check226 = icmp ult i32 %i.ha, 193
  br i1 %min.iters.check226, label %.lr.ph.i.i.i.i66.preheader, label %vector.ph227

vector.ph227:                                     ; preds = %bb.l
  %n.vec228 = and i64 %i.hf, 134217724            ; 3 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next233, %vector.body229 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %index230 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %wide.load231 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !26
  %wide.load232 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !26
  %i.hi = xor <2 x i64> %wide.load231, splat (i64 -1)
  %i.hj = xor <2 x i64> %wide.load232, splat (i64 -1)
  store <2 x i64> %i.hi, ptr %i.hg, align 8, !tbaa !26
  store <2 x i64> %i.hj, ptr %i.hh, align 8, !tbaa !26
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next233, %n.vec228
  br i1 %i.hk, label %middle.block234, label %vector.body229, !llvm.loop !368

middle.block234:                                  ; preds = %vector.body229
  %cmp.n235 = icmp eq i64 %i.hf, %n.vec228
  br i1 %cmp.n235, label %.lr.ph.preheader.i.i.i.i70, label %.lr.ph.i.i.i.i66.preheader

.lr.ph.i.i.i.i66.preheader:                       ; preds = %bb.l, %middle.block234
  %indvars.iv.i.i.i.i67.ph = phi i64 [ 0, %bb.l ], [ %n.vec228, %middle.block234 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %indvars.iv.i.i.i.i67 = phi i64 [ %indvars.iv.next.i.i.i.i68, %.lr.ph.i.i.i.i66 ], [ %indvars.iv.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i.i.i.i67 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !26
  %i.hn = xor i64 %i.hm, -1
  store i64 %i.hn, ptr %i.hl, align 8, !tbaa !26
  %indvars.iv.next.i.i.i.i68 = add nuw nsw i64 %indvars.iv.i.i.i.i67, 1 ; 2 uses
  %exitcond.not.i.i.i.i69 = icmp eq i64 %indvars.iv.next.i.i.i.i68, %i.hf
  br i1 %exitcond.not.i.i.i.i69, label %.lr.ph.preheader.i.i.i.i70, label %.lr.ph.i.i.i.i66, !llvm.loop !369

.lr.ph.preheader.i.i.i.i70:                       ; preds = %.lr.ph.i.i.i.i66, %middle.block234
  %i.ho = sub i32 0, %i.ha
  %i.hp = and i32 %i.ho, 63
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = lshr i64 -1, %i.hq                      ; 2 uses
  %i.hs = load ptr, ptr %3, align 8, !tbaa !24
  %i.ht = getelementptr [8 x i8], ptr %i.hs, i64 %i.hf
  %i.hu = getelementptr i8, ptr %i.ht, i64 -8     ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !26
  %i.hw = and i64 %i.hv, %i.hr
  store i64 %i.hw, ptr %i.hu, align 8, !tbaa !26
  %i.hx = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !26
  %i.hz = add i64 %i.hy, 1                        ; 2 uses
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !26
  %.not.peel.i.i.i.i71 = icmp eq i64 %i.hz, 0
  br i1 %.not.peel.i.i.i.i71, label %.lr.ph.i.i.i2.i73, label %.thread.i.i72

.lr.ph.i.i.i2.i73:                                ; preds = %.lr.ph.preheader.i.i.i.i70, %.lr.ph.i.i.i2.i73
  %indvars.iv.i.i.i3.i74 = phi i64 [ %indvars.iv.next.i.i.i4.i76, %.lr.ph.i.i.i2.i73 ], [ 1, %.lr.ph.preheader.i.i.i.i70 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.i.i.i3.i74 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !26
  %i.ic = add i64 %i.ib, 1                        ; 2 uses
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !26
  %.not.i.i.i.i75 = icmp ne i64 %i.ic, 0
  %indvars.iv.next.i.i.i4.i76 = add nuw nsw i64 %indvars.iv.i.i.i3.i74, 1 ; 2 uses
  %exitcond.not.i.i.i5.i77 = icmp eq i64 %indvars.iv.next.i.i.i4.i76, %i.hf
  %or.cond.i.i78 = select i1 %.not.i.i.i.i75, i1 true, i1 %exitcond.not.i.i.i5.i77
  br i1 %or.cond.i.i78, label %.thread.i.i72, label %.lr.ph.i.i.i2.i73, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i79: ; preds = %_ZN4llvm5APInt6negateEv.exit
  %i.id = load i64, ptr %3, align 8, !tbaa !24
  %i.ie = xor i64 %i.id, -1
  %i.if = sub nsw i32 0, %i.ha
  %i.ig = and i32 %i.if, 63
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = lshr i64 -1, %i.ih
  %i.ij = icmp eq i32 %i.ha, 0
  %spec.select.i.i80 = select i1 %i.ij, i64 0, i64 %i.ii ; 2 uses
  %i.ik = and i64 %spec.select.i.i80, %i.ie
  %i.il = add i64 %i.ik, 1
  %i.im = and i64 %i.il, %spec.select.i.i80
  store i64 %i.im, ptr %3, align 8, !tbaa !24
  br label %_ZN4llvm5APInt6negateEv.exit81

.thread.i.i72:                                    ; preds = %.lr.ph.i.i.i2.i73, %.lr.ph.preheader.i.i.i.i70
  %i.in = load ptr, ptr %3, align 8, !tbaa !24
  %i.io = getelementptr [8 x i8], ptr %i.in, i64 %i.hf
  %i.ip = getelementptr i8, ptr %i.io, i64 -8     ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !26
  %i.ir = and i64 %i.iq, %i.hr
  store i64 %i.ir, ptr %i.ip, align 8, !tbaa !26
  br label %_ZN4llvm5APInt6negateEv.exit81

bb.m:                                             ; preds = %bb.a
  %i.is = ptrtoint ptr %i.v to i64
  br i1 %.not162, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  br i1 %i.u, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i99, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.it = zext i32 %i.p to i64
  %i.iu = add nuw nsw i64 %i.it, 63               ; 2 uses
  %i.iv = lshr i64 %i.iu, 3
  %i.iw = and i64 %i.iv, 1073741816               ; 2 uses
  %i.ix = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.iw) #21 ; 8 uses
  %i.iy = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ix, ptr align 8 %i.iy, i64 %i.iw, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.iz = lshr i64 %i.iu, 6                       ; 5 uses
  %min.iters.check238 = icmp ult i32 %i.p, 193
  br i1 %min.iters.check238, label %.lr.ph.i.i.i.i.i85.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %bb.o
  %n.vec240 = and i64 %i.iz, 134217724            ; 3 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next245, %vector.body241 ] ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %index242 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %wide.load243 = load <2 x i64>, ptr %i.ja, align 8, !tbaa !26, !noalias !379
  %wide.load244 = load <2 x i64>, ptr %i.jb, align 8, !tbaa !26, !noalias !379
  %i.jc = xor <2 x i64> %wide.load243, splat (i64 -1)
  %i.jd = xor <2 x i64> %wide.load244, splat (i64 -1)
  store <2 x i64> %i.jc, ptr %i.ja, align 8, !tbaa !26, !noalias !379
  store <2 x i64> %i.jd, ptr %i.jb, align 8, !tbaa !26, !noalias !379
  %index.next245 = add nuw i64 %index242, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next245, %n.vec240
  br i1 %i.je, label %middle.block246, label %vector.body241, !llvm.loop !372

middle.block246:                                  ; preds = %vector.body241
  %cmp.n247 = icmp eq i64 %i.iz, %n.vec240
  br i1 %cmp.n247, label %.lr.ph.preheader.i.i.i.i.i89, label %.lr.ph.i.i.i.i.i85.preheader

.lr.ph.i.i.i.i.i85.preheader:                     ; preds = %bb.o, %middle.block246
  %indvars.iv.i.i.i.i.i86.ph = phi i64 [ 0, %bb.o ], [ %n.vec240, %middle.block246 ]
  br label %.lr.ph.i.i.i.i.i85

.lr.ph.i.i.i.i.i85:                               ; preds = %.lr.ph.i.i.i.i.i85.preheader, %.lr.ph.i.i.i.i.i85
  %indvars.iv.i.i.i.i.i86 = phi i64 [ %indvars.iv.next.i.i.i.i.i87, %.lr.ph.i.i.i.i.i85 ], [ %indvars.iv.i.i.i.i.i86.ph, %.lr.ph.i.i.i.i.i85.preheader ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv.i.i.i.i.i86 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !26, !noalias !379
  %i.jh = xor i64 %i.jg, -1
  store i64 %i.jh, ptr %i.jf, align 8, !tbaa !26, !noalias !379
  %indvars.iv.next.i.i.i.i.i87 = add nuw nsw i64 %indvars.iv.i.i.i.i.i86, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i88 = icmp eq i64 %indvars.iv.next.i.i.i.i.i87, %i.iz
  br i1 %exitcond.not.i.i.i.i.i88, label %.lr.ph.preheader.i.i.i.i.i89, label %.lr.ph.i.i.i.i.i85, !llvm.loop !373

.lr.ph.preheader.i.i.i.i.i89:                     ; preds = %.lr.ph.i.i.i.i.i85, %middle.block246
  %i.ji = ptrtoint ptr %i.ix to i64
  %i.jj = sub i32 0, %i.p
  %i.jk = and i32 %i.jj, 63
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = lshr i64 -1, %i.jl                      ; 2 uses
  %i.jn = getelementptr [8 x i8], ptr %i.ix, i64 %i.iz
  %i.jo = getelementptr i8, ptr %i.jn, i64 -8     ; 4 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !26, !noalias !379
  %i.jq = and i64 %i.jp, %i.jm
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !26, !noalias !379
  %i.jr = load i64, ptr %i.ix, align 8, !tbaa !26, !noalias !379
  %i.js = add i64 %i.jr, 1                        ; 2 uses
  store i64 %i.js, ptr %i.ix, align 8, !tbaa !26, !noalias !379
  %.not.peel.i.i.i.i.i90 = icmp eq i64 %i.js, 0
  br i1 %.not.peel.i.i.i.i.i90, label %.lr.ph.i.i.i2.i.i93, label %.thread.i.i.i91

.lr.ph.i.i.i2.i.i93:                              ; preds = %.lr.ph.preheader.i.i.i.i.i89, %.lr.ph.i.i.i2.i.i93
  %indvars.iv.i.i.i3.i.i94 = phi i64 [ %indvars.iv.next.i.i.i4.i.i96, %.lr.ph.i.i.i2.i.i93 ], [ 1, %.lr.ph.preheader.i.i.i.i.i89 ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv.i.i.i3.i.i94 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !26, !noalias !379
  %i.jv = add i64 %i.ju, 1                        ; 2 uses
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !26, !noalias !379
  %.not.i.i.i.i.i95 = icmp ne i64 %i.jv, 0
  %indvars.iv.next.i.i.i4.i.i96 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i94, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i97 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i96, %i.iz
  %or.cond.i.i.i98 = select i1 %.not.i.i.i.i.i95, i1 true, i1 %exitcond.not.i.i.i5.i.i97
  br i1 %or.cond.i.i.i98, label %.thread.i.i.i91, label %.lr.ph.i.i.i2.i.i93, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i99: ; preds = %bb.n
  %i.jw = xor i64 %i.is, -1
  %i.jx = sub nsw i32 0, %i.p
  %i.jy = and i32 %i.jx, 63
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = lshr i64 -1, %i.jz
  %i.kb = icmp eq i32 %i.p, 0
  %spec.select.i.i.i100 = select i1 %i.kb, i64 0, i64 %i.ka ; 2 uses
  %i.kc = and i64 %spec.select.i.i.i100, %i.jw
  %i.kd = add i64 %i.kc, 1
  %i.ke = and i64 %i.kd, %spec.select.i.i.i100
  br label %_ZN4llvmngENS_5APIntE.exit101

.thread.i.i.i91:                                  ; preds = %.lr.ph.i.i.i2.i.i93, %.lr.ph.preheader.i.i.i.i.i89
  %i.kf = load i64, ptr %i.jo, align 8, !tbaa !26, !noalias !379
  %i.kg = and i64 %i.kf, %i.jm
  store i64 %i.kg, ptr %i.jo, align 8, !tbaa !26, !noalias !379
  br label %_ZN4llvmngENS_5APIntE.exit101

_ZN4llvmngENS_5APIntE.exit101:                    ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i99, %.thread.i.i.i91
  %.sroa.0.1 = phi i64 [ %i.ke, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i99 ], [ %i.ji, %.thread.i.i.i91 ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.p, ptr %i.kh, align 8, !tbaa !23, !alias.scope !379
  store i64 %.sroa.0.1, ptr %7, align 8, !alias.scope !379
  call void @_ZN4llvm5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  %i.ki = icmp ult i32 %i.p, 65
  %i.kj = icmp eq i64 %.sroa.0.1, 0
  %or.cond187 = select i1 %i.ki, i1 true, i1 %i.kj
  br i1 %or.cond187, label %_ZN4llvm5APIntD2Ev.exit103, label %bb.p

bb.p:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit101
  %i.kk = inttoptr i64 %.sroa.0.1 to ptr
  tail call void @_ZdaPv(ptr noundef nonnull %i.kk) #22
  br label %_ZN4llvm5APIntD2Ev.exit103

_ZN4llvm5APIntD2Ev.exit103:                       ; preds = %bb.p, %_ZN4llvmngENS_5APIntE.exit101
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !23 ; 6 uses
  %i.kn = icmp ult i32 %i.km, 65
  br i1 %i.kn, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i117, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit103
  %i.ko = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.kp = zext i32 %i.km to i64
  %i.kq = add nuw nsw i64 %i.kp, 63
  %i.kr = lshr i64 %i.kq, 6                       ; 6 uses
  %min.iters.check250 = icmp ult i32 %i.km, 193
  br i1 %min.iters.check250, label %.lr.ph.i.i.i.i104.preheader, label %vector.ph251

vector.ph251:                                     ; preds = %bb.q
  %n.vec252 = and i64 %i.kr, 134217724            ; 3 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph251
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next257, %vector.body253 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %index254 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16 ; 2 uses
  %wide.load255 = load <2 x i64>, ptr %i.ks, align 8, !tbaa !26
  %wide.load256 = load <2 x i64>, ptr %i.kt, align 8, !tbaa !26
  %i.ku = xor <2 x i64> %wide.load255, splat (i64 -1)
  %i.kv = xor <2 x i64> %wide.load256, splat (i64 -1)
  store <2 x i64> %i.ku, ptr %i.ks, align 8, !tbaa !26
  store <2 x i64> %i.kv, ptr %i.kt, align 8, !tbaa !26
  %index.next257 = add nuw i64 %index254, 4       ; 2 uses
  %i.kw = icmp eq i64 %index.next257, %n.vec252
  br i1 %i.kw, label %middle.block258, label %vector.body253, !llvm.loop !374

middle.block258:                                  ; preds = %vector.body253
  %cmp.n259 = icmp eq i64 %i.kr, %n.vec252
  br i1 %cmp.n259, label %.lr.ph.preheader.i.i.i.i108, label %.lr.ph.i.i.i.i104.preheader

.lr.ph.i.i.i.i104.preheader:                      ; preds = %bb.q, %middle.block258
  %indvars.iv.i.i.i.i105.ph = phi i64 [ 0, %bb.q ], [ %n.vec252, %middle.block258 ]
  br label %.lr.ph.i.i.i.i104

.lr.ph.i.i.i.i104:                                ; preds = %.lr.ph.i.i.i.i104.preheader, %.lr.ph.i.i.i.i104
  %indvars.iv.i.i.i.i105 = phi i64 [ %indvars.iv.next.i.i.i.i106, %.lr.ph.i.i.i.i104 ], [ %indvars.iv.i.i.i.i105.ph, %.lr.ph.i.i.i.i104.preheader ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %indvars.iv.i.i.i.i105 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !26
  %i.kz = xor i64 %i.ky, -1
  store i64 %i.kz, ptr %i.kx, align 8, !tbaa !26
  %indvars.iv.next.i.i.i.i106 = add nuw nsw i64 %indvars.iv.i.i.i.i105, 1 ; 2 uses
  %exitcond.not.i.i.i.i107 = icmp eq i64 %indvars.iv.next.i.i.i.i106, %i.kr
  br i1 %exitcond.not.i.i.i.i107, label %.lr.ph.preheader.i.i.i.i108, label %.lr.ph.i.i.i.i104, !llvm.loop !375

.lr.ph.preheader.i.i.i.i108:                      ; preds = %.lr.ph.i.i.i.i104, %middle.block258
  %i.la = sub i32 0, %i.km
  %i.lb = and i32 %i.la, 63
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = lshr i64 -1, %i.lc                      ; 2 uses
  %i.le = load ptr, ptr %2, align 8, !tbaa !24
  %i.lf = getelementptr [8 x i8], ptr %i.le, i64 %i.kr
  %i.lg = getelementptr i8, ptr %i.lf, i64 -8     ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !26
  %i.li = and i64 %i.lh, %i.ld
  store i64 %i.li, ptr %i.lg, align 8, !tbaa !26
  %i.lj = load ptr, ptr %2, align 8, !tbaa !24    ; 3 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !26
  %i.ll = add i64 %i.lk, 1                        ; 2 uses
  store i64 %i.ll, ptr %i.lj, align 8, !tbaa !26
  %.not.peel.i.i.i.i109 = icmp eq i64 %i.ll, 0
  br i1 %.not.peel.i.i.i.i109, label %.lr.ph.i.i.i2.i111, label %.thread.i.i110

.lr.ph.i.i.i2.i111:                               ; preds = %.lr.ph.preheader.i.i.i.i108, %.lr.ph.i.i.i2.i111
  %indvars.iv.i.i.i3.i112 = phi i64 [ %indvars.iv.next.i.i.i4.i114, %.lr.ph.i.i.i2.i111 ], [ 1, %.lr.ph.preheader.i.i.i.i108 ] ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i.i.i3.i112 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !26
  %i.lo = add i64 %i.ln, 1                        ; 2 uses
  store i64 %i.lo, ptr %i.lm, align 8, !tbaa !26
  %.not.i.i.i.i113 = icmp ne i64 %i.lo, 0
  %indvars.iv.next.i.i.i4.i114 = add nuw nsw i64 %indvars.iv.i.i.i3.i112, 1 ; 2 uses
  %exitcond.not.i.i.i5.i115 = icmp eq i64 %indvars.iv.next.i.i.i4.i114, %i.kr
  %or.cond.i.i116 = select i1 %.not.i.i.i.i113, i1 true, i1 %exitcond.not.i.i.i5.i115
  br i1 %or.cond.i.i116, label %.thread.i.i110, label %.lr.ph.i.i.i2.i111, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i117: ; preds = %_ZN4llvm5APIntD2Ev.exit103
  %i.lp = load i64, ptr %2, align 8, !tbaa !24
  %i.lq = xor i64 %i.lp, -1
  %i.lr = sub nsw i32 0, %i.km
  %i.ls = and i32 %i.lr, 63
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = lshr i64 -1, %i.lt
  %i.lv = icmp eq i32 %i.km, 0
  %spec.select.i.i118 = select i1 %i.lv, i64 0, i64 %i.lu ; 2 uses
  %i.lw = and i64 %spec.select.i.i118, %i.lq
  %i.lx = add i64 %i.lw, 1
  %i.ly = and i64 %i.lx, %spec.select.i.i118
  store i64 %i.ly, ptr %2, align 8, !tbaa !24
  br label %_ZN4llvm5APInt6negateEv.exit81

.thread.i.i110:                                   ; preds = %.lr.ph.i.i.i2.i111, %.lr.ph.preheader.i.i.i.i108
  %i.lz = load ptr, ptr %2, align 8, !tbaa !24
  %i.ma = getelementptr [8 x i8], ptr %i.lz, i64 %i.kr
  %i.mb = getelementptr i8, ptr %i.ma, i64 -8     ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !26
  %i.md = and i64 %i.mc, %i.ld
  store i64 %i.md, ptr %i.mb, align 8, !tbaa !26
  br label %_ZN4llvm5APInt6negateEv.exit81

bb.r:                                             ; preds = %bb.m
  tail call void @_ZN4llvm5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  br label %_ZN4llvm5APInt6negateEv.exit81

_ZN4llvm5APInt6negateEv.exit81:                   ; preds = %.thread.i.i110, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i117, %.thread.i.i72, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i79, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm5APInt7sdivremERKS0_lRS0_Rl(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(12) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load i64, ptr %3, align 8, !tbaa !26
  store i64 %i.b, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23   ; 16 uses
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = and i32 %i.e, 63
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = icmp ult i32 %i.d, 65                    ; 3 uses
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = lshr i32 %i.e, 6
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %.in.i.i.i = select i1 %i.i, ptr %0, ptr %i.m
  %i.n = load i64, ptr %.in.i.i.i, align 8, !tbaa !24
  %i.o = and i64 %i.h, %i.n
  %.not = icmp eq i64 %i.o, 0
  %i.p = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.q = icmp slt i64 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  br i1 %i.i, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = zext i32 %i.d to i64
  %i.s = add nuw nsw i64 %i.r, 63                 ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741816                 ; 2 uses
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #21 ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.w, i64 %i.u, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.x = lshr i64 %i.s, 6                         ; 5 uses
  %min.iters.check105 = icmp ult i32 %i.d, 193
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %bb.d
  %n.vec107 = and i64 %i.x, 134217724             ; 3 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next112, %vector.body108 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index109 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load110 = load <2 x i64>, ptr %i.y, align 8, !tbaa !26, !noalias !392
  %wide.load111 = load <2 x i64>, ptr %i.z, align 8, !tbaa !26, !noalias !392
  %i.aa = xor <2 x i64> %wide.load110, splat (i64 -1)
  %i.ab = xor <2 x i64> %wide.load111, splat (i64 -1)
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !26, !noalias !392
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !26, !noalias !392
  %index.next112 = add nuw i64 %index109, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.ac, label %middle.block113, label %vector.body108, !llvm.loop !382

middle.block113:                                  ; preds = %vector.body108
  %cmp.n114 = icmp eq i64 %i.x, %n.vec107
  br i1 %cmp.n114, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block113
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec107, %middle.block113 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26, !noalias !392
  %i.af = xor i64 %i.ae, -1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !26, !noalias !392
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.x
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !383

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block113
  %i.ag = ptrtoint ptr %i.v to i64
  %i.ah = sub i32 0, %i.d
  %i.ai = and i32 %i.ah, 63
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = lshr i64 -1, %i.aj                      ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.v, i64 %i.x
  %i.am = getelementptr i8, ptr %i.al, i64 -8     ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !26, !noalias !392
  %i.ao = and i64 %i.an, %i.ak
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !26, !noalias !392
  %i.ap = load i64, ptr %i.v, align 8, !tbaa !26, !noalias !392
  %i.aq = add i64 %i.ap, 1                        ; 2 uses
  store i64 %i.aq, ptr %i.v, align 8, !tbaa !26, !noalias !392
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !26, !noalias !392
  %i.at = add i64 %i.as, 1                        ; 2 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !26, !noalias !392
  %.not.i.i.i.i.i = icmp ne i64 %i.at, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.x
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.c
  %i.au = xor i64 %i.p, -1
  %i.av = sub nsw i32 0, %i.d
  %i.aw = and i32 %i.av, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = lshr i64 -1, %i.ax
  %i.az = icmp eq i32 %i.d, 0
  %spec.select.i.i.i = select i1 %i.az, i64 0, i64 %i.ay ; 2 uses
  %i.ba = and i64 %spec.select.i.i.i, %i.au
  %i.bb = add i64 %i.ba, 1
  %i.bc = and i64 %i.bb, %spec.select.i.i.i
  br label %_ZN4llvmngENS_5APIntE.exit

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !26, !noalias !392
  %i.be = and i64 %i.bd, %i.ak
  store i64 %i.be, ptr %i.am, align 8, !tbaa !26, !noalias !392
  br label %_ZN4llvmngENS_5APIntE.exit

_ZN4llvmngENS_5APIntE.exit:                       ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, %.thread.i.i.i
  %.sroa.063.1 = phi i64 [ %i.bc, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %i.ag, %.thread.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.d, ptr %i.bf, align 8, !tbaa !23, !alias.scope !392
  store i64 %.sroa.063.1, ptr %4, align 8, !alias.scope !392
  %i.bg = sub nsw i64 0, %1
  call void @_ZN4llvm5APInt7udivremERKS0_mRS0_Rm(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bh = icmp ult i32 %i.d, 65
  %i.bi = icmp eq i64 %.sroa.063.1, 0
  %or.cond = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit18, label %bb.e

bb.e:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit
  %i.bj = inttoptr i64 %.sroa.063.1 to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #22
  br label %_ZN4llvm5APIntD2Ev.exit18

_ZN4llvm5APIntD2Ev.exit18:                        ; preds = %bb.e, %_ZN4llvmngENS_5APIntE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN4llvm5APInt6negateEv.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  br i1 %i.i, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i35, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = zext i32 %i.d to i64
  %i.bl = add nuw nsw i64 %i.bk, 63               ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = and i64 %i.bm, 1073741816               ; 2 uses
  %i.bo = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bn) #21 ; 8 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 8 %i.bp, i64 %i.bn, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.bq = lshr i64 %i.bl, 6                       ; 5 uses
  %min.iters.check = icmp ult i32 %i.d, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i21.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %i.bq, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.br, align 8, !tbaa !26, !noalias !393
  %wide.load91 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !26, !noalias !393
  %i.bt = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bu = xor <2 x i64> %wide.load91, splat (i64 -1)
  store <2 x i64> %i.bt, ptr %i.br, align 8, !tbaa !26, !noalias !393
  store <2 x i64> %i.bu, ptr %i.bs, align 8, !tbaa !26, !noalias !393
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !386

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i25, label %.lr.ph.i.i.i.i.i21.preheader

.lr.ph.i.i.i.i.i21.preheader:                     ; preds = %bb.g, %middle.block
  %indvars.iv.i.i.i.i.i22.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %.lr.ph.i.i.i.i.i21.preheader, %.lr.ph.i.i.i.i.i21
  %indvars.iv.i.i.i.i.i22 = phi i64 [ %indvars.iv.next.i.i.i.i.i23, %.lr.ph.i.i.i.i.i21 ], [ %indvars.iv.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i21.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i.i.i22 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !26, !noalias !393
  %i.by = xor i64 %i.bx, -1
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !26, !noalias !393
  %indvars.iv.next.i.i.i.i.i23 = add nuw nsw i64 %indvars.iv.i.i.i.i.i22, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i24 = icmp eq i64 %indvars.iv.next.i.i.i.i.i23, %i.bq
  br i1 %exitcond.not.i.i.i.i.i24, label %.lr.ph.preheader.i.i.i.i.i25, label %.lr.ph.i.i.i.i.i21, !llvm.loop !387

.lr.ph.preheader.i.i.i.i.i25:                     ; preds = %.lr.ph.i.i.i.i.i21, %middle.block
  %i.bz = ptrtoint ptr %i.bo to i64
  %i.ca = sub i32 0, %i.d
  %i.cb = and i32 %i.ca, 63
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = lshr i64 -1, %i.cc                      ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bo, i64 %i.bq
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8     ; 4 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !26, !noalias !393
  %i.ch = and i64 %i.cg, %i.cd
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !26, !noalias !393
  %i.ci = load i64, ptr %i.bo, align 8, !tbaa !26, !noalias !393
  %i.cj = add i64 %i.ci, 1                        ; 2 uses
  store i64 %i.cj, ptr %i.bo, align 8, !tbaa !26, !noalias !393
  %.not.peel.i.i.i.i.i26 = icmp eq i64 %i.cj, 0
  br i1 %.not.peel.i.i.i.i.i26, label %.lr.ph.i.i.i2.i.i29, label %.thread.i.i.i27

.lr.ph.i.i.i2.i.i29:                              ; preds = %.lr.ph.preheader.i.i.i.i.i25, %.lr.ph.i.i.i2.i.i29
  %indvars.iv.i.i.i3.i.i30 = phi i64 [ %indvars.iv.next.i.i.i4.i.i32, %.lr.ph.i.i.i2.i.i29 ], [ 1, %.lr.ph.preheader.i.i.i.i.i25 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i3.i.i30 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !26, !noalias !393
  %i.cm = add i64 %i.cl, 1                        ; 2 uses
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !26, !noalias !393
  %.not.i.i.i.i.i31 = icmp ne i64 %i.cm, 0
  %indvars.iv.next.i.i.i4.i.i32 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i30, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i33 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i32, %i.bq
  %or.cond.i.i.i34 = select i1 %.not.i.i.i.i.i31, i1 true, i1 %exitcond.not.i.i.i5.i.i33
  br i1 %or.cond.i.i.i34, label %.thread.i.i.i27, label %.lr.ph.i.i.i2.i.i29, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i35: ; preds = %bb.f
  %i.cn = xor i64 %i.p, -1
  %i.co = sub nsw i32 0, %i.d
  %i.cp = and i32 %i.co, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = lshr i64 -1, %i.cq
  %i.cs = icmp eq i32 %i.d, 0
  %spec.select.i.i.i36 = select i1 %i.cs, i64 0, i64 %i.cr ; 2 uses
  %i.ct = and i64 %spec.select.i.i.i36, %i.cn
  %i.cu = add i64 %i.ct, 1
  %i.cv = and i64 %i.cu, %spec.select.i.i.i36
  br label %_ZN4llvmngENS_5APIntE.exit37

.thread.i.i.i27:                                  ; preds = %.lr.ph.i.i.i2.i.i29, %.lr.ph.preheader.i.i.i.i.i25
  %i.cw = load i64, ptr %i.cf, align 8, !tbaa !26, !noalias !393
  %i.cx = and i64 %i.cw, %i.cd
  store i64 %i.cx, ptr %i.cf, align 8, !tbaa !26, !noalias !393
  br label %_ZN4llvmngENS_5APIntE.exit37

_ZN4llvmngENS_5APIntE.exit37:                     ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i35, %.thread.i.i.i27
  %.sroa.0.1 = phi i64 [ %i.cv, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i35 ], [ %i.bz, %.thread.i.i.i27 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.d, ptr %i.cy, align 8, !tbaa !23, !alias.scope !393
  store i64 %.sroa.0.1, ptr %5, align 8, !alias.scope !393
  call void @_ZN4llvm5APInt7udivremERKS0_mRS0_Rm(ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cz = icmp ult i32 %i.d, 65
  %i.da = icmp eq i64 %.sroa.0.1, 0
  %or.cond90 = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond90, label %_ZN4llvm5APIntD2Ev.exit39, label %bb.h

bb.h:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit37
  %i.db = inttoptr i64 %.sroa.0.1 to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.db) #22
  br label %_ZN4llvm5APIntD2Ev.exit39

_ZN4llvm5APIntD2Ev.exit39:                        ; preds = %bb.h, %_ZN4llvmngENS_5APIntE.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !23 ; 6 uses
  %i.de = icmp ult i32 %i.dd, 65
  br i1 %i.de, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit39
  %i.df = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.dg = zext i32 %i.dd to i64
  %i.dh = add nuw nsw i64 %i.dg, 63
  %i.di = lshr i64 %i.dh, 6                       ; 6 uses
  %min.iters.check93 = icmp ult i32 %i.dd, 193
  br i1 %min.iters.check93, label %.lr.ph.i.i.i.i.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %bb.i
  %n.vec95 = and i64 %i.di, 134217724             ; 3 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next100, %vector.body96 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index97 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load98 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !26
  %wide.load99 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !26
  %i.dl = xor <2 x i64> %wide.load98, splat (i64 -1)
  %i.dm = xor <2 x i64> %wide.load99, splat (i64 -1)
  store <2 x i64> %i.dl, ptr %i.dj, align 8, !tbaa !26
  store <2 x i64> %i.dm, ptr %i.dk, align 8, !tbaa !26
  %index.next100 = add nuw i64 %index97, 4        ; 2 uses
  %i.dn = icmp eq i64 %index.next100, %n.vec95
  br i1 %i.dn, label %middle.block101, label %vector.body96, !llvm.loop !388

middle.block101:                                  ; preds = %vector.body96
  %cmp.n102 = icmp eq i64 %i.di, %n.vec95
  br i1 %cmp.n102, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i, %middle.block101
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %bb.i ], [ %n.vec95, %middle.block101 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !26
  %i.dq = xor i64 %i.dp, -1
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !26
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.di
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !389

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %middle.block101
  %i.dr = sub i32 0, %i.dd
  %i.ds = and i32 %i.dr, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = lshr i64 -1, %i.dt                      ; 2 uses
  %i.dv = load ptr, ptr %2, align 8, !tbaa !24
  %i.dw = getelementptr [8 x i8], ptr %i.dv, i64 %i.di
  %i.dx = getelementptr i8, ptr %i.dw, i64 -8     ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !26
  %i.dz = and i64 %i.dy, %i.du
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !26
  %i.ea = load ptr, ptr %2, align 8, !tbaa !24    ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !26
  %i.ec = add i64 %i.eb, 1                        ; 2 uses
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !26
  %.not.peel.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.peel.i.i.i.i, label %.lr.ph.i.i.i2.i, label %.thread.i.i

.lr.ph.i.i.i2.i:                                  ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i2.i
  %indvars.iv.i.i.i3.i = phi i64 [ %indvars.iv.next.i.i.i4.i, %.lr.ph.i.i.i2.i ], [ 1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i.i.i3.i ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !26
  %i.ef = add i64 %i.ee, 1                        ; 2 uses
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !26
  %.not.i.i.i.i = icmp ne i64 %i.ef, 0
  %indvars.iv.next.i.i.i4.i = add nuw nsw i64 %indvars.iv.i.i.i3.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i = icmp eq i64 %indvars.iv.next.i.i.i4.i, %i.di
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i
  br i1 %or.cond.i.i, label %.thread.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i: ; preds = %_ZN4llvm5APIntD2Ev.exit39
  %i.eg = load i64, ptr %2, align 8, !tbaa !24
  %i.eh = xor i64 %i.eg, -1
  %i.ei = sub nsw i32 0, %i.dd
  %i.ej = and i32 %i.ei, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = lshr i64 -1, %i.ek
  %i.em = icmp eq i32 %i.dd, 0
  %spec.select.i.i = select i1 %i.em, i64 0, i64 %i.el ; 2 uses
  %i.en = and i64 %spec.select.i.i, %i.eh
  %i.eo = add i64 %i.en, 1
  %i.ep = and i64 %i.eo, %spec.select.i.i
  store i64 %i.ep, ptr %2, align 8, !tbaa !24
  br label %_ZN4llvm5APInt6negateEv.exit

.thread.i.i:                                      ; preds = %.lr.ph.i.i.i2.i, %.lr.ph.preheader.i.i.i.i
  %i.eq = load ptr, ptr %2, align 8, !tbaa !24
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %i.di
  %i.es = getelementptr i8, ptr %i.er, i64 -8     ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !26
  %i.eu = and i64 %i.et, %i.du
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !26
  br label %_ZN4llvm5APInt6negateEv.exit

_ZN4llvm5APInt6negateEv.exit:                     ; preds = %.thread.i.i, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i, %_ZN4llvm5APIntD2Ev.exit18
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !26
  %i.ew = sub i64 0, %i.ev
  store i64 %i.ew, ptr %i.a, align 8, !tbaa !26
  br label %_ZN4llvm5APInt6negateEv.exit55

bb.j:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ex = sub nsw i64 0, %1
  call void @_ZN4llvm5APInt7udivremERKS0_mRS0_Rm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !23 ; 6 uses
  %i.fa = icmp ult i32 %i.ez, 65
  br i1 %i.fa, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i53, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fb = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.fc = zext i32 %i.ez to i64
  %i.fd = add nuw nsw i64 %i.fc, 63
  %i.fe = lshr i64 %i.fd, 6                       ; 6 uses
  %min.iters.check117 = icmp ult i32 %i.ez, 193
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i40.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %bb.l
  %n.vec119 = and i64 %i.fe, 134217724            ; 3 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next124, %vector.body120 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index121 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %wide.load122 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !26
  %wide.load123 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !26
  %i.fh = xor <2 x i64> %wide.load122, splat (i64 -1)
  %i.fi = xor <2 x i64> %wide.load123, splat (i64 -1)
  store <2 x i64> %i.fh, ptr %i.ff, align 8, !tbaa !26
  store <2 x i64> %i.fi, ptr %i.fg, align 8, !tbaa !26
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next124, %n.vec119
  br i1 %i.fj, label %middle.block125, label %vector.body120, !llvm.loop !390

middle.block125:                                  ; preds = %vector.body120
  %cmp.n126 = icmp eq i64 %i.fe, %n.vec119
  br i1 %cmp.n126, label %.lr.ph.preheader.i.i.i.i44, label %.lr.ph.i.i.i.i40.preheader

.lr.ph.i.i.i.i40.preheader:                       ; preds = %bb.l, %middle.block125
  %indvars.iv.i.i.i.i41.ph = phi i64 [ 0, %bb.l ], [ %n.vec119, %middle.block125 ]
  br label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %.lr.ph.i.i.i.i40.preheader, %.lr.ph.i.i.i.i40
  %indvars.iv.i.i.i.i41 = phi i64 [ %indvars.iv.next.i.i.i.i42, %.lr.ph.i.i.i.i40 ], [ %indvars.iv.i.i.i.i41.ph, %.lr.ph.i.i.i.i40.preheader ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.i.i.i.i41 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  %i.fm = xor i64 %i.fl, -1
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !26
  %indvars.iv.next.i.i.i.i42 = add nuw nsw i64 %indvars.iv.i.i.i.i41, 1 ; 2 uses
  %exitcond.not.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i42, %i.fe
  br i1 %exitcond.not.i.i.i.i43, label %.lr.ph.preheader.i.i.i.i44, label %.lr.ph.i.i.i.i40, !llvm.loop !391

.lr.ph.preheader.i.i.i.i44:                       ; preds = %.lr.ph.i.i.i.i40, %middle.block125
  %i.fn = sub i32 0, %i.ez
  %i.fo = and i32 %i.fn, 63
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = lshr i64 -1, %i.fp                      ; 2 uses
  %i.fr = load ptr, ptr %2, align 8, !tbaa !24
  %i.fs = getelementptr [8 x i8], ptr %i.fr, i64 %i.fe
  %i.ft = getelementptr i8, ptr %i.fs, i64 -8     ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !26
  %i.fv = and i64 %i.fu, %i.fq
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !26
  %i.fw = load ptr, ptr %2, align 8, !tbaa !24    ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !26
  %i.fy = add i64 %i.fx, 1                        ; 2 uses
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !26
  %.not.peel.i.i.i.i45 = icmp eq i64 %i.fy, 0
  br i1 %.not.peel.i.i.i.i45, label %.lr.ph.i.i.i2.i47, label %.thread.i.i46

.lr.ph.i.i.i2.i47:                                ; preds = %.lr.ph.preheader.i.i.i.i44, %.lr.ph.i.i.i2.i47
  %indvars.iv.i.i.i3.i48 = phi i64 [ %indvars.iv.next.i.i.i4.i50, %.lr.ph.i.i.i2.i47 ], [ 1, %.lr.ph.preheader.i.i.i.i44 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv.i.i.i3.i48 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !26
  %i.gb = add i64 %i.ga, 1                        ; 2 uses
  store i64 %i.gb, ptr %i.fz, align 8, !tbaa !26
  %.not.i.i.i.i49 = icmp ne i64 %i.gb, 0
  %indvars.iv.next.i.i.i4.i50 = add nuw nsw i64 %indvars.iv.i.i.i3.i48, 1 ; 2 uses
  %exitcond.not.i.i.i5.i51 = icmp eq i64 %indvars.iv.next.i.i.i4.i50, %i.fe
  %or.cond.i.i52 = select i1 %.not.i.i.i.i49, i1 true, i1 %exitcond.not.i.i.i5.i51
  br i1 %or.cond.i.i52, label %.thread.i.i46, label %.lr.ph.i.i.i2.i47, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i53: ; preds = %bb.k
  %i.gc = load i64, ptr %2, align 8, !tbaa !24
  %i.gd = xor i64 %i.gc, -1
  %i.ge = sub nsw i32 0, %i.ez
  %i.gf = and i32 %i.ge, 63
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = lshr i64 -1, %i.gg
  %i.gi = icmp eq i32 %i.ez, 0
  %spec.select.i.i54 = select i1 %i.gi, i64 0, i64 %i.gh ; 2 uses
  %i.gj = and i64 %spec.select.i.i54, %i.gd
  %i.gk = add i64 %i.gj, 1
  %i.gl = and i64 %i.gk, %spec.select.i.i54
  store i64 %i.gl, ptr %2, align 8, !tbaa !24
  br label %_ZN4llvm5APInt6negateEv.exit55

.thread.i.i46:                                    ; preds = %.lr.ph.i.i.i2.i47, %.lr.ph.preheader.i.i.i.i44
  %i.gm = load ptr, ptr %2, align 8, !tbaa !24
  %i.gn = getelementptr [8 x i8], ptr %i.gm, i64 %i.fe
  %i.go = getelementptr i8, ptr %i.gn, i64 -8     ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !26
  %i.gq = and i64 %i.gp, %i.fq
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !26
  br label %_ZN4llvm5APInt6negateEv.exit55

bb.m:                                             ; preds = %bb.j
  call void @_ZN4llvm5APInt7udivremERKS0_mRS0_Rm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN4llvm5APInt6negateEv.exit55

_ZN4llvm5APInt6negateEv.exit55:                   ; preds = %.thread.i.i46, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i53, %bb.m, %_ZN4llvm5APInt6negateEv.exit
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.gr, ptr %3, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt7sadd_ovERKS0_Rb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.c, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.d = zext i32 %i.b to i64
  %i.e = add nuw nsw i64 %i.d, 63                 ; 3 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = and i64 %i.f, 1073741816                 ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #21 ; 6 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 8 %i.i, i64 %i.g, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.j = load ptr, ptr %2, align 8, !tbaa !24, !noalias !396 ; 4 uses
  %i.k = lshr i64 %i.e, 6                         ; 4 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.k, 134217726
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %.02021.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i.new ], [ %.1.in.i.i.i.1, %.lr.ph.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26, !noalias !396 ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26, !noalias !396
  %i.q = add i64 %i.p, %i.n                       ; 3 uses
  %i.r = icmp uge i64 %i.q, %i.n
  %i.s = add i64 %i.q, 1                          ; 2 uses
  %i.t = icmp ugt i64 %i.s, %i.n
  %.sink.i.i.i = select i1 %.02021.i.i.i, i64 %i.q, i64 %i.s
  %.1.in.i.i.i = select i1 %.02021.i.i.i, i1 %i.r, i1 %i.t ; 2 uses
  store i64 %.sink.i.i.i, ptr %i.m, align 8, !tbaa !26, !noalias !396
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26, !noalias !396 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26, !noalias !396
  %i.y = add i64 %i.x, %i.v                       ; 3 uses
  %i.z = icmp uge i64 %i.y, %i.v
  %i.aa = add i64 %i.y, 1                         ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, %i.v
  %.sink.i.i.i.1 = select i1 %.1.in.i.i.i, i64 %i.y, i64 %i.aa
  %.1.in.i.i.i.1 = select i1 %.1.in.i.i.i, i1 %i.z, i1 %i.ab ; 2 uses
  store i64 %.sink.i.i.i.1, ptr %i.u, align 8, !tbaa !26, !noalias !396
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !4

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i:    ; preds = %bb.a
  %i.ac = load i64, ptr %1, align 8               ; 2 uses
  %i.ad = load i64, ptr %2, align 8, !noalias !396 ; 2 uses
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = sub nsw i32 0, %i.b
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah
  %i.aj = icmp eq i32 %i.b, 0
  %spec.select.i.i = select i1 %i.aj, i64 0, i64 %i.ai, !prof !39
  %i.ak = and i64 %i.ae, %spec.select.i.i
  %i.al = inttoptr i64 %i.ac to ptr
  %i.am = inttoptr i64 %i.ad to ptr
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa:  ; preds = %.lr.ph.i.i.i
  %i.an = and i64 %i.e, 64
  %lcmp.mod.not = icmp eq i64 %i.an, 0
  br i1 %lcmp.mod.not, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa ] ; 2 uses
  %.02021.i.i.i.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %.1.in.i.i.i.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa ]
  %lcmp.mod19 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26, !noalias !396
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i.i.i.epil.init
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26, !noalias !396
  %i.as = add i64 %i.ar, %i.ap
  %not..02021.i.i.i.epil.init = xor i1 %.02021.i.i.i.epil.init, true
  %i.at = zext i1 %not..02021.i.i.i.epil.init to i64
  %.sink.i.i.i.epil = add i64 %i.as, %i.at
  store i64 %.sink.i.i.i.epil, ptr %i.ao, align 8, !tbaa !26, !noalias !396
  br label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i:            ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %i.au = ptrtoint ptr %i.h to i64
  %i.av = sub i32 0, %i.b
  %i.aw = and i32 %i.av, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = lshr i64 -1, %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.h, i64 %i.k
  %i.ba = getelementptr i8, ptr %i.az, i64 -8     ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !26, !noalias !396
  %i.bc = and i64 %i.bb, %i.ay
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !26, !noalias !396
  %.pre = load i32, ptr %i.a, align 8, !tbaa !23
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i
  %i.bd = phi ptr [ %i.am, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i ], [ %i.j, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i ]
  %i.be = phi ptr [ %i.al, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i ], [ %i.i, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i ]
  %i.bf = phi i32 [ %i.b, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i ], [ %.pre, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.ak, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i ], [ %i.au, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bg, align 8, !tbaa !23, !alias.scope !396
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !396
  %i.bh = add i32 %i.bf, -1                       ; 2 uses
  %i.bi = and i32 %i.bh, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = icmp ult i32 %i.bf, 65
  %i.bm = lshr i32 %i.bh, 6
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bn
  %.in.i.i.i.i = select i1 %i.bl, ptr %1, ptr %i.bo
  %i.bp = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !24
  %i.bq = and i64 %i.bk, %i.bp
  %.not.i = icmp eq i64 %i.bq, 0                  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !23 ; 2 uses
  %i.bt = add i32 %i.bs, -1                       ; 2 uses
  %i.bu = and i32 %i.bt, 63
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = icmp ult i32 %i.bs, 65
  %i.by = lshr i32 %i.bt, 6
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bz
  %.in.i.i.i.i5 = select i1 %i.bx, ptr %2, ptr %i.ca
  %i.cb = load i64, ptr %.in.i.i.i.i5, align 8, !tbaa !24
  %i.cc = and i64 %i.bw, %i.cb
  %.not.i6 = icmp eq i64 %i.cc, 0
  %i.cd = xor i1 %.not.i, %.not.i6
  br i1 %i.cd, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ce = inttoptr i64 %.sroa.0.1 to ptr
  %i.cf = add i32 %i.b, -1                        ; 2 uses
  %i.cg = and i32 %i.cf, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = lshr i32 %i.cf, 6
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ck
  %.in.i.i.i.i7 = select i1 %i.c, ptr %0, ptr %i.cl
  %i.cm = load i64, ptr %.in.i.i.i.i7, align 8, !tbaa !24
  %i.cn = and i64 %i.cm, %i.ci
  %.not.i8 = icmp eq i64 %i.cn, 0
  %i.co = xor i1 %.not.i, %.not.i8
  %i.cp = zext i1 %i.co to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvm5APIntD2Ev.exit
  %i.cq = phi i8 [ 0, %_ZN4llvm5APIntD2Ev.exit ], [ %i.cp, %bb.b ]
  store i8 %i.cq, ptr %3, align 1, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt7uadd_ovERKS0_Rb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = icmp ult i32 %i.b, 65
end_hunk_5
begin_hunk_6_@_ZN4llvm8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_j:bb.a
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.ch = add i32 %.2.i.i, %.neg15.i.i
  %i.ci = icmp eq i32 %i.ch, %i.br
  tail call void @_ZdaPv(ptr noundef nonnull %i.bw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.ci, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit.thread
  %i.cj = icmp ult i32 %i.b, 65
  br i1 %i.cj, label %_ZN4llvm5APIntD2Ev.exit12, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = zext i32 %i.b to i64
  %i.cl = add nuw nsw i64 %i.ck, 63
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = and i64 %i.cm, 1073741816               ; 2 uses
  %i.co = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cn) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.co, i8 0, i64 %i.cn, i1 false)
  %i.cp = ptrtoint ptr %i.co to i64
  store i64 0, ptr %i.co, align 8, !tbaa !26
  br label %_ZN4llvm5APIntD2Ev.exit12

_ZN4llvm5APIntD2Ev.exit12:                        ; preds = %bb.k, %bb.j
  %.sroa.0651.0 = phi i64 [ %i.cp, %bb.k ], [ 0, %bb.j ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.cq, align 8, !tbaa !23
  store i64 %.sroa.0651.0, ptr %0, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.cr, align 8, !tbaa !633
  br label %bb.de

bb.l:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit.thread
  %i.cs = mul i32 %i.b, 3                         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.cs)
  %i.ct = load i32, ptr %i.a, align 8, !tbaa !23
  %i.cu = icmp ult i32 %i.ct, 65
  br i1 %i.cu, label %_ZN4llvm5APIntD2Ev.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = load ptr, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN4llvm5APIntD2Ev.exit13, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.cv) #22
  br label %_ZN4llvm5APIntD2Ev.exit13

_ZN4llvm5APIntD2Ev.exit13:                        ; preds = %bb.n, %bb.m, %bb.l
  %i.cx = load i64, ptr %6, align 8
  store i64 %i.cx, ptr %1, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !23
  store i32 %i.cz, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %i.cs)
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !23
  %i.dc = icmp ult i32 %i.db, 65
  br i1 %i.dc, label %_ZN4llvm5APIntD2Ev.exit15, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit13
  %i.dd = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN4llvm5APIntD2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.dd) #22
  br label %_ZN4llvm5APIntD2Ev.exit15

_ZN4llvm5APIntD2Ev.exit15:                        ; preds = %bb.p, %bb.o, %_ZN4llvm5APIntD2Ev.exit13
  %i.df = load i64, ptr %7, align 8
  store i64 %i.df, ptr %2, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !23
  store i32 %i.dh, ptr %i.da, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %8, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.cs)
  %i.di = load i32, ptr %i.c, align 8, !tbaa !23
  %i.dj = icmp ult i32 %i.di, 65
  br i1 %i.dj, label %_ZN4llvm5APIntD2Ev.exit17, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit15
  %i.dk = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_ZN4llvm5APIntD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.dk) #22
  br label %_ZN4llvm5APIntD2Ev.exit17

_ZN4llvm5APIntD2Ev.exit17:                        ; preds = %bb.r, %bb.q, %_ZN4llvm5APIntD2Ev.exit15
  %i.dm = load i64, ptr %8, align 8
  store i64 %i.dm, ptr %3, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !23
  store i32 %i.do, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.dp = load i32, ptr %i.a, align 8, !tbaa !23  ; 7 uses
  %i.dq = add i32 %i.dp, -1                       ; 2 uses
  %i.dr = and i32 %i.dq, 63
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = icmp ult i32 %i.dp, 65                  ; 2 uses
  %i.dv = load ptr, ptr %1, align 8               ; 4 uses
  %i.dw = lshr i32 %i.dq, 6
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dx
  %.in.i.i.i = select i1 %i.du, ptr %1, ptr %i.dy
  %i.dz = load i64, ptr %.in.i.i.i, align 8, !tbaa !24
  %i.ea = and i64 %i.dt, %i.dz
  %.not742 = icmp eq i64 %i.ea, 0
  %i.eb = ptrtoint ptr %i.dv to i64
  br i1 %.not742, label %_ZN4llvm5APInt6negateEv.exit50, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit17
  br i1 %i.du, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = zext i32 %i.dp to i64
  %i.ed = add nuw nsw i64 %i.ec, 63
  %i.ee = lshr i64 %i.ed, 6                       ; 6 uses
  %min.iters.check939 = icmp ult i32 %i.dp, 193
  br i1 %min.iters.check939, label %.lr.ph.i.i.i.i.preheader, label %vector.ph940

vector.ph940:                                     ; preds = %bb.t
  %n.vec941 = and i64 %i.ee, 134217724            ; 3 uses
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph940
  %index943 = phi i64 [ 0, %vector.ph940 ], [ %index.next946, %vector.body942 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index943 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %wide.load944 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !26
  %wide.load945 = load <2 x i64>, ptr %i.eg, align 8, !tbaa !26
  %i.eh = xor <2 x i64> %wide.load944, splat (i64 -1)
  %i.ei = xor <2 x i64> %wide.load945, splat (i64 -1)
  store <2 x i64> %i.eh, ptr %i.ef, align 8, !tbaa !26
  store <2 x i64> %i.ei, ptr %i.eg, align 8, !tbaa !26
  %index.next946 = add nuw i64 %index943, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next946, %n.vec941
  br i1 %i.ej, label %middle.block947, label %vector.body942, !llvm.loop !564

middle.block947:                                  ; preds = %vector.body942
  %cmp.n948 = icmp eq i64 %i.ee, %n.vec941
  br i1 %cmp.n948, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.t, %middle.block947
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %bb.t ], [ %n.vec941, %middle.block947 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !26
  %i.em = xor i64 %i.el, -1
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !26
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ee
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !565

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %middle.block947
  %i.en = sub i32 0, %i.dp
  %i.eo = and i32 %i.en, 63
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = lshr i64 -1, %i.ep                      ; 2 uses
  %i.er = load ptr, ptr %1, align 8, !tbaa !24
  %i.es = getelementptr [8 x i8], ptr %i.er, i64 %i.ee
  %i.et = getelementptr i8, ptr %i.es, i64 -8     ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !26
  %i.ev = and i64 %i.eu, %i.eq
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !26
  %i.ew = load ptr, ptr %1, align 8, !tbaa !24    ; 3 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !26
  %i.ey = add i64 %i.ex, 1                        ; 2 uses
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !26
  %.not.peel.i.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.peel.i.i.i.i, label %.lr.ph.i.i.i2.i, label %.thread.i.i18

.lr.ph.i.i.i2.i:                                  ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i2.i
  %indvars.iv.i.i.i3.i = phi i64 [ %indvars.iv.next.i.i.i4.i, %.lr.ph.i.i.i2.i ], [ 1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i.i.i3.i ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !26
  %i.fb = add i64 %i.fa, 1                        ; 2 uses
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !26
  %.not.i.i.i.i = icmp ne i64 %i.fb, 0
  %indvars.iv.next.i.i.i4.i = add nuw nsw i64 %indvars.iv.i.i.i3.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i = icmp eq i64 %indvars.iv.next.i.i.i4.i, %i.ee
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i
  br i1 %or.cond.i.i, label %.thread.i.i18, label %.lr.ph.i.i.i2.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i: ; preds = %bb.s
  %i.fc = xor i64 %i.eb, -1
  %i.fd = sub nsw i32 0, %i.dp
  %i.fe = and i32 %i.fd, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = lshr i64 -1, %i.ff
  %i.fh = icmp eq i32 %i.dp, 0
  %spec.select.i.i = select i1 %i.fh, i64 0, i64 %i.fg ; 2 uses
  %i.fi = and i64 %spec.select.i.i, %i.fc
  %i.fj = add i64 %i.fi, 1
  %i.fk = and i64 %i.fj, %spec.select.i.i
  store i64 %i.fk, ptr %1, align 8, !tbaa !24
  br label %_ZN4llvm5APInt6negateEv.exit

.thread.i.i18:                                    ; preds = %.lr.ph.i.i.i2.i, %.lr.ph.preheader.i.i.i.i
  %i.fl = load ptr, ptr %1, align 8, !tbaa !24
  %i.fm = getelementptr [8 x i8], ptr %i.fl, i64 %i.ee
  %i.fn = getelementptr i8, ptr %i.fm, i64 -8     ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !26
  %i.fp = and i64 %i.fo, %i.eq
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !26
  br label %_ZN4llvm5APInt6negateEv.exit

_ZN4llvm5APInt6negateEv.exit:                     ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i, %.thread.i.i18
  %i.fq = load i32, ptr %i.da, align 8, !tbaa !23 ; 6 uses
  %i.fr = icmp ult i32 %i.fq, 65
  br i1 %i.fr, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i32, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm5APInt6negateEv.exit
  %i.fs = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.ft = zext i32 %i.fq to i64
  %i.fu = add nuw nsw i64 %i.ft, 63
  %i.fv = lshr i64 %i.fu, 6                       ; 6 uses
  %min.iters.check951 = icmp ult i32 %i.fq, 193
  br i1 %min.iters.check951, label %.lr.ph.i.i.i.i19.preheader, label %vector.ph952

vector.ph952:                                     ; preds = %bb.u
  %n.vec953 = and i64 %i.fv, 134217724            ; 3 uses
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph952
  %index955 = phi i64 [ 0, %vector.ph952 ], [ %index.next958, %vector.body954 ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %index955 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %wide.load956 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !26
  %wide.load957 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !26
  %i.fy = xor <2 x i64> %wide.load956, splat (i64 -1)
  %i.fz = xor <2 x i64> %wide.load957, splat (i64 -1)
  store <2 x i64> %i.fy, ptr %i.fw, align 8, !tbaa !26
  store <2 x i64> %i.fz, ptr %i.fx, align 8, !tbaa !26
  %index.next958 = add nuw i64 %index955, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next958, %n.vec953
  br i1 %i.ga, label %middle.block959, label %vector.body954, !llvm.loop !566

middle.block959:                                  ; preds = %vector.body954
  %cmp.n960 = icmp eq i64 %i.fv, %n.vec953
  br i1 %cmp.n960, label %.lr.ph.preheader.i.i.i.i23, label %.lr.ph.i.i.i.i19.preheader

.lr.ph.i.i.i.i19.preheader:                       ; preds = %bb.u, %middle.block959
  %indvars.iv.i.i.i.i20.ph = phi i64 [ 0, %bb.u ], [ %n.vec953, %middle.block959 ]
  br label %.lr.ph.i.i.i.i19

.lr.ph.i.i.i.i19:                                 ; preds = %.lr.ph.i.i.i.i19.preheader, %.lr.ph.i.i.i.i19
  %indvars.iv.i.i.i.i20 = phi i64 [ %indvars.iv.next.i.i.i.i21, %.lr.ph.i.i.i.i19 ], [ %indvars.iv.i.i.i.i20.ph, %.lr.ph.i.i.i.i19.preheader ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.i.i.i.i20 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !26
  %i.gd = xor i64 %i.gc, -1
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !26
  %indvars.iv.next.i.i.i.i21 = add nuw nsw i64 %indvars.iv.i.i.i.i20, 1 ; 2 uses
  %exitcond.not.i.i.i.i22 = icmp eq i64 %indvars.iv.next.i.i.i.i21, %i.fv
  br i1 %exitcond.not.i.i.i.i22, label %.lr.ph.preheader.i.i.i.i23, label %.lr.ph.i.i.i.i19, !llvm.loop !567

.lr.ph.preheader.i.i.i.i23:                       ; preds = %.lr.ph.i.i.i.i19, %middle.block959
  %i.ge = sub i32 0, %i.fq
  %i.gf = and i32 %i.ge, 63
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = lshr i64 -1, %i.gg                      ; 2 uses
  %i.gi = load ptr, ptr %2, align 8, !tbaa !24
  %i.gj = getelementptr [8 x i8], ptr %i.gi, i64 %i.fv
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8     ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !26
  %i.gm = and i64 %i.gl, %i.gh
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !26
  %i.gn = load ptr, ptr %2, align 8, !tbaa !24    ; 3 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !26
  %i.gp = add i64 %i.go, 1                        ; 2 uses
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !26
  %.not.peel.i.i.i.i24 = icmp eq i64 %i.gp, 0
  br i1 %.not.peel.i.i.i.i24, label %.lr.ph.i.i.i2.i26, label %.thread.i.i25

.lr.ph.i.i.i2.i26:                                ; preds = %.lr.ph.preheader.i.i.i.i23, %.lr.ph.i.i.i2.i26
  %indvars.iv.i.i.i3.i27 = phi i64 [ %indvars.iv.next.i.i.i4.i29, %.lr.ph.i.i.i2.i26 ], [ 1, %.lr.ph.preheader.i.i.i.i23 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.i.i.i3.i27 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !26
  %i.gs = add i64 %i.gr, 1                        ; 2 uses
  store i64 %i.gs, ptr %i.gq, align 8, !tbaa !26
  %.not.i.i.i.i28 = icmp ne i64 %i.gs, 0
  %indvars.iv.next.i.i.i4.i29 = add nuw nsw i64 %indvars.iv.i.i.i3.i27, 1 ; 2 uses
  %exitcond.not.i.i.i5.i30 = icmp eq i64 %indvars.iv.next.i.i.i4.i29, %i.fv
  %or.cond.i.i31 = select i1 %.not.i.i.i.i28, i1 true, i1 %exitcond.not.i.i.i5.i30
  br i1 %or.cond.i.i31, label %.thread.i.i25, label %.lr.ph.i.i.i2.i26, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i32: ; preds = %_ZN4llvm5APInt6negateEv.exit
  %i.gt = load i64, ptr %2, align 8, !tbaa !24
  %i.gu = xor i64 %i.gt, -1
  %i.gv = sub nsw i32 0, %i.fq
  %i.gw = and i32 %i.gv, 63
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = lshr i64 -1, %i.gx
  %i.gz = icmp eq i32 %i.fq, 0
  %spec.select.i.i33 = select i1 %i.gz, i64 0, i64 %i.gy ; 2 uses
  %i.ha = and i64 %spec.select.i.i33, %i.gu
  %i.hb = add i64 %i.ha, 1
  %i.hc = and i64 %i.hb, %spec.select.i.i33
  store i64 %i.hc, ptr %2, align 8, !tbaa !24
  br label %_ZN4llvm5APInt6negateEv.exit34

.thread.i.i25:                                    ; preds = %.lr.ph.i.i.i2.i26, %.lr.ph.preheader.i.i.i.i23
  %i.hd = load ptr, ptr %2, align 8, !tbaa !24
  %i.he = getelementptr [8 x i8], ptr %i.hd, i64 %i.fv
  %i.hf = getelementptr i8, ptr %i.he, i64 -8     ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !26
  %i.hh = and i64 %i.hg, %i.gh
  store i64 %i.hh, ptr %i.hf, align 8, !tbaa !26
  br label %_ZN4llvm5APInt6negateEv.exit34

_ZN4llvm5APInt6negateEv.exit34:                   ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i32, %.thread.i.i25
  %i.hi = load i32, ptr %i.c, align 8, !tbaa !23  ; 6 uses
  %i.hj = icmp ult i32 %i.hi, 65
  br i1 %i.hj, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i48, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm5APInt6negateEv.exit34
  %i.hk = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.hl = zext i32 %i.hi to i64
  %i.hm = add nuw nsw i64 %i.hl, 63
  %i.hn = lshr i64 %i.hm, 6                       ; 6 uses
  %min.iters.check963 = icmp ult i32 %i.hi, 193
  br i1 %min.iters.check963, label %.lr.ph.i.i.i.i35.preheader, label %vector.ph964

vector.ph964:                                     ; preds = %bb.v
  %n.vec965 = and i64 %i.hn, 134217724            ; 3 uses
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph964
  %index967 = phi i64 [ 0, %vector.ph964 ], [ %index.next970, %vector.body966 ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %index967 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %wide.load968 = load <2 x i64>, ptr %i.ho, align 8, !tbaa !26
  %wide.load969 = load <2 x i64>, ptr %i.hp, align 8, !tbaa !26
  %i.hq = xor <2 x i64> %wide.load968, splat (i64 -1)
  %i.hr = xor <2 x i64> %wide.load969, splat (i64 -1)
  store <2 x i64> %i.hq, ptr %i.ho, align 8, !tbaa !26
  store <2 x i64> %i.hr, ptr %i.hp, align 8, !tbaa !26
  %index.next970 = add nuw i64 %index967, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next970, %n.vec965
  br i1 %i.hs, label %middle.block971, label %vector.body966, !llvm.loop !568

middle.block971:                                  ; preds = %vector.body966
  %cmp.n972 = icmp eq i64 %i.hn, %n.vec965
  br i1 %cmp.n972, label %.lr.ph.preheader.i.i.i.i39, label %.lr.ph.i.i.i.i35.preheader

.lr.ph.i.i.i.i35.preheader:                       ; preds = %bb.v, %middle.block971
  %indvars.iv.i.i.i.i36.ph = phi i64 [ 0, %bb.v ], [ %n.vec965, %middle.block971 ]
  br label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %.lr.ph.i.i.i.i35.preheader, %.lr.ph.i.i.i.i35
  %indvars.iv.i.i.i.i36 = phi i64 [ %indvars.iv.next.i.i.i.i37, %.lr.ph.i.i.i.i35 ], [ %indvars.iv.i.i.i.i36.ph, %.lr.ph.i.i.i.i35.preheader ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.i.i.i.i36 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !26
  %i.hv = xor i64 %i.hu, -1
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !26
  %indvars.iv.next.i.i.i.i37 = add nuw nsw i64 %indvars.iv.i.i.i.i36, 1 ; 2 uses
  %exitcond.not.i.i.i.i38 = icmp eq i64 %indvars.iv.next.i.i.i.i37, %i.hn
  br i1 %exitcond.not.i.i.i.i38, label %.lr.ph.preheader.i.i.i.i39, label %.lr.ph.i.i.i.i35, !llvm.loop !569

.lr.ph.preheader.i.i.i.i39:                       ; preds = %.lr.ph.i.i.i.i35, %middle.block971
  %i.hw = sub i32 0, %i.hi
  %i.hx = and i32 %i.hw, 63
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = lshr i64 -1, %i.hy                      ; 2 uses
  %i.ia = load ptr, ptr %3, align 8, !tbaa !24
  %i.ib = getelementptr [8 x i8], ptr %i.ia, i64 %i.hn
  %i.ic = getelementptr i8, ptr %i.ib, i64 -8     ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !26
  %i.ie = and i64 %i.id, %i.hz
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !26
  %i.if = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !26
  %i.ih = add i64 %i.ig, 1                        ; 2 uses
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !26
  %.not.peel.i.i.i.i40 = icmp eq i64 %i.ih, 0
  br i1 %.not.peel.i.i.i.i40, label %.lr.ph.i.i.i2.i42, label %.thread.i.i41

.lr.ph.i.i.i2.i42:                                ; preds = %.lr.ph.preheader.i.i.i.i39, %.lr.ph.i.i.i2.i42
  %indvars.iv.i.i.i3.i43 = phi i64 [ %indvars.iv.next.i.i.i4.i45, %.lr.ph.i.i.i2.i42 ], [ 1, %.lr.ph.preheader.i.i.i.i39 ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i.i.i3.i43 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !26
  %i.ik = add i64 %i.ij, 1                        ; 2 uses
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !26
  %.not.i.i.i.i44 = icmp ne i64 %i.ik, 0
  %indvars.iv.next.i.i.i4.i45 = add nuw nsw i64 %indvars.iv.i.i.i3.i43, 1 ; 2 uses
  %exitcond.not.i.i.i5.i46 = icmp eq i64 %indvars.iv.next.i.i.i4.i45, %i.hn
  %or.cond.i.i47 = select i1 %.not.i.i.i.i44, i1 true, i1 %exitcond.not.i.i.i5.i46
  br i1 %or.cond.i.i47, label %.thread.i.i41, label %.lr.ph.i.i.i2.i42, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i48: ; preds = %_ZN4llvm5APInt6negateEv.exit34
  %i.il = load i64, ptr %3, align 8, !tbaa !24
  %i.im = xor i64 %i.il, -1
  %i.in = sub nsw i32 0, %i.hi
  %i.io = and i32 %i.in, 63
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = lshr i64 -1, %i.ip
  %i.ir = icmp eq i32 %i.hi, 0
  %spec.select.i.i49 = select i1 %i.ir, i64 0, i64 %i.iq ; 2 uses
  %i.is = and i64 %spec.select.i.i49, %i.im
  %i.it = add i64 %i.is, 1
  %i.iu = and i64 %i.it, %spec.select.i.i49
  store i64 %i.iu, ptr %3, align 8, !tbaa !24
  br label %_ZN4llvm5APInt6negateEv.exit50

.thread.i.i41:                                    ; preds = %.lr.ph.i.i.i2.i42, %.lr.ph.preheader.i.i.i.i39
  %i.iv = load ptr, ptr %3, align 8, !tbaa !24
  %i.iw = getelementptr [8 x i8], ptr %i.iv, i64 %i.hn
  %i.ix = getelementptr i8, ptr %i.iw, i64 -8     ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !26
  %i.iz = and i64 %i.iy, %i.hz
  store i64 %i.iz, ptr %i.ix, align 8, !tbaa !26
  br label %_ZN4llvm5APInt6negateEv.exit50

_ZN4llvm5APInt6negateEv.exit50:                   ; preds = %.thread.i.i41, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i48, %_ZN4llvm5APIntD2Ev.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 %i.cs, ptr %i.ja, align 8, !tbaa !23, !alias.scope !634
  %i.jb = icmp ult i32 %i.cs, 65
  br i1 %i.jb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4llvm5APInt6negateEv.exit50
  %i.jc = and i32 %4, 63
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = shl nuw i64 1, %i.jd
  %i.jf = inttoptr i64 %i.je to ptr
  br label %_ZN4llvm5APInt12getOneBitSetEjj.exit

bb.x:                                             ; preds = %_ZN4llvm5APInt6negateEv.exit50
  %i.jg = zext i32 %i.cs to i64
  %i.jh = add nuw nsw i64 %i.jg, 63
  %i.ji = lshr i64 %i.jh, 3
  %i.jj = and i64 %i.ji, 1073741816               ; 2 uses
  %i.jk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.jj) #21, !noalias !634 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jk, i8 0, i64 %i.jj, i1 false), !noalias !634
  store i64 0, ptr %i.jk, align 8, !tbaa !26, !noalias !634
  %i.jl = and i32 %4, 63
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = shl nuw i64 1, %i.jm
  %i.jo = lshr i32 %4, 6
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jp ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !26, !noalias !634
  %i.js = or i64 %i.jr, %i.jn
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !26, !noalias !634
  br label %_ZN4llvm5APInt12getOneBitSetEjj.exit

_ZN4llvm5APInt12getOneBitSetEjj.exit:             ; preds = %bb.w, %bb.x
  %.sink.i = phi ptr [ %i.jf, %bb.w ], [ %i.jk, %bb.x ]
  store ptr %.sink.i, ptr %9, align 8, !tbaa !24, !alias.scope !634
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.jt = load i32, ptr %i.a, align 8, !tbaa !23  ; 22 uses
  %i.ju = icmp ult i32 %i.jt, 65                  ; 6 uses
  br i1 %i.ju, label %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i, label %.lr.ph.i.i441

.lr.ph.i.i441:                                    ; preds = %_ZN4llvm5APInt12getOneBitSetEjj.exit
  %i.jv = zext i32 %i.jt to i64
  %i.jw = add nuw nsw i64 %i.jv, 63               ; 3 uses
  %i.jx = lshr i64 %i.jw, 3
  %i.jy = and i64 %i.jx, 1073741816               ; 2 uses
  %i.jz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.jy) #21 ; 6 uses
  %i.ka = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jz, ptr align 8 %i.ka, i64 %i.jy, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.kb = lshr i64 %i.jw, 6                       ; 4 uses
  %i.kc = icmp eq i64 %i.kb, 1
  br i1 %i.kc, label %.lr.ph.split.split.i.i.epil.preheader, label %.lr.ph.i.i441.new

.lr.ph.i.i441.new:                                ; preds = %.lr.ph.i.i441
  %unroll_iter = and i64 %i.kb, 134217726
  br label %.lr.ph.split.split.i.i

.lr.ph.split.split.i.i:                           ; preds = %bb.aa, %.lr.ph.i.i441.new
  %indvars.iv.i.i442 = phi i64 [ 0, %.lr.ph.i.i441.new ], [ %indvars.iv.next.i.i445.1, %bb.aa ] ; 3 uses
  %.06985.i.i = phi i64 [ 0, %.lr.ph.i.i441.new ], [ %.3.i.i.1, %bb.aa ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i441.new ], [ %niter.next.1, %bb.aa ]
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv.i.i442 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !26, !noalias !635 ; 3 uses
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %.lr.ph.split.split.i.i.1, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.split.i.i
  %i.kg = shl i64 %i.ke, 1                        ; 2 uses
  %i.kh = lshr i64 %i.ke, 63
  %i.ki = add i64 %i.kg, %.06985.i.i              ; 2 uses
  %i.kj = icmp ult i64 %i.ki, %i.kg
  %i.kk = zext i1 %i.kj to i64
  %.2.i.i444 = add nuw nsw i64 %i.kh, %i.kk
  br label %.lr.ph.split.split.i.i.1

.lr.ph.split.split.i.i.1:                         ; preds = %bb.y, %.lr.ph.split.split.i.i
  %.065.i.i = phi i64 [ %i.ki, %bb.y ], [ %.06985.i.i, %.lr.ph.split.split.i.i ]
  %.3.i.i = phi i64 [ %.2.i.i444, %bb.y ], [ 0, %.lr.ph.split.split.i.i ] ; 2 uses
  store i64 %.065.i.i, ptr %i.kd, align 8, !tbaa !26, !noalias !635
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv.i.i442
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !26, !noalias !635 ; 3 uses
  %i.ko = icmp eq i64 %i.kn, 0
  br i1 %i.ko, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.i.i.1
  %i.kp = shl i64 %i.kn, 1                        ; 2 uses
  %i.kq = lshr i64 %i.kn, 63
  %i.kr = add i64 %i.kp, %.3.i.i                  ; 2 uses
  %i.ks = icmp ult i64 %i.kr, %i.kp
  %i.kt = zext i1 %i.ks to i64
  %.2.i.i444.1 = add nuw nsw i64 %i.kq, %i.kt
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.split.split.i.i.1
  %.065.i.i.1 = phi i64 [ %i.kr, %bb.z ], [ %.3.i.i, %.lr.ph.split.split.i.i.1 ]
  %.3.i.i.1 = phi i64 [ %.2.i.i444.1, %bb.z ], [ 0, %.lr.ph.split.split.i.i.1 ] ; 2 uses
  store i64 %.065.i.i.1, ptr %i.km, align 8, !tbaa !26, !noalias !635
  %indvars.iv.next.i.i445.1 = add nuw nsw i64 %indvars.iv.i.i442, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.i447.unr-lcssa, label %.lr.ph.split.split.i.i, !llvm.loop !7

_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i: ; preds = %_ZN4llvm5APInt12getOneBitSetEjj.exit
  %i.ku = load i64, ptr %1, align 8, !tbaa !24
  %i.kv = shl i64 %i.ku, 1
  %i.kw = sub nsw i32 0, %i.jt
  %i.kx = and i32 %i.kw, 63
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = lshr i64 -1, %i.ky
  %i.la = icmp eq i32 %i.jt, 0
  %spec.select.i451 = select i1 %i.la, i64 0, i64 %i.kz, !prof !41
  %i.lb = and i64 %i.kv, %spec.select.i451
  br label %_ZN4llvm5APIntD2Ev.exit51

.thread.i447.unr-lcssa:                           ; preds = %bb.aa
  %i.lc = and i64 %i.jw, 64
  %lcmp.mod1080.not = icmp eq i64 %i.lc, 0
  br i1 %lcmp.mod1080.not, label %.thread.i447, label %.lr.ph.split.split.i.i.epil.preheader

.lr.ph.split.split.i.i.epil.preheader:            ; preds = %.thread.i447.unr-lcssa, %.lr.ph.i.i441
  %indvars.iv.i.i442.epil.init = phi i64 [ 0, %.lr.ph.i.i441 ], [ %indvars.iv.next.i.i445.1, %.thread.i447.unr-lcssa ]
  %.06985.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i441 ], [ %.3.i.i.1, %.thread.i447.unr-lcssa ] ; 2 uses
  %lcmp.mod1081 = trunc i64 %i.kb to i1
  tail call void @llvm.assume(i1 %lcmp.mod1081)
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv.i.i442.epil.init ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !26, !noalias !635 ; 2 uses
  %i.lf = icmp eq i64 %i.le, 0
  %i.lg = shl i64 %i.le, 1
  %i.lh = add i64 %i.lg, %.06985.i.i.epil.init
  %.065.i.i.epil = select i1 %i.lf, i64 %.06985.i.i.epil.init, i64 %i.lh
  store i64 %.065.i.i.epil, ptr %i.ld, align 8, !tbaa !26, !noalias !635
  br label %.thread.i447

.thread.i447:                                     ; preds = %.thread.i447.unr-lcssa, %.lr.ph.split.split.i.i.epil.preheader
  %i.li = ptrtoint ptr %i.jz to i64
  %.pn.in.in.i448 = sub i32 0, %i.jt
  %.pn.in.i449 = and i32 %.pn.in.in.i448, 63
  %.pn.i450 = zext nneg i32 %.pn.in.i449 to i64
  %i.lj = lshr i64 -1, %.pn.i450
  %i.lk = getelementptr [8 x i8], ptr %i.jz, i64 %i.kb
  %i.ll = getelementptr i8, ptr %i.lk, i64 -8     ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !26, !noalias !635
  %i.ln = and i64 %i.lm, %i.lj
  store i64 %i.ln, ptr %i.ll, align 8, !tbaa !26, !noalias !635
  br label %_ZN4llvm5APIntD2Ev.exit51

_ZN4llvm5APIntD2Ev.exit51:                        ; preds = %.thread.i447, %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i
  %i.lo = phi i64 [ %i.lb, %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i ], [ %i.li, %.thread.i447 ] ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.jt, ptr %i.lp, align 8, !tbaa !23, !alias.scope !635
  store i64 %i.lo, ptr %10, align 8, !alias.scope !635
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %11, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %i.lq = load i32, ptr %i.da, align 8, !tbaa !23 ; 2 uses
  %i.lr = add i32 %i.lq, -1                       ; 2 uses
  %i.ls = and i32 %i.lr, 63
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = shl nuw i64 1, %i.lt
  %i.lv = icmp ult i32 %i.lq, 65
  %i.lw = load ptr, ptr %2, align 8
  %i.lx = lshr i32 %i.lr, 6
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.ly
  %.in.i.i.i.i = select i1 %i.lv, ptr %2, ptr %i.lz
  %i.ma = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !24
  %i.mb = and i64 %i.lu, %i.ma
  %.not.i = icmp eq i64 %i.mb, 0
  %i.mc = inttoptr i64 %i.lo to ptr               ; 2 uses
  br i1 %.not.i, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZNK4llvm5APInt4sremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %12, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %9)
  %i.md = load i32, ptr %i.c, align 8, !tbaa !23
  %i.me = icmp ult i32 %i.md, 65
  br i1 %i.me, label %_ZN4llvm5APIntD2Ev.exit53, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mf = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %_ZN4llvm5APIntD2Ev.exit53, label %bb.ad

end_hunk_6
begin_hunk_7_@_ZN4llvm8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_j:bb.a

bb.am:                                            ; preds = %.lr.ph.split.split.i.i453.1
  %i.pe = shl i64 %i.pc, 1                        ; 2 uses
  %i.pf = lshr i64 %i.pc, 63
  %i.pg = add i64 %i.pe, %.3.i.i460               ; 2 uses
  %i.ph = icmp ult i64 %i.pg, %i.pe
  %i.pi = zext i1 %i.ph to i64
  %.2.i.i458.1 = add nuw nsw i64 %i.pf, %i.pi
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.split.split.i.i453.1
  %.065.i.i459.1 = phi i64 [ %i.pg, %bb.am ], [ %.3.i.i460, %.lr.ph.split.split.i.i453.1 ]
  %.3.i.i460.1 = phi i64 [ %.2.i.i458.1, %bb.am ], [ 0, %.lr.ph.split.split.i.i453.1 ] ; 2 uses
  store i64 %.065.i.i459.1, ptr %i.pb, align 8, !tbaa !26, !noalias !636
  %indvars.iv.next.i.i461.1 = add nuw nsw i64 %indvars.iv.i.i454, 2 ; 2 uses
  %niter1086.next.1 = add nuw nsw i64 %niter1086, 2 ; 2 uses
  %niter1086.ncmp.1 = icmp eq i64 %niter1086.next.1, %unroll_iter1085
  br i1 %niter1086.ncmp.1, label %.thread.i463.unr-lcssa, label %.lr.ph.split.split.i.i453, !llvm.loop !7

_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i467: ; preds = %bb.ak
  %i.pj = shl i64 %i.lo, 1
  %i.pk = sub nsw i32 0, %i.jt
  %i.pl = and i32 %i.pk, 63
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = lshr i64 -1, %i.pm
  %i.po = icmp eq i32 %i.jt, 0
  %spec.select.i468 = select i1 %i.po, i64 0, i64 %i.pn, !prof !41
  %i.pp = and i64 %i.pj, %spec.select.i468
  br label %_ZN4llvm5APIntmLEm.exit469

.thread.i463.unr-lcssa:                           ; preds = %bb.an
  %i.pq = and i64 %i.om, 64
  %lcmp.mod1083.not = icmp eq i64 %i.pq, 0
  br i1 %lcmp.mod1083.not, label %.thread.i463, label %.lr.ph.split.split.i.i453.epil.preheader

.lr.ph.split.split.i.i453.epil.preheader:         ; preds = %.thread.i463.unr-lcssa, %.lr.ph.i.i452
  %indvars.iv.i.i454.epil.init = phi i64 [ 0, %.lr.ph.i.i452 ], [ %indvars.iv.next.i.i461.1, %.thread.i463.unr-lcssa ]
  %.06985.i.i455.epil.init = phi i64 [ 0, %.lr.ph.i.i452 ], [ %.3.i.i460.1, %.thread.i463.unr-lcssa ] ; 2 uses
  %lcmp.mod1084 = trunc i64 %i.oq to i1
  tail call void @llvm.assume(i1 %lcmp.mod1084)
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %indvars.iv.i.i454.epil.init ; 2 uses
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !26, !noalias !636 ; 2 uses
  %i.pt = icmp eq i64 %i.ps, 0
  %i.pu = shl i64 %i.ps, 1
  %i.pv = add i64 %i.pu, %.06985.i.i455.epil.init
  %.065.i.i459.epil = select i1 %i.pt, i64 %.06985.i.i455.epil.init, i64 %i.pv
  store i64 %.065.i.i459.epil, ptr %i.pr, align 8, !tbaa !26, !noalias !636
  br label %.thread.i463

.thread.i463:                                     ; preds = %.thread.i463.unr-lcssa, %.lr.ph.split.split.i.i453.epil.preheader
  %i.pw = ptrtoint ptr %i.op to i64
  %.pn.in.in.i464 = sub i32 0, %i.jt
  %.pn.in.i465 = and i32 %.pn.in.in.i464, 63
  %.pn.i466 = zext nneg i32 %.pn.in.i465 to i64
  %i.px = lshr i64 -1, %.pn.i466
  %i.py = getelementptr [8 x i8], ptr %i.op, i64 %i.oq
  %i.pz = getelementptr i8, ptr %i.py, i64 -8     ; 2 uses
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !26, !noalias !636
  %i.qb = and i64 %i.qa, %i.px
  store i64 %i.qb, ptr %i.pz, align 8, !tbaa !26, !noalias !636
  br label %_ZN4llvm5APIntmLEm.exit469

_ZN4llvm5APIntmLEm.exit469:                       ; preds = %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i467, %.thread.i463
  %.sroa.0633.1 = phi i64 [ %i.pp, %_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i467 ], [ %i.pw, %.thread.i463 ] ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %i.jt, ptr %i.qc, align 8, !tbaa !23, !alias.scope !636
  store i64 %.sroa.0633.1, ptr %15, align 8, !alias.scope !636
  call void @_ZNK4llvm5APInt4udivERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %14, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.qd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !23, !noalias !637 ; 7 uses
  %i.qf = icmp ult i32 %i.qe, 65
  %i.qg = inttoptr i64 %.sroa.0633.1 to ptr
  br i1 %i.qf, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm5APIntmLEm.exit469
  %i.qh = load ptr, ptr %14, align 8, !noalias !637 ; 10 uses
  %i.qi = zext i32 %i.qe to i64
  %i.qj = add nuw nsw i64 %i.qi, 63               ; 2 uses
  %i.qk = lshr i64 %i.qj, 6                       ; 8 uses
  %i.ql = ptrtoint ptr %i.qh to i64
  %min.iters.check975 = icmp ult i32 %i.qe, 193
  br i1 %min.iters.check975, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph976

vector.ph976:                                     ; preds = %bb.ao
  %n.vec977 = and i64 %i.qk, 134217724            ; 3 uses
  br label %vector.body978

vector.body978:                                   ; preds = %vector.body978, %vector.ph976
  %index979 = phi i64 [ 0, %vector.ph976 ], [ %index.next982, %vector.body978 ] ; 2 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %index979 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16 ; 2 uses
  %wide.load980 = load <2 x i64>, ptr %i.qm, align 8, !tbaa !26, !noalias !637
  %wide.load981 = load <2 x i64>, ptr %i.qn, align 8, !tbaa !26, !noalias !637
  %i.qo = xor <2 x i64> %wide.load980, splat (i64 -1)
  %i.qp = xor <2 x i64> %wide.load981, splat (i64 -1)
  store <2 x i64> %i.qo, ptr %i.qm, align 8, !tbaa !26, !noalias !637
  store <2 x i64> %i.qp, ptr %i.qn, align 8, !tbaa !26, !noalias !637
  %index.next982 = add nuw i64 %index979, 4       ; 2 uses
  %i.qq = icmp eq i64 %index.next982, %n.vec977
  br i1 %i.qq, label %middle.block983, label %vector.body978, !llvm.loop !578

middle.block983:                                  ; preds = %vector.body978
  %cmp.n984 = icmp eq i64 %i.qk, %n.vec977
  br i1 %cmp.n984, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.ao, %middle.block983
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.ao ], [ %n.vec977, %middle.block983 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !26, !noalias !637
  %i.qt = xor i64 %i.qs, -1
  store i64 %i.qt, ptr %i.qr, align 8, !tbaa !26, !noalias !637
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.qk
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !579

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block983
  %i.qu = sub i32 0, %i.qe
  %i.qv = and i32 %i.qu, 63
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = lshr i64 -1, %i.qw                      ; 3 uses
  %i.qy = getelementptr [8 x i8], ptr %i.qh, i64 %i.qk
  %i.qz = getelementptr i8, ptr %i.qy, i64 -8     ; 6 uses
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !26, !noalias !637
  %i.rb = and i64 %i.ra, %i.qx
  store i64 %i.rb, ptr %i.qz, align 8, !tbaa !26, !noalias !637
  %i.rc = load i64, ptr %i.qh, align 8, !tbaa !26, !noalias !637
  %i.rd = add i64 %i.rc, 1                        ; 2 uses
  store i64 %i.rd, ptr %i.qh, align 8, !tbaa !26, !noalias !637
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.rd, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !26, !noalias !637
  %i.rg = add i64 %i.rf, 1                        ; 2 uses
  store i64 %i.rg, ptr %i.re, align 8, !tbaa !26, !noalias !637
  %.not.i.i.i.i.i = icmp ne i64 %i.rg, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.qk
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.rh = load i64, ptr %i.qz, align 8, !tbaa !26, !noalias !637
  %i.ri = and i64 %i.rh, %i.qx
  store i64 %i.ri, ptr %i.qz, align 8, !tbaa !26, !noalias !637
  %i.rj = load ptr, ptr %3, align 8, !tbaa !24, !noalias !637 ; 3 uses
  %i.rk = icmp eq i64 %i.qk, 1
  br i1 %i.rk, label %.lr.ph.i.i.i61.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter1090 = and i64 %i.qk, 134217726
  br label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %.lr.ph.i.i.i61, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i61 ] ; 4 uses
  %.02021.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i.new ], [ %.1.in.i.i.i.1, %.lr.ph.i.i.i61 ] ; 2 uses
  %niter1091 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter1091.next.1, %.lr.ph.i.i.i61 ]
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv.i.i.i ; 2 uses
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !26, !noalias !637 ; 3 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv.i.i.i
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !26, !noalias !637
  %i.rp = add i64 %i.ro, %i.rm                    ; 3 uses
  %i.rq = icmp uge i64 %i.rp, %i.rm
  %i.rr = add i64 %i.rp, 1                        ; 2 uses
  %i.rs = icmp ugt i64 %i.rr, %i.rm
  %.sink.i.i.i = select i1 %.02021.i.i.i, i64 %i.rp, i64 %i.rr
  %.1.in.i.i.i = select i1 %.02021.i.i.i, i1 %i.rq, i1 %i.rs ; 2 uses
  store i64 %.sink.i.i.i, ptr %i.rl, align 8, !tbaa !26, !noalias !637
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !26, !noalias !637 ; 3 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv.next.i.i.i
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !26, !noalias !637
  %i.rx = add i64 %i.rw, %i.ru                    ; 3 uses
  %i.ry = icmp uge i64 %i.rx, %i.ru
  %i.rz = add i64 %i.rx, 1                        ; 2 uses
  %i.sa = icmp ugt i64 %i.rz, %i.ru
  %.sink.i.i.i.1 = select i1 %.1.in.i.i.i, i64 %i.rx, i64 %i.rz
  %.1.in.i.i.i.1 = select i1 %.1.in.i.i.i, i1 %i.ry, i1 %i.sa ; 2 uses
  store i64 %.sink.i.i.i.1, ptr %i.rt, align 8, !tbaa !26, !noalias !637
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter1091.next.1 = add i64 %niter1091, 2       ; 2 uses
  %niter1091.ncmp.1 = icmp eq i64 %niter1091.next.1, %unroll_iter1090
  br i1 %niter1091.ncmp.1, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, label %.lr.ph.i.i.i61, !llvm.loop !4

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i:    ; preds = %_ZN4llvm5APIntmLEm.exit469
  %i.sb = load i64, ptr %14, align 8, !tbaa !24, !noalias !637
  %i.sc = xor i64 %i.sb, -1
  %i.sd = sub nsw i32 0, %i.qe
  %i.se = and i32 %i.sd, 63
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = lshr i64 -1, %i.sf
  %i.sh = icmp eq i32 %i.qe, 0
  %spec.select.i.i.i = select i1 %i.sh, i64 0, i64 %i.sg, !prof !39 ; 3 uses
  %i.si = and i64 %spec.select.i.i.i, %i.sc
  %i.sj = add i64 %i.si, 1
  %i.sk = and i64 %i.sj, %spec.select.i.i.i
  %i.sl = load i64, ptr %3, align 8, !tbaa !24, !noalias !637
  %i.sm = add i64 %i.sk, %i.sl
  %i.sn = and i64 %i.sm, %spec.select.i.i.i
  br label %_ZN4llvm5APIntD2Ev.exit62

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa:  ; preds = %.lr.ph.i.i.i61
  %i.so = and i64 %i.qj, 64
  %lcmp.mod1088.not = icmp eq i64 %i.so, 0
  br i1 %lcmp.mod1088.not, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i, label %.lr.ph.i.i.i61.epil.preheader

.lr.ph.i.i.i61.epil.preheader:                    ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa ] ; 2 uses
  %.02021.i.i.i.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %.1.in.i.i.i.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa ]
  %lcmp.mod1089 = trunc i64 %i.qk to i1
  tail call void @llvm.assume(i1 %lcmp.mod1089)
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !26, !noalias !637
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv.i.i.i.epil.init
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !26, !noalias !637
  %i.st = add i64 %i.ss, %i.sq
  %not..02021.i.i.i.epil.init = xor i1 %.02021.i.i.i.epil.init, true
  %i.su = zext i1 %not..02021.i.i.i.epil.init to i64
  %.sink.i.i.i.epil = add i64 %i.st, %i.su
  store i64 %.sink.i.i.i.epil, ptr %i.sp, align 8, !tbaa !26, !noalias !637
  br label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i:            ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, %.lr.ph.i.i.i61.epil.preheader
  %i.sv = load i64, ptr %i.qz, align 8, !tbaa !26, !noalias !637
  %i.sw = and i64 %i.sv, %i.qx
  store i64 %i.sw, ptr %i.qz, align 8, !tbaa !26, !noalias !637
  br label %_ZN4llvm5APIntD2Ev.exit62

_ZN4llvm5APIntD2Ev.exit62:                        ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i
  %i.sx = phi i64 [ %i.sn, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i ], [ %i.ql, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i ]
  %i.sy = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i32 %i.qe, ptr %i.sy, align 8, !tbaa !23, !alias.scope !637
  store i64 %i.sx, ptr %13, align 8, !alias.scope !637
  %i.sz = icmp ult i32 %i.jt, 65
  %i.ta = icmp eq i64 %.sroa.0633.1, 0
  %or.cond910 = select i1 %i.sz, i1 true, i1 %i.ta
  br i1 %or.cond910, label %_ZN4llvm5APIntD2Ev.exit64, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit62
  tail call void @_ZdaPv(ptr noundef nonnull %i.qg) #22
  br label %_ZN4llvm5APIntD2Ev.exit64

_ZN4llvm5APIntD2Ev.exit64:                        ; preds = %bb.ap, %_ZN4llvm5APIntD2Ev.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call fastcc void @"_ZZN4llvm8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_jENK3$_0clERKS1_S4_"(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %9)
  %i.tb = load i32, ptr %i.sy, align 8, !tbaa !23
  %i.tc = icmp ult i32 %i.tb, 65
  br i1 %i.tc, label %_ZN4llvm5APIntD2Ev.exit66, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit64
  %i.td = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %_ZN4llvm5APIntD2Ev.exit66, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdaPv(ptr noundef nonnull %i.td) #22
  br label %_ZN4llvm5APIntD2Ev.exit66

_ZN4llvm5APIntD2Ev.exit66:                        ; preds = %bb.ar, %bb.aq, %_ZN4llvm5APIntD2Ev.exit64
  %i.tf = load i64, ptr %16, align 8              ; 4 uses
  store i64 %i.tf, ptr %13, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !23 ; 5 uses
  store i32 %i.th, ptr %i.sy, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ti = load i32, ptr %i.c, align 8, !tbaa !23  ; 12 uses
  %i.tj = icmp ult i32 %i.ti, 65
  %i.tk = inttoptr i64 %i.tf to ptr               ; 3 uses
  br i1 %i.tj, label %_ZNK4llvm5APInt3sgtERKS0_.exit.thread667, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit66
  %i.tl = add i32 %i.ti, -1                       ; 2 uses
  %i.tm = and i32 %i.tl, 63
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = shl nuw i64 1, %i.tn
  %i.tp = load ptr, ptr %3, align 8               ; 3 uses
  %i.tq = lshr i32 %i.tl, 6
  %i.tr = zext nneg i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %i.tr
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !24
  %i.tu = and i64 %i.tt, %i.to
  %i.tv = icmp ne i64 %i.tu, 0                    ; 2 uses
  %i.tw = add i32 %i.th, -1                       ; 2 uses
  %i.tx = and i32 %i.tw, 63
  %i.ty = zext nneg i32 %i.tx to i64
  %i.tz = shl nuw i64 1, %i.ty
  %i.ua = icmp ult i32 %i.th, 65
  %i.ub = lshr i32 %i.tw, 6
  %i.uc = zext nneg i32 %i.ub to i64
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.uc
  %.in.i.i.i12.i.i.i = select i1 %i.ua, ptr %13, ptr %i.ud
  %i.ue = load i64, ptr %.in.i.i.i12.i.i.i, align 8, !tbaa !24
  %i.uf = and i64 %i.tz, %i.ue
  %i.ug = icmp ne i64 %i.uf, 0
  %i.uh = xor i1 %i.tv, %i.ug
  br i1 %i.uh, label %_ZNK4llvm5APInt3sgtERKS0_.exit.thread664, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ui = zext i32 %i.ti to i64
  %i.uj = add nuw nsw i64 %i.ui, 63               ; 2 uses
  %i.uk = lshr i64 %i.uj, 6                       ; 6 uses
  %.not.i.i.i.i68935 = icmp eq i64 %i.uk, 0
  br i1 %.not.i.i.i.i68935, label %.lr.ph.preheader.i.i120, label %.lr.ph

bb.au:                                            ; preds = %.lr.ph
  %.not.i.i.i.i68 = icmp eq i64 %i.ul, 0
  br i1 %.not.i.i.i.i68, label %.lr.ph.preheader.i.i120, label %.lr.ph, !llvm.loop !8

.lr.ph:                                           ; preds = %bb.at, %bb.au
  %indvars.iv.i.i.i.i67936 = phi i64 [ %i.ul, %bb.au ], [ %i.uk, %bb.at ]
  %i.ul = add nsw i64 %indvars.iv.i.i.i.i67936, -1 ; 4 uses
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %i.ul
  %i.un = load i64, ptr %i.um, align 8, !tbaa !26 ; 2 uses
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.ul
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !26 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.un, %i.up
  br i1 %.not13.i.i.i.i, label %bb.au, label %_ZNK4llvm5APInt3sgtERKS0_.exit, !llvm.loop !8

_ZNK4llvm5APInt3sgtERKS0_.exit:                   ; preds = %.lr.ph
  %.not743 = icmp ugt i64 %i.un, %i.up
  br i1 %.not743, label %bb.av, label %.lr.ph.preheader.i.i120

_ZNK4llvm5APInt3sgtERKS0_.exit.thread667:         ; preds = %_ZN4llvm5APIntD2Ev.exit66
  %i.uq = load i64, ptr %3, align 8, !tbaa !24    ; 3 uses
  %i.ur = icmp ne i32 %i.ti, 0                    ; 2 uses
  %i.us = sub nuw nsw i32 64, %i.ti
  %i.ut = zext nneg i32 %i.us to i64              ; 2 uses
  %i.uu = shl i64 %i.uq, %i.ut
  %i.uv = shl i64 %i.tf, %i.ut
  %i.uw = icmp sgt i64 %i.uu, %i.uv
  %.not746 = select i1 %i.ur, i1 %i.uw, i1 false
  br i1 %.not746, label %.thread669, label %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.thread3.i130

.thread669:                                       ; preds = %_ZNK4llvm5APInt3sgtERKS0_.exit.thread667
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.ux = xor i64 %i.uq, -1
  %i.uy = sub nsw i32 0, %i.ti
  %i.uz = and i32 %i.uy, 63
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = lshr i64 -1, %i.va                      ; 2 uses
  %i.vc = and i64 %i.vb, %i.ux
  %i.vd = add i64 %i.vc, 1
  %i.ve = and i64 %i.vd, %i.vb
  br label %_ZN4llvmngENS_5APIntE.exit

_ZNK4llvm5APInt3sgtERKS0_.exit.thread664:         ; preds = %bb.as
  br i1 %i.tv, label %_ZNK4llvm5APInt3sgtERKS0_.exit.thread664..lr.ph.preheader.i.i120_crit_edge, label %.thread666

_ZNK4llvm5APInt3sgtERKS0_.exit.thread664..lr.ph.preheader.i.i120_crit_edge: ; preds = %_ZNK4llvm5APInt3sgtERKS0_.exit.thread664
  %.pre798 = zext i32 %i.ti to i64
  %.pre800 = add nuw nsw i64 %.pre798, 63
  %.pre802 = lshr i64 %.pre800, 6
  br label %.lr.ph.preheader.i.i120

.thread666:                                       ; preds = %_ZNK4llvm5APInt3sgtERKS0_.exit.thread664
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %.pre792 = zext i32 %i.ti to i64
  %.pre794 = add nuw nsw i64 %.pre792, 63         ; 2 uses
  %.pre796 = lshr i64 %.pre794, 6
  br label %bb.aw

bb.av:                                            ; preds = %_ZNK4llvm5APInt3sgtERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread666
  %.pre-phi797 = phi i64 [ %i.uk, %bb.av ], [ %.pre796, %.thread666 ] ; 6 uses
  %.pre-phi795 = phi i64 [ %i.uj, %bb.av ], [ %.pre794, %.thread666 ]
  %i.vf = lshr i64 %.pre-phi795, 3
  %i.vg = and i64 %i.vf, 1073741816               ; 2 uses
  %i.vh = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.vg) #21 ; 8 uses
  %i.vi = load ptr, ptr %3, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vh, ptr align 8 %i.vi, i64 %i.vg, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %min.iters.check987 = icmp samesign ult i64 %.pre-phi797, 4
  br i1 %min.iters.check987, label %.lr.ph.i.i.i.i.i71.preheader, label %vector.ph988

vector.ph988:                                     ; preds = %bb.aw
  %n.vec989 = and i64 %.pre-phi797, 288230376151711740 ; 3 uses
  br label %vector.body990

vector.body990:                                   ; preds = %vector.body990, %vector.ph988
  %index991 = phi i64 [ 0, %vector.ph988 ], [ %index.next994, %vector.body990 ] ; 2 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %index991 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16 ; 2 uses
  %wide.load992 = load <2 x i64>, ptr %i.vj, align 8, !tbaa !26, !noalias !638
  %wide.load993 = load <2 x i64>, ptr %i.vk, align 8, !tbaa !26, !noalias !638
  %i.vl = xor <2 x i64> %wide.load992, splat (i64 -1)
  %i.vm = xor <2 x i64> %wide.load993, splat (i64 -1)
  store <2 x i64> %i.vl, ptr %i.vj, align 8, !tbaa !26, !noalias !638
  store <2 x i64> %i.vm, ptr %i.vk, align 8, !tbaa !26, !noalias !638
  %index.next994 = add nuw i64 %index991, 4       ; 2 uses
  %i.vn = icmp eq i64 %index.next994, %n.vec989
  br i1 %i.vn, label %middle.block995, label %vector.body990, !llvm.loop !582

middle.block995:                                  ; preds = %vector.body990
  %cmp.n996 = icmp eq i64 %.pre-phi797, %n.vec989
  br i1 %cmp.n996, label %.lr.ph.preheader.i.i.i.i.i75, label %.lr.ph.i.i.i.i.i71.preheader

.lr.ph.i.i.i.i.i71.preheader:                     ; preds = %bb.aw, %middle.block995
  %indvars.iv.i.i.i.i.i72.ph = phi i64 [ 0, %bb.aw ], [ %n.vec989, %middle.block995 ]
  br label %.lr.ph.i.i.i.i.i71

.lr.ph.i.i.i.i.i71:                               ; preds = %.lr.ph.i.i.i.i.i71.preheader, %.lr.ph.i.i.i.i.i71
  %indvars.iv.i.i.i.i.i72 = phi i64 [ %indvars.iv.next.i.i.i.i.i73, %.lr.ph.i.i.i.i.i71 ], [ %indvars.iv.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i71.preheader ] ; 2 uses
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %indvars.iv.i.i.i.i.i72 ; 2 uses
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !26, !noalias !638
  %i.vq = xor i64 %i.vp, -1
  store i64 %i.vq, ptr %i.vo, align 8, !tbaa !26, !noalias !638
  %indvars.iv.next.i.i.i.i.i73 = add nuw nsw i64 %indvars.iv.i.i.i.i.i72, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i74 = icmp eq i64 %indvars.iv.next.i.i.i.i.i73, %.pre-phi797
  br i1 %exitcond.not.i.i.i.i.i74, label %.lr.ph.preheader.i.i.i.i.i75, label %.lr.ph.i.i.i.i.i71, !llvm.loop !583

.lr.ph.preheader.i.i.i.i.i75:                     ; preds = %.lr.ph.i.i.i.i.i71, %middle.block995
  %i.vr = ptrtoint ptr %i.vh to i64
  %i.vs = sub i32 0, %i.ti
  %i.vt = and i32 %i.vs, 63
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = lshr i64 -1, %i.vu                      ; 2 uses
  %i.vw = getelementptr [8 x i8], ptr %i.vh, i64 %.pre-phi797
  %i.vx = getelementptr i8, ptr %i.vw, i64 -8     ; 4 uses
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !26, !noalias !638
  %i.vz = and i64 %i.vy, %i.vv
  store i64 %i.vz, ptr %i.vx, align 8, !tbaa !26, !noalias !638
  %i.wa = load i64, ptr %i.vh, align 8, !tbaa !26, !noalias !638
  %i.wb = add i64 %i.wa, 1                        ; 2 uses
  store i64 %i.wb, ptr %i.vh, align 8, !tbaa !26, !noalias !638
  %.not.peel.i.i.i.i.i76 = icmp eq i64 %i.wb, 0
  br i1 %.not.peel.i.i.i.i.i76, label %.lr.ph.i.i.i2.i.i79, label %.thread.i.i.i77

.lr.ph.i.i.i2.i.i79:                              ; preds = %.lr.ph.preheader.i.i.i.i.i75, %.lr.ph.i.i.i2.i.i79
  %indvars.iv.i.i.i3.i.i80 = phi i64 [ %indvars.iv.next.i.i.i4.i.i82, %.lr.ph.i.i.i2.i.i79 ], [ 1, %.lr.ph.preheader.i.i.i.i.i75 ] ; 2 uses
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %indvars.iv.i.i.i3.i.i80 ; 2 uses
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !26, !noalias !638
  %i.we = add i64 %i.wd, 1                        ; 2 uses
  store i64 %i.we, ptr %i.wc, align 8, !tbaa !26, !noalias !638
  %.not.i.i.i.i.i81 = icmp ne i64 %i.we, 0
  %indvars.iv.next.i.i.i4.i.i82 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i80, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i83 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i82, %.pre-phi797
  %or.cond.i.i.i84 = select i1 %.not.i.i.i.i.i81, i1 true, i1 %exitcond.not.i.i.i5.i.i83
  br i1 %or.cond.i.i.i84, label %.thread.i.i.i77, label %.lr.ph.i.i.i2.i.i79, !llvm.loop !0

.thread.i.i.i77:                                  ; preds = %.lr.ph.i.i.i2.i.i79, %.lr.ph.preheader.i.i.i.i.i75
  %i.wf = load i64, ptr %i.vx, align 8, !tbaa !26, !noalias !638
  %i.wg = and i64 %i.wf, %i.vv
  store i64 %i.wg, ptr %i.vx, align 8, !tbaa !26, !noalias !638
  br label %_ZN4llvmngENS_5APIntE.exit

_ZN4llvmngENS_5APIntE.exit:                       ; preds = %.thread669, %.thread.i.i.i77
  %.sroa.0620.1 = phi i64 [ %i.ve, %.thread669 ], [ %i.vr, %.thread.i.i.i77 ]
  %i.wh = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i32 %i.ti, ptr %i.wh, align 8, !tbaa !23, !alias.scope !638
  store i64 %.sroa.0620.1, ptr %18, align 8, !alias.scope !638
  call fastcc void @"_ZZN4llvm8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_jENK3$_0clERKS1_S4_"(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(12) %9)
  %i.wi = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !23, !noalias !639 ; 6 uses
  %i.wk = icmp ult i32 %i.wj, 65                  ; 2 uses
  br i1 %i.wk, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i100, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvmngENS_5APIntE.exit
  %i.wl = load ptr, ptr %17, align 8, !noalias !639 ; 7 uses
  %i.wm = zext i32 %i.wj to i64
  %i.wn = add nuw nsw i64 %i.wm, 63
  %i.wo = lshr i64 %i.wn, 6                       ; 5 uses
  %i.wp = ptrtoint ptr %i.wl to i64
  %min.iters.check999 = icmp ult i32 %i.wj, 193
  br i1 %min.iters.check999, label %.lr.ph.i.i.i.i.i86.preheader, label %vector.ph1000

vector.ph1000:                                    ; preds = %bb.ax
  %n.vec1001 = and i64 %i.wo, 134217724           ; 3 uses
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %vector.ph1000
  %index1003 = phi i64 [ 0, %vector.ph1000 ], [ %index.next1006, %vector.body1002 ] ; 2 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %index1003 ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16 ; 2 uses
  %wide.load1004 = load <2 x i64>, ptr %i.wq, align 8, !tbaa !26, !noalias !639
  %wide.load1005 = load <2 x i64>, ptr %i.wr, align 8, !tbaa !26, !noalias !639
  %i.ws = xor <2 x i64> %wide.load1004, splat (i64 -1)
  %i.wt = xor <2 x i64> %wide.load1005, splat (i64 -1)
  store <2 x i64> %i.ws, ptr %i.wq, align 8, !tbaa !26, !noalias !639
  store <2 x i64> %i.wt, ptr %i.wr, align 8, !tbaa !26, !noalias !639
  %index.next1006 = add nuw i64 %index1003, 4     ; 2 uses
  %i.wu = icmp eq i64 %index.next1006, %n.vec1001
  br i1 %i.wu, label %middle.block1007, label %vector.body1002, !llvm.loop !586

middle.block1007:                                 ; preds = %vector.body1002
  %cmp.n1008 = icmp eq i64 %i.wo, %n.vec1001
  br i1 %cmp.n1008, label %.lr.ph.preheader.i.i.i.i.i90, label %.lr.ph.i.i.i.i.i86.preheader

.lr.ph.i.i.i.i.i86.preheader:                     ; preds = %bb.ax, %middle.block1007
  %indvars.iv.i.i.i.i.i87.ph = phi i64 [ 0, %bb.ax ], [ %n.vec1001, %middle.block1007 ]
  br label %.lr.ph.i.i.i.i.i86

.lr.ph.i.i.i.i.i86:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader, %.lr.ph.i.i.i.i.i86
  %indvars.iv.i.i.i.i.i87 = phi i64 [ %indvars.iv.next.i.i.i.i.i88, %.lr.ph.i.i.i.i.i86 ], [ %indvars.iv.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i86.preheader ] ; 2 uses
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv.i.i.i.i.i87 ; 2 uses
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !26, !noalias !639
  %i.wx = xor i64 %i.ww, -1
  store i64 %i.wx, ptr %i.wv, align 8, !tbaa !26, !noalias !639
  %indvars.iv.next.i.i.i.i.i88 = add nuw nsw i64 %indvars.iv.i.i.i.i.i87, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i89 = icmp eq i64 %indvars.iv.next.i.i.i.i.i88, %i.wo
  br i1 %exitcond.not.i.i.i.i.i89, label %.lr.ph.preheader.i.i.i.i.i90, label %.lr.ph.i.i.i.i.i86, !llvm.loop !587

.lr.ph.preheader.i.i.i.i.i90:                     ; preds = %.lr.ph.i.i.i.i.i86, %middle.block1007
  %i.wy = sub i32 0, %i.wj
  %i.wz = and i32 %i.wy, 63
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = lshr i64 -1, %i.xa                      ; 2 uses
  %i.xc = getelementptr [8 x i8], ptr %i.wl, i64 %i.wo
  %i.xd = getelementptr i8, ptr %i.xc, i64 -8     ; 4 uses
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !26, !noalias !639
  %i.xf = and i64 %i.xe, %i.xb
  store i64 %i.xf, ptr %i.xd, align 8, !tbaa !26, !noalias !639
  %i.xg = load i64, ptr %i.wl, align 8, !tbaa !26, !noalias !639
  %i.xh = add i64 %i.xg, 1                        ; 2 uses
  store i64 %i.xh, ptr %i.wl, align 8, !tbaa !26, !noalias !639
  %.not.peel.i.i.i.i.i91 = icmp eq i64 %i.xh, 0
  br i1 %.not.peel.i.i.i.i.i91, label %.lr.ph.i.i.i2.i.i94, label %.thread.i.i.i92

.lr.ph.i.i.i2.i.i94:                              ; preds = %.lr.ph.preheader.i.i.i.i.i90, %.lr.ph.i.i.i2.i.i94
  %indvars.iv.i.i.i3.i.i95 = phi i64 [ %indvars.iv.next.i.i.i4.i.i97, %.lr.ph.i.i.i2.i.i94 ], [ 1, %.lr.ph.preheader.i.i.i.i.i90 ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv.i.i.i3.i.i95 ; 2 uses
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !26, !noalias !639
  %i.xk = add i64 %i.xj, 1                        ; 2 uses
  store i64 %i.xk, ptr %i.xi, align 8, !tbaa !26, !noalias !639
  %.not.i.i.i.i.i96 = icmp ne i64 %i.xk, 0
  %indvars.iv.next.i.i.i4.i.i97 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i95, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i98 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i97, %i.wo
  %or.cond.i.i.i99 = select i1 %.not.i.i.i.i.i96, i1 true, i1 %exitcond.not.i.i.i5.i.i98
  br i1 %or.cond.i.i.i99, label %.thread.i.i.i92, label %.lr.ph.i.i.i2.i.i94, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i100: ; preds = %_ZN4llvmngENS_5APIntE.exit
  %i.xl = load i64, ptr %17, align 8, !tbaa !24, !noalias !639
  %i.xm = xor i64 %i.xl, -1
  %i.xn = sub nsw i32 0, %i.wj
  %i.xo = and i32 %i.xn, 63
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = lshr i64 -1, %i.xp
  %i.xr = icmp eq i32 %i.wj, 0
  %spec.select.i.i.i101 = select i1 %i.xr, i64 0, i64 %i.xq ; 2 uses
  %i.xs = and i64 %spec.select.i.i.i101, %i.xm
  %i.xt = add i64 %i.xs, 1
  %i.xu = and i64 %i.xt, %spec.select.i.i.i101    ; 2 uses
  store i64 %i.xu, ptr %17, align 8, !tbaa !24, !noalias !639
  br label %_ZN4llvmngENS_5APIntE.exit102

.thread.i.i.i92:                                  ; preds = %.lr.ph.i.i.i2.i.i94, %.lr.ph.preheader.i.i.i.i.i90
  %i.xv = load i64, ptr %i.xd, align 8, !tbaa !26, !noalias !639
  %i.xw = and i64 %i.xv, %i.xb
  store i64 %i.xw, ptr %i.xd, align 8, !tbaa !26, !noalias !639
  br label %_ZN4llvmngENS_5APIntE.exit102

_ZN4llvmngENS_5APIntE.exit102:                    ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i100, %.thread.i.i.i92
  %i.xx = phi i64 [ %i.xu, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i100 ], [ %i.wp, %.thread.i.i.i92 ] ; 4 uses
  store i32 0, ptr %i.wi, align 8, !tbaa !23, !noalias !639
  %i.xy = load i32, ptr %i.c, align 8, !tbaa !23  ; 5 uses
  %i.xz = icmp ult i32 %i.xy, 65
  br i1 %i.xz, label %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.thread3.i113, label %.lr.ph.preheader.i.i103

.lr.ph.preheader.i.i103:                          ; preds = %_ZN4llvmngENS_5APIntE.exit102
  %i.ya = load ptr, ptr %3, align 8, !tbaa !24
  %i.yb = inttoptr i64 %i.xx to ptr
  %i.yc = zext i32 %i.xy to i64
  %i.yd = add nuw nsw i64 %i.yc, 63
  %i.ye = lshr i64 %i.yd, 6                       ; 2 uses
  br label %.lr.ph.i.i104

.lr.ph.i.i104:                                    ; preds = %bb.ba, %.lr.ph.preheader.i.i103
  %indvars.iv.i.i105 = phi i64 [ 0, %.lr.ph.preheader.i.i103 ], [ %indvars.iv.next.i.i110, %bb.ba ] ; 3 uses
  %.02021.i.i106 = phi i1 [ true, %.lr.ph.preheader.i.i103 ], [ %i.yn, %bb.ba ]
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %indvars.iv.i.i105 ; 2 uses
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !26 ; 4 uses
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv.i.i105
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !26 ; 3 uses
  br i1 %.02021.i.i106, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i104
  %.neg.i.i107 = xor i64 %i.yi, -1
  %i.yj = add i64 %i.yg, %.neg.i.i107             ; 2 uses
  %i.yk = icmp uge i64 %i.yj, %i.yg
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i104
  %i.yl = sub i64 %i.yg, %i.yi
  %i.ym = icmp ugt i64 %i.yi, %i.yg
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sink.i.i108 = phi i64 [ %i.yl, %bb.az ], [ %i.yj, %bb.ay ]
  %.1.in.i.i109 = phi i1 [ %i.ym, %bb.az ], [ %i.yk, %bb.ay ]
  store i64 %.sink.i.i108, ptr %i.yf, align 8, !tbaa !26
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i105, 1 ; 2 uses
  %exitcond.not.i.i111 = icmp eq i64 %indvars.iv.next.i.i110, %i.ye
  %i.yn = xor i1 %.1.in.i.i109, true
  br i1 %exitcond.not.i.i111, label %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.i112, label %.lr.ph.i.i104, !llvm.loop !5

_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.thread3.i113: ; preds = %_ZN4llvmngENS_5APIntE.exit102
  %i.yo = load i64, ptr %3, align 8, !tbaa !24
  %i.yp = sub i64 %i.yo, %i.xx
  %i.yq = sub nsw i32 0, %i.xy
  %i.yr = and i32 %i.yq, 63
  %i.ys = zext nneg i32 %i.yr to i64
  %i.yt = lshr i64 -1, %i.ys
  %i.yu = icmp eq i32 %i.xy, 0
  %spec.select.i114 = select i1 %i.yu, i64 0, i64 %i.yt, !prof !39
  %i.yv = and i64 %i.yp, %spec.select.i114
  store i64 %i.yv, ptr %3, align 8, !tbaa !24
  br label %_ZN4llvm5APIntmIERKS0_.exit115

_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.i112:     ; preds = %bb.ba
  %i.yw = sub i32 0, %i.xy
  %i.yx = and i32 %i.yw, 63
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = lshr i64 -1, %i.yy
  %i.za = load ptr, ptr %3, align 8, !tbaa !24
  %i.zb = getelementptr [8 x i8], ptr %i.za, i64 %i.ye
  %i.zc = getelementptr i8, ptr %i.zb, i64 -8     ; 2 uses
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !26
  %i.ze = and i64 %i.zd, %i.yz
  store i64 %i.ze, ptr %i.zc, align 8, !tbaa !26
  br label %_ZN4llvm5APIntmIERKS0_.exit115

_ZN4llvm5APIntmIERKS0_.exit115:                   ; preds = %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.thread3.i113, %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.i112
  %i.zf = icmp eq i64 %i.xx, 0
  %or.cond749 = select i1 %i.wk, i1 true, i1 %i.zf
  br i1 %or.cond749, label %_ZN4llvm5APIntD2Ev.exit117, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm5APIntmIERKS0_.exit115
  %i.zg = inttoptr i64 %i.xx to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.zg) #22
  br label %_ZN4llvm5APIntD2Ev.exit117

_ZN4llvm5APIntD2Ev.exit117:                       ; preds = %bb.bb, %_ZN4llvm5APIntmIERKS0_.exit115
  %i.zh = load i32, ptr %i.wh, align 8, !tbaa !23
  %i.zi = icmp ugt i32 %i.zh, 64
  br i1 %i.zi, label %bb.bc, label %_ZN4llvm5APIntD2Ev.exit119

bb.bc:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit117
  %i.zj = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.zk = icmp eq ptr %i.zj, null
  br i1 %i.zk, label %_ZN4llvm5APIntD2Ev.exit119, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZdaPv(ptr noundef nonnull %i.zj) #22
  br label %_ZN4llvm5APIntD2Ev.exit119

_ZN4llvm5APIntD2Ev.exit119:                       ; preds = %bb.bd, %bb.bc, %_ZN4llvm5APIntD2Ev.exit117
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %.pre784 = load i32, ptr %i.sy, align 8, !tbaa !23
  br label %_ZN4llvm5APIntmIERKS0_.exit132

.lr.ph.preheader.i.i120:                          ; preds = %bb.au, %bb.at, %_ZNK4llvm5APInt3sgtERKS0_.exit.thread664..lr.ph.preheader.i.i120_crit_edge, %_ZNK4llvm5APInt3sgtERKS0_.exit
  %.pre-phi803 = phi i64 [ %.pre802, %_ZNK4llvm5APInt3sgtERKS0_.exit.thread664..lr.ph.preheader.i.i120_crit_edge ], [ %i.uk, %_ZNK4llvm5APInt3sgtERKS0_.exit ], [ %i.uk, %bb.at ], [ %i.uk, %bb.au ] ; 2 uses
  br label %.lr.ph.i.i121

.lr.ph.i.i121:                                    ; preds = %bb.bg, %.lr.ph.preheader.i.i120
  %indvars.iv.i.i122 = phi i64 [ 0, %.lr.ph.preheader.i.i120 ], [ %indvars.iv.next.i.i127, %bb.bg ] ; 3 uses
  %.02021.i.i123 = phi i1 [ true, %.lr.ph.preheader.i.i120 ], [ %i.zt, %bb.bg ]
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %indvars.iv.i.i122 ; 2 uses
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !26 ; 4 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %indvars.iv.i.i122
  %i.zo = load i64, ptr %i.zn, align 8, !tbaa !26 ; 3 uses
  br i1 %.02021.i.i123, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i121
  %.neg.i.i124 = xor i64 %i.zo, -1
  %i.zp = add i64 %i.zm, %.neg.i.i124             ; 2 uses
  %i.zq = icmp uge i64 %i.zp, %i.zm
  br label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i.i121
  %i.zr = sub i64 %i.zm, %i.zo
  %i.zs = icmp ugt i64 %i.zo, %i.zm
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.sink.i.i125 = phi i64 [ %i.zr, %bb.bf ], [ %i.zp, %bb.be ]
  %.1.in.i.i126 = phi i1 [ %i.zs, %bb.bf ], [ %i.zq, %bb.be ]
  store i64 %.sink.i.i125, ptr %i.zl, align 8, !tbaa !26
  %indvars.iv.next.i.i127 = add nuw nsw i64 %indvars.iv.i.i122, 1 ; 2 uses
  %exitcond.not.i.i128 = icmp eq i64 %indvars.iv.next.i.i127, %.pre-phi803
  %i.zt = xor i1 %.1.in.i.i126, true
  br i1 %exitcond.not.i.i128, label %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.i129, label %.lr.ph.i.i121, !llvm.loop !5

_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.thread3.i130: ; preds = %_ZNK4llvm5APInt3sgtERKS0_.exit.thread667
  %i.zu = sub i64 %i.uq, %i.tf
  %i.zv = sub nsw i32 0, %i.ti
  %i.zw = and i32 %i.zv, 63
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = lshr i64 -1, %i.zx
  %spec.select.i131 = select i1 %i.ur, i64 %i.zy, i64 0, !prof !640
  %i.zz = and i64 %i.zu, %spec.select.i131
  store i64 %i.zz, ptr %3, align 8, !tbaa !24
  br label %_ZN4llvm5APIntmIERKS0_.exit132

_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.i129:     ; preds = %bb.bg
  %i.aaa = sub i32 0, %i.ti
  %i.aab = and i32 %i.aaa, 63
  %i.aac = zext nneg i32 %i.aab to i64
  %i.aad = lshr i64 -1, %i.aac
  %i.aae = load ptr, ptr %3, align 8, !tbaa !24
  %i.aaf = getelementptr [8 x i8], ptr %i.aae, i64 %.pre-phi803
  %i.aag = getelementptr i8, ptr %i.aaf, i64 -8   ; 2 uses
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !26
  %i.aai = and i64 %i.aah, %i.aad
  store i64 %i.aai, ptr %i.aag, align 8, !tbaa !26
  br label %_ZN4llvm5APIntmIERKS0_.exit132

_ZN4llvm5APIntmIERKS0_.exit132:                   ; preds = %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.i129, %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.thread3.i130, %_ZN4llvm5APIntD2Ev.exit119
  %i.aaj = phi i32 [ %.pre784, %_ZN4llvm5APIntD2Ev.exit119 ], [ %i.th, %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.thread3.i130 ], [ %i.th, %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.i129 ]
  %i.aak = phi i1 [ true, %_ZN4llvm5APIntD2Ev.exit119 ], [ false, %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.thread3.i130 ], [ false, %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.i129 ]
  %i.aal = icmp ugt i32 %i.aaj, 64
  br i1 %i.aal, label %bb.bh, label %_ZN4llvm5APIntD2Ev.exit133

bb.bh:                                            ; preds = %_ZN4llvm5APIntmIERKS0_.exit132
  %i.aam = load ptr, ptr %13, align 8, !tbaa !24  ; 2 uses
  %i.aan = icmp eq ptr %i.aam, null
  br i1 %i.aan, label %_ZN4llvm5APIntD2Ev.exit133, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdaPv(ptr noundef nonnull %i.aam) #22
  br label %_ZN4llvm5APIntD2Ev.exit133

_ZN4llvm5APIntD2Ev.exit133:                       ; preds = %_ZN4llvm5APIntmIERKS0_.exit132, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZN4llvm5APIntmIERKS0_.exit

_ZN4llvm5APIntmIERKS0_.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit53, %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.i, %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.thread3.i, %_ZNK4llvm5APInt18isStrictlyPositiveEv.exit.thread659, %_ZNK4llvm5APInt18isStrictlyPositiveEv.exit, %_ZN4llvm5APIntD2Ev.exit133
  %.1 = phi i1 [ %i.aak, %_ZN4llvm5APIntD2Ev.exit133 ], [ false, %_ZNK4llvm5APInt18isStrictlyPositiveEv.exit.thread659 ], [ false, %_ZNK4llvm5APInt18isStrictlyPositiveEv.exit ], [ false, %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.i ], [ false, %_ZN4llvm5APInt10tcSubtractEPmPKmmj.exit.thread3.i ], [ false, %_ZN4llvm5APIntD2Ev.exit53 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.aao = load i32, ptr %i.a, align 8, !tbaa !23 ; 8 uses
  %i.aap = icmp ult i32 %i.aao, 65                ; 2 uses
  br i1 %i.aap, label %_ZN4llvm5APIntmLEm.exit487.thread, label %.lr.ph.i.i470

.lr.ph.i.i470:                                    ; preds = %_ZN4llvm5APIntmIERKS0_.exit
  %i.aaq = zext i32 %i.aao to i64
  %i.aar = add nuw nsw i64 %i.aaq, 63             ; 4 uses
  %i.aas = lshr i64 %i.aar, 3
  %i.aat = and i64 %i.aas, 1073741816             ; 3 uses
  %i.aau = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aat) #21 ; 7 uses
  %i.aav = load ptr, ptr %1, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aau, ptr align 8 %i.aav, i64 %i.aat, i1 false)
  %i.aaw = lshr i64 %i.aar, 6                     ; 13 uses
  %i.aax = add nsw i64 %i.aaw, -1                 ; 2 uses
  %i.aay = icmp eq i64 %i.aax, 0
  br i1 %i.aay, label %.lr.ph.split.split.i.i471.epil.preheader, label %.lr.ph.i.i470.new

.lr.ph.i.i470.new:                                ; preds = %.lr.ph.i.i470
  %unroll_iter1095 = and i64 %i.aaw, 134217726
  br label %.lr.ph.split.split.i.i471

.lr.ph.split.split.i.i471:                        ; preds = %bb.bl, %.lr.ph.i.i470.new
  %indvars.iv.i.i472 = phi i64 [ 0, %.lr.ph.i.i470.new ], [ %indvars.iv.next.i.i479.1, %bb.bl ] ; 3 uses
  %.06985.i.i473 = phi i64 [ 0, %.lr.ph.i.i470.new ], [ %.3.i.i478.1, %bb.bl ] ; 2 uses
  %niter1096 = phi i64 [ 0, %.lr.ph.i.i470.new ], [ %niter1096.next.1, %bb.bl ]
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %indvars.iv.i.i472 ; 2 uses
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !26, !noalias !641 ; 3 uses
  %i.abb = icmp eq i64 %i.aba, 0
  br i1 %i.abb, label %.lr.ph.split.split.i.i471.1, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.split.split.i.i471
  %i.abc = shl i64 %i.aba, 2                      ; 2 uses
  %i.abd = lshr i64 %i.aba, 62
  %i.abe = add i64 %i.abc, %.06985.i.i473         ; 2 uses
  %i.abf = icmp ult i64 %i.abe, %i.abc
  %i.abg = zext i1 %i.abf to i64
  %.2.i.i476 = add nuw nsw i64 %i.abd, %i.abg
  br label %.lr.ph.split.split.i.i471.1

.lr.ph.split.split.i.i471.1:                      ; preds = %bb.bj, %.lr.ph.split.split.i.i471
  %.065.i.i477 = phi i64 [ %i.abe, %bb.bj ], [ %.06985.i.i473, %.lr.ph.split.split.i.i471 ]
  %.3.i.i478 = phi i64 [ %.2.i.i476, %bb.bj ], [ 0, %.lr.ph.split.split.i.i471 ] ; 2 uses
  store i64 %.065.i.i477, ptr %i.aaz, align 8, !tbaa !26, !noalias !641
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %indvars.iv.i.i472
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 8 ; 2 uses
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !26, !noalias !641 ; 3 uses
  %i.abk = icmp eq i64 %i.abj, 0
  br i1 %i.abk, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.split.split.i.i471.1
  %i.abl = shl i64 %i.abj, 2                      ; 2 uses
  %i.abm = lshr i64 %i.abj, 62
  %i.abn = add i64 %i.abl, %.3.i.i478             ; 2 uses
  %i.abo = icmp ult i64 %i.abn, %i.abl
  %i.abp = zext i1 %i.abo to i64
  %.2.i.i476.1 = add nuw nsw i64 %i.abm, %i.abp
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.lr.ph.split.split.i.i471.1
  %.065.i.i477.1 = phi i64 [ %i.abn, %bb.bk ], [ %.3.i.i478, %.lr.ph.split.split.i.i471.1 ]
  %.3.i.i478.1 = phi i64 [ %.2.i.i476.1, %bb.bk ], [ 0, %.lr.ph.split.split.i.i471.1 ] ; 2 uses
  store i64 %.065.i.i477.1, ptr %i.abi, align 8, !tbaa !26, !noalias !641
  %indvars.iv.next.i.i479.1 = add nuw nsw i64 %indvars.iv.i.i472, 2 ; 2 uses
  %niter1096.next.1 = add nuw nsw i64 %niter1096, 2 ; 2 uses
  %niter1096.ncmp.1 = icmp eq i64 %niter1096.next.1, %unroll_iter1095
  br i1 %niter1096.ncmp.1, label %_ZN4llvm5APIntmLEm.exit487.unr-lcssa, label %.lr.ph.split.split.i.i471, !llvm.loop !7

_ZN4llvm5APIntmLEm.exit487.thread:                ; preds = %_ZN4llvm5APIntmIERKS0_.exit
  %i.abq = load i64, ptr %1, align 8, !tbaa !24
  %i.abr = shl i64 %i.abq, 2
  %i.abs = sub nsw i32 0, %i.aao
  %i.abt = and i32 %i.abs, 63
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = lshr i64 -1, %i.abu
  %i.abw = icmp eq i32 %i.aao, 0
  %spec.select.i486 = select i1 %i.abw, i64 0, i64 %i.abv, !prof !39 ; 4 uses
  %i.abx = and i64 %i.abr, %spec.select.i486
  %i.aby = load i64, ptr %3, align 8, !tbaa !24, !noalias !642
  %i.abz = mul i64 %i.abx, %i.aby
  %i.aca = xor i64 %i.abz, -1
  %i.acb = and i64 %spec.select.i486, %i.aca
  %i.acc = add i64 %i.acb, 1
  %i.acd = and i64 %i.acc, %spec.select.i486
  %i.ace = load i64, ptr %11, align 8, !noalias !643 ; 2 uses
  %i.acf = add i64 %i.acd, %i.ace
  %i.acg = and i64 %i.acf, %spec.select.i486      ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %i.aao, ptr %i.ach, align 8, !tbaa !23, !alias.scope !643
  store i64 %i.acg, ptr %19, align 8, !alias.scope !643
  %i.aci = inttoptr i64 %i.acg to ptr
  %i.acj = inttoptr i64 %i.ace to ptr
  br label %_ZN4llvm5APIntD2Ev.exit170

_ZN4llvm5APIntmLEm.exit487.unr-lcssa:             ; preds = %bb.bl
  %i.ack = and i64 %i.aar, 64
  %lcmp.mod1093.not = icmp eq i64 %i.ack, 0
  br i1 %lcmp.mod1093.not, label %_ZN4llvm5APIntmLEm.exit487, label %.lr.ph.split.split.i.i471.epil.preheader

.lr.ph.split.split.i.i471.epil.preheader:         ; preds = %_ZN4llvm5APIntmLEm.exit487.unr-lcssa, %.lr.ph.i.i470
  %indvars.iv.i.i472.epil.init = phi i64 [ 0, %.lr.ph.i.i470 ], [ %indvars.iv.next.i.i479.1, %_ZN4llvm5APIntmLEm.exit487.unr-lcssa ]
  %.06985.i.i473.epil.init = phi i64 [ 0, %.lr.ph.i.i470 ], [ %.3.i.i478.1, %_ZN4llvm5APIntmLEm.exit487.unr-lcssa ] ; 2 uses
  %lcmp.mod1094 = trunc i64 %i.aaw to i1
  call void @llvm.assume(i1 %lcmp.mod1094)
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %indvars.iv.i.i472.epil.init ; 2 uses
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !26, !noalias !641 ; 2 uses
  %i.acn = icmp eq i64 %i.acm, 0
  %i.aco = shl i64 %i.acm, 2
  %i.acp = add i64 %i.aco, %.06985.i.i473.epil.init
  %.065.i.i477.epil = select i1 %i.acn, i64 %.06985.i.i473.epil.init, i64 %i.acp
  store i64 %.065.i.i477.epil, ptr %i.acl, align 8, !tbaa !26, !noalias !641
  br label %_ZN4llvm5APIntmLEm.exit487

_ZN4llvm5APIntmLEm.exit487:                       ; preds = %_ZN4llvm5APIntmLEm.exit487.unr-lcssa, %.lr.ph.split.split.i.i471.epil.preheader
  %.pn.in.in.i482 = sub i32 0, %i.aao
  %.pn.in.i483 = and i32 %.pn.in.in.i482, 63
  %.pn.i484 = zext nneg i32 %.pn.in.i483 to i64
  %i.acq = lshr i64 -1, %.pn.i484                 ; 5 uses
  %i.acr = getelementptr [8 x i8], ptr %i.aau, i64 %i.aaw
  %i.acs = getelementptr i8, ptr %i.acr, i64 -8   ; 2 uses
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !26, !noalias !641
  %i.acu = and i64 %i.act, %i.acq
  store i64 %i.acu, ptr %i.acs, align 8, !tbaa !26, !noalias !641
  %i.acv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aat) #21, !noalias !642 ; 12 uses
  %i.acw = load ptr, ptr %3, align 8, !tbaa !24, !noalias !642
  %i.acx = trunc nuw nsw i64 %i.aaw to i32        ; 2 uses
  br label %.lr.ph.i.i137

.lr.ph.i.i137:                                    ; preds = %_ZN4llvm5APIntmLEm.exit487, %.lr.ph.i.i137
  %indvars.iv.i.i138 = phi i64 [ %indvars.iv.next.i.i139, %.lr.ph.i.i137 ], [ 0, %_ZN4llvm5APIntmLEm.exit487 ] ; 5 uses
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.i.i138
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv.i.i138
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !26, !noalias !642
  %i.adb = icmp ne i64 %indvars.iv.i.i138, 0
  %i.adc = trunc i64 %indvars.iv.i.i138 to i32
  %i.add = sub i32 %i.acx, %i.adc
  %i.ade = call noundef i32 @_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.acy, ptr noundef nonnull readonly %i.aau, i64 noundef %i.ada, i64 noundef 0, i32 noundef %i.acx, i32 noundef %i.add, i1 noundef zeroext %i.adb), !noalias !642 ; 0 uses
  %indvars.iv.next.i.i139 = add nuw nsw i64 %indvars.iv.i.i138, 1 ; 2 uses
  %exitcond.not.i.i140 = icmp eq i64 %indvars.iv.next.i.i139, %i.aaw
  br i1 %exitcond.not.i.i140, label %bb.bm, label %.lr.ph.i.i137, !llvm.loop !6

bb.bm:                                            ; preds = %.lr.ph.i.i137
  %i.adf = getelementptr [8 x i8], ptr %i.acv, i64 %i.aaw
  %i.adg = getelementptr i8, ptr %i.adf, i64 -8   ; 8 uses
  %i.adh = load i64, ptr %i.adg, align 8, !tbaa !26, !noalias !642
  %i.adi = and i64 %i.adh, %i.acq
  store i64 %i.adi, ptr %i.adg, align 8, !tbaa !26, !noalias !642
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %min.iters.check1011 = icmp ult i32 %i.aao, 193
  br i1 %min.iters.check1011, label %.lr.ph.i.i.i.i.i143.preheader, label %vector.ph1012

vector.ph1012:                                    ; preds = %bb.bm
  %n.vec1013 = and i64 %i.aaw, 134217724          ; 3 uses
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %vector.ph1012
  %index1015 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1018, %vector.body1014 ] ; 2 uses
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %index1015 ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 16 ; 2 uses
  %wide.load1016 = load <2 x i64>, ptr %i.adj, align 8, !tbaa !26, !noalias !643
  %wide.load1017 = load <2 x i64>, ptr %i.adk, align 8, !tbaa !26, !noalias !643
  %i.adl = xor <2 x i64> %wide.load1016, splat (i64 -1)
  %i.adm = xor <2 x i64> %wide.load1017, splat (i64 -1)
  store <2 x i64> %i.adl, ptr %i.adj, align 8, !tbaa !26, !noalias !643
  store <2 x i64> %i.adm, ptr %i.adk, align 8, !tbaa !26, !noalias !643
  %index.next1018 = add nuw i64 %index1015, 4     ; 2 uses
  %i.adn = icmp eq i64 %index.next1018, %n.vec1013
  br i1 %i.adn, label %middle.block1019, label %vector.body1014, !llvm.loop !594

middle.block1019:                                 ; preds = %vector.body1014
  %cmp.n1020 = icmp eq i64 %i.aaw, %n.vec1013
  br i1 %cmp.n1020, label %.lr.ph.preheader.i.i.i.i.i147, label %.lr.ph.i.i.i.i.i143.preheader

.lr.ph.i.i.i.i.i143.preheader:                    ; preds = %bb.bm, %middle.block1019
  %indvars.iv.i.i.i.i.i144.ph = phi i64 [ 0, %bb.bm ], [ %n.vec1013, %middle.block1019 ]
  br label %.lr.ph.i.i.i.i.i143

.lr.ph.i.i.i.i.i143:                              ; preds = %.lr.ph.i.i.i.i.i143.preheader, %.lr.ph.i.i.i.i.i143
  %indvars.iv.i.i.i.i.i144 = phi i64 [ %indvars.iv.next.i.i.i.i.i145, %.lr.ph.i.i.i.i.i143 ], [ %indvars.iv.i.i.i.i.i144.ph, %.lr.ph.i.i.i.i.i143.preheader ] ; 2 uses
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.i.i.i.i.i144 ; 2 uses
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !26, !noalias !643
  %i.adq = xor i64 %i.adp, -1
  store i64 %i.adq, ptr %i.ado, align 8, !tbaa !26, !noalias !643
  %indvars.iv.next.i.i.i.i.i145 = add nuw nsw i64 %indvars.iv.i.i.i.i.i144, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i146 = icmp eq i64 %indvars.iv.next.i.i.i.i.i145, %i.aaw
  br i1 %exitcond.not.i.i.i.i.i146, label %.lr.ph.preheader.i.i.i.i.i147, label %.lr.ph.i.i.i.i.i143, !llvm.loop !595

.lr.ph.preheader.i.i.i.i.i147:                    ; preds = %.lr.ph.i.i.i.i.i143, %middle.block1019
  %i.adr = ptrtoint ptr %i.acv to i64             ; 2 uses
  %i.ads = load i64, ptr %i.adg, align 8, !tbaa !26, !noalias !643
  %i.adt = and i64 %i.ads, %i.acq
  store i64 %i.adt, ptr %i.adg, align 8, !tbaa !26, !noalias !643
  %i.adu = load i64, ptr %i.acv, align 8, !tbaa !26, !noalias !643
  %i.adv = add i64 %i.adu, 1                      ; 2 uses
  store i64 %i.adv, ptr %i.acv, align 8, !tbaa !26, !noalias !643
  %.not.peel.i.i.i.i.i148 = icmp eq i64 %i.adv, 0
  br i1 %.not.peel.i.i.i.i.i148, label %.lr.ph.i.i.i2.i.i159, label %.lr.ph.preheader.i.i.i149

.lr.ph.i.i.i2.i.i159:                             ; preds = %.lr.ph.preheader.i.i.i.i.i147, %.lr.ph.i.i.i2.i.i159
  %indvars.iv.i.i.i3.i.i160 = phi i64 [ %indvars.iv.next.i.i.i4.i.i162, %.lr.ph.i.i.i2.i.i159 ], [ 1, %.lr.ph.preheader.i.i.i.i.i147 ] ; 2 uses
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.i.i.i3.i.i160 ; 2 uses
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !26, !noalias !643
  %i.ady = add i64 %i.adx, 1                      ; 2 uses
  store i64 %i.ady, ptr %i.adw, align 8, !tbaa !26, !noalias !643
  %.not.i.i.i.i.i161 = icmp ne i64 %i.ady, 0
  %indvars.iv.next.i.i.i4.i.i162 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i160, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i163 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i162, %i.aaw
  %or.cond.i.i.i164 = select i1 %.not.i.i.i.i.i161, i1 true, i1 %exitcond.not.i.i.i5.i.i163
  br i1 %or.cond.i.i.i164, label %.lr.ph.preheader.i.i.i149, label %.lr.ph.i.i.i2.i.i159, !llvm.loop !0

.lr.ph.preheader.i.i.i149:                        ; preds = %.lr.ph.i.i.i2.i.i159, %.lr.ph.preheader.i.i.i.i.i147
  %i.adz = load i64, ptr %i.adg, align 8, !tbaa !26, !noalias !643
  %i.aea = and i64 %i.adz, %i.acq
  store i64 %i.aea, ptr %i.adg, align 8, !tbaa !26, !noalias !643
  %i.aeb = load ptr, ptr %11, align 8, !tbaa !24, !noalias !643 ; 4 uses
  %i.aec = icmp eq i64 %i.aax, 0
  br i1 %i.aec, label %.lr.ph.i.i.i150.epil.preheader, label %.lr.ph.preheader.i.i.i149.new

.lr.ph.preheader.i.i.i149.new:                    ; preds = %.lr.ph.preheader.i.i.i149
  %unroll_iter1100 = and i64 %i.aaw, 134217726
  br label %.lr.ph.i.i.i150

.lr.ph.i.i.i150:                                  ; preds = %.lr.ph.i.i.i150, %.lr.ph.preheader.i.i.i149.new
  %indvars.iv.i.i.i151 = phi i64 [ 0, %.lr.ph.preheader.i.i.i149.new ], [ %indvars.iv.next.i.i.i155.1, %.lr.ph.i.i.i150 ] ; 4 uses
  %.02021.i.i.i152 = phi i1 [ true, %.lr.ph.preheader.i.i.i149.new ], [ %.1.in.i.i.i154.1, %.lr.ph.i.i.i150 ] ; 2 uses
  %niter1101 = phi i64 [ 0, %.lr.ph.preheader.i.i.i149.new ], [ %niter1101.next.1, %.lr.ph.i.i.i150 ]
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.i.i.i151 ; 2 uses
  %i.aee = load i64, ptr %i.aed, align 8, !tbaa !26, !noalias !643 ; 3 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %indvars.iv.i.i.i151
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !26, !noalias !643
  %i.aeh = add i64 %i.aeg, %i.aee                 ; 3 uses
  %i.aei = icmp uge i64 %i.aeh, %i.aee
  %i.aej = add i64 %i.aeh, 1                      ; 2 uses
  %i.aek = icmp ugt i64 %i.aej, %i.aee
  %.sink.i.i.i153 = select i1 %.02021.i.i.i152, i64 %i.aeh, i64 %i.aej
  %.1.in.i.i.i154 = select i1 %.02021.i.i.i152, i1 %i.aei, i1 %i.aek ; 2 uses
  store i64 %.sink.i.i.i153, ptr %i.aed, align 8, !tbaa !26, !noalias !643
  %indvars.iv.next.i.i.i155 = or disjoint i64 %indvars.iv.i.i.i151, 1 ; 2 uses
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.next.i.i.i155 ; 2 uses
  %i.aem = load i64, ptr %i.ael, align 8, !tbaa !26, !noalias !643 ; 3 uses
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %indvars.iv.next.i.i.i155
  %i.aeo = load i64, ptr %i.aen, align 8, !tbaa !26, !noalias !643
  %i.aep = add i64 %i.aeo, %i.aem                 ; 3 uses
  %i.aeq = icmp uge i64 %i.aep, %i.aem
  %i.aer = add i64 %i.aep, 1                      ; 2 uses
  %i.aes = icmp ugt i64 %i.aer, %i.aem
  %.sink.i.i.i153.1 = select i1 %.1.in.i.i.i154, i64 %i.aep, i64 %i.aer
  %.1.in.i.i.i154.1 = select i1 %.1.in.i.i.i154, i1 %i.aeq, i1 %i.aes ; 2 uses
  store i64 %.sink.i.i.i153.1, ptr %i.ael, align 8, !tbaa !26, !noalias !643
  %indvars.iv.next.i.i.i155.1 = add nuw nsw i64 %indvars.iv.i.i.i151, 2 ; 2 uses
  %niter1101.next.1 = add i64 %niter1101, 2       ; 2 uses
  %niter1101.ncmp.1 = icmp eq i64 %niter1101.next.1, %unroll_iter1100
  br i1 %niter1101.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i.i150, !llvm.loop !4

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i150
  %i.aet = and i64 %i.aar, 64
  %lcmp.mod1098.not = icmp eq i64 %i.aet, 0
  br i1 %lcmp.mod1098.not, label %bb.bn, label %.lr.ph.i.i.i150.epil.preheader

.lr.ph.i.i.i150.epil.preheader:                   ; preds = %.unr-lcssa, %.lr.ph.preheader.i.i.i149
  %indvars.iv.i.i.i151.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i149 ], [ %indvars.iv.next.i.i.i155.1, %.unr-lcssa ] ; 2 uses
  %.02021.i.i.i152.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i149 ], [ %.1.in.i.i.i154.1, %.unr-lcssa ]
  %lcmp.mod1099 = trunc i64 %i.aaw to i1
  call void @llvm.assume(i1 %lcmp.mod1099)
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.i.i.i151.epil.init ; 2 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !26, !noalias !643
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %indvars.iv.i.i.i151.epil.init
  %i.aex = load i64, ptr %i.aew, align 8, !tbaa !26, !noalias !643
  %i.aey = add i64 %i.aex, %i.aev
  %not..02021.i.i.i152.epil.init = xor i1 %.02021.i.i.i152.epil.init, true
  %i.aez = zext i1 %not..02021.i.i.i152.epil.init to i64
  %.sink.i.i.i153.epil = add i64 %i.aey, %i.aez
  store i64 %.sink.i.i.i153.epil, ptr %i.aeu, align 8, !tbaa !26, !noalias !643
  br label %bb.bn

bb.bn:                                            ; preds = %.unr-lcssa, %.lr.ph.i.i.i150.epil.preheader
  %i.afa = load i64, ptr %i.adg, align 8, !tbaa !26, !noalias !643
  %i.afb = and i64 %i.afa, %i.acq
  store i64 %i.afb, ptr %i.adg, align 8, !tbaa !26, !noalias !643
  %i.afc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %i.aao, ptr %i.afc, align 8, !tbaa !23, !alias.scope !643
  store i64 %i.adr, ptr %19, align 8, !alias.scope !643
  call void @_ZdaPv(ptr noundef nonnull %i.aau) #22
  br label %_ZN4llvm5APIntD2Ev.exit170

_ZN4llvm5APIntD2Ev.exit170:                       ; preds = %bb.bn, %_ZN4llvm5APIntmLEm.exit487.thread
  %i.afd = phi ptr [ %i.acj, %_ZN4llvm5APIntmLEm.exit487.thread ], [ %i.aeb, %bb.bn ] ; 2 uses
  %i.afe = phi ptr [ %i.aci, %_ZN4llvm5APIntmLEm.exit487.thread ], [ %i.acv, %bb.bn ] ; 3 uses
  %i.aff = phi i64 [ %i.acg, %_ZN4llvm5APIntmLEm.exit487.thread ], [ %i.adr, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @_ZNK4llvm5APInt9sqrtFloorEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %20, ptr noundef nonnull align 8 dereferenceable(12) %19)
  %i.afg = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !23, !noalias !644 ; 13 uses
  %i.afi = icmp ult i32 %i.afh, 65                ; 3 uses
  br i1 %i.afi, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit170
  %i.afj = zext i32 %i.afh to i64
  %i.afk = add nuw nsw i64 %i.afj, 63             ; 2 uses
  %i.afl = lshr i64 %i.afk, 3
  %i.afm = and i64 %i.afl, 1073741816             ; 2 uses
  %i.afn = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.afm) #21, !noalias !644 ; 4 uses
  %i.afo = load ptr, ptr %20, align 8, !noalias !644 ; 4 uses
  %i.afp = lshr i64 %i.afk, 6                     ; 3 uses
  %i.afq = trunc nuw nsw i64 %i.afp to i32        ; 2 uses
  %i.afr = ptrtoint ptr %i.afo to i64
  br label %.lr.ph.i.i172

.lr.ph.i.i172:                                    ; preds = %bb.bo, %.lr.ph.i.i172
  %indvars.iv.i.i173 = phi i64 [ %indvars.iv.next.i.i174, %.lr.ph.i.i172 ], [ 0, %bb.bo ] ; 5 uses
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.afn, i64 %indvars.iv.i.i173
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %indvars.iv.i.i173
  %i.afu = load i64, ptr %i.aft, align 8, !tbaa !26, !noalias !644
  %i.afv = icmp ne i64 %indvars.iv.i.i173, 0
  %i.afw = trunc i64 %indvars.iv.i.i173 to i32
  %i.afx = sub i32 %i.afq, %i.afw
  %i.afy = call noundef i32 @_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.afs, ptr noundef readonly %i.afo, i64 noundef %i.afu, i64 noundef 0, i32 noundef %i.afq, i32 noundef %i.afx, i1 noundef zeroext %i.afv), !noalias !644 ; 0 uses
  %indvars.iv.next.i.i174 = add nuw nsw i64 %indvars.iv.i.i173, 1 ; 2 uses
  %exitcond.not.i.i175 = icmp eq i64 %indvars.iv.next.i.i174, %i.afp
  br i1 %exitcond.not.i.i175, label %bb.bq, label %.lr.ph.i.i172, !llvm.loop !6

bb.bp:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit170
  %i.afz = load i64, ptr %20, align 8, !noalias !644 ; 4 uses
  %i.aga = mul i64 %i.afz, %i.afz
  %i.agb = sub nsw i32 0, %i.afh
  %i.agc = and i32 %i.agb, 63
  %i.agd = zext nneg i32 %i.agc to i64
  %i.age = lshr i64 -1, %i.agd
  %i.agf = icmp eq i32 %i.afh, 0
  %spec.select.i.i180 = select i1 %i.agf, i64 0, i64 %i.age, !prof !27
  %i.agg = and i64 %i.aga, %spec.select.i.i180    ; 2 uses
  %i.agh = icmp eq i64 %i.agg, %i.aff
  %i.agi = inttoptr i64 %i.agg to ptr
  %i.agj = inttoptr i64 %i.afz to ptr
  br label %_ZNK4llvm5APIntneERKS0_.exit

bb.bq:                                            ; preds = %.lr.ph.i.i172
  %i.agk = sub i32 0, %i.afh
  %i.agl = and i32 %i.agk, 63
  %i.agm = zext nneg i32 %i.agl to i64
  %i.agn = lshr i64 -1, %i.agm
  %i.ago = getelementptr [8 x i8], ptr %i.afn, i64 %i.afp
  %i.agp = getelementptr i8, ptr %i.ago, i64 -8   ; 2 uses
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !26, !noalias !644
  %i.agr = and i64 %i.agq, %i.agn
  store i64 %i.agr, ptr %i.agp, align 8, !tbaa !26, !noalias !644
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.afn, ptr %i.afe, i64 %i.afm)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZNK4llvm5APIntneERKS0_.exit

_ZNK4llvm5APIntneERKS0_.exit:                     ; preds = %bb.bp, %bb.bq
  %i.ags = phi ptr [ %i.agj, %bb.bp ], [ %i.afo, %bb.bq ] ; 6 uses
  %i.agt = phi i64 [ %i.afz, %bb.bp ], [ %i.afr, %bb.bq ] ; 2 uses
  %.sroa.0591.0690 = phi ptr [ %i.agi, %bb.bp ], [ %i.afn, %bb.bq ] ; 2 uses
  %.0.i.i182 = phi i1 [ %i.agh, %bb.bp ], [ %.not9.i.i.i.i.i.i.i, %bb.bq ] ; 2 uses
  %i.agu = xor i1 %.0.i.i182, true                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.agv = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 6 uses
  store i32 1, ptr %i.agv, align 8, !tbaa !23
  store i64 0, ptr %21, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.agw = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store i32 1, ptr %i.agw, align 8, !tbaa !23
  store i64 0, ptr %22, align 8, !tbaa !24
  br i1 %.1, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %_ZNK4llvm5APIntneERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.agx = load i32, ptr %i.da, align 8, !tbaa !23 ; 6 uses
  %i.agy = icmp ult i32 %i.agx, 65                ; 2 uses
  br i1 %i.agy, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i199, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.agz = zext i32 %i.agx to i64
  %i.aha = add nuw nsw i64 %i.agz, 63             ; 2 uses
  %i.ahb = lshr i64 %i.aha, 3
  %i.ahc = and i64 %i.ahb, 1073741816             ; 2 uses
  %i.ahd = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ahc) #21 ; 8 uses
  %i.ahe = load ptr, ptr %2, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ahd, ptr align 8 %i.ahe, i64 %i.ahc, i1 false)
  %i.ahf = lshr i64 %i.aha, 6                     ; 5 uses
  %min.iters.check1035 = icmp ult i32 %i.agx, 193
  br i1 %min.iters.check1035, label %.lr.ph.i.i.i.i.i185.preheader, label %vector.ph1036

vector.ph1036:                                    ; preds = %bb.bs
  %n.vec1037 = and i64 %i.ahf, 134217724          ; 3 uses
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %vector.ph1036
  %index1039 = phi i64 [ 0, %vector.ph1036 ], [ %index.next1042, %vector.body1038 ] ; 2 uses
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.ahd, i64 %index1039 ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16 ; 2 uses
  %wide.load1040 = load <2 x i64>, ptr %i.ahg, align 8, !tbaa !26, !noalias !645
  %wide.load1041 = load <2 x i64>, ptr %i.ahh, align 8, !tbaa !26, !noalias !645
  %i.ahi = xor <2 x i64> %wide.load1040, splat (i64 -1)
  %i.ahj = xor <2 x i64> %wide.load1041, splat (i64 -1)
  store <2 x i64> %i.ahi, ptr %i.ahg, align 8, !tbaa !26, !noalias !645
  store <2 x i64> %i.ahj, ptr %i.ahh, align 8, !tbaa !26, !noalias !645
  %index.next1042 = add nuw i64 %index1039, 4     ; 2 uses
  %i.ahk = icmp eq i64 %index.next1042, %n.vec1037
  br i1 %i.ahk, label %middle.block1043, label %vector.body1038, !llvm.loop !600

middle.block1043:                                 ; preds = %vector.body1038
  %cmp.n1044 = icmp eq i64 %i.ahf, %n.vec1037
  br i1 %cmp.n1044, label %.lr.ph.preheader.i.i.i.i.i189, label %.lr.ph.i.i.i.i.i185.preheader

.lr.ph.i.i.i.i.i185.preheader:                    ; preds = %bb.bs, %middle.block1043
  %indvars.iv.i.i.i.i.i186.ph = phi i64 [ 0, %bb.bs ], [ %n.vec1037, %middle.block1043 ]
  br label %.lr.ph.i.i.i.i.i185

.lr.ph.i.i.i.i.i185:                              ; preds = %.lr.ph.i.i.i.i.i185.preheader, %.lr.ph.i.i.i.i.i185
  %indvars.iv.i.i.i.i.i186 = phi i64 [ %indvars.iv.next.i.i.i.i.i187, %.lr.ph.i.i.i.i.i185 ], [ %indvars.iv.i.i.i.i.i186.ph, %.lr.ph.i.i.i.i.i185.preheader ] ; 2 uses
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %i.ahd, i64 %indvars.iv.i.i.i.i.i186 ; 2 uses
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !26, !noalias !645
  %i.ahn = xor i64 %i.ahm, -1
  store i64 %i.ahn, ptr %i.ahl, align 8, !tbaa !26, !noalias !645
  %indvars.iv.next.i.i.i.i.i187 = add nuw nsw i64 %indvars.iv.i.i.i.i.i186, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i188 = icmp eq i64 %indvars.iv.next.i.i.i.i.i187, %i.ahf
  br i1 %exitcond.not.i.i.i.i.i188, label %.lr.ph.preheader.i.i.i.i.i189, label %.lr.ph.i.i.i.i.i185, !llvm.loop !601

.lr.ph.preheader.i.i.i.i.i189:                    ; preds = %.lr.ph.i.i.i.i.i185, %middle.block1043
  %i.aho = ptrtoint ptr %i.ahd to i64
  %i.ahp = sub i32 0, %i.agx
  %i.ahq = and i32 %i.ahp, 63
  %i.ahr = zext nneg i32 %i.ahq to i64
  %i.ahs = lshr i64 -1, %i.ahr                    ; 2 uses
  %i.aht = getelementptr [8 x i8], ptr %i.ahd, i64 %i.ahf
  %i.ahu = getelementptr i8, ptr %i.aht, i64 -8   ; 4 uses
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !26, !noalias !645
  %i.ahw = and i64 %i.ahv, %i.ahs
  store i64 %i.ahw, ptr %i.ahu, align 8, !tbaa !26, !noalias !645
  %i.ahx = load i64, ptr %i.ahd, align 8, !tbaa !26, !noalias !645
  %i.ahy = add i64 %i.ahx, 1                      ; 2 uses
  store i64 %i.ahy, ptr %i.ahd, align 8, !tbaa !26, !noalias !645
  %.not.peel.i.i.i.i.i190 = icmp eq i64 %i.ahy, 0
  br i1 %.not.peel.i.i.i.i.i190, label %.lr.ph.i.i.i2.i.i193, label %.thread.i.i.i191

.lr.ph.i.i.i2.i.i193:                             ; preds = %.lr.ph.preheader.i.i.i.i.i189, %.lr.ph.i.i.i2.i.i193
  %indvars.iv.i.i.i3.i.i194 = phi i64 [ %indvars.iv.next.i.i.i4.i.i196, %.lr.ph.i.i.i2.i.i193 ], [ 1, %.lr.ph.preheader.i.i.i.i.i189 ] ; 2 uses
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.ahd, i64 %indvars.iv.i.i.i3.i.i194 ; 2 uses
  %i.aia = load i64, ptr %i.ahz, align 8, !tbaa !26, !noalias !645
  %i.aib = add i64 %i.aia, 1                      ; 2 uses
  store i64 %i.aib, ptr %i.ahz, align 8, !tbaa !26, !noalias !645
  %.not.i.i.i.i.i195 = icmp ne i64 %i.aib, 0
  %indvars.iv.next.i.i.i4.i.i196 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i194, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i197 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i196, %i.ahf
  %or.cond.i.i.i198 = select i1 %.not.i.i.i.i.i195, i1 true, i1 %exitcond.not.i.i.i5.i.i197
  br i1 %or.cond.i.i.i198, label %.thread.i.i.i191, label %.lr.ph.i.i.i2.i.i193, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i199: ; preds = %bb.br
  %i.aic = load i64, ptr %2, align 8, !tbaa !24
  %i.aid = xor i64 %i.aic, -1
  %i.aie = sub nsw i32 0, %i.agx
  %i.aif = and i32 %i.aie, 63
  %i.aig = zext nneg i32 %i.aif to i64
  %i.aih = lshr i64 -1, %i.aig
  %i.aii = icmp eq i32 %i.agx, 0
  %spec.select.i.i.i200 = select i1 %i.aii, i64 0, i64 %i.aih ; 2 uses
  %i.aij = and i64 %spec.select.i.i.i200, %i.aid
  %i.aik = add i64 %i.aij, 1
  %i.ail = and i64 %i.aik, %spec.select.i.i.i200
  br label %_ZN4llvmngENS_5APIntE.exit201

.thread.i.i.i191:                                 ; preds = %.lr.ph.i.i.i2.i.i193, %.lr.ph.preheader.i.i.i.i.i189
  %i.aim = load i64, ptr %i.ahu, align 8, !tbaa !26, !noalias !645
  %i.ain = and i64 %i.aim, %i.ahs
  store i64 %i.ain, ptr %i.ahu, align 8, !tbaa !26, !noalias !645
  br label %_ZN4llvmngENS_5APIntE.exit201

_ZN4llvmngENS_5APIntE.exit201:                    ; preds = %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i199, %.thread.i.i.i191
  %.sroa.0578.1 = phi i64 [ %i.ail, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i199 ], [ %i.aho, %.thread.i.i.i191 ] ; 4 uses
  br i1 %i.afi, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i236, label %.lr.ph.preheader.i.i.i204

.lr.ph.preheader.i.i.i204:                        ; preds = %_ZN4llvmngENS_5APIntE.exit201
  %i.aio = zext i32 %i.afh to i64
  %i.aip = add nuw nsw i64 %i.aio, 63             ; 3 uses
  %i.aiq = lshr i64 %i.aip, 3
  %i.air = and i64 %i.aiq, 1073741816             ; 2 uses
  %i.ais = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.air) #21 ; 14 uses
  %i.ait = ptrtoint ptr %i.ais to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ais, ptr align 8 %i.ags, i64 %i.air, i1 false)
  %i.aiu = zext i1 %i.agu to i64                  ; 2 uses
  %i.aiv = lshr i64 %i.aip, 6                     ; 9 uses
  %i.aiw = load i64, ptr %i.ais, align 8, !tbaa !26, !noalias !646
  %i.aix = add i64 %i.aiw, %i.aiu                 ; 2 uses
  store i64 %i.aix, ptr %i.ais, align 8, !tbaa !26, !noalias !646
  %.not.peel.i.i.i = icmp ult i64 %i.aix, %i.aiu
  br i1 %.not.peel.i.i.i, label %.lr.ph.i.i.i207, label %.loopexit

.lr.ph.i.i.i207:                                  ; preds = %.lr.ph.preheader.i.i.i204, %.lr.ph.i.i.i207
  %indvars.iv.i.i.i208 = phi i64 [ %indvars.iv.next.i.i.i210, %.lr.ph.i.i.i207 ], [ 1, %.lr.ph.preheader.i.i.i204 ] ; 2 uses
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %indvars.iv.i.i.i208 ; 2 uses
  %i.aiz = load i64, ptr %i.aiy, align 8, !tbaa !26, !noalias !646
  %i.aja = add i64 %i.aiz, 1                      ; 2 uses
  store i64 %i.aja, ptr %i.aiy, align 8, !tbaa !26, !noalias !646
  %.not.i.i.i209 = icmp ne i64 %i.aja, 0
  %indvars.iv.next.i.i.i210 = add nuw nsw i64 %indvars.iv.i.i.i208, 1 ; 2 uses
  %exitcond.not.i.i.i211 = icmp eq i64 %indvars.iv.next.i.i.i210, %i.aiv
  %or.cond.i.i212 = select i1 %.not.i.i.i209, i1 true, i1 %exitcond.not.i.i.i211
  br i1 %or.cond.i.i212, label %.loopexit, label %.lr.ph.i.i.i207, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i207, %.lr.ph.preheader.i.i.i204
  %.pn.in.in.i.i = sub i32 0, %i.afh
  %.pn.in.i.i = and i32 %.pn.in.in.i.i, 63
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %i.ajb = lshr i64 -1, %.pn.i.i                  ; 4 uses
  %i.ajc = getelementptr [8 x i8], ptr %i.ais, i64 %i.aiv
  %i.ajd = getelementptr i8, ptr %i.ajc, i64 -8   ; 8 uses
  %i.aje = load i64, ptr %i.ajd, align 8, !tbaa !26, !noalias !646
  %i.ajf = and i64 %i.aje, %i.ajb
  store i64 %i.ajf, ptr %i.ajd, align 8, !tbaa !26, !noalias !646
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %min.iters.check1047 = icmp ult i32 %i.afh, 193
  br i1 %min.iters.check1047, label %.lr.ph.i.i.i.i.i214.preheader, label %vector.ph1048

vector.ph1048:                                    ; preds = %.loopexit
  %n.vec1049 = and i64 %i.aiv, 134217724          ; 3 uses
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1048
  %index1051 = phi i64 [ 0, %vector.ph1048 ], [ %index.next1054, %vector.body1050 ] ; 2 uses
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %index1051 ; 3 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 16 ; 2 uses
  %wide.load1052 = load <2 x i64>, ptr %i.ajg, align 8, !tbaa !26, !noalias !647
  %wide.load1053 = load <2 x i64>, ptr %i.ajh, align 8, !tbaa !26, !noalias !647
  %i.aji = xor <2 x i64> %wide.load1052, splat (i64 -1)
  %i.ajj = xor <2 x i64> %wide.load1053, splat (i64 -1)
  store <2 x i64> %i.aji, ptr %i.ajg, align 8, !tbaa !26, !noalias !647
  store <2 x i64> %i.ajj, ptr %i.ajh, align 8, !tbaa !26, !noalias !647
  %index.next1054 = add nuw i64 %index1051, 4     ; 2 uses
  %i.ajk = icmp eq i64 %index.next1054, %n.vec1049
  br i1 %i.ajk, label %middle.block1055, label %vector.body1050, !llvm.loop !606

middle.block1055:                                 ; preds = %vector.body1050
  %cmp.n1056 = icmp eq i64 %i.aiv, %n.vec1049
  br i1 %cmp.n1056, label %.lr.ph.preheader.i.i.i.i.i218, label %.lr.ph.i.i.i.i.i214.preheader

.lr.ph.i.i.i.i.i214.preheader:                    ; preds = %.loopexit, %middle.block1055
  %indvars.iv.i.i.i.i.i215.ph = phi i64 [ 0, %.loopexit ], [ %n.vec1049, %middle.block1055 ]
  br label %.lr.ph.i.i.i.i.i214

.lr.ph.i.i.i.i.i214:                              ; preds = %.lr.ph.i.i.i.i.i214.preheader, %.lr.ph.i.i.i.i.i214
  %indvars.iv.i.i.i.i.i215 = phi i64 [ %indvars.iv.next.i.i.i.i.i216, %.lr.ph.i.i.i.i.i214 ], [ %indvars.iv.i.i.i.i.i215.ph, %.lr.ph.i.i.i.i.i214.preheader ] ; 2 uses
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %indvars.iv.i.i.i.i.i215 ; 2 uses
  %i.ajm = load i64, ptr %i.ajl, align 8, !tbaa !26, !noalias !647
  %i.ajn = xor i64 %i.ajm, -1
  store i64 %i.ajn, ptr %i.ajl, align 8, !tbaa !26, !noalias !647
  %indvars.iv.next.i.i.i.i.i216 = add nuw nsw i64 %indvars.iv.i.i.i.i.i215, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i217 = icmp eq i64 %indvars.iv.next.i.i.i.i.i216, %i.aiv
  br i1 %exitcond.not.i.i.i.i.i217, label %.lr.ph.preheader.i.i.i.i.i218, label %.lr.ph.i.i.i.i.i214, !llvm.loop !607

.lr.ph.preheader.i.i.i.i.i218:                    ; preds = %.lr.ph.i.i.i.i.i214, %middle.block1055
  %i.ajo = load i64, ptr %i.ajd, align 8, !tbaa !26, !noalias !647
  %i.ajp = and i64 %i.ajo, %i.ajb
  store i64 %i.ajp, ptr %i.ajd, align 8, !tbaa !26, !noalias !647
  %i.ajq = load i64, ptr %i.ais, align 8, !tbaa !26, !noalias !647
  %i.ajr = add i64 %i.ajq, 1                      ; 2 uses
  store i64 %i.ajr, ptr %i.ais, align 8, !tbaa !26, !noalias !647
  %.not.peel.i.i.i.i.i219 = icmp eq i64 %i.ajr, 0
  br i1 %.not.peel.i.i.i.i.i219, label %.lr.ph.i.i.i2.i.i230, label %.lr.ph.preheader.i.i.i220

.lr.ph.i.i.i2.i.i230:                             ; preds = %.lr.ph.preheader.i.i.i.i.i218, %.lr.ph.i.i.i2.i.i230
  %indvars.iv.i.i.i3.i.i231 = phi i64 [ %indvars.iv.next.i.i.i4.i.i233, %.lr.ph.i.i.i2.i.i230 ], [ 1, %.lr.ph.preheader.i.i.i.i.i218 ] ; 2 uses
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %indvars.iv.i.i.i3.i.i231 ; 2 uses
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !26, !noalias !647
  %i.aju = add i64 %i.ajt, 1                      ; 2 uses
  store i64 %i.aju, ptr %i.ajs, align 8, !tbaa !26, !noalias !647
  %.not.i.i.i.i.i232 = icmp ne i64 %i.aju, 0
  %indvars.iv.next.i.i.i4.i.i233 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i231, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i234 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i233, %i.aiv
  %or.cond.i.i.i235 = select i1 %.not.i.i.i.i.i232, i1 true, i1 %exitcond.not.i.i.i5.i.i234
  br i1 %or.cond.i.i.i235, label %.lr.ph.preheader.i.i.i220, label %.lr.ph.i.i.i2.i.i230, !llvm.loop !0

.lr.ph.preheader.i.i.i220:                        ; preds = %.lr.ph.i.i.i2.i.i230, %.lr.ph.preheader.i.i.i.i.i218
  %i.ajv = load i64, ptr %i.ajd, align 8, !tbaa !26, !noalias !647
  %i.ajw = and i64 %i.ajv, %i.ajb
  store i64 %i.ajw, ptr %i.ajd, align 8, !tbaa !26, !noalias !647
  %i.ajx = inttoptr i64 %.sroa.0578.1 to ptr      ; 3 uses
  %i.ajy = icmp eq i64 %i.aiv, 1
  br i1 %i.ajy, label %.lr.ph.i.i.i221.epil.preheader, label %.lr.ph.preheader.i.i.i220.new

.lr.ph.preheader.i.i.i220.new:                    ; preds = %.lr.ph.preheader.i.i.i220
  %unroll_iter1110 = and i64 %i.aiv, 134217726
  br label %.lr.ph.i.i.i221

.lr.ph.i.i.i221:                                  ; preds = %.lr.ph.i.i.i221, %.lr.ph.preheader.i.i.i220.new
  %indvars.iv.i.i.i222 = phi i64 [ 0, %.lr.ph.preheader.i.i.i220.new ], [ %indvars.iv.next.i.i.i226.1, %.lr.ph.i.i.i221 ] ; 4 uses
  %.02021.i.i.i223 = phi i1 [ true, %.lr.ph.preheader.i.i.i220.new ], [ %.1.in.i.i.i225.1, %.lr.ph.i.i.i221 ] ; 2 uses
  %niter1111 = phi i64 [ 0, %.lr.ph.preheader.i.i.i220.new ], [ %niter1111.next.1, %.lr.ph.i.i.i221 ]
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %indvars.iv.i.i.i222 ; 2 uses
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !26, !noalias !647 ; 3 uses
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %i.ajx, i64 %indvars.iv.i.i.i222
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !26, !noalias !647
  %i.akd = add i64 %i.akc, %i.aka                 ; 3 uses
  %i.ake = icmp uge i64 %i.akd, %i.aka
  %i.akf = add i64 %i.akd, 1                      ; 2 uses
  %i.akg = icmp ugt i64 %i.akf, %i.aka
  %.sink.i.i.i224 = select i1 %.02021.i.i.i223, i64 %i.akd, i64 %i.akf
  %.1.in.i.i.i225 = select i1 %.02021.i.i.i223, i1 %i.ake, i1 %i.akg ; 2 uses
  store i64 %.sink.i.i.i224, ptr %i.ajz, align 8, !tbaa !26, !noalias !647
  %indvars.iv.next.i.i.i226 = or disjoint i64 %indvars.iv.i.i.i222, 1 ; 2 uses
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %indvars.iv.next.i.i.i226 ; 2 uses
  %i.aki = load i64, ptr %i.akh, align 8, !tbaa !26, !noalias !647 ; 3 uses
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.ajx, i64 %indvars.iv.next.i.i.i226
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !26, !noalias !647
  %i.akl = add i64 %i.akk, %i.aki                 ; 3 uses
  %i.akm = icmp uge i64 %i.akl, %i.aki
  %i.akn = add i64 %i.akl, 1                      ; 2 uses
  %i.ako = icmp ugt i64 %i.akn, %i.aki
  %.sink.i.i.i224.1 = select i1 %.1.in.i.i.i225, i64 %i.akl, i64 %i.akn
  %.1.in.i.i.i225.1 = select i1 %.1.in.i.i.i225, i1 %i.akm, i1 %i.ako ; 2 uses
  store i64 %.sink.i.i.i224.1, ptr %i.akh, align 8, !tbaa !26, !noalias !647
  %indvars.iv.next.i.i.i226.1 = add nuw nsw i64 %indvars.iv.i.i.i222, 2 ; 2 uses
  %niter1111.next.1 = add i64 %niter1111, 2       ; 2 uses
  %niter1111.ncmp.1 = icmp eq i64 %niter1111.next.1, %unroll_iter1110
  br i1 %niter1111.ncmp.1, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i228.unr-lcssa, label %.lr.ph.i.i.i221, !llvm.loop !4

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i236: ; preds = %_ZN4llvmngENS_5APIntE.exit201
  %i.akp = zext i1 %i.agu to i64
  %i.akq = add i64 %i.agt, %i.akp
  %i.akr = sub nsw i32 0, %i.afh
  %i.aks = and i32 %i.akr, 63
  %i.akt = zext nneg i32 %i.aks to i64
  %i.aku = lshr i64 -1, %i.akt
  %i.akv = icmp eq i32 %i.afh, 0
  %spec.select.i.i213 = select i1 %i.akv, i64 0, i64 %i.aku ; 3 uses
  %i.akw = xor i64 %i.akq, -1
  %i.akx = and i64 %spec.select.i.i213, %i.akw
  %i.aky = add i64 %i.akx, 1
  %i.akz = and i64 %i.aky, %spec.select.i.i213
  %i.ala = add i64 %i.akz, %.sroa.0578.1
  %i.alb = and i64 %i.ala, %spec.select.i.i213
  br label %_ZN4llvmmiERKNS_5APIntEOS0_.exit238

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i228.unr-lcssa: ; preds = %.lr.ph.i.i.i221
  %i.alc = and i64 %i.aip, 64
  %lcmp.mod1108.not = icmp eq i64 %i.alc, 0
  br i1 %lcmp.mod1108.not, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i228, label %.lr.ph.i.i.i221.epil.preheader

.lr.ph.i.i.i221.epil.preheader:                   ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i228.unr-lcssa, %.lr.ph.preheader.i.i.i220
  %indvars.iv.i.i.i222.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i220 ], [ %indvars.iv.next.i.i.i226.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i228.unr-lcssa ] ; 2 uses
  %.02021.i.i.i223.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i220 ], [ %.1.in.i.i.i225.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i228.unr-lcssa ]
  %lcmp.mod1109 = trunc i64 %i.aiv to i1
  call void @llvm.assume(i1 %lcmp.mod1109)
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %indvars.iv.i.i.i222.epil.init ; 2 uses
  %i.ale = load i64, ptr %i.ald, align 8, !tbaa !26, !noalias !647
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.ajx, i64 %indvars.iv.i.i.i222.epil.init
  %i.alg = load i64, ptr %i.alf, align 8, !tbaa !26, !noalias !647
  %i.alh = add i64 %i.alg, %i.ale
  %not..02021.i.i.i223.epil.init = xor i1 %.02021.i.i.i223.epil.init, true
  %i.ali = zext i1 %not..02021.i.i.i223.epil.init to i64
  %.sink.i.i.i224.epil = add i64 %i.alh, %i.ali
  store i64 %.sink.i.i.i224.epil, ptr %i.ald, align 8, !tbaa !26, !noalias !647
  br label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i228

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i228:         ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i228.unr-lcssa, %.lr.ph.i.i.i221.epil.preheader
  %i.alj = load i64, ptr %i.ajd, align 8, !tbaa !26, !noalias !647
  %i.alk = and i64 %i.alj, %i.ajb
  store i64 %i.alk, ptr %i.ajd, align 8, !tbaa !26, !noalias !647
  br label %_ZN4llvmmiERKNS_5APIntEOS0_.exit238

_ZN4llvmmiERKNS_5APIntEOS0_.exit238:              ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i236, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i228
  %.sroa.0568.0 = phi i64 [ %i.alb, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i236 ], [ %i.ait, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i228 ] ; 3 uses
  %i.all = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %i.afh, ptr %i.all, align 8, !tbaa !23, !alias.scope !647
  store i64 %.sroa.0568.0, ptr %23, align 8, !alias.scope !647
  call void @_ZN4llvm5APInt7sdivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %22)
  %i.alm = icmp ult i32 %i.afh, 65
  %i.aln = icmp eq i64 %.sroa.0568.0, 0
  %or.cond911 = select i1 %i.alm, i1 true, i1 %i.aln
  br i1 %or.cond911, label %_ZN4llvm5APIntD2Ev.exit241, label %bb.bt

bb.bt:                                            ; preds = %_ZN4llvmmiERKNS_5APIntEOS0_.exit238
  %i.alo = inttoptr i64 %.sroa.0568.0 to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.alo) #22
  br label %_ZN4llvm5APIntD2Ev.exit241

_ZN4llvm5APIntD2Ev.exit241:                       ; preds = %_ZN4llvmmiERKNS_5APIntEOS0_.exit238, %bb.bt
  %i.alp = icmp eq i64 %.sroa.0578.1, 0
  %or.cond750 = select i1 %i.agy, i1 true, i1 %i.alp
  br i1 %or.cond750, label %_ZN4llvm5APIntD2Ev.exit243, label %bb.bu

bb.bu:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit241
  %i.alq = inttoptr i64 %.sroa.0578.1 to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.alq) #22
  br label %_ZN4llvm5APIntD2Ev.exit243

_ZN4llvm5APIntD2Ev.exit243:                       ; preds = %bb.bu, %_ZN4llvm5APIntD2Ev.exit241
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.by

bb.bv:                                            ; preds = %_ZNK4llvm5APIntneERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  %i.alr = load i32, ptr %i.da, align 8, !tbaa !23 ; 8 uses
  %i.als = icmp ult i32 %i.alr, 65
  br i1 %i.als, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i273, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.alt = zext i32 %i.alr to i64
  %i.alu = add nuw nsw i64 %i.alt, 63             ; 3 uses
  %i.alv = lshr i64 %i.alu, 3
  %i.alw = and i64 %i.alv, 1073741816             ; 2 uses
  %i.alx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.alw) #21 ; 11 uses
  %i.aly = load ptr, ptr %2, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.alx, ptr align 8 %i.aly, i64 %i.alw, i1 false)
  %i.alz = lshr i64 %i.alu, 6                     ; 8 uses
  %min.iters.check1023 = icmp ult i32 %i.alr, 193
  br i1 %min.iters.check1023, label %.lr.ph.i.i.i.i.i246.preheader, label %vector.ph1024

vector.ph1024:                                    ; preds = %bb.bw
  %n.vec1025 = and i64 %i.alz, 134217724          ; 3 uses
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %vector.ph1024
  %index1027 = phi i64 [ 0, %vector.ph1024 ], [ %index.next1030, %vector.body1026 ] ; 2 uses
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %index1027 ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 16 ; 2 uses
  %wide.load1028 = load <2 x i64>, ptr %i.ama, align 8, !tbaa !26, !noalias !648
  %wide.load1029 = load <2 x i64>, ptr %i.amb, align 8, !tbaa !26, !noalias !648
  %i.amc = xor <2 x i64> %wide.load1028, splat (i64 -1)
  %i.amd = xor <2 x i64> %wide.load1029, splat (i64 -1)
  store <2 x i64> %i.amc, ptr %i.ama, align 8, !tbaa !26, !noalias !648
  store <2 x i64> %i.amd, ptr %i.amb, align 8, !tbaa !26, !noalias !648
  %index.next1030 = add nuw i64 %index1027, 4     ; 2 uses
  %i.ame = icmp eq i64 %index.next1030, %n.vec1025
  br i1 %i.ame, label %middle.block1031, label %vector.body1026, !llvm.loop !610

middle.block1031:                                 ; preds = %vector.body1026
  %cmp.n1032 = icmp eq i64 %i.alz, %n.vec1025
  br i1 %cmp.n1032, label %.lr.ph.preheader.i.i.i.i.i250, label %.lr.ph.i.i.i.i.i246.preheader

.lr.ph.i.i.i.i.i246.preheader:                    ; preds = %bb.bw, %middle.block1031
  %indvars.iv.i.i.i.i.i247.ph = phi i64 [ 0, %bb.bw ], [ %n.vec1025, %middle.block1031 ]
  br label %.lr.ph.i.i.i.i.i246

.lr.ph.i.i.i.i.i246:                              ; preds = %.lr.ph.i.i.i.i.i246.preheader, %.lr.ph.i.i.i.i.i246
  %indvars.iv.i.i.i.i.i247 = phi i64 [ %indvars.iv.next.i.i.i.i.i248, %.lr.ph.i.i.i.i.i246 ], [ %indvars.iv.i.i.i.i.i247.ph, %.lr.ph.i.i.i.i.i246.preheader ] ; 2 uses
  %i.amf = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %indvars.iv.i.i.i.i.i247 ; 2 uses
  %i.amg = load i64, ptr %i.amf, align 8, !tbaa !26, !noalias !648
  %i.amh = xor i64 %i.amg, -1
  store i64 %i.amh, ptr %i.amf, align 8, !tbaa !26, !noalias !648
  %indvars.iv.next.i.i.i.i.i248 = add nuw nsw i64 %indvars.iv.i.i.i.i.i247, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i249 = icmp eq i64 %indvars.iv.next.i.i.i.i.i248, %i.alz
  br i1 %exitcond.not.i.i.i.i.i249, label %.lr.ph.preheader.i.i.i.i.i250, label %.lr.ph.i.i.i.i.i246, !llvm.loop !611

.lr.ph.preheader.i.i.i.i.i250:                    ; preds = %.lr.ph.i.i.i.i.i246, %middle.block1031
  %i.ami = ptrtoint ptr %i.alx to i64
  %i.amj = sub i32 0, %i.alr
  %i.amk = and i32 %i.amj, 63
  %i.aml = zext nneg i32 %i.amk to i64
  %i.amm = lshr i64 -1, %i.aml                    ; 3 uses
  %i.amn = getelementptr [8 x i8], ptr %i.alx, i64 %i.alz
  %i.amo = getelementptr i8, ptr %i.amn, i64 -8   ; 6 uses
  %i.amp = load i64, ptr %i.amo, align 8, !tbaa !26, !noalias !648
  %i.amq = and i64 %i.amp, %i.amm
  store i64 %i.amq, ptr %i.amo, align 8, !tbaa !26, !noalias !648
  %i.amr = load i64, ptr %i.alx, align 8, !tbaa !26, !noalias !648
  %i.ams = add i64 %i.amr, 1                      ; 2 uses
  store i64 %i.ams, ptr %i.alx, align 8, !tbaa !26, !noalias !648
  %.not.peel.i.i.i.i.i251 = icmp eq i64 %i.ams, 0
  br i1 %.not.peel.i.i.i.i.i251, label %.lr.ph.i.i.i2.i.i254, label %.lr.ph.preheader.i.i.i263

.lr.ph.i.i.i2.i.i254:                             ; preds = %.lr.ph.preheader.i.i.i.i.i250, %.lr.ph.i.i.i2.i.i254
  %indvars.iv.i.i.i3.i.i255 = phi i64 [ %indvars.iv.next.i.i.i4.i.i257, %.lr.ph.i.i.i2.i.i254 ], [ 1, %.lr.ph.preheader.i.i.i.i.i250 ] ; 2 uses
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %indvars.iv.i.i.i3.i.i255 ; 2 uses
  %i.amu = load i64, ptr %i.amt, align 8, !tbaa !26, !noalias !648
  %i.amv = add i64 %i.amu, 1                      ; 2 uses
  store i64 %i.amv, ptr %i.amt, align 8, !tbaa !26, !noalias !648
  %.not.i.i.i.i.i256 = icmp ne i64 %i.amv, 0
  %indvars.iv.next.i.i.i4.i.i257 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i255, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i258 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i257, %i.alz
  %or.cond.i.i.i259 = select i1 %.not.i.i.i.i.i256, i1 true, i1 %exitcond.not.i.i.i5.i.i258
  br i1 %or.cond.i.i.i259, label %.lr.ph.preheader.i.i.i263, label %.lr.ph.i.i.i2.i.i254, !llvm.loop !0

.lr.ph.preheader.i.i.i263:                        ; preds = %.lr.ph.i.i.i2.i.i254, %.lr.ph.preheader.i.i.i.i.i250
  %i.amw = load i64, ptr %i.amo, align 8, !tbaa !26, !noalias !648
  %i.amx = and i64 %i.amw, %i.amm
  store i64 %i.amx, ptr %i.amo, align 8, !tbaa !26, !noalias !648
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.amy = icmp eq i64 %i.alz, 1
  br i1 %i.amy, label %.lr.ph.i.i.i264.epil.preheader, label %.lr.ph.preheader.i.i.i263.new

.lr.ph.preheader.i.i.i263.new:                    ; preds = %.lr.ph.preheader.i.i.i263
  %unroll_iter1105 = and i64 %i.alz, 134217726
  br label %.lr.ph.i.i.i264

.lr.ph.i.i.i264:                                  ; preds = %.lr.ph.i.i.i264, %.lr.ph.preheader.i.i.i263.new
  %indvars.iv.i.i.i265 = phi i64 [ 0, %.lr.ph.preheader.i.i.i263.new ], [ %indvars.iv.next.i.i.i269.1, %.lr.ph.i.i.i264 ] ; 4 uses
  %.02021.i.i.i266 = phi i1 [ true, %.lr.ph.preheader.i.i.i263.new ], [ %.1.in.i.i.i268.1, %.lr.ph.i.i.i264 ] ; 2 uses
  %niter1106 = phi i64 [ 0, %.lr.ph.preheader.i.i.i263.new ], [ %niter1106.next.1, %.lr.ph.i.i.i264 ]
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %indvars.iv.i.i.i265 ; 2 uses
  %i.ana = load i64, ptr %i.amz, align 8, !tbaa !26, !noalias !649 ; 3 uses
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.ags, i64 %indvars.iv.i.i.i265
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !26, !noalias !649
  %i.and = add i64 %i.anc, %i.ana                 ; 3 uses
  %i.ane = icmp uge i64 %i.and, %i.ana
  %i.anf = add i64 %i.and, 1                      ; 2 uses
  %i.ang = icmp ugt i64 %i.anf, %i.ana
  %.sink.i.i.i267 = select i1 %.02021.i.i.i266, i64 %i.and, i64 %i.anf
  %.1.in.i.i.i268 = select i1 %.02021.i.i.i266, i1 %i.ane, i1 %i.ang ; 2 uses
  store i64 %.sink.i.i.i267, ptr %i.amz, align 8, !tbaa !26, !noalias !649
  %indvars.iv.next.i.i.i269 = or disjoint i64 %indvars.iv.i.i.i265, 1 ; 2 uses
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %indvars.iv.next.i.i.i269 ; 2 uses
  %i.ani = load i64, ptr %i.anh, align 8, !tbaa !26, !noalias !649 ; 3 uses
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %i.ags, i64 %indvars.iv.next.i.i.i269
  %i.ank = load i64, ptr %i.anj, align 8, !tbaa !26, !noalias !649
  %i.anl = add i64 %i.ank, %i.ani                 ; 3 uses
  %i.anm = icmp uge i64 %i.anl, %i.ani
  %i.ann = add i64 %i.anl, 1                      ; 2 uses
  %i.ano = icmp ugt i64 %i.ann, %i.ani
  %.sink.i.i.i267.1 = select i1 %.1.in.i.i.i268, i64 %i.anl, i64 %i.ann
  %.1.in.i.i.i268.1 = select i1 %.1.in.i.i.i268, i1 %i.anm, i1 %i.ano ; 2 uses
  store i64 %.sink.i.i.i267.1, ptr %i.anh, align 8, !tbaa !26, !noalias !649
  %indvars.iv.next.i.i.i269.1 = add nuw nsw i64 %indvars.iv.i.i.i265, 2 ; 2 uses
  %niter1106.next.1 = add i64 %niter1106, 2       ; 2 uses
  %niter1106.ncmp.1 = icmp eq i64 %niter1106.next.1, %unroll_iter1105
  br i1 %niter1106.ncmp.1, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i271.unr-lcssa, label %.lr.ph.i.i.i264, !llvm.loop !4

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i273: ; preds = %bb.bv
  %i.anp = load i64, ptr %2, align 8, !tbaa !24
  %i.anq = xor i64 %i.anp, -1
  %i.anr = sub nsw i32 0, %i.alr
  %i.ans = and i32 %i.anr, 63
  %i.ant = zext nneg i32 %i.ans to i64
  %i.anu = lshr i64 -1, %i.ant
  %i.anv = icmp eq i32 %i.alr, 0
  %spec.select.i.i.i261 = select i1 %i.anv, i64 0, i64 %i.anu, !prof !39 ; 3 uses
  %i.anw = and i64 %spec.select.i.i.i261, %i.anq
  %i.anx = add i64 %i.anw, 1
  %i.any = and i64 %i.anx, %spec.select.i.i.i261
  %i.anz = add i64 %i.any, %i.agt
  %i.aoa = and i64 %i.anz, %spec.select.i.i.i261
  br label %_ZN4llvmplENS_5APIntERKS0_.exit

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i271.unr-lcssa: ; preds = %.lr.ph.i.i.i264
  %i.aob = and i64 %i.alu, 64
  %lcmp.mod1103.not = icmp eq i64 %i.aob, 0
  br i1 %lcmp.mod1103.not, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i271, label %.lr.ph.i.i.i264.epil.preheader

.lr.ph.i.i.i264.epil.preheader:                   ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i271.unr-lcssa, %.lr.ph.preheader.i.i.i263
  %indvars.iv.i.i.i265.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i263 ], [ %indvars.iv.next.i.i.i269.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i271.unr-lcssa ] ; 2 uses
  %.02021.i.i.i266.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i263 ], [ %.1.in.i.i.i268.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i271.unr-lcssa ]
  %lcmp.mod1104 = trunc i64 %i.alz to i1
  call void @llvm.assume(i1 %lcmp.mod1104)
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %indvars.iv.i.i.i265.epil.init ; 2 uses
  %i.aod = load i64, ptr %i.aoc, align 8, !tbaa !26, !noalias !649
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %i.ags, i64 %indvars.iv.i.i.i265.epil.init
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !26, !noalias !649
  %i.aog = add i64 %i.aof, %i.aod
  %not..02021.i.i.i266.epil.init = xor i1 %.02021.i.i.i266.epil.init, true
  %i.aoh = zext i1 %not..02021.i.i.i266.epil.init to i64
  %.sink.i.i.i267.epil = add i64 %i.aog, %i.aoh
  store i64 %.sink.i.i.i267.epil, ptr %i.aoc, align 8, !tbaa !26, !noalias !649
  br label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i271

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i271:         ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i271.unr-lcssa, %.lr.ph.i.i.i264.epil.preheader
  %i.aoi = load i64, ptr %i.amo, align 8, !tbaa !26, !noalias !649
  %i.aoj = and i64 %i.aoi, %i.amm
  store i64 %i.aoj, ptr %i.amo, align 8, !tbaa !26, !noalias !649
  br label %_ZN4llvmplENS_5APIntERKS0_.exit

_ZN4llvmplENS_5APIntERKS0_.exit:                  ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i273, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i271
  %.sroa.0555.0 = phi i64 [ %i.aoa, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i273 ], [ %i.ami, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i271 ] ; 3 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %i.alr, ptr %i.aok, align 8, !tbaa !23, !alias.scope !649
  store i64 %.sroa.0555.0, ptr %24, align 8, !alias.scope !649
  call void @_ZN4llvm5APInt7sdivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %24, ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %22)
  %i.aol = icmp ult i32 %i.alr, 65
  %i.aom = icmp eq i64 %.sroa.0555.0, 0
  %or.cond912 = select i1 %i.aol, i1 true, i1 %i.aom
  br i1 %or.cond912, label %_ZN4llvm5APIntD2Ev.exit277, label %bb.bx

bb.bx:                                            ; preds = %_ZN4llvmplENS_5APIntERKS0_.exit
  %i.aon = inttoptr i64 %.sroa.0555.0 to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.aon) #22
  br label %_ZN4llvm5APIntD2Ev.exit277

_ZN4llvm5APIntD2Ev.exit277:                       ; preds = %_ZN4llvmplENS_5APIntERKS0_.exit, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.by

bb.by:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit277, %_ZN4llvm5APIntD2Ev.exit243
  br i1 %.0.i.i182, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.aoo = load i32, ptr %i.agw, align 8, !tbaa !23 ; 5 uses
  %i.aop = icmp ult i32 %i.aoo, 65
  br i1 %i.aop, label %.split703, label %.lr.ph.i.i278

.split703:                                        ; preds = %bb.bz
  %i.aoq = load i64, ptr %22, align 8, !tbaa !24
  %i.aor = icmp eq i64 %i.aoq, 0
  br i1 %i.aor, label %bb.cc, label %bb.cd

.lr.ph.i.i278:                                    ; preds = %bb.bz
  %i.aos = zext i32 %i.aoo to i64
  %i.aot = add nuw nsw i64 %i.aos, 63
  %i.aou = lshr i64 %i.aot, 6                     ; 2 uses
  %i.aov = trunc nuw nsw i64 %i.aou to i32
  %i.aow = load ptr, ptr %22, align 8, !tbaa !24
  %i.aox = shl i32 %i.aov, 6
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %.lr.ph.i.i278
  %indvars.iv.i279 = phi i64 [ %indvars.iv.next.i281, %bb.cb ], [ %i.aou, %.lr.ph.i.i278 ] ; 2 uses
  %.019.i.i280 = phi i32 [ %i.ape, %bb.cb ], [ 0, %.lr.ph.i.i278 ] ; 2 uses
  %indvars.iv.next.i281 = add nsw i64 %indvars.iv.i279, -1 ; 2 uses
  %i.aoy = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %indvars.iv.next.i281
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !26 ; 2 uses
  %i.apa = icmp eq i64 %i.aoz, 0
  br i1 %i.apa, label %bb.cb, label %.thread.i.i282

.thread.i.i282:                                   ; preds = %bb.ca
  %i.apb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aoz, i1 true)
  %i.apc = trunc nuw nsw i64 %i.apb to i32
  %i.apd = or disjoint i32 %.019.i.i280, %i.apc
  br label %_ZNK4llvm5APInt6isZeroEv.exit289

bb.cb:                                            ; preds = %bb.ca
  %i.ape = add i32 %.019.i.i280, 64
  %i.apf = icmp samesign ugt i64 %indvars.iv.i279, 1
  br i1 %i.apf, label %bb.ca, label %_ZNK4llvm5APInt6isZeroEv.exit289, !llvm.loop !1

_ZNK4llvm5APInt6isZeroEv.exit289:                 ; preds = %bb.cb, %.thread.i.i282
  %.2.i.i284 = phi i32 [ %i.apd, %.thread.i.i282 ], [ %i.aox, %bb.cb ]
  %i.apg = and i32 %i.aoo, 63
  %.not.i.i285 = icmp eq i32 %i.apg, 0
  %.neg.i.i286 = or i32 %i.aoo, -64
  %.neg15.i.i287 = select i1 %.not.i.i285, i32 0, i32 %.neg.i.i286
  %i.aph = add i32 %.2.i.i284, %.neg15.i.i287
  %i.api = icmp eq i32 %i.aph, %i.aoo
  br i1 %i.api, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.split703, %_ZNK4llvm5APInt6isZeroEv.exit289
  %i.apj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.apk = load i32, ptr %i.agv, align 8, !tbaa !23
  store i32 %i.apk, ptr %i.apj, align 8, !tbaa !23
  %i.apl = load i64, ptr %21, align 8
  store i64 %i.apl, ptr %0, align 8
  store i32 0, ptr %i.agv, align 8, !tbaa !23
  %i.apm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.apm, align 8, !tbaa !633
  br label %_ZN4llvm5APIntD2Ev.exit427

bb.cd:                                            ; preds = %.split703, %_ZNK4llvm5APInt6isZeroEv.exit289, %bb.by
  %i.apn = load i32, ptr %i.a, align 8, !tbaa !23, !noalias !650 ; 5 uses
  %i.apo = icmp ult i32 %i.apn, 65
  br i1 %i.apo, label %_ZN4llvm5APIntC2Ejmbb.exit.i298, label %bb.ce

_ZN4llvm5APIntC2Ejmbb.exit.i298:                  ; preds = %bb.cd
  %i.app = load i64, ptr %1, align 8, !tbaa !24, !noalias !650
  %i.apq = load i64, ptr %21, align 8, !tbaa !24, !noalias !650 ; 2 uses
  %i.apr = mul i64 %i.apq, %i.app
  %i.aps = sub nsw i32 0, %i.apn
  %i.apt = and i32 %i.aps, 63
  %i.apu = zext nneg i32 %i.apt to i64
  %i.apv = lshr i64 -1, %i.apu
  %i.apw = icmp eq i32 %i.apn, 0
  %spec.select.i.i299 = select i1 %i.apw, i64 0, i64 %i.apv ; 2 uses
  %i.apx = and i64 %i.apr, %spec.select.i.i299
  br label %_ZN4llvm5APIntD2Ev.exit338

bb.ce:                                            ; preds = %bb.cd
  %i.apy = zext i32 %i.apn to i64
  %i.apz = add nuw nsw i64 %i.apy, 63
  %i.aqa = lshr i64 %i.apz, 3
  %i.aqb = and i64 %i.aqa, 1073741816
  %i.aqc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aqb) #21, !noalias !650 ; 8 uses
  %i.aqd = load i32, ptr %i.a, align 8, !tbaa !23, !noalias !650 ; 6 uses
  %i.aqe = ptrtoint ptr %i.aqc to i64
  %i.aqf = load ptr, ptr %1, align 8, !tbaa !24, !noalias !650
  %i.aqg = load ptr, ptr %21, align 8, !noalias !650 ; 2 uses
  %i.aqh = zext i32 %i.aqd to i64
  %i.aqi = add nuw nsw i64 %i.aqh, 63             ; 4 uses
  %i.aqj = lshr i64 %i.aqi, 6                     ; 11 uses
  %i.aqk = trunc nuw nsw i64 %i.aqj to i32        ; 4 uses
  %.not.i.i290 = icmp eq i64 %i.aqj, 0
  %i.aql = ptrtoint ptr %i.aqg to i64
  br i1 %.not.i.i290, label %_ZN4llvm5APInt10tcMultiplyEPmPKmS3_j.exit.i295, label %.lr.ph.i.i291

.lr.ph.i.i291:                                    ; preds = %bb.ce, %.lr.ph.i.i291
  %indvars.iv.i.i292 = phi i64 [ %indvars.iv.next.i.i293, %.lr.ph.i.i291 ], [ 0, %bb.ce ] ; 5 uses
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %i.aqc, i64 %indvars.iv.i.i292
  %i.aqn = getelementptr inbounds nuw [8 x i8], ptr %i.aqg, i64 %indvars.iv.i.i292
  %i.aqo = load i64, ptr %i.aqn, align 8, !tbaa !26, !noalias !650
  %i.aqp = icmp ne i64 %indvars.iv.i.i292, 0
  %i.aqq = trunc i64 %indvars.iv.i.i292 to i32
  %i.aqr = sub i32 %i.aqk, %i.aqq
  %i.aqs = call noundef i32 @_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.aqm, ptr noundef readonly %i.aqf, i64 noundef %i.aqo, i64 noundef 0, i32 noundef %i.aqk, i32 noundef %i.aqr, i1 noundef zeroext %i.aqp), !noalias !650 ; 0 uses
  %indvars.iv.next.i.i293 = add nuw nsw i64 %indvars.iv.i.i292, 1 ; 2 uses
  %exitcond.not.i.i294 = icmp eq i64 %indvars.iv.next.i.i293, %i.aqj
  br i1 %exitcond.not.i.i294, label %_ZN4llvm5APInt10tcMultiplyEPmPKmS3_j.exit.i295, label %.lr.ph.i.i291, !llvm.loop !6

_ZN4llvm5APInt10tcMultiplyEPmPKmS3_j.exit.i295:   ; preds = %.lr.ph.i.i291, %bb.ce
  %i.aqt = sub i32 0, %i.aqd
  %i.aqu = and i32 %i.aqt, 63
  %i.aqv = zext nneg i32 %i.aqu to i64
  %i.aqw = lshr i64 -1, %i.aqv                    ; 5 uses
  %i.aqx = icmp eq i32 %i.aqd, 0
  br i1 %i.aqx, label %.thread.i.i296, label %bb.cf, !prof !27

bb.cf:                                            ; preds = %_ZN4llvm5APInt10tcMultiplyEPmPKmS3_j.exit.i295
  %i.aqy = icmp ult i32 %i.aqd, 65
  br i1 %i.aqy, label %.thread.i.i296, label %.lr.ph.preheader.i.i.i301

.thread.i.i296:                                   ; preds = %bb.cf, %_ZN4llvm5APInt10tcMultiplyEPmPKmS3_j.exit.i295
  %.04.i.i297 = phi i64 [ %i.aqw, %bb.cf ], [ 0, %_ZN4llvm5APInt10tcMultiplyEPmPKmS3_j.exit.i295 ] ; 2 uses
  %i.aqz = and i64 %.04.i.i297, %i.aqe
  br label %_ZN4llvm5APIntD2Ev.exit338

.lr.ph.preheader.i.i.i301:                        ; preds = %bb.cf
  %i.ara = getelementptr [8 x i8], ptr %i.aqc, i64 %i.aqj
  %i.arb = getelementptr i8, ptr %i.ara, i64 -8   ; 4 uses
  %i.arc = load i64, ptr %i.arb, align 8, !tbaa !26, !noalias !650
  %i.ard = and i64 %i.arc, %i.aqw
  store i64 %i.ard, ptr %i.arb, align 8, !tbaa !26, !noalias !650
  %i.are = load ptr, ptr %2, align 8, !tbaa !24, !noalias !651 ; 3 uses
  %i.arf = add nsw i64 %i.aqj, -1                 ; 2 uses
  %i.arg = icmp eq i64 %i.arf, 0
  br i1 %i.arg, label %.lr.ph.i.i.i302.epil.preheader, label %.lr.ph.preheader.i.i.i301.new

.lr.ph.preheader.i.i.i301.new:                    ; preds = %.lr.ph.preheader.i.i.i301
  %unroll_iter1116 = and i64 %i.aqj, 134217726
  br label %.lr.ph.i.i.i302

.lr.ph.i.i.i302:                                  ; preds = %.lr.ph.i.i.i302, %.lr.ph.preheader.i.i.i301.new
  %indvars.iv.i.i.i303 = phi i64 [ 0, %.lr.ph.preheader.i.i.i301.new ], [ %indvars.iv.next.i.i.i307.1, %.lr.ph.i.i.i302 ] ; 4 uses
  %.02021.i.i.i304 = phi i1 [ true, %.lr.ph.preheader.i.i.i301.new ], [ %.1.in.i.i.i306.1, %.lr.ph.i.i.i302 ] ; 2 uses
  %niter1117 = phi i64 [ 0, %.lr.ph.preheader.i.i.i301.new ], [ %niter1117.next.1, %.lr.ph.i.i.i302 ]
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %i.aqc, i64 %indvars.iv.i.i.i303 ; 2 uses
  %i.ari = load i64, ptr %i.arh, align 8, !tbaa !26, !noalias !651 ; 3 uses
  %i.arj = getelementptr inbounds nuw [8 x i8], ptr %i.are, i64 %indvars.iv.i.i.i303
  %i.ark = load i64, ptr %i.arj, align 8, !tbaa !26, !noalias !651
  %i.arl = add i64 %i.ark, %i.ari                 ; 3 uses
  %i.arm = icmp uge i64 %i.arl, %i.ari
  %i.arn = add i64 %i.arl, 1                      ; 2 uses
  %i.aro = icmp ugt i64 %i.arn, %i.ari
  %.sink.i.i.i305 = select i1 %.02021.i.i.i304, i64 %i.arl, i64 %i.arn
  %.1.in.i.i.i306 = select i1 %.02021.i.i.i304, i1 %i.arm, i1 %i.aro ; 2 uses
  store i64 %.sink.i.i.i305, ptr %i.arh, align 8, !tbaa !26, !noalias !651
  %indvars.iv.next.i.i.i307 = or disjoint i64 %indvars.iv.i.i.i303, 1 ; 2 uses
  %i.arp = getelementptr inbounds nuw [8 x i8], ptr %i.aqc, i64 %indvars.iv.next.i.i.i307 ; 2 uses
  %i.arq = load i64, ptr %i.arp, align 8, !tbaa !26, !noalias !651 ; 3 uses
  %i.arr = getelementptr inbounds nuw [8 x i8], ptr %i.are, i64 %indvars.iv.next.i.i.i307
  %i.ars = load i64, ptr %i.arr, align 8, !tbaa !26, !noalias !651
  %i.art = add i64 %i.ars, %i.arq                 ; 3 uses
  %i.aru = icmp uge i64 %i.art, %i.arq
  %i.arv = add i64 %i.art, 1                      ; 2 uses
  %i.arw = icmp ugt i64 %i.arv, %i.arq
  %.sink.i.i.i305.1 = select i1 %.1.in.i.i.i306, i64 %i.art, i64 %i.arv
  %.1.in.i.i.i306.1 = select i1 %.1.in.i.i.i306, i1 %i.aru, i1 %i.arw ; 2 uses
  store i64 %.sink.i.i.i305.1, ptr %i.arp, align 8, !tbaa !26, !noalias !651
  %indvars.iv.next.i.i.i307.1 = add nuw nsw i64 %indvars.iv.i.i.i303, 2 ; 2 uses
  %niter1117.next.1 = add nuw nsw i64 %niter1117, 2 ; 2 uses
  %niter1117.ncmp.1 = icmp eq i64 %niter1117.next.1, %unroll_iter1116
  br i1 %niter1117.ncmp.1, label %.unr-lcssa1112, label %.lr.ph.i.i.i302, !llvm.loop !4

.unr-lcssa1112:                                   ; preds = %.lr.ph.i.i.i302
  %i.arx = and i64 %i.aqi, 64
  %lcmp.mod1114.not = icmp eq i64 %i.arx, 0
  br i1 %lcmp.mod1114.not, label %bb.cg, label %.lr.ph.i.i.i302.epil.preheader

.lr.ph.i.i.i302.epil.preheader:                   ; preds = %.unr-lcssa1112, %.lr.ph.preheader.i.i.i301
  %indvars.iv.i.i.i303.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i301 ], [ %indvars.iv.next.i.i.i307.1, %.unr-lcssa1112 ] ; 2 uses
  %.02021.i.i.i304.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i301 ], [ %.1.in.i.i.i306.1, %.unr-lcssa1112 ]
  %lcmp.mod1115 = trunc i64 %i.aqj to i1
  call void @llvm.assume(i1 %lcmp.mod1115)
  %i.ary = getelementptr inbounds nuw [8 x i8], ptr %i.aqc, i64 %indvars.iv.i.i.i303.epil.init ; 2 uses
  %i.arz = load i64, ptr %i.ary, align 8, !tbaa !26, !noalias !651
  %i.asa = getelementptr inbounds nuw [8 x i8], ptr %i.are, i64 %indvars.iv.i.i.i303.epil.init
  %i.asb = load i64, ptr %i.asa, align 8, !tbaa !26, !noalias !651
  %i.asc = add i64 %i.asb, %i.arz
  %not..02021.i.i.i304.epil.init = xor i1 %.02021.i.i.i304.epil.init, true
  %i.asd = zext i1 %not..02021.i.i.i304.epil.init to i64
  %.sink.i.i.i305.epil = add i64 %i.asc, %i.asd
  store i64 %.sink.i.i.i305.epil, ptr %i.ary, align 8, !tbaa !26, !noalias !651
  br label %bb.cg

bb.cg:                                            ; preds = %.unr-lcssa1112, %.lr.ph.i.i.i302.epil.preheader
  %i.ase = load i64, ptr %i.arb, align 8, !tbaa !26, !noalias !651
  %i.asf = and i64 %i.ase, %i.aqw
  store i64 %i.asf, ptr %i.arb, align 8, !tbaa !26, !noalias !651
  %i.asg = lshr i64 %i.aqi, 3
  %i.ash = and i64 %i.asg, 1073741816
  %i.asi = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ash) #21, !noalias !652 ; 6 uses
  %i.asj = load ptr, ptr %21, align 8, !tbaa !24, !noalias !652
  br label %.lr.ph.i.i315

.lr.ph.i.i315:                                    ; preds = %bb.cg, %.lr.ph.i.i315
  %indvars.iv.i.i316 = phi i64 [ %indvars.iv.next.i.i317, %.lr.ph.i.i315 ], [ 0, %bb.cg ] ; 5 uses
  %i.ask = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %indvars.iv.i.i316
  %i.asl = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %indvars.iv.i.i316
  %i.asm = load i64, ptr %i.asl, align 8, !tbaa !26, !noalias !652
  %i.asn = icmp ne i64 %indvars.iv.i.i316, 0
  %i.aso = trunc i64 %indvars.iv.i.i316 to i32
  %i.asp = sub i32 %i.aqk, %i.aso
  %i.asq = call noundef i32 @_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.ask, ptr noundef nonnull readonly %i.aqc, i64 noundef %i.asm, i64 noundef 0, i32 noundef %i.aqk, i32 noundef %i.asp, i1 noundef zeroext %i.asn), !noalias !652 ; 0 uses
  %indvars.iv.next.i.i317 = add nuw nsw i64 %indvars.iv.i.i316, 1 ; 2 uses
  %exitcond.not.i.i318 = icmp eq i64 %indvars.iv.next.i.i317, %i.aqj
  br i1 %exitcond.not.i.i318, label %.lr.ph.preheader.i.i.i325, label %.lr.ph.i.i315, !llvm.loop !6

.lr.ph.preheader.i.i.i325:                        ; preds = %.lr.ph.i.i315
  %i.asr = getelementptr [8 x i8], ptr %i.asi, i64 %i.aqj
  %i.ass = getelementptr i8, ptr %i.asr, i64 -8   ; 4 uses
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !26, !noalias !652
  %i.asu = and i64 %i.ast, %i.aqw
  store i64 %i.asu, ptr %i.ass, align 8, !tbaa !26, !noalias !652
  %i.asv = load ptr, ptr %3, align 8, !tbaa !24, !noalias !653 ; 3 uses
  %i.asw = icmp eq i64 %i.arf, 0
  br i1 %i.asw, label %.lr.ph.i.i.i326.epil.preheader, label %.lr.ph.preheader.i.i.i325.new

.lr.ph.preheader.i.i.i325.new:                    ; preds = %.lr.ph.preheader.i.i.i325
  %unroll_iter1122 = and i64 %i.aqj, 134217726
  br label %.lr.ph.i.i.i326

.lr.ph.i.i.i326:                                  ; preds = %.lr.ph.i.i.i326, %.lr.ph.preheader.i.i.i325.new
  %indvars.iv.i.i.i327 = phi i64 [ 0, %.lr.ph.preheader.i.i.i325.new ], [ %indvars.iv.next.i.i.i331.1, %.lr.ph.i.i.i326 ] ; 4 uses
  %.02021.i.i.i328 = phi i1 [ true, %.lr.ph.preheader.i.i.i325.new ], [ %.1.in.i.i.i330.1, %.lr.ph.i.i.i326 ] ; 2 uses
  %niter1123 = phi i64 [ 0, %.lr.ph.preheader.i.i.i325.new ], [ %niter1123.next.1, %.lr.ph.i.i.i326 ]
  %i.asx = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %indvars.iv.i.i.i327 ; 2 uses
  %i.asy = load i64, ptr %i.asx, align 8, !tbaa !26, !noalias !653 ; 3 uses
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.asv, i64 %indvars.iv.i.i.i327
  %i.ata = load i64, ptr %i.asz, align 8, !tbaa !26, !noalias !653
  %i.atb = add i64 %i.ata, %i.asy                 ; 3 uses
  %i.atc = icmp uge i64 %i.atb, %i.asy
  %i.atd = add i64 %i.atb, 1                      ; 2 uses
  %i.ate = icmp ugt i64 %i.atd, %i.asy
  %.sink.i.i.i329 = select i1 %.02021.i.i.i328, i64 %i.atb, i64 %i.atd
  %.1.in.i.i.i330 = select i1 %.02021.i.i.i328, i1 %i.atc, i1 %i.ate ; 2 uses
  store i64 %.sink.i.i.i329, ptr %i.asx, align 8, !tbaa !26, !noalias !653
  %indvars.iv.next.i.i.i331 = or disjoint i64 %indvars.iv.i.i.i327, 1 ; 2 uses
  %i.atf = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %indvars.iv.next.i.i.i331 ; 2 uses
  %i.atg = load i64, ptr %i.atf, align 8, !tbaa !26, !noalias !653 ; 3 uses
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %i.asv, i64 %indvars.iv.next.i.i.i331
  %i.ati = load i64, ptr %i.ath, align 8, !tbaa !26, !noalias !653
  %i.atj = add i64 %i.ati, %i.atg                 ; 3 uses
  %i.atk = icmp uge i64 %i.atj, %i.atg
  %i.atl = add i64 %i.atj, 1                      ; 2 uses
  %i.atm = icmp ugt i64 %i.atl, %i.atg
  %.sink.i.i.i329.1 = select i1 %.1.in.i.i.i330, i64 %i.atj, i64 %i.atl
  %.1.in.i.i.i330.1 = select i1 %.1.in.i.i.i330, i1 %i.atk, i1 %i.atm ; 2 uses
  store i64 %.sink.i.i.i329.1, ptr %i.atf, align 8, !tbaa !26, !noalias !653
  %indvars.iv.next.i.i.i331.1 = add nuw nsw i64 %indvars.iv.i.i.i327, 2 ; 2 uses
  %niter1123.next.1 = add i64 %niter1123, 2       ; 2 uses
  %niter1123.ncmp.1 = icmp eq i64 %niter1123.next.1, %unroll_iter1122
  br i1 %niter1123.ncmp.1, label %.unr-lcssa1118, label %.lr.ph.i.i.i326, !llvm.loop !4

_ZN4llvm5APIntD2Ev.exit338:                       ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i298, %.thread.i.i296
  %spec.select.i.i312.pre-phi = phi i64 [ %spec.select.i.i299, %_ZN4llvm5APIntC2Ejmbb.exit.i298 ], [ %.04.i.i297, %.thread.i.i296 ] ; 3 uses
  %i.atn = phi i64 [ %i.apq, %_ZN4llvm5APIntC2Ejmbb.exit.i298 ], [ %i.aql, %.thread.i.i296 ]
  %.sroa.9.0.ph = phi i32 [ %i.apn, %_ZN4llvm5APIntC2Ejmbb.exit.i298 ], [ %i.aqd, %.thread.i.i296 ]
  %.sroa.0513.0.ph = phi i64 [ %i.apx, %_ZN4llvm5APIntC2Ejmbb.exit.i298 ], [ %i.aqz, %.thread.i.i296 ]
  %i.ato = load i64, ptr %2, align 8, !tbaa !24, !noalias !651
  %i.atp = add i64 %i.ato, %.sroa.0513.0.ph
  %i.atq = and i64 %spec.select.i.i312.pre-phi, %i.atp
  %i.atr = mul i64 %i.atq, %i.atn
  %i.ats = and i64 %i.atr, %spec.select.i.i312.pre-phi
  %i.att = load i64, ptr %3, align 8, !tbaa !24, !noalias !653
  %i.atu = add i64 %i.ats, %i.att
end_hunk_7
begin_hunk_8_@_ZN4llvm8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_j:bb.a
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %indvars.iv.i.i343
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.aun, i64 %indvars.iv.i.i343
  %i.aut = load i64, ptr %i.aus, align 8, !tbaa !26, !noalias !654
  %i.auu = icmp ne i64 %indvars.iv.i.i343, 0
  %i.auv = trunc i64 %indvars.iv.i.i343 to i32
  %i.auw = sub i32 %i.aup, %i.auv
  %i.aux = call noundef i32 @_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.aur, ptr noundef readonly %i.mc, i64 noundef %i.aut, i64 noundef 0, i32 noundef %i.aup, i32 noundef %i.auw, i1 noundef zeroext %i.auu), !noalias !654 ; 0 uses
  %indvars.iv.next.i.i344 = add nuw nsw i64 %indvars.iv.i.i343, 1 ; 2 uses
  %exitcond.not.i.i345 = icmp eq i64 %indvars.iv.next.i.i344, %i.auo
  br i1 %exitcond.not.i.i345, label %.lr.ph.preheader.i.i.i352, label %.lr.ph.i.i342, !llvm.loop !6

.lr.ph.preheader.i.i.i352:                        ; preds = %.lr.ph.i.i342
  %i.auy = sub i32 0, %i.jt
  %i.auz = and i32 %i.auy, 63
  %i.ava = zext nneg i32 %i.auz to i64
  %i.avb = lshr i64 -1, %i.ava                    ; 4 uses
  %i.avc = getelementptr [8 x i8], ptr %i.aum, i64 %i.auo
  %i.avd = getelementptr i8, ptr %i.avc, i64 -8   ; 8 uses
  %i.ave = load i64, ptr %i.avd, align 8, !tbaa !26, !noalias !654
  %i.avf = and i64 %i.ave, %i.avb
  store i64 %i.avf, ptr %i.avd, align 8, !tbaa !26, !noalias !654
  %i.avg = inttoptr i64 %i.aug to ptr             ; 4 uses
  %i.avh = add nsw i64 %i.auo, -1                 ; 3 uses
  %i.avi = icmp eq i64 %i.avh, 0
  br i1 %i.avi, label %.lr.ph.i.i.i353.epil.preheader, label %.lr.ph.preheader.i.i.i352.new

.lr.ph.preheader.i.i.i352.new:                    ; preds = %.lr.ph.preheader.i.i.i352
  %unroll_iter1127 = and i64 %i.auo, 134217726
  br label %.lr.ph.i.i.i353

.lr.ph.i.i.i353:                                  ; preds = %.lr.ph.i.i.i353, %.lr.ph.preheader.i.i.i352.new
  %indvars.iv.i.i.i354 = phi i64 [ 0, %.lr.ph.preheader.i.i.i352.new ], [ %indvars.iv.next.i.i.i358.1, %.lr.ph.i.i.i353 ] ; 4 uses
  %.02021.i.i.i355 = phi i1 [ true, %.lr.ph.preheader.i.i.i352.new ], [ %.1.in.i.i.i357.1, %.lr.ph.i.i.i353 ] ; 2 uses
  %niter1128 = phi i64 [ 0, %.lr.ph.preheader.i.i.i352.new ], [ %niter1128.next.1, %.lr.ph.i.i.i353 ]
  %i.avj = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %indvars.iv.i.i.i354 ; 2 uses
  %i.avk = load i64, ptr %i.avj, align 8, !tbaa !26, !noalias !655 ; 3 uses
  %i.avl = getelementptr inbounds nuw [8 x i8], ptr %i.avg, i64 %indvars.iv.i.i.i354
  %i.avm = load i64, ptr %i.avl, align 8, !tbaa !26, !noalias !655
  %i.avn = add i64 %i.avm, %i.avk                 ; 3 uses
  %i.avo = icmp uge i64 %i.avn, %i.avk
  %i.avp = add i64 %i.avn, 1                      ; 2 uses
  %i.avq = icmp ugt i64 %i.avp, %i.avk
  %.sink.i.i.i356 = select i1 %.02021.i.i.i355, i64 %i.avn, i64 %i.avp
  %.1.in.i.i.i357 = select i1 %.02021.i.i.i355, i1 %i.avo, i1 %i.avq ; 2 uses
  store i64 %.sink.i.i.i356, ptr %i.avj, align 8, !tbaa !26, !noalias !655
  %indvars.iv.next.i.i.i358 = or disjoint i64 %indvars.iv.i.i.i354, 1 ; 2 uses
  %i.avr = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %indvars.iv.next.i.i.i358 ; 2 uses
  %i.avs = load i64, ptr %i.avr, align 8, !tbaa !26, !noalias !655 ; 3 uses
  %i.avt = getelementptr inbounds nuw [8 x i8], ptr %i.avg, i64 %indvars.iv.next.i.i.i358
  %i.avu = load i64, ptr %i.avt, align 8, !tbaa !26, !noalias !655
  %i.avv = add i64 %i.avu, %i.avs                 ; 3 uses
  %i.avw = icmp uge i64 %i.avv, %i.avs
  %i.avx = add i64 %i.avv, 1                      ; 2 uses
  %i.avy = icmp ugt i64 %i.avx, %i.avs
  %.sink.i.i.i356.1 = select i1 %.1.in.i.i.i357, i64 %i.avv, i64 %i.avx
  %.1.in.i.i.i357.1 = select i1 %.1.in.i.i.i357, i1 %i.avw, i1 %i.avy ; 2 uses
  store i64 %.sink.i.i.i356.1, ptr %i.avr, align 8, !tbaa !26, !noalias !655
  %indvars.iv.next.i.i.i358.1 = add nuw nsw i64 %indvars.iv.i.i.i354, 2 ; 2 uses
  %niter1128.next.1 = add nuw nsw i64 %niter1128, 2 ; 2 uses
  %niter1128.ncmp.1 = icmp eq i64 %niter1128.next.1, %unroll_iter1127
  br i1 %niter1128.ncmp.1, label %.lr.ph.preheader.i.i.i364.unr-lcssa, label %.lr.ph.i.i.i353, !llvm.loop !4

.lr.ph.preheader.i.i.i364.unr-lcssa:              ; preds = %.lr.ph.i.i.i353
  %i.avz = and i64 %i.auj, 64
  %lcmp.mod1125.not = icmp eq i64 %i.avz, 0
  br i1 %lcmp.mod1125.not, label %.lr.ph.preheader.i.i.i364, label %.lr.ph.i.i.i353.epil.preheader

.lr.ph.i.i.i353.epil.preheader:                   ; preds = %.lr.ph.preheader.i.i.i364.unr-lcssa, %.lr.ph.preheader.i.i.i352
  %indvars.iv.i.i.i354.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i352 ], [ %indvars.iv.next.i.i.i358.1, %.lr.ph.preheader.i.i.i364.unr-lcssa ] ; 2 uses
  %.02021.i.i.i355.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i352 ], [ %.1.in.i.i.i357.1, %.lr.ph.preheader.i.i.i364.unr-lcssa ]
  %lcmp.mod1126 = trunc i64 %i.auo to i1
  call void @llvm.assume(i1 %lcmp.mod1126)
  %i.awa = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %indvars.iv.i.i.i354.epil.init ; 2 uses
  %i.awb = load i64, ptr %i.awa, align 8, !tbaa !26, !noalias !655
  %i.awc = getelementptr inbounds nuw [8 x i8], ptr %i.avg, i64 %indvars.iv.i.i.i354.epil.init
  %i.awd = load i64, ptr %i.awc, align 8, !tbaa !26, !noalias !655
  %i.awe = add i64 %i.awd, %i.awb
  %not..02021.i.i.i355.epil.init = xor i1 %.02021.i.i.i355.epil.init, true
  %i.awf = zext i1 %not..02021.i.i.i355.epil.init to i64
  %.sink.i.i.i356.epil = add i64 %i.awe, %i.awf
  store i64 %.sink.i.i.i356.epil, ptr %i.awa, align 8, !tbaa !26, !noalias !655
  br label %.lr.ph.preheader.i.i.i364

.lr.ph.preheader.i.i.i364:                        ; preds = %.lr.ph.preheader.i.i.i364.unr-lcssa, %.lr.ph.i.i.i353.epil.preheader
  %i.awg = load i64, ptr %i.avd, align 8, !tbaa !26, !noalias !655
  %i.awh = and i64 %i.awg, %i.avb
  store i64 %i.awh, ptr %i.avd, align 8, !tbaa !26, !noalias !655
  %i.awi = load ptr, ptr %1, align 8, !tbaa !24, !noalias !656 ; 3 uses
  %i.awj = icmp eq i64 %i.avh, 0
  br i1 %i.awj, label %.lr.ph.i.i.i365.epil.preheader, label %.lr.ph.preheader.i.i.i364.new

.lr.ph.preheader.i.i.i364.new:                    ; preds = %.lr.ph.preheader.i.i.i364
  %unroll_iter1132 = and i64 %i.auo, 134217726
  br label %.lr.ph.i.i.i365

.lr.ph.i.i.i365:                                  ; preds = %.lr.ph.i.i.i365, %.lr.ph.preheader.i.i.i364.new
  %indvars.iv.i.i.i366 = phi i64 [ 0, %.lr.ph.preheader.i.i.i364.new ], [ %indvars.iv.next.i.i.i370.1, %.lr.ph.i.i.i365 ] ; 4 uses
  %.02021.i.i.i367 = phi i1 [ true, %.lr.ph.preheader.i.i.i364.new ], [ %.1.in.i.i.i369.1, %.lr.ph.i.i.i365 ] ; 2 uses
  %niter1133 = phi i64 [ 0, %.lr.ph.preheader.i.i.i364.new ], [ %niter1133.next.1, %.lr.ph.i.i.i365 ]
  %i.awk = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %indvars.iv.i.i.i366 ; 2 uses
  %i.awl = load i64, ptr %i.awk, align 8, !tbaa !26, !noalias !656 ; 3 uses
  %i.awm = getelementptr inbounds nuw [8 x i8], ptr %i.awi, i64 %indvars.iv.i.i.i366
  %i.awn = load i64, ptr %i.awm, align 8, !tbaa !26, !noalias !656
  %i.awo = add i64 %i.awn, %i.awl                 ; 3 uses
  %i.awp = icmp uge i64 %i.awo, %i.awl
  %i.awq = add i64 %i.awo, 1                      ; 2 uses
  %i.awr = icmp ugt i64 %i.awq, %i.awl
  %.sink.i.i.i368 = select i1 %.02021.i.i.i367, i64 %i.awo, i64 %i.awq
  %.1.in.i.i.i369 = select i1 %.02021.i.i.i367, i1 %i.awp, i1 %i.awr ; 2 uses
  store i64 %.sink.i.i.i368, ptr %i.awk, align 8, !tbaa !26, !noalias !656
  %indvars.iv.next.i.i.i370 = or disjoint i64 %indvars.iv.i.i.i366, 1 ; 2 uses
  %i.aws = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %indvars.iv.next.i.i.i370 ; 2 uses
  %i.awt = load i64, ptr %i.aws, align 8, !tbaa !26, !noalias !656 ; 3 uses
  %i.awu = getelementptr inbounds nuw [8 x i8], ptr %i.awi, i64 %indvars.iv.next.i.i.i370
  %i.awv = load i64, ptr %i.awu, align 8, !tbaa !26, !noalias !656
  %i.aww = add i64 %i.awv, %i.awt                 ; 3 uses
  %i.awx = icmp uge i64 %i.aww, %i.awt
  %i.awy = add i64 %i.aww, 1                      ; 2 uses
  %i.awz = icmp ugt i64 %i.awy, %i.awt
  %.sink.i.i.i368.1 = select i1 %.1.in.i.i.i369, i64 %i.aww, i64 %i.awy
  %.1.in.i.i.i369.1 = select i1 %.1.in.i.i.i369, i1 %i.awx, i1 %i.awz ; 2 uses
  store i64 %.sink.i.i.i368.1, ptr %i.aws, align 8, !tbaa !26, !noalias !656
  %indvars.iv.next.i.i.i370.1 = add nuw nsw i64 %indvars.iv.i.i.i366, 2 ; 2 uses
  %niter1133.next.1 = add i64 %niter1133, 2       ; 2 uses
  %niter1133.ncmp.1 = icmp eq i64 %niter1133.next.1, %unroll_iter1132
  br i1 %niter1133.ncmp.1, label %.lr.ph.preheader.i.i.i377.unr-lcssa, label %.lr.ph.i.i.i365, !llvm.loop !4

.lr.ph.preheader.i.i.i377.unr-lcssa:              ; preds = %.lr.ph.i.i.i365
  %i.axa = and i64 %i.auj, 64
  %lcmp.mod1130.not = icmp eq i64 %i.axa, 0
  br i1 %lcmp.mod1130.not, label %.lr.ph.preheader.i.i.i377, label %.lr.ph.i.i.i365.epil.preheader

.lr.ph.i.i.i365.epil.preheader:                   ; preds = %.lr.ph.preheader.i.i.i377.unr-lcssa, %.lr.ph.preheader.i.i.i364
  %indvars.iv.i.i.i366.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i364 ], [ %indvars.iv.next.i.i.i370.1, %.lr.ph.preheader.i.i.i377.unr-lcssa ] ; 2 uses
  %.02021.i.i.i367.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i364 ], [ %.1.in.i.i.i369.1, %.lr.ph.preheader.i.i.i377.unr-lcssa ]
  %lcmp.mod1131 = trunc i64 %i.auo to i1
  call void @llvm.assume(i1 %lcmp.mod1131)
  %i.axb = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %indvars.iv.i.i.i366.epil.init ; 2 uses
  %i.axc = load i64, ptr %i.axb, align 8, !tbaa !26, !noalias !656
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %i.awi, i64 %indvars.iv.i.i.i366.epil.init
  %i.axe = load i64, ptr %i.axd, align 8, !tbaa !26, !noalias !656
  %i.axf = add i64 %i.axe, %i.axc
  %not..02021.i.i.i367.epil.init = xor i1 %.02021.i.i.i367.epil.init, true
  %i.axg = zext i1 %not..02021.i.i.i367.epil.init to i64
  %.sink.i.i.i368.epil = add i64 %i.axf, %i.axg
  store i64 %.sink.i.i.i368.epil, ptr %i.axb, align 8, !tbaa !26, !noalias !656
  br label %.lr.ph.preheader.i.i.i377

.lr.ph.preheader.i.i.i377:                        ; preds = %.lr.ph.preheader.i.i.i377.unr-lcssa, %.lr.ph.i.i.i365.epil.preheader
  %i.axh = load i64, ptr %i.avd, align 8, !tbaa !26, !noalias !656
  %i.axi = and i64 %i.axh, %i.avb
  store i64 %i.axi, ptr %i.avd, align 8, !tbaa !26, !noalias !656
  %i.axj = load ptr, ptr %2, align 8, !tbaa !24, !noalias !657 ; 3 uses
  %i.axk = icmp eq i64 %i.avh, 0
  br i1 %i.axk, label %.lr.ph.i.i.i378.epil.preheader, label %.lr.ph.preheader.i.i.i377.new

.lr.ph.preheader.i.i.i377.new:                    ; preds = %.lr.ph.preheader.i.i.i377
  %unroll_iter1137 = and i64 %i.auo, 134217726
  br label %.lr.ph.i.i.i378

.lr.ph.i.i.i378:                                  ; preds = %.lr.ph.i.i.i378, %.lr.ph.preheader.i.i.i377.new
  %indvars.iv.i.i.i379 = phi i64 [ 0, %.lr.ph.preheader.i.i.i377.new ], [ %indvars.iv.next.i.i.i383.1, %.lr.ph.i.i.i378 ] ; 4 uses
  %.02021.i.i.i380 = phi i1 [ true, %.lr.ph.preheader.i.i.i377.new ], [ %.1.in.i.i.i382.1, %.lr.ph.i.i.i378 ] ; 2 uses
  %niter1138 = phi i64 [ 0, %.lr.ph.preheader.i.i.i377.new ], [ %niter1138.next.1, %.lr.ph.i.i.i378 ]
  %i.axl = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %indvars.iv.i.i.i379 ; 2 uses
  %i.axm = load i64, ptr %i.axl, align 8, !tbaa !26, !noalias !657 ; 3 uses
  %i.axn = getelementptr inbounds nuw [8 x i8], ptr %i.axj, i64 %indvars.iv.i.i.i379
  %i.axo = load i64, ptr %i.axn, align 8, !tbaa !26, !noalias !657
  %i.axp = add i64 %i.axo, %i.axm                 ; 3 uses
  %i.axq = icmp uge i64 %i.axp, %i.axm
  %i.axr = add i64 %i.axp, 1                      ; 2 uses
  %i.axs = icmp ugt i64 %i.axr, %i.axm
  %.sink.i.i.i381 = select i1 %.02021.i.i.i380, i64 %i.axp, i64 %i.axr
  %.1.in.i.i.i382 = select i1 %.02021.i.i.i380, i1 %i.axq, i1 %i.axs ; 2 uses
  store i64 %.sink.i.i.i381, ptr %i.axl, align 8, !tbaa !26, !noalias !657
  %indvars.iv.next.i.i.i383 = or disjoint i64 %indvars.iv.i.i.i379, 1 ; 2 uses
  %i.axt = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %indvars.iv.next.i.i.i383 ; 2 uses
  %i.axu = load i64, ptr %i.axt, align 8, !tbaa !26, !noalias !657 ; 3 uses
  %i.axv = getelementptr inbounds nuw [8 x i8], ptr %i.axj, i64 %indvars.iv.next.i.i.i383
  %i.axw = load i64, ptr %i.axv, align 8, !tbaa !26, !noalias !657
  %i.axx = add i64 %i.axw, %i.axu                 ; 3 uses
  %i.axy = icmp uge i64 %i.axx, %i.axu
  %i.axz = add i64 %i.axx, 1                      ; 2 uses
  %i.aya = icmp ugt i64 %i.axz, %i.axu
  %.sink.i.i.i381.1 = select i1 %.1.in.i.i.i382, i64 %i.axx, i64 %i.axz
  %.1.in.i.i.i382.1 = select i1 %.1.in.i.i.i382, i1 %i.axy, i1 %i.aya ; 2 uses
  store i64 %.sink.i.i.i381.1, ptr %i.axt, align 8, !tbaa !26, !noalias !657
  %indvars.iv.next.i.i.i383.1 = add nuw nsw i64 %indvars.iv.i.i.i379, 2 ; 2 uses
  %niter1138.next.1 = add i64 %niter1138, 2       ; 2 uses
  %niter1138.ncmp.1 = icmp eq i64 %niter1138.next.1, %unroll_iter1137
  br i1 %niter1138.ncmp.1, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385.unr-lcssa, label %.lr.ph.i.i.i378, !llvm.loop !4

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i387: ; preds = %_ZN4llvm5APIntD2Ev.exit340
  %i.ayb = load i64, ptr %21, align 8, !noalias !654 ; 3 uses
  %i.ayc = mul i64 %i.ayb, %i.lo
  %i.ayd = sub nsw i32 0, %i.jt
  %i.aye = and i32 %i.ayd, 63
  %i.ayf = zext nneg i32 %i.aye to i64
  %i.ayg = lshr i64 -1, %i.ayf
  %i.ayh = icmp eq i32 %i.jt, 0
  %spec.select.i.i350 = select i1 %i.ayh, i64 0, i64 %i.ayg, !prof !39 ; 4 uses
  %i.ayi = and i64 %i.ayc, %spec.select.i.i350
  %i.ayj = add i64 %i.ayi, %i.aug
  %i.ayk = and i64 %i.ayj, %spec.select.i.i350
  %i.ayl = load i64, ptr %1, align 8, !tbaa !24, !noalias !656
  %i.aym = add i64 %i.ayk, %i.ayl
  %i.ayn = and i64 %i.aym, %spec.select.i.i350
  %i.ayo = load i64, ptr %2, align 8, !tbaa !24, !noalias !657
  %i.ayp = add i64 %i.ayn, %i.ayo
  %i.ayq = and i64 %i.ayp, %spec.select.i.i350
  %i.ayr = inttoptr i64 %i.ayb to ptr
  %.pre790 = inttoptr i64 %i.aug to ptr
  br label %_ZN4llvm5APIntD2Ev.exit392

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385.unr-lcssa: ; preds = %.lr.ph.i.i.i378
  %i.ays = and i64 %i.auj, 64
  %lcmp.mod1135.not = icmp eq i64 %i.ays, 0
  br i1 %lcmp.mod1135.not, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385, label %.lr.ph.i.i.i378.epil.preheader

.lr.ph.i.i.i378.epil.preheader:                   ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385.unr-lcssa, %.lr.ph.preheader.i.i.i377
  %indvars.iv.i.i.i379.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i377 ], [ %indvars.iv.next.i.i.i383.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385.unr-lcssa ] ; 2 uses
  %.02021.i.i.i380.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i377 ], [ %.1.in.i.i.i382.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385.unr-lcssa ]
  %lcmp.mod1136 = trunc i64 %i.auo to i1
  call void @llvm.assume(i1 %lcmp.mod1136)
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %indvars.iv.i.i.i379.epil.init ; 2 uses
  %i.ayu = load i64, ptr %i.ayt, align 8, !tbaa !26, !noalias !657
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.axj, i64 %indvars.iv.i.i.i379.epil.init
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !26, !noalias !657
  %i.ayx = add i64 %i.ayw, %i.ayu
  %not..02021.i.i.i380.epil.init = xor i1 %.02021.i.i.i380.epil.init, true
  %i.ayy = zext i1 %not..02021.i.i.i380.epil.init to i64
  %.sink.i.i.i381.epil = add i64 %i.ayx, %i.ayy
  store i64 %.sink.i.i.i381.epil, ptr %i.ayt, align 8, !tbaa !26, !noalias !657
  br label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385:         ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385.unr-lcssa, %.lr.ph.i.i.i378.epil.preheader
  %i.ayz = ptrtoint ptr %i.aum to i64
  %i.aza = load i64, ptr %i.avd, align 8, !tbaa !26, !noalias !657
  %i.azb = and i64 %i.aza, %i.avb
  store i64 %i.azb, ptr %i.avd, align 8, !tbaa !26, !noalias !657
  br label %_ZN4llvm5APIntD2Ev.exit392

_ZN4llvm5APIntD2Ev.exit392:                       ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i387
  %.pre-phi791 = phi ptr [ %i.avg, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385 ], [ %.pre790, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i387 ] ; 3 uses
  %i.azc = phi i64 [ %i.auq, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385 ], [ %i.ayb, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i387 ]
  %i.azd = phi ptr [ %i.aun, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385 ], [ %i.ayr, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i387 ] ; 3 uses
  %.sroa.0497.0 = phi i64 [ %i.ayz, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i385 ], [ %i.ayq, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i387 ] ; 4 uses
  %i.aze = add i32 %.sroa.9.0707712720726, -1     ; 2 uses
  %i.azf = and i32 %i.aze, 63
  %i.azg = zext nneg i32 %i.azf to i64
  %i.azh = shl nuw i64 1, %i.azg
  br i1 %i.auh, label %_ZN4llvm5APIntD2Ev.exit392.cont537, label %_ZN4llvm5APIntD2Ev.exit392.else538

_ZN4llvm5APIntD2Ev.exit392.else538:               ; preds = %_ZN4llvm5APIntD2Ev.exit392
  %i.azi = lshr i32 %i.aze, 6
  %i.azj = zext nneg i32 %i.azi to i64
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %.pre-phi791, i64 %i.azj
  %.else.val539 = load i64, ptr %i.azk, align 8, !tbaa !24
  br label %_ZN4llvm5APIntD2Ev.exit392.cont537

_ZN4llvm5APIntD2Ev.exit392.cont537:               ; preds = %_ZN4llvm5APIntD2Ev.exit392, %_ZN4llvm5APIntD2Ev.exit392.else538
  %i.azl = phi i64 [ %i.aug, %_ZN4llvm5APIntD2Ev.exit392 ], [ %.else.val539, %_ZN4llvm5APIntD2Ev.exit392.else538 ]
  %i.azm = and i64 %i.azl, %i.azh
  %i.azn = icmp ne i64 %i.azm, 0
  %i.azo = add i32 %i.jt, -1                      ; 2 uses
  %i.azp = and i32 %i.azo, 63
  %i.azq = zext nneg i32 %i.azp to i64
  %i.azr = shl nuw i64 1, %i.azq
  %i.azs = inttoptr i64 %.sroa.0497.0 to ptr      ; 3 uses
  br i1 %i.ju, label %_ZN4llvm5APIntD2Ev.exit392.cont, label %_ZN4llvm5APIntD2Ev.exit392.else

_ZN4llvm5APIntD2Ev.exit392.else:                  ; preds = %_ZN4llvm5APIntD2Ev.exit392.cont537
  %i.azt = lshr i32 %i.azo, 6
  %i.azu = zext nneg i32 %i.azt to i64
  %i.azv = getelementptr inbounds nuw [8 x i8], ptr %i.azs, i64 %i.azu
  %.else.val = load i64, ptr %i.azv, align 8, !tbaa !24
  br label %_ZN4llvm5APIntD2Ev.exit392.cont

_ZN4llvm5APIntD2Ev.exit392.cont:                  ; preds = %_ZN4llvm5APIntD2Ev.exit392.cont537, %_ZN4llvm5APIntD2Ev.exit392.else
  %i.azw = phi i64 [ %.sroa.0497.0, %_ZN4llvm5APIntD2Ev.exit392.cont537 ], [ %.else.val, %_ZN4llvm5APIntD2Ev.exit392.else ]
  %i.azx = and i64 %i.azw, %i.azr
  %i.azy = icmp ne i64 %i.azx, 0
  %i.azz = xor i1 %i.azn, %i.azy
  br i1 %i.azz, label %.critedge, label %bb.cj

bb.cj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit392.cont
  br i1 %i.auh, label %bb.ck, label %.lr.ph.i.i395

bb.ck:                                            ; preds = %bb.cj
  %i.baa = icmp eq i64 %i.aug, 0
  br label %_ZNK4llvm5APInt6isZeroEv.exit406

.lr.ph.i.i395:                                    ; preds = %bb.cj
  %i.bab = zext i32 %.sroa.9.0707712720726 to i64
  %i.bac = add nuw nsw i64 %i.bab, 63
  %i.bad = lshr i64 %i.bac, 6                     ; 2 uses
  %i.bae = trunc nuw nsw i64 %i.bad to i32
  %i.baf = shl i32 %i.bae, 6
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cm, %.lr.ph.i.i395
  %indvars.iv.i396 = phi i64 [ %indvars.iv.next.i398, %bb.cm ], [ %i.bad, %.lr.ph.i.i395 ] ; 2 uses
  %.019.i.i397 = phi i32 [ %i.bam, %bb.cm ], [ 0, %.lr.ph.i.i395 ] ; 2 uses
  %indvars.iv.next.i398 = add nsw i64 %indvars.iv.i396, -1 ; 2 uses
  %i.bag = getelementptr inbounds nuw [8 x i8], ptr %.pre-phi791, i64 %indvars.iv.next.i398
  %i.bah = load i64, ptr %i.bag, align 8, !tbaa !26 ; 2 uses
  %i.bai = icmp eq i64 %i.bah, 0
  br i1 %i.bai, label %bb.cm, label %.thread.i.i399

.thread.i.i399:                                   ; preds = %bb.cl
  %i.baj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bah, i1 true)
  %i.bak = trunc nuw nsw i64 %i.baj to i32
  %i.bal = or disjoint i32 %.019.i.i397, %i.bak
  br label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i400

bb.cm:                                            ; preds = %bb.cl
  %i.bam = add i32 %.019.i.i397, 64
  %i.ban = icmp samesign ugt i64 %indvars.iv.i396, 1
  br i1 %i.ban, label %bb.cl, label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i400, !llvm.loop !1

_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i400: ; preds = %bb.cm, %.thread.i.i399
  %.2.i.i401 = phi i32 [ %i.bal, %.thread.i.i399 ], [ %i.baf, %bb.cm ]
  %i.bao = and i32 %.sroa.9.0707712720726, 63
  %.not.i.i402 = icmp eq i32 %i.bao, 0
  %.neg.i.i403 = or i32 %.sroa.9.0707712720726, -64
  %.neg15.i.i404 = select i1 %.not.i.i402, i32 0, i32 %.neg.i.i403
  %i.bap = add i32 %.2.i.i401, %.neg15.i.i404
  %i.baq = icmp eq i32 %i.bap, %.sroa.9.0707712720726
  br label %_ZNK4llvm5APInt6isZeroEv.exit406

_ZNK4llvm5APInt6isZeroEv.exit406:                 ; preds = %bb.ck, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i400
  %.0.i405 = phi i1 [ %i.baa, %bb.ck ], [ %i.baq, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i400 ]
  br i1 %i.ju, label %bb.cn, label %.lr.ph.i.i407

bb.cn:                                            ; preds = %_ZNK4llvm5APInt6isZeroEv.exit406
  %i.bar = icmp eq i64 %.sroa.0497.0, 0
  br label %_ZNK4llvm5APInt6isZeroEv.exit418

.lr.ph.i.i407:                                    ; preds = %_ZNK4llvm5APInt6isZeroEv.exit406
  %i.bas = zext i32 %i.jt to i64
  %i.bat = add nuw nsw i64 %i.bas, 63
  %i.bau = lshr i64 %i.bat, 6                     ; 2 uses
  %i.bav = trunc nuw nsw i64 %i.bau to i32
  %i.baw = shl i32 %i.bav, 6
  br label %bb.co

bb.co:                                            ; preds = %bb.cp, %.lr.ph.i.i407
  %indvars.iv.i408 = phi i64 [ %indvars.iv.next.i410, %bb.cp ], [ %i.bau, %.lr.ph.i.i407 ] ; 2 uses
  %.019.i.i409 = phi i32 [ %i.bbd, %bb.cp ], [ 0, %.lr.ph.i.i407 ] ; 2 uses
  %indvars.iv.next.i410 = add nsw i64 %indvars.iv.i408, -1 ; 2 uses
  %i.bax = getelementptr inbounds nuw [8 x i8], ptr %i.azs, i64 %indvars.iv.next.i410
  %i.bay = load i64, ptr %i.bax, align 8, !tbaa !26 ; 2 uses
  %i.baz = icmp eq i64 %i.bay, 0
  br i1 %i.baz, label %bb.cp, label %.thread.i.i411

.thread.i.i411:                                   ; preds = %bb.co
  %i.bba = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bay, i1 true)
  %i.bbb = trunc nuw nsw i64 %i.bba to i32
  %i.bbc = or disjoint i32 %.019.i.i409, %i.bbb
  br label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i412

bb.cp:                                            ; preds = %bb.co
  %i.bbd = add i32 %.019.i.i409, 64
  %i.bbe = icmp samesign ugt i64 %indvars.iv.i408, 1
  br i1 %i.bbe, label %bb.co, label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i412, !llvm.loop !1

_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i412: ; preds = %bb.cp, %.thread.i.i411
  %.2.i.i413 = phi i32 [ %i.bbc, %.thread.i.i411 ], [ %i.baw, %bb.cp ]
  %i.bbf = and i32 %i.jt, 63
  %.not.i.i414 = icmp eq i32 %i.bbf, 0
  %.neg.i.i415 = or i32 %i.jt, -64
  %.neg15.i.i416 = select i1 %.not.i.i414, i32 0, i32 %.neg.i.i415
  %i.bbg = add i32 %.2.i.i413, %.neg15.i.i416
  %i.bbh = icmp eq i32 %i.bbg, %i.jt
  br label %_ZNK4llvm5APInt6isZeroEv.exit418

_ZNK4llvm5APInt6isZeroEv.exit418:                 ; preds = %bb.cn, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i412
  %.0.i417 = phi i1 [ %i.bar, %bb.cn ], [ %i.bbh, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i412 ]
  %i.bbi = xor i1 %.0.i405, %.0.i417
  br i1 %i.bbi, label %.critedge, label %bb.cq

.critedge:                                        ; preds = %_ZN4llvm5APIntD2Ev.exit392.cont, %_ZNK4llvm5APInt6isZeroEv.exit418
  %i.bbj = load i32, ptr %i.agv, align 8, !tbaa !23 ; 6 uses
  %i.bbk = icmp ult i32 %i.bbj, 65
  br i1 %i.bbk, label %_ZN4llvm5APInt9tcAddPartEPmmj.exit.thread2.i, label %.lr.ph.preheader.i.i419

.lr.ph.preheader.i.i419:                          ; preds = %.critedge
  %i.bbl = zext i32 %i.bbj to i64
  %i.bbm = add nuw nsw i64 %i.bbl, 63
  %i.bbn = lshr i64 %i.bbm, 6                     ; 2 uses
  %i.bbo = load i64, ptr %i.azd, align 8, !tbaa !26
  %i.bbp = add i64 %i.bbo, 1                      ; 2 uses
  store i64 %i.bbp, ptr %i.azd, align 8, !tbaa !26
  %.not.peel.i.i = icmp eq i64 %i.bbp, 0
  br i1 %.not.peel.i.i, label %.lr.ph.i.i420, label %.thread.i

.lr.ph.i.i420:                                    ; preds = %.lr.ph.preheader.i.i419, %.lr.ph.i.i420
  %indvars.iv.i.i421 = phi i64 [ %indvars.iv.next.i.i423, %.lr.ph.i.i420 ], [ 1, %.lr.ph.preheader.i.i419 ] ; 2 uses
  %i.bbq = getelementptr inbounds nuw [8 x i8], ptr %i.azd, i64 %indvars.iv.i.i421 ; 2 uses
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !26
  %i.bbs = add i64 %i.bbr, 1                      ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4llvm8APIntOps8avgCeilSERKNS_5APIntES3_:bb.a
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index61 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load64 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !26, !noalias !726
  %wide.load65 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !26, !noalias !726
  %i.ar = xor <2 x i64> %wide.load64, %wide.load62
  %i.as = xor <2 x i64> %wide.load65, %wide.load63
  store <2 x i64> %i.ar, ptr %i.ap, align 8, !tbaa !26, !noalias !726
  store <2 x i64> %i.as, ptr %i.aq, align 8, !tbaa !26, !noalias !726
  %index.next66 = add nuw i64 %index61, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.at, label %middle.block67, label %vector.body60, !llvm.loop !717

middle.block67:                                   ; preds = %vector.body60
  %cmp.n68 = icmp eq i64 %i.am, %n.vec59
  br i1 %cmp.n68, label %_ZNK4llvm5APInt4ashrEj.exit, label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i6.preheader:                          ; preds = %bb.c, %middle.block67
  %.09.i.i.i7.ph = phi i64 [ 0, %bb.c ], [ %n.vec59, %middle.block67 ]
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.preheader, %.lr.ph.i.i.i6
  %.09.i.i.i7 = phi i64 [ %i.az, %.lr.ph.i.i.i6 ], [ %.09.i.i.i7.ph, %.lr.ph.i.i.i6.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.09.i.i.i7
  %i.av = load i64, ptr %i.au, align 8, !tbaa !26, !noalias !726
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.09.i.i.i7 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26, !noalias !726
  %i.ay = xor i64 %i.ax, %i.av
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !26, !noalias !726
  %i.az = add nuw nsw i64 %.09.i.i.i7, 1          ; 2 uses
  %.not.i.i.i8 = icmp eq i64 %i.az, %i.am
  br i1 %.not.i.i.i8, label %_ZNK4llvm5APInt4ashrEj.exit, label %.lr.ph.i.i.i6, !llvm.loop !718

_ZNK4llvm5APInt4ashrEj.exit.thread:               ; preds = %_ZN4llvmorENS_5APIntERKS0_.exit, %_ZN4llvmorENS_5APIntERKS0_.exit.thread
  %.sroa.023.149 = phi i64 [ %i.f, %_ZN4llvmorENS_5APIntERKS0_.exit.thread ], [ %i.ad, %_ZN4llvmorENS_5APIntERKS0_.exit ]
  %i.ba = phi i32 [ %i.b, %_ZN4llvmorENS_5APIntERKS0_.exit.thread ], [ %.pre, %_ZN4llvmorENS_5APIntERKS0_.exit ] ; 5 uses
  %i.bb = phi i64 [ %i.d, %_ZN4llvmorENS_5APIntERKS0_.exit.thread ], [ %i.o, %_ZN4llvmorENS_5APIntERKS0_.exit ]
  %i.bc = phi i64 [ %i.e, %_ZN4llvmorENS_5APIntERKS0_.exit.thread ], [ %i.p, %_ZN4llvmorENS_5APIntERKS0_.exit ]
  %i.bd = xor i64 %i.bc, %i.bb                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = icmp eq i32 %i.ba, 0                    ; 2 uses
  %i.bg = sub nuw nsw i32 64, %i.ba
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = shl i64 %i.bd, %i.bh
  %i.bj = ashr exact i64 %i.bi, %i.bh
  %.0.i.i.i = select i1 %i.bf, i64 0, i64 %i.bj
  %i.bk = icmp eq i32 %i.ba, 1
  %narrow.i.i = select i1 %i.bk, i64 63, i64 1
  %storemerge.i.i = ashr i64 %.0.i.i.i, %narrow.i.i
  %i.bl = sub nsw i32 0, %i.ba
  %i.bm = and i32 %i.bl, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 -1, %i.bn
  %spec.select.i.i = select i1 %i.bf, i64 0, i64 %i.bo, !prof !27
  %i.bp = and i64 %storemerge.i.i, %spec.select.i.i
  store i64 %i.bp, ptr %3, align 8, !tbaa !24, !alias.scope !727
  %i.bq = inttoptr i64 %i.bd to ptr
  br label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i

_ZNK4llvm5APInt4ashrEj.exit:                      ; preds = %.lr.ph.i.i.i6, %middle.block67
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %.pre, ptr %i.br, align 8, !tbaa !23, !alias.scope !727
  %i.bs = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #21, !noalias !727 ; 2 uses
  store ptr %i.bs, ptr %3, align 8, !tbaa !24, !alias.scope !727
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr nonnull align 8 %i.aj, i64 %i.ai, i1 false), !noalias !727
  call void @_ZN4llvm5APInt12ashrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 1)
  %.pre40 = load i32, ptr %i.br, align 8, !tbaa !23, !noalias !728 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.bt = icmp ult i32 %.pre40, 65
  br i1 %i.bt, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm5APInt4ashrEj.exit
  %i.bu = load ptr, ptr %3, align 8, !noalias !728 ; 10 uses
  %i.bv = zext i32 %.pre40 to i64
  %i.bw = add nuw nsw i64 %i.bv, 63               ; 2 uses
  %i.bx = lshr i64 %i.bw, 6                       ; 8 uses
  %i.by = ptrtoint ptr %i.bu to i64
  %min.iters.check71 = icmp ult i32 %.pre40, 193
  br i1 %min.iters.check71, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph72

vector.ph72:                                      ; preds = %bb.d
  %n.vec73 = and i64 %i.bx, 134217724             ; 3 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next78, %vector.body74 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %index75 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load76 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !26, !noalias !728
  %wide.load77 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !26, !noalias !728
  %i.cb = xor <2 x i64> %wide.load76, splat (i64 -1)
  %i.cc = xor <2 x i64> %wide.load77, splat (i64 -1)
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !tbaa !26, !noalias !728
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !tbaa !26, !noalias !728
  %index.next78 = add nuw i64 %index75, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.cd, label %middle.block79, label %vector.body74, !llvm.loop !723

middle.block79:                                   ; preds = %vector.body74
  %cmp.n80 = icmp eq i64 %i.bx, %n.vec73
  br i1 %cmp.n80, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block79
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec73, %middle.block79 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !26, !noalias !728
  %i.cg = xor i64 %i.cf, -1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !26, !noalias !728
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.bx
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !724

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block79
  %i.ch = sub i32 0, %.pre40
  %i.ci = and i32 %i.ch, 63
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = lshr i64 -1, %i.cj                      ; 3 uses
  %i.cl = getelementptr [8 x i8], ptr %i.bu, i64 %i.bx
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8     ; 6 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !26, !noalias !728
  %i.co = and i64 %i.cn, %i.ck
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !26, !noalias !728
  %i.cp = load i64, ptr %i.bu, align 8, !tbaa !26, !noalias !728
  %i.cq = add i64 %i.cp, 1                        ; 2 uses
  store i64 %i.cq, ptr %i.bu, align 8, !tbaa !26, !noalias !728
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !26, !noalias !728
  %i.ct = add i64 %i.cs, 1                        ; 2 uses
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !26, !noalias !728
  %.not.i.i.i.i.i = icmp ne i64 %i.ct, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.bx
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.cu = load i64, ptr %i.cm, align 8, !tbaa !26, !noalias !728
  %i.cv = and i64 %i.cu, %i.ck
  store i64 %i.cv, ptr %i.cm, align 8, !tbaa !26, !noalias !728
  %i.cw = icmp eq i64 %i.bx, 1
  br i1 %i.cw, label %.lr.ph.i.i.i10.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.bx, 134217726
  br label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i10 ] ; 4 uses
  %.02021.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i.new ], [ %.1.in.i.i.i.1, %.lr.ph.i.i.i10 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i10 ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !26, !noalias !728 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !26, !noalias !728
  %i.db = add i64 %i.da, %i.cy                    ; 3 uses
  %i.dc = icmp uge i64 %i.db, %i.cy
  %i.dd = add i64 %i.db, 1                        ; 2 uses
  %i.de = icmp ugt i64 %i.dd, %i.cy
  %.sink.i.i.i = select i1 %.02021.i.i.i, i64 %i.db, i64 %i.dd
  %.1.in.i.i.i = select i1 %.02021.i.i.i, i1 %i.dc, i1 %i.de ; 2 uses
  store i64 %.sink.i.i.i, ptr %i.cx, align 8, !tbaa !26, !noalias !728
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !26, !noalias !728 ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !26, !noalias !728
  %i.dj = add i64 %i.di, %i.dg                    ; 3 uses
  %i.dk = icmp uge i64 %i.dj, %i.dg
  %i.dl = add i64 %i.dj, 1                        ; 2 uses
  %i.dm = icmp ugt i64 %i.dl, %i.dg
  %.sink.i.i.i.1 = select i1 %.1.in.i.i.i, i64 %i.dj, i64 %i.dl
  %.1.in.i.i.i.1 = select i1 %.1.in.i.i.i, i1 %i.dk, i1 %i.dm ; 2 uses
  store i64 %.sink.i.i.i.1, ptr %i.df, align 8, !tbaa !26, !noalias !728
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, label %.lr.ph.i.i.i10, !llvm.loop !4

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i:    ; preds = %_ZNK4llvm5APInt4ashrEj.exit.thread, %_ZNK4llvm5APInt4ashrEj.exit
  %i.dn = phi ptr [ %i.bq, %_ZNK4llvm5APInt4ashrEj.exit.thread ], [ %i.aj, %_ZNK4llvm5APInt4ashrEj.exit ]
  %i.do = phi ptr [ %i.be, %_ZNK4llvm5APInt4ashrEj.exit.thread ], [ %i.br, %_ZNK4llvm5APInt4ashrEj.exit ]
  %i.dp = phi i32 [ %i.ba, %_ZNK4llvm5APInt4ashrEj.exit.thread ], [ %.pre40, %_ZNK4llvm5APInt4ashrEj.exit ] ; 3 uses
  %.sroa.023.14851 = phi i64 [ %.sroa.023.149, %_ZNK4llvm5APInt4ashrEj.exit.thread ], [ %i.ad, %_ZNK4llvm5APInt4ashrEj.exit ] ; 2 uses
  %i.dq = phi i1 [ true, %_ZNK4llvm5APInt4ashrEj.exit.thread ], [ false, %_ZNK4llvm5APInt4ashrEj.exit ]
  %i.dr = load i64, ptr %3, align 8, !tbaa !24, !noalias !728
  %i.ds = xor i64 %i.dr, -1
  %i.dt = sub nsw i32 0, %i.dp
  %i.du = and i32 %i.dt, 63
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = lshr i64 -1, %i.dv
  %i.dx = icmp eq i32 %i.dp, 0
  %spec.select.i.i.i = select i1 %i.dx, i64 0, i64 %i.dw, !prof !39 ; 3 uses
  %i.dy = and i64 %spec.select.i.i.i, %i.ds
  %i.dz = add i64 %i.dy, 1
  %i.ea = and i64 %i.dz, %spec.select.i.i.i
  %i.eb = add i64 %i.ea, %.sroa.023.14851
  %i.ec = and i64 %i.eb, %spec.select.i.i.i
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa:  ; preds = %.lr.ph.i.i.i10
  %i.ed = and i64 %i.bw, 64
  %lcmp.mod.not = icmp eq i64 %i.ed, 0
  br i1 %lcmp.mod.not, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i, label %.lr.ph.i.i.i10.epil.preheader

.lr.ph.i.i.i10.epil.preheader:                    ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa ] ; 2 uses
  %.02021.i.i.i.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %.1.in.i.i.i.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa ]
  %lcmp.mod82 = trunc i64 %i.bx to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !26, !noalias !728
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil.init
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !26, !noalias !728
  %i.ei = add i64 %i.eh, %i.ef
  %not..02021.i.i.i.epil.init = xor i1 %.02021.i.i.i.epil.init, true
  %i.ej = zext i1 %not..02021.i.i.i.epil.init to i64
  %.sink.i.i.i.epil = add i64 %i.ei, %i.ej
  store i64 %.sink.i.i.i.epil, ptr %i.ee, align 8, !tbaa !26, !noalias !728
  br label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i:            ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, %.lr.ph.i.i.i10.epil.preheader
  %i.ek = load i64, ptr %i.cm, align 8, !tbaa !26, !noalias !728
  %i.el = and i64 %i.ek, %i.ck
  store i64 %i.el, ptr %i.cm, align 8, !tbaa !26, !noalias !728
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i
  %i.em = phi ptr [ %i.dn, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i ], [ %i.aj, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i ] ; 2 uses
  %i.en = phi ptr [ %i.do, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i ], [ %i.br, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i ]
  %i.eo = phi i32 [ %i.dp, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i ], [ %.pre40, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i ]
  %.sroa.023.14852 = phi i64 [ %.sroa.023.14851, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i ], [ %i.ad, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i ] ; 2 uses
  %i.ep = phi i1 [ %i.dq, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i ], [ false, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i ]
  %i.eq = phi i64 [ %i.ec, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.thread3.i.i ], [ %i.by, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.eo, ptr %i.er, align 8, !tbaa !23, !alias.scope !728
  store i64 %i.eq, ptr %0, align 8, !alias.scope !728
  store i32 0, ptr %i.en, align 8, !tbaa !23, !noalias !728
  %i.es = icmp eq ptr %i.em, null
  %or.cond = select i1 %i.ep, i1 true, i1 %i.es
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.em) #22
  br label %_ZN4llvm5APIntD2Ev.exit13

_ZN4llvm5APIntD2Ev.exit13:                        ; preds = %bb.e, %_ZN4llvm5APIntD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.et = icmp eq i64 %.sroa.023.14852, 0
  %or.cond39 = select i1 %i.c, i1 true, i1 %i.et
  br i1 %or.cond39, label %_ZN4llvm5APIntD2Ev.exit15, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit13
  %i.eu = inttoptr i64 %.sroa.023.14852 to ptr
  tail call void @_ZdaPv(ptr noundef nonnull %i.eu) #22
  br label %_ZN4llvm5APIntD2Ev.exit15

_ZN4llvm5APIntD2Ev.exit15:                        ; preds = %bb.f, %_ZN4llvm5APIntD2Ev.exit13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8APIntOps8avgCeilUERKNS_5APIntES3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.c, label %_ZN4llvmorENS_5APIntERKS0_.exit.thread, label %bb.b

_ZN4llvmorENS_5APIntERKS0_.exit.thread:           ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !24, !noalias !743 ; 2 uses
  %i.f = or i64 %i.e, %i.d
  br label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 63                 ; 2 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741816                 ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #21 ; 7 uses
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %i.l, i64 %i.j, i1 false)
  %i.m = load ptr, ptr %2, align 8, !noalias !743 ; 3 uses
  %i.n = lshr i64 %i.h, 6                         ; 3 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.m to i64
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.n, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8, !tbaa !26, !noalias !743
  %wide.load64 = load <2 x i64>, ptr %i.r, align 8, !tbaa !26, !noalias !743
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %wide.load65 = load <2 x i64>, ptr %i.s, align 8, !tbaa !26, !noalias !743
  %wide.load66 = load <2 x i64>, ptr %i.t, align 8, !tbaa !26, !noalias !743
  %i.u = or <2 x i64> %wide.load65, %wide.load
  %i.v = or <2 x i64> %wide.load66, %wide.load64
  store <2 x i64> %i.u, ptr %i.s, align 8, !tbaa !26, !noalias !743
  store <2 x i64> %i.v, ptr %i.t, align 8, !tbaa !26, !noalias !743
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !731

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4llvmorENS_5APIntERKS0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.i.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !26, !noalias !743
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.09.i.i.i ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26, !noalias !743
  %i.ab = or i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !26, !noalias !743
  %i.ac = add nuw nsw i64 %.09.i.i.i, 1           ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ac, %i.n
  br i1 %.not.i.i.i, label %_ZN4llvmorENS_5APIntERKS0_.exit, label %.lr.ph.i.i.i, !llvm.loop !732

_ZN4llvmorENS_5APIntERKS0_.exit:                  ; preds = %.lr.ph.i.i.i, %middle.block
  %i.ad = ptrtoint ptr %i.k to i64                ; 2 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !23  ; 7 uses
  %i.ae = icmp ult i32 %.pre, 65
  br i1 %i.ae, label %_ZN4llvm5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvmorENS_5APIntERKS0_.exit
  %i.af = zext i32 %.pre to i64
  %i.ag = add nuw nsw i64 %i.af, 63               ; 3 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = and i64 %i.ah, 1073741816               ; 4 uses
  %i.aj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #21 ; 5 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.ak, i64 %i.ai, i1 false)
  %i.al = load ptr, ptr %2, align 8, !tbaa !24, !noalias !744 ; 2 uses
  %i.am = lshr i64 %i.ag, 6                       ; 12 uses
  %min.iters.check68 = icmp ult i32 %.pre, 193
  br i1 %min.iters.check68, label %.lr.ph.i.i.i6.preheader, label %vector.ph69

vector.ph69:                                      ; preds = %bb.c
  %n.vec70 = and i64 %i.am, 134217724             ; 3 uses
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body71 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load73 = load <2 x i64>, ptr %i.an, align 8, !tbaa !26, !noalias !744
  %wide.load74 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !26, !noalias !744
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load75 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !26, !noalias !744
  %wide.load76 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !26, !noalias !744
  %i.ar = xor <2 x i64> %wide.load75, %wide.load73
  %i.as = xor <2 x i64> %wide.load76, %wide.load74
  store <2 x i64> %i.ar, ptr %i.ap, align 8, !tbaa !26, !noalias !744
  store <2 x i64> %i.as, ptr %i.aq, align 8, !tbaa !26, !noalias !744
  %index.next77 = add nuw i64 %index72, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.at, label %middle.block78, label %vector.body71, !llvm.loop !735

middle.block78:                                   ; preds = %vector.body71
  %cmp.n79 = icmp eq i64 %i.am, %n.vec70
  br i1 %cmp.n79, label %.lr.ph.i.i.i.i, label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i6.preheader:                          ; preds = %bb.c, %middle.block78
  %.09.i.i.i7.ph = phi i64 [ 0, %bb.c ], [ %n.vec70, %middle.block78 ]
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.preheader, %.lr.ph.i.i.i6
  %.09.i.i.i7 = phi i64 [ %i.az, %.lr.ph.i.i.i6 ], [ %.09.i.i.i7.ph, %.lr.ph.i.i.i6.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.09.i.i.i7
  %i.av = load i64, ptr %i.au, align 8, !tbaa !26, !noalias !744
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.09.i.i.i7 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26, !noalias !744
  %i.ay = xor i64 %i.ax, %i.av
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !26, !noalias !744
  %i.az = add nuw nsw i64 %.09.i.i.i7, 1          ; 2 uses
  %.not.i.i.i8 = icmp eq i64 %i.az, %i.am
  br i1 %.not.i.i.i8, label %.lr.ph.i.i.i.i, label %.lr.ph.i.i.i6, !llvm.loop !736

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvmorENS_5APIntERKS0_.exit.thread, %_ZN4llvmorENS_5APIntERKS0_.exit
  %.sroa.033.162 = phi i64 [ %i.f, %_ZN4llvmorENS_5APIntERKS0_.exit.thread ], [ %i.ad, %_ZN4llvmorENS_5APIntERKS0_.exit ] ; 2 uses
  %i.ba = phi i32 [ %i.b, %_ZN4llvmorENS_5APIntERKS0_.exit.thread ], [ %.pre, %_ZN4llvmorENS_5APIntERKS0_.exit ] ; 4 uses
  %i.bb = phi i64 [ %i.d, %_ZN4llvmorENS_5APIntERKS0_.exit.thread ], [ %i.o, %_ZN4llvmorENS_5APIntERKS0_.exit ]
  %i.bc = phi i64 [ %i.e, %_ZN4llvmorENS_5APIntERKS0_.exit.thread ], [ %i.p, %_ZN4llvmorENS_5APIntERKS0_.exit ]
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = icmp eq i32 %i.ba, 1
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = xor i64 %i.bf, -1
  %i.bh = select i1 %i.be, i64 -1, i64 %i.bg
  %i.bi = sub nsw i32 0, %i.ba
  %i.bj = and i32 %i.bi, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = lshr i64 -1, %i.bk
  %i.bm = icmp eq i32 %i.ba, 0
  %spec.select.i.i.i = select i1 %i.bm, i64 0, i64 %i.bl, !prof !39 ; 3 uses
  %i.bn = and i64 %i.bh, %spec.select.i.i.i
  %i.bo = add i64 %i.bn, 1
  %i.bp = and i64 %i.bo, %spec.select.i.i.i
  %i.bq = add i64 %i.bp, %.sroa.033.162
  %i.br = and i64 %i.bq, %spec.select.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ba, ptr %i.bs, align 8, !tbaa !23, !alias.scope !745
  store i64 %i.br, ptr %0, align 8, !alias.scope !745
  br label %_ZN4llvm5APIntD2Ev.exit14

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i6, %middle.block78
  %i.bt = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #21, !noalias !746 ; 21 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr nonnull align 8 %i.aj, i64 %i.ai, i1 false), !noalias !746
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26, !noalias !746
  %i.bv = lshr i64 %i.bu, 1                       ; 3 uses
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !26, !noalias !746
  %i.bw = add nsw i64 %i.am, -1                   ; 4 uses
  %xtraiter = and i64 %i.bw, 1
  %i.bx = icmp eq i64 %i.am, 2
  br i1 %i.bx, label %.lr.ph.i.i.i10.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i64 %i.bw, -2
  br label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10, %.lr.ph.i.i.i.i.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i10 ] ; 4 uses
  %i.by = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.new ], [ %i.co, %.lr.ph.i.i.i10 ]
  %i.bz = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.new ], [ %i.cp, %.lr.ph.i.i.i10 ]
  %i.ca = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i10 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i10 ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !26, !noalias !746
  %i.ce = shl i64 %i.cd, 63
  %i.cf = or disjoint i64 %i.ce, %i.bz
  store i64 %i.cf, ptr %i.by, align 8, !tbaa !26, !noalias !746
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i2.i.i.i ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !26, !noalias !746
  %i.ci = lshr i64 %i.ch, 1                       ; 2 uses
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !26, !noalias !746
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i2.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !26, !noalias !746 ; 2 uses
  %i.cm = shl i64 %i.cl, 63
  %i.cn = or disjoint i64 %i.cm, %i.ci
  store i64 %i.cn, ptr %i.cg, align 8, !tbaa !26, !noalias !746
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  %i.cp = lshr i64 %i.cl, 1                       ; 3 uses
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !26, !noalias !746
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i.i10

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i10
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.d, label %.lr.ph.i.i.i10.epil.preheader

.lr.ph.i.i.i10.epil.preheader:                    ; preds = %.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %.unr-lcssa ]
  %.epil.init = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %i.co, %.unr-lcssa ]
  %.epil.init94 = phi i64 [ %i.bv, %.lr.ph.i.i.i.i ], [ %i.cp, %.unr-lcssa ]
  %.epil.init96 = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %i.bw to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.epil.init96
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !26, !noalias !746
  %i.ct = shl i64 %i.cs, 63
  %i.cu = or disjoint i64 %i.ct, %.epil.init94
  store i64 %i.cu, ptr %.epil.init, align 8, !tbaa !26, !noalias !746
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i2.i.i.i.epil.init ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !26, !noalias !746
  %i.cx = lshr i64 %i.cw, 1
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !26, !noalias !746
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.lr.ph.i.i.i10.epil.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %min.iters.check82 = icmp ult i32 %.pre, 193
  br i1 %min.iters.check82, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph83

vector.ph83:                                      ; preds = %bb.d
  %n.vec84 = and i64 %i.am, 134217724             ; 3 uses
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next89, %vector.body85 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index86 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %wide.load87 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !26, !noalias !745
  %wide.load88 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !26, !noalias !745
  %i.da = xor <2 x i64> %wide.load87, splat (i64 -1)
  %i.db = xor <2 x i64> %wide.load88, splat (i64 -1)
  store <2 x i64> %i.da, ptr %i.cy, align 8, !tbaa !26, !noalias !745
  store <2 x i64> %i.db, ptr %i.cz, align 8, !tbaa !26, !noalias !745
  %index.next89 = add nuw i64 %index86, 4         ; 2 uses
  %i.dc = icmp eq i64 %index.next89, %n.vec84
  br i1 %i.dc, label %middle.block90, label %vector.body85, !llvm.loop !741

middle.block90:                                   ; preds = %vector.body85
  %cmp.n91 = icmp eq i64 %i.am, %n.vec84
  br i1 %cmp.n91, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block90
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec84, %middle.block90 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !26, !noalias !745
  %i.df = xor i64 %i.de, -1
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !26, !noalias !745
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.am
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !742

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block90
  %i.dg = ptrtoint ptr %i.bt to i64
  %i.dh = sub i32 0, %.pre
  %i.di = and i32 %i.dh, 63
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = lshr i64 -1, %i.dj                      ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.bt, i64 %i.am
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8     ; 6 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !26, !noalias !745
  %i.do = and i64 %i.dn, %i.dk
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !26, !noalias !745
  %i.dp = load i64, ptr %i.bt, align 8, !tbaa !26, !noalias !745
  %i.dq = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dq, ptr %i.bt, align 8, !tbaa !26, !noalias !745
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !26, !noalias !745
  %i.dt = add i64 %i.ds, 1                        ; 2 uses
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !26, !noalias !745
  %.not.i.i.i.i.i = icmp ne i64 %i.dt, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.am
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.du = load i64, ptr %i.dm, align 8, !tbaa !26, !noalias !745
  %i.dv = and i64 %i.du, %i.dk
  store i64 %i.dv, ptr %i.dm, align 8, !tbaa !26, !noalias !745
  %i.dw = icmp eq i64 %i.bw, 0
  br i1 %i.dw, label %.lr.ph.i.i.i11.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter102 = and i64 %i.am, 134217726
  br label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %.lr.ph.i.i.i11, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i11 ] ; 4 uses
  %.02021.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i.new ], [ %.1.in.i.i.i.1, %.lr.ph.i.i.i11 ] ; 2 uses
  %niter103 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter103.next.1, %.lr.ph.i.i.i11 ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i.i.i ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !26, !noalias !745 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !26, !noalias !745
  %i.eb = add i64 %i.ea, %i.dy                    ; 3 uses
  %i.ec = icmp uge i64 %i.eb, %i.dy
  %i.ed = add i64 %i.eb, 1                        ; 2 uses
  %i.ee = icmp ugt i64 %i.ed, %i.dy
  %.sink.i.i.i = select i1 %.02021.i.i.i, i64 %i.eb, i64 %i.ed
  %.1.in.i.i.i = select i1 %.02021.i.i.i, i1 %i.ec, i1 %i.ee ; 2 uses
  store i64 %.sink.i.i.i, ptr %i.dx, align 8, !tbaa !26, !noalias !745
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !26, !noalias !745 ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !26, !noalias !745
  %i.ej = add i64 %i.ei, %i.eg                    ; 3 uses
  %i.ek = icmp uge i64 %i.ej, %i.eg
  %i.el = add i64 %i.ej, 1                        ; 2 uses
  %i.em = icmp ugt i64 %i.el, %i.eg
  %.sink.i.i.i.1 = select i1 %.1.in.i.i.i, i64 %i.ej, i64 %i.el
  %.1.in.i.i.i.1 = select i1 %.1.in.i.i.i, i1 %i.ek, i1 %i.em ; 2 uses
  store i64 %.sink.i.i.i.1, ptr %i.ef, align 8, !tbaa !26, !noalias !745
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter103.next.1 = add i64 %niter103, 2         ; 2 uses
  %niter103.ncmp.1 = icmp eq i64 %niter103.next.1, %unroll_iter102
  br i1 %niter103.ncmp.1, label %.unr-lcssa98, label %.lr.ph.i.i.i11, !llvm.loop !4

.unr-lcssa98:                                     ; preds = %.lr.ph.i.i.i11
  %i.en = and i64 %i.ag, 64
  %lcmp.mod100.not = icmp eq i64 %i.en, 0
  br i1 %lcmp.mod100.not, label %bb.e, label %.lr.ph.i.i.i11.epil.preheader

.lr.ph.i.i.i11.epil.preheader:                    ; preds = %.unr-lcssa98, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.unr-lcssa98 ] ; 2 uses
  %.02021.i.i.i.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %.1.in.i.i.i.1, %.unr-lcssa98 ]
end_hunk_9
begin_hunk_10_@_ZNK4llvm5APInt14getNumSignBitsEv:bb.a

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.ai = trunc nuw nsw i64 %i.z to i32           ; 2 uses
  %i.aj = add nsw i32 %i.ai, -2
  %i.ak = shl i32 %i.ai, 6
  %i.al = add nsw i32 %.016.i.i, -64
  %i.am = add i32 %i.al, %i.ak
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %.023.i.i = phi i32 [ %i.ar, %bb.f ], [ %.016.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01422.i.i = phi i32 [ %i.as, %bb.f ], [ %i.aj, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.an = zext nneg i32 %.01422.i.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ar = add i32 %.023.i.i, 64
  %i.as = add nsw i32 %.01422.i.i, -1
  %i.at = icmp sgt i32 %.01422.i.i, 0
  br i1 %i.at, label %.lr.ph.i.i, label %_ZNK4llvm5APInt10countl_oneEv.exit, !llvm.loop !11

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.au = xor i64 %i.ap, -1
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = add i32 %.023.i.i, %i.aw
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

bb.h:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.i, label %.lr.ph.i.i1

bb.i:                                             ; preds = %bb.h
  %.neg.i = add nsw i32 %i.b, -64
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 false)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = add nsw i32 %.neg.i, %i.az
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

.lr.ph.i.i1:                                      ; preds = %bb.h
  %i.bb = zext i32 %i.b to i64
  %i.bc = add nuw nsw i64 %i.bb, 63
  %i.bd = lshr i64 %i.bc, 6                       ; 2 uses
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = shl i32 %i.be, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i1
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ %i.bd, %.lr.ph.i.i1 ] ; 2 uses
  %.019.i.i = phi i32 [ %i.bm, %bb.k ], [ 0, %.lr.ph.i.i1 ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.k, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.j
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = or disjoint i32 %.019.i.i, %i.bk
  br label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bm = add i32 %.019.i.i, 64
  %i.bn = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bn, label %bb.j, label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i, !llvm.loop !1

_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i: ; preds = %bb.k, %.thread.i.i
  %.2.i.i = phi i32 [ %i.bl, %.thread.i.i ], [ %i.bf, %bb.k ]
  %i.bo = and i32 %i.b, 63
  %.not.i.i2 = icmp eq i32 %i.bo, 0
  %.neg.i.i = or i32 %i.b, -64
  %.neg15.i.i = select i1 %.not.i.i2, i32 0, i32 %.neg.i.i
  %i.bp = add i32 %.2.i.i, %.neg15.i.i
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

_ZNK4llvm5APInt10countl_oneEv.exit:               ; preds = %bb.f, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i, %bb.i, %bb.g, %bb.e, %bb.d, %bb.c
  %i.bq = phi i32 [ %i.bp, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i ], [ 0, %bb.c ], [ %i.u, %bb.d ], [ %i.ax, %bb.g ], [ %i.ag, %bb.e ], [ %i.ba, %bb.i ], [ %i.am, %bb.f ]
  ret i32 %i.bq
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm5APInt3absEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 10 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i = select i1 %i.g, ptr %1, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i, align 8, !tbaa !24
  %i.m = and i64 %i.f, %i.l
  %.not = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = zext i32 %i.b to i64
  %i.p = add nuw nsw i64 %i.o, 63                 ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741816                 ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #21 ; 8 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.t, i64 %i.r, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.u = lshr i64 %i.p, 6                         ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.u, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.v, align 8, !tbaa !26, !noalias !843
  %wide.load13 = load <2 x i64>, ptr %i.w, align 8, !tbaa !26, !noalias !843
  %i.x = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.y = xor <2 x i64> %wide.load13, splat (i64 -1)
  store <2 x i64> %i.x, ptr %i.v, align 8, !tbaa !26, !noalias !843
  store <2 x i64> %i.y, ptr %i.w, align 8, !tbaa !26, !noalias !843
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !841

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26, !noalias !843
  %i.ac = xor i64 %i.ab, -1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !26, !noalias !843
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.u
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !842

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %i.ad = ptrtoint ptr %i.s to i64
  %i.ae = sub i32 0, %i.b
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr i64 -1, %i.ag                      ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.s, i64 %i.u
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8     ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26, !noalias !843
  %i.al = and i64 %i.ak, %i.ah
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !26, !noalias !843
  %i.am = load i64, ptr %i.s, align 8, !tbaa !26, !noalias !843
  %i.an = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.an, ptr %i.s, align 8, !tbaa !26, !noalias !843
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26, !noalias !843
  %i.aq = add i64 %i.ap, 1                        ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !26, !noalias !843
  %.not.i.i.i.i.i = icmp ne i64 %i.aq, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.u
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.b
  %i.ar = xor i64 %i.n, -1
  %i.as = sub nsw i32 0, %i.b
  %i.at = and i32 %i.as, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 -1, %i.au
  %i.aw = icmp eq i32 %i.b, 0
  %spec.select.i.i.i = select i1 %i.aw, i64 0, i64 %i.av ; 2 uses
  %i.ax = and i64 %spec.select.i.i.i, %i.ar
  %i.ay = add i64 %i.ax, 1
  %i.az = and i64 %i.ay, %spec.select.i.i.i
  br label %_ZN4llvm5APIntD2Ev.exit

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.ba = load i64, ptr %i.aj, align 8, !tbaa !26, !noalias !843
  %i.bb = and i64 %i.ba, %i.ah
  store i64 %i.bb, ptr %i.aj, align 8, !tbaa !26, !noalias !843
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.thread.i.i.i, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i
  %.sroa.0.1 = phi i64 [ %i.az, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %i.ad, %.thread.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bc, align 8, !tbaa !23, !alias.scope !843
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !843
  br label %_ZN4llvm5APIntC2ERKS0_.exit2

bb.d:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bd, align 8, !tbaa !23
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.n, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2ERKS0_.exit2

bb.f:                                             ; preds = %bb.d
  %i.be = zext i32 %i.b to i64
  %i.bf = add nuw nsw i64 %i.be, 63
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741816               ; 2 uses
  %i.bi = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #21 ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !24
  %i.bj = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.bj, i64 %i.bh, i1 false)
  br label %_ZN4llvm5APIntC2ERKS0_.exit2

_ZN4llvm5APIntC2ERKS0_.exit2:                     ; preds = %bb.f, %bb.e, %_ZN4llvm5APIntD2Ev.exit
  ret void
}

declare noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef 1) #23
  %i.e = load ptr, ptr %0, align 8, !tbaa !50
  %i.f = load i64, ptr %i.a, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 %1, ptr %i.g, align 1
  %i.h = load i64, ptr %i.a, align 8, !tbaa !48
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !48
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bitreverse.v2i64(<2 x i64>) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !28, !29}
!1 = distinct !{!1, !28}
!2 = distinct !{!2, !28}
!3 = distinct !{!3, !28, !29}
!4 = distinct !{!4, !28}
!5 = distinct !{!5, !28}
!6 = distinct !{!6, !28}
!7 = distinct !{!7, !28}
!8 = distinct !{!8, !28}
!9 = distinct !{!9, !28}
!10 = distinct !{!10, !28}
!11 = distinct !{!11, !28}
!12 = distinct !{!12, !28}
!13 = distinct !{!13, !28}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"_ZTSN4llvm5APIntE", !18, i64 0, !19, i64 8}
!23 = !{!22, !19, i64 8}
!24 = !{!18, !18, i64 0}
!25 = !{!"long", !18, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = !{!"branch_weights", !"expected", i32 1635359, i32 2145848289}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"any pointer", !18, i64 0}
!34 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !33, i64 0, !19, i64 8, !19, i64 12}
!35 = !{!34, !19, i64 8}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!34, !33, i64 0}
!38 = !{!"branch_weights", !"expected", i32 1738864, i32 2145744784}
!39 = !{!"branch_weights", !"expected", i32 1320867, i32 2146162781}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!"branch_weights", !"expected", i32 1543486, i32 2145940162}
!42 = !{!19, !19, i64 0}
!43 = !{!"bool", !18, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !33, i64 0, !25, i64 8, !25, i64 16}
!48 = !{!47, !25, i64 8}
!49 = !{!47, !25, i64 16}
!50 = !{!47, !33, i64 0}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28, !31, !32}
!53 = distinct !{!53, !28, !32, !31}
!54 = distinct !{!54, !28}
!55 = !{!34, !19, i64 12}
!56 = distinct !{!56, i1 false, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !28, !31, !32}
!60 = distinct !{!60, !40}
!61 = distinct !{!61, !28, !31}
!62 = !{!57}
!63 = !{!58}
!64 = distinct !{!64, i1 false, !"LVerDomain"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !28, !31, !32}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !28, !31}
!70 = !{!65}
end_hunk_10
