Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@stbtt_InitFont:bb.a
  br label %stbtt__buf_get8.exit.i18.i.i.1

stbtt__buf_get8.exit.i18.i.i.1:                   ; preds = %bb.bm, %stbtt__buf_get8.exit.i18.i.i
  %i.jp = phi i32 [ %i.jj, %bb.bm ], [ %i.jh, %stbtt__buf_get8.exit.i18.i.i ] ; 3 uses
  %.0.i.i19.i.i.1 = phi i32 [ %i.jo, %bb.bm ], [ %i.ji, %stbtt__buf_get8.exit.i18.i.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !32

stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa:     ; preds = %stbtt__buf_get8.exit.i18.i.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbtt__buf_get.exit21.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader.i
  %.epil.init = phi i32 [ %..i.i.i.i, %.lr.ph.i.i.preheader.i ], [ %i.jp, %stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader.i ], [ %.0.i.i19.i.i.1, %stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa ]
  %lcmp.mod186 = trunc i32 %.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.jq = shl i32 %.056.i16.i.i.epil.init, 8      ; 2 uses
  %.not.i.i17.i.i.epil = icmp slt i32 %.epil.init, %i.ho
  br i1 %.not.i.i17.i.i.epil, label %bb.bn, label %stbtt__buf_get.exit21.loopexit.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.jr = add nsw i32 %.epil.init, 1
  %i.js = sext i32 %.epil.init to i64
  %i.jt = getelementptr inbounds i8, ptr %i.ix, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !56
  %i.jv = zext i8 %i.ju to i32
  %i.jw = or disjoint i32 %i.jq, %i.jv
  br label %stbtt__buf_get.exit21.loopexit.i.i

stbtt__buf_get.exit21.loopexit.i.i:               ; preds = %.lr.ph.i.i.i.epil.preheader, %bb.bn, %stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa
  %.lcssa165 = phi i32 [ %i.jp, %stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa ], [ %i.jr, %bb.bn ], [ %.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.0.i.i19.i.i.lcssa = phi i32 [ %.0.i.i19.i.i.1, %stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa ], [ %i.jw, %bb.bn ], [ %i.jq, %.lr.ph.i.i.i.epil.preheader ]
  %i.jx = add i32 %.0.i.i19.i.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i.i

stbtt__buf_get.exit21.i.i:                        ; preds = %stbtt__buf_get.exit21.loopexit.i.i, %stbtt__buf_get8.exit.i.i
  %i.jy = phi i32 [ %..i.i.i.i, %stbtt__buf_get8.exit.i.i ], [ %.lcssa165, %stbtt__buf_get.exit21.loopexit.i.i ]
  %.05.lcssa.i.i.i = phi i32 [ -1, %stbtt__buf_get8.exit.i.i ], [ %i.jx, %stbtt__buf_get.exit21.loopexit.i.i ]
  %i.jz = add nsw i32 %.05.lcssa.i.i.i, %i.jy     ; 2 uses
  %i.ka = icmp slt i32 %i.jz, 0
  %i.kb = tail call i32 @llvm.smin.i32(i32 %i.jz, i32 %i.ho)
  %..i.i22.i.i = select i1 %i.ka, i32 %i.ho, i32 %i.kb ; 2 uses
  store i32 %..i.i22.i.i, ptr %i.hk, align 8, !tbaa !323
  br label %stbtt__cff_get_index.exit.i

stbtt__cff_get_index.exit.i:                      ; preds = %stbtt__buf_get.exit21.i.i, %stbtt__buf_get8.exit.i.1.i.i
  %i.kc = phi i32 [ %..i.i22.i.i, %stbtt__buf_get.exit21.i.i ], [ %i.im, %stbtt__buf_get8.exit.i.1.i.i ] ; 7 uses
  %.not.i.i.i221.i = icmp slt i32 %i.kc, %i.ho
  br i1 %.not.i.i.i221.i, label %bb.bo, label %stbtt__buf_get8.exit.i.i222.i

bb.bo:                                            ; preds = %stbtt__cff_get_index.exit.i
  %i.kd = load ptr, ptr %3, align 8, !tbaa !325
  %i.ke = add nsw i32 %i.kc, 1                    ; 2 uses
  store i32 %i.ke, ptr %i.hk, align 8, !tbaa !323
  %i.kf = sext i32 %i.kc to i64
  %i.kg = getelementptr inbounds i8, ptr %i.kd, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !56
  %i.ki = zext i8 %i.kh to i32
  %i.kj = shl nuw nsw i32 %i.ki, 8
  br label %stbtt__buf_get8.exit.i.i222.i

stbtt__buf_get8.exit.i.i222.i:                    ; preds = %bb.bo, %stbtt__cff_get_index.exit.i
  %i.kk = phi i32 [ %i.ke, %bb.bo ], [ %i.kc, %stbtt__cff_get_index.exit.i ] ; 4 uses
  %.0.i.i.i223.i = phi i32 [ %i.kj, %bb.bo ], [ 0, %stbtt__cff_get_index.exit.i ] ; 2 uses
  %.not.i.i.1.i224.i = icmp slt i32 %i.kk, %i.ho
  br i1 %.not.i.i.1.i224.i, label %bb.bp, label %stbtt__buf_get8.exit.i.1.i225.i

bb.bp:                                            ; preds = %stbtt__buf_get8.exit.i.i222.i
  %i.kl = load ptr, ptr %3, align 8, !tbaa !325
  %i.km = add nsw i32 %i.kk, 1                    ; 2 uses
  store i32 %i.km, ptr %i.hk, align 8, !tbaa !323
  %i.kn = sext i32 %i.kk to i64
  %i.ko = getelementptr inbounds i8, ptr %i.kl, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !56
  %i.kq = zext i8 %i.kp to i32
  %i.kr = or disjoint i32 %.0.i.i.i223.i, %i.kq
  br label %stbtt__buf_get8.exit.i.1.i225.i

stbtt__buf_get8.exit.i.1.i225.i:                  ; preds = %bb.bp, %stbtt__buf_get8.exit.i.i222.i
  %i.ks = phi i32 [ %i.km, %bb.bp ], [ %i.kk, %stbtt__buf_get8.exit.i.i222.i ] ; 5 uses
  %.0.i.i.1.i226.i = phi i32 [ %i.kr, %bb.bp ], [ %.0.i.i.i223.i, %stbtt__buf_get8.exit.i.i222.i ] ; 2 uses
  %.not.i227.i = icmp eq i32 %.0.i.i.1.i226.i, 0
  br i1 %.not.i227.i, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %stbtt__buf_get8.exit.i.1.i225.i
  %.not.i.i228.i = icmp slt i32 %i.ks, %i.ho
  br i1 %.not.i.i228.i, label %bb.br, label %stbtt__buf_get8.exit.i229.i

bb.br:                                            ; preds = %bb.bq
  %i.kt = load ptr, ptr %3, align 8, !tbaa !325
  %i.ku = add nsw i32 %i.ks, 1
  %i.kv = sext i32 %i.ks to i64
  %i.kw = getelementptr inbounds i8, ptr %i.kt, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !56
  %i.ky = zext i8 %i.kx to i32
  br label %stbtt__buf_get8.exit.i229.i

stbtt__buf_get8.exit.i229.i:                      ; preds = %bb.br, %bb.bq
  %.promoted399.i = phi i32 [ %i.ku, %bb.br ], [ %i.ks, %bb.bq ]
  %.0.i.i230.i = phi i32 [ %i.ky, %bb.br ], [ 0, %bb.bq ] ; 6 uses
  %i.kz = mul nuw nsw i32 %.0.i.i230.i, %.0.i.i.1.i226.i
  %i.la = add nsw i32 %i.kz, %.promoted399.i      ; 2 uses
  %i.lb = icmp slt i32 %i.la, 0
  %i.lc = tail call i32 @llvm.smin.i32(i32 %i.la, i32 %i.ho)
  %..i.i.i231.i = select i1 %i.lb, i32 %i.ho, i32 %i.lc ; 3 uses
  %.not.i13.i232.i = icmp eq i32 %.0.i.i230.i, 0
  br i1 %.not.i13.i232.i, label %stbtt__buf_get.exit21.i241.i, label %.lr.ph.i.i233.preheader.i

.lr.ph.i.i233.preheader.i:                        ; preds = %stbtt__buf_get8.exit.i229.i
  %i.ld = load ptr, ptr %3, align 8               ; 3 uses
  %xtraiter187 = and i32 %.0.i.i230.i, 1
  %i.le = icmp eq i32 %.0.i.i230.i, 1
  br i1 %i.le, label %.lr.ph.i.i233.i.epil.preheader, label %.lr.ph.i.i233.preheader.i.new

.lr.ph.i.i233.preheader.i.new:                    ; preds = %.lr.ph.i.i233.preheader.i
  %unroll_iter194 = and i32 %.0.i.i230.i, 254
  br label %.lr.ph.i.i233.i

.lr.ph.i.i233.i:                                  ; preds = %stbtt__buf_get8.exit.i18.i237.i.1, %.lr.ph.i.i233.preheader.i.new
  %i.lf = phi i32 [ %..i.i.i231.i, %.lr.ph.i.i233.preheader.i.new ], [ %i.lv, %stbtt__buf_get8.exit.i18.i237.i.1 ] ; 4 uses
  %.056.i16.i235.i = phi i32 [ 0, %.lr.ph.i.i233.preheader.i.new ], [ %.0.i.i19.i238.i.1, %stbtt__buf_get8.exit.i18.i237.i.1 ]
  %niter195 = phi i32 [ 0, %.lr.ph.i.i233.preheader.i.new ], [ %niter195.next.1, %stbtt__buf_get8.exit.i18.i237.i.1 ]
  %i.lg = shl i32 %.056.i16.i235.i, 8             ; 2 uses
  %.not.i.i17.i236.i = icmp slt i32 %i.lf, %i.ho
  br i1 %.not.i.i17.i236.i, label %bb.bs, label %stbtt__buf_get8.exit.i18.i237.i

bb.bs:                                            ; preds = %.lr.ph.i.i233.i
  %i.lh = add nsw i32 %i.lf, 1
  %i.li = sext i32 %i.lf to i64
  %i.lj = getelementptr inbounds i8, ptr %i.ld, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !56
  %i.ll = zext i8 %i.lk to i32
  %i.lm = or disjoint i32 %i.lg, %i.ll
  br label %stbtt__buf_get8.exit.i18.i237.i

stbtt__buf_get8.exit.i18.i237.i:                  ; preds = %bb.bs, %.lr.ph.i.i233.i
  %i.ln = phi i32 [ %i.lh, %bb.bs ], [ %i.lf, %.lr.ph.i.i233.i ] ; 4 uses
  %.0.i.i19.i238.i = phi i32 [ %i.lm, %bb.bs ], [ %i.lg, %.lr.ph.i.i233.i ]
  %i.lo = shl i32 %.0.i.i19.i238.i, 8             ; 2 uses
  %.not.i.i17.i236.i.1 = icmp slt i32 %i.ln, %i.ho
  br i1 %.not.i.i17.i236.i.1, label %bb.bt, label %stbtt__buf_get8.exit.i18.i237.i.1

bb.bt:                                            ; preds = %stbtt__buf_get8.exit.i18.i237.i
  %i.lp = add nsw i32 %i.ln, 1
  %i.lq = sext i32 %i.ln to i64
  %i.lr = getelementptr inbounds i8, ptr %i.ld, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !56
  %i.lt = zext i8 %i.ls to i32
  %i.lu = or disjoint i32 %i.lo, %i.lt
  br label %stbtt__buf_get8.exit.i18.i237.i.1

stbtt__buf_get8.exit.i18.i237.i.1:                ; preds = %bb.bt, %stbtt__buf_get8.exit.i18.i237.i
  %i.lv = phi i32 [ %i.lp, %bb.bt ], [ %i.ln, %stbtt__buf_get8.exit.i18.i237.i ] ; 3 uses
  %.0.i.i19.i238.i.1 = phi i32 [ %i.lu, %bb.bt ], [ %i.lo, %stbtt__buf_get8.exit.i18.i237.i ] ; 3 uses
  %niter195.next.1 = add nuw nsw i32 %niter195, 2 ; 2 uses
  %niter195.ncmp.1 = icmp eq i32 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa, label %.lr.ph.i.i233.i, !llvm.loop !32

stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa:  ; preds = %stbtt__buf_get8.exit.i18.i237.i.1
  %lcmp.mod190.not = icmp eq i32 %xtraiter187, 0
  br i1 %lcmp.mod190.not, label %stbtt__buf_get.exit21.loopexit.i240.i, label %.lr.ph.i.i233.i.epil.preheader

.lr.ph.i.i233.i.epil.preheader:                   ; preds = %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa, %.lr.ph.i.i233.preheader.i
  %.epil.init189 = phi i32 [ %..i.i.i231.i, %.lr.ph.i.i233.preheader.i ], [ %i.lv, %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa ] ; 4 uses
  %.056.i16.i235.i.epil.init = phi i32 [ 0, %.lr.ph.i.i233.preheader.i ], [ %.0.i.i19.i238.i.1, %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa ]
  %lcmp.mod193 = trunc i32 %.0.i.i230.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.lw = shl i32 %.056.i16.i235.i.epil.init, 8   ; 2 uses
  %.not.i.i17.i236.i.epil = icmp slt i32 %.epil.init189, %i.ho
  br i1 %.not.i.i17.i236.i.epil, label %bb.bu, label %stbtt__buf_get.exit21.loopexit.i240.i

bb.bu:                                            ; preds = %.lr.ph.i.i233.i.epil.preheader
  %i.lx = add nsw i32 %.epil.init189, 1
  %i.ly = sext i32 %.epil.init189 to i64
  %i.lz = getelementptr inbounds i8, ptr %i.ld, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !56
  %i.mb = zext i8 %i.ma to i32
  %i.mc = or disjoint i32 %i.lw, %i.mb
  br label %stbtt__buf_get.exit21.loopexit.i240.i

stbtt__buf_get.exit21.loopexit.i240.i:            ; preds = %.lr.ph.i.i233.i.epil.preheader, %bb.bu, %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa
  %.lcssa164 = phi i32 [ %i.lv, %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa ], [ %i.lx, %bb.bu ], [ %.epil.init189, %.lr.ph.i.i233.i.epil.preheader ]
  %.0.i.i19.i238.i.lcssa = phi i32 [ %.0.i.i19.i238.i.1, %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa ], [ %i.mc, %bb.bu ], [ %i.lw, %.lr.ph.i.i233.i.epil.preheader ]
  %i.md = add i32 %.0.i.i19.i238.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i241.i

stbtt__buf_get.exit21.i241.i:                     ; preds = %stbtt__buf_get.exit21.loopexit.i240.i, %stbtt__buf_get8.exit.i229.i
  %i.me = phi i32 [ %..i.i.i231.i, %stbtt__buf_get8.exit.i229.i ], [ %.lcssa164, %stbtt__buf_get.exit21.loopexit.i240.i ]
  %.05.lcssa.i.i242.i = phi i32 [ -1, %stbtt__buf_get8.exit.i229.i ], [ %i.md, %stbtt__buf_get.exit21.loopexit.i240.i ]
  %i.mf = add nsw i32 %.05.lcssa.i.i242.i, %i.me  ; 2 uses
  %i.mg = icmp slt i32 %i.mf, 0
  %i.mh = tail call i32 @llvm.smin.i32(i32 %i.mf, i32 %i.ho)
  %..i.i22.i243.i = select i1 %i.mg, i32 %i.ho, i32 %i.mh ; 2 uses
  store i32 %..i.i22.i243.i, ptr %i.hk, align 8, !tbaa !323
  br label %bb.bv

bb.bv:                                            ; preds = %stbtt__buf_get.exit21.i241.i, %stbtt__buf_get8.exit.i.1.i225.i
  %i.mi = phi i32 [ %..i.i22.i243.i, %stbtt__buf_get.exit21.i241.i ], [ %i.ks, %stbtt__buf_get8.exit.i.1.i225.i ] ; 6 uses
  %i.mj = sub nsw i32 %i.mi, %i.kc                ; 14 uses
  %i.mk = or i32 %i.mj, %i.kc
  %or.cond.not.i.i244.i = icmp slt i32 %i.mk, 0
  %i.ml = icmp sgt i32 %i.mi, %i.ho
  %or.cond.i245.i = or i1 %i.ml, %or.cond.not.i.i244.i
  br i1 %or.cond.i245.i, label %stbtt__buf_get.exit28.i.i, label %stbtt__cff_get_index.exit250.i

stbtt__cff_get_index.exit250.i:                   ; preds = %bb.bv
  %i.mm = load ptr, ptr %3, align 8, !tbaa !325
  %i.mn = zext nneg i32 %i.kc to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mn ; 16 uses
  %.not.i.i.i251.not.i = icmp eq i32 %i.mj, 0
  br i1 %.not.i.i.i251.not.i, label %stbtt__buf_get.exit28.i.i, label %stbtt__buf_get8.exit.i.i252.i.a

stbtt__buf_get8.exit.i.i252.i.a:                  ; preds = %stbtt__cff_get_index.exit250.i
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !56
  %i.mq = zext i8 %i.mp to i32
  %i.mr = shl nuw nsw i32 %i.mq, 8                ; 2 uses
  %.not.i.i.1.i254.not.i = icmp eq i32 %i.mj, 1
  br i1 %.not.i.i.1.i254.not.i, label %stbtt__buf_get.exit28.i.i, label %stbtt__buf_get8.exit.i.1.i255.i.a

stbtt__buf_get8.exit.i.1.i255.i.a:                ; preds = %stbtt__buf_get8.exit.i.i252.i.a
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 1
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !56
  %i.mu = zext i8 %i.mt to i32
  %i.mv = or disjoint i32 %i.mr, %i.mu            ; 5 uses
  %.not.i.i257.i = icmp samesign ugt i32 %i.mj, 2
  br i1 %.not.i.i257.i, label %stbtt__buf_get8.exit.i263.i, label %stbtt__buf_get.exit28.i.i

stbtt__buf_get8.exit.i263.i:                      ; preds = %stbtt__buf_get8.exit.i.1.i255.i.a
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 2
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !56  ; 4 uses
  %i.my = zext i8 %i.mx to i32                    ; 8 uses
  %.not.i9.i.i = icmp eq i8 %i.mx, 0
  br i1 %.not.i9.i.i, label %stbtt__buf_get.exit28.i.i, label %.lr.ph.i.i265.i.preheader

.lr.ph.i.i265.i.preheader:                        ; preds = %stbtt__buf_get8.exit.i263.i
  %i.mz = add nsw i32 %i.my, -1                   ; 2 uses
  %xtraiter196 = and i32 %i.my, 1
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %.lr.ph.i.i265.i.epil.preheader, label %.lr.ph.i.i265.i.preheader.new

.lr.ph.i.i265.i.preheader.new:                    ; preds = %.lr.ph.i.i265.i.preheader
  %unroll_iter203 = and i32 %i.my, 254
  br label %.lr.ph.i.i265.i

.lr.ph.i.i265.i:                                  ; preds = %stbtt__buf_get8.exit.i14.i.i.1, %.lr.ph.i.i265.i.preheader.new
  %.sroa.6.3.i.i = phi i32 [ 3, %.lr.ph.i.i265.i.preheader.new ], [ %.sroa.6.4.i.i.1, %stbtt__buf_get8.exit.i14.i.i.1 ]
  %i.nb = phi i32 [ 3, %.lr.ph.i.i265.i.preheader.new ], [ %i.nr, %stbtt__buf_get8.exit.i14.i.i.1 ] ; 4 uses
  %.056.i12.i.i = phi i32 [ 0, %.lr.ph.i.i265.i.preheader.new ], [ %.0.i.i15.i.i.1, %stbtt__buf_get8.exit.i14.i.i.1 ]
  %niter204 = phi i32 [ 0, %.lr.ph.i.i265.i.preheader.new ], [ %niter204.next.1, %stbtt__buf_get8.exit.i14.i.i.1 ]
  %i.nc = shl i32 %.056.i12.i.i, 8                ; 2 uses
  %.not.i.i13.i.i = icmp slt i32 %i.nb, %i.mj
  br i1 %.not.i.i13.i.i, label %bb.bw, label %stbtt__buf_get8.exit.i14.i.i

bb.bw:                                            ; preds = %.lr.ph.i.i265.i
  %i.nd = add nsw i32 %i.nb, 1                    ; 2 uses
  %i.ne = sext i32 %i.nb to i64
  %i.nf = getelementptr inbounds i8, ptr %i.mo, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !56
  %i.nh = zext i8 %i.ng to i32
  %i.ni = or disjoint i32 %i.nc, %i.nh
  br label %stbtt__buf_get8.exit.i14.i.i

stbtt__buf_get8.exit.i14.i.i:                     ; preds = %bb.bw, %.lr.ph.i.i265.i
  %.sroa.6.4.i.i = phi i32 [ %i.nd, %bb.bw ], [ %.sroa.6.3.i.i, %.lr.ph.i.i265.i ]
  %i.nj = phi i32 [ %i.nd, %bb.bw ], [ %i.nb, %.lr.ph.i.i265.i ] ; 4 uses
  %.0.i.i15.i.i = phi i32 [ %i.ni, %bb.bw ], [ %i.nc, %.lr.ph.i.i265.i ]
  %i.nk = shl i32 %.0.i.i15.i.i, 8                ; 2 uses
  %.not.i.i13.i.i.1 = icmp slt i32 %i.nj, %i.mj
  br i1 %.not.i.i13.i.i.1, label %bb.bx, label %stbtt__buf_get8.exit.i14.i.i.1

bb.bx:                                            ; preds = %stbtt__buf_get8.exit.i14.i.i
  %i.nl = add nsw i32 %i.nj, 1                    ; 2 uses
  %i.nm = sext i32 %i.nj to i64
  %i.nn = getelementptr inbounds i8, ptr %i.mo, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !56
  %i.np = zext i8 %i.no to i32
  %i.nq = or disjoint i32 %i.nk, %i.np
  br label %stbtt__buf_get8.exit.i14.i.i.1

stbtt__buf_get8.exit.i14.i.i.1:                   ; preds = %bb.bx, %stbtt__buf_get8.exit.i14.i.i
  %.sroa.6.4.i.i.1 = phi i32 [ %i.nl, %bb.bx ], [ %.sroa.6.4.i.i, %stbtt__buf_get8.exit.i14.i.i ] ; 3 uses
  %i.nr = phi i32 [ %i.nl, %bb.bx ], [ %i.nj, %stbtt__buf_get8.exit.i14.i.i ] ; 2 uses
  %.0.i.i15.i.i.1 = phi i32 [ %i.nq, %bb.bx ], [ %i.nk, %stbtt__buf_get8.exit.i14.i.i ] ; 3 uses
  %niter204.next.1 = add i32 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i32 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %.lr.ph.i19.i.i.preheader.unr-lcssa, label %.lr.ph.i.i265.i, !llvm.loop !32

.lr.ph.i19.i.i.preheader.unr-lcssa:               ; preds = %stbtt__buf_get8.exit.i14.i.i.1
  %lcmp.mod199.not = icmp eq i32 %xtraiter196, 0
  br i1 %lcmp.mod199.not, label %.lr.ph.i19.i.i.preheader, label %.lr.ph.i.i265.i.epil.preheader

.lr.ph.i.i265.i.epil.preheader:                   ; preds = %.lr.ph.i19.i.i.preheader.unr-lcssa, %.lr.ph.i.i265.i.preheader
  %.sroa.6.3.i.i.epil.init = phi i32 [ 3, %.lr.ph.i.i265.i.preheader ], [ %.sroa.6.4.i.i.1, %.lr.ph.i19.i.i.preheader.unr-lcssa ]
  %.epil.init198 = phi i32 [ 3, %.lr.ph.i.i265.i.preheader ], [ %i.nr, %.lr.ph.i19.i.i.preheader.unr-lcssa ] ; 3 uses
  %.056.i12.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i265.i.preheader ], [ %.0.i.i15.i.i.1, %.lr.ph.i19.i.i.preheader.unr-lcssa ]
  %lcmp.mod202 = trunc i8 %i.mx to i1
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.ns = shl i32 %.056.i12.i.i.epil.init, 8      ; 2 uses
  %.not.i.i13.i.i.epil = icmp slt i32 %.epil.init198, %i.mj
  br i1 %.not.i.i13.i.i.epil, label %bb.by, label %.lr.ph.i19.i.i.preheader

bb.by:                                            ; preds = %.lr.ph.i.i265.i.epil.preheader
  %i.nt = add nsw i32 %.epil.init198, 1
  %i.nu = sext i32 %.epil.init198 to i64
  %i.nv = getelementptr inbounds i8, ptr %i.mo, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !56
  %i.nx = zext i8 %i.nw to i32
  %i.ny = or disjoint i32 %i.ns, %i.nx
  br label %.lr.ph.i19.i.i.preheader

.lr.ph.i19.i.i.preheader:                         ; preds = %.lr.ph.i.i265.i.epil.preheader, %bb.by, %.lr.ph.i19.i.i.preheader.unr-lcssa
  %.sroa.6.4.i.i.lcssa = phi i32 [ %.sroa.6.4.i.i.1, %.lr.ph.i19.i.i.preheader.unr-lcssa ], [ %i.nt, %bb.by ], [ %.sroa.6.3.i.i.epil.init, %.lr.ph.i.i265.i.epil.preheader ] ; 2 uses
  %.0.i.i15.i.i.lcssa = phi i32 [ %.0.i.i15.i.i.1, %.lr.ph.i19.i.i.preheader.unr-lcssa ], [ %i.ny, %bb.by ], [ %i.ns, %.lr.ph.i.i265.i.epil.preheader ] ; 3 uses
  %xtraiter205 = and i32 %i.my, 1
  %i.nz = icmp eq i32 %i.mz, 0
  br i1 %i.nz, label %.lr.ph.i19.i.i.epil.preheader, label %.lr.ph.i19.i.i.preheader.new

.lr.ph.i19.i.i.preheader.new:                     ; preds = %.lr.ph.i19.i.i.preheader
  %unroll_iter211 = and i32 %i.my, 254
  br label %.lr.ph.i19.i.i

.lr.ph.i19.i.i:                                   ; preds = %stbtt__buf_get8.exit.i24.i.i.1, %.lr.ph.i19.i.i.preheader.new
  %i.oa = phi i32 [ %.sroa.6.4.i.i.lcssa, %.lr.ph.i19.i.i.preheader.new ], [ %i.oq, %stbtt__buf_get8.exit.i24.i.i.1 ] ; 4 uses
  %.056.i22.i.i = phi i32 [ 0, %.lr.ph.i19.i.i.preheader.new ], [ %.0.i.i25.i.i.1, %stbtt__buf_get8.exit.i24.i.i.1 ]
  %niter212 = phi i32 [ 0, %.lr.ph.i19.i.i.preheader.new ], [ %niter212.next.1, %stbtt__buf_get8.exit.i24.i.i.1 ]
  %i.ob = shl i32 %.056.i22.i.i, 8                ; 2 uses
  %.not.i.i23.i.i = icmp slt i32 %i.oa, %i.mj
  br i1 %.not.i.i23.i.i, label %bb.bz, label %stbtt__buf_get8.exit.i24.i.i

bb.bz:                                            ; preds = %.lr.ph.i19.i.i
  %i.oc = add nsw i32 %i.oa, 1
  %i.od = sext i32 %i.oa to i64
  %i.oe = getelementptr inbounds i8, ptr %i.mo, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !56
  %i.og = zext i8 %i.of to i32
  %i.oh = or disjoint i32 %i.ob, %i.og
  br label %stbtt__buf_get8.exit.i24.i.i

stbtt__buf_get8.exit.i24.i.i:                     ; preds = %bb.bz, %.lr.ph.i19.i.i
  %i.oi = phi i32 [ %i.oc, %bb.bz ], [ %i.oa, %.lr.ph.i19.i.i ] ; 4 uses
  %.0.i.i25.i.i = phi i32 [ %i.oh, %bb.bz ], [ %i.ob, %.lr.ph.i19.i.i ]
  %i.oj = shl i32 %.0.i.i25.i.i, 8                ; 2 uses
  %.not.i.i23.i.i.1 = icmp slt i32 %i.oi, %i.mj
  br i1 %.not.i.i23.i.i.1, label %bb.ca, label %stbtt__buf_get8.exit.i24.i.i.1

bb.ca:                                            ; preds = %stbtt__buf_get8.exit.i24.i.i
  %i.ok = add nsw i32 %i.oi, 1
  %i.ol = sext i32 %i.oi to i64
  %i.om = getelementptr inbounds i8, ptr %i.mo, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !56
  %i.oo = zext i8 %i.on to i32
  %i.op = or disjoint i32 %i.oj, %i.oo
  br label %stbtt__buf_get8.exit.i24.i.i.1

stbtt__buf_get8.exit.i24.i.i.1:                   ; preds = %bb.ca, %stbtt__buf_get8.exit.i24.i.i
  %i.oq = phi i32 [ %i.ok, %bb.ca ], [ %i.oi, %stbtt__buf_get8.exit.i24.i.i ] ; 2 uses
  %.0.i.i25.i.i.1 = phi i32 [ %i.op, %bb.ca ], [ %i.oj, %stbtt__buf_get8.exit.i24.i.i ] ; 3 uses
  %niter212.next.1 = add i32 %niter212, 2         ; 2 uses
  %niter212.ncmp.1 = icmp eq i32 %niter212.next.1, %unroll_iter211
  br i1 %niter212.ncmp.1, label %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i, !llvm.loop !32

stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa:     ; preds = %stbtt__buf_get8.exit.i24.i.i.1
  %lcmp.mod208.not = icmp eq i32 %xtraiter205, 0
  br i1 %lcmp.mod208.not, label %stbtt__buf_get.exit28.i.i, label %.lr.ph.i19.i.i.epil.preheader

.lr.ph.i19.i.i.epil.preheader:                    ; preds = %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.preheader
  %.epil.init207 = phi i32 [ %.sroa.6.4.i.i.lcssa, %.lr.ph.i19.i.i.preheader ], [ %i.oq, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.056.i22.i.i.epil.init = phi i32 [ 0, %.lr.ph.i19.i.i.preheader ], [ %.0.i.i25.i.i.1, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ]
  %lcmp.mod210 = trunc i8 %i.mx to i1
  tail call void @llvm.assume(i1 %lcmp.mod210)
  %i.or = shl i32 %.056.i22.i.i.epil.init, 8      ; 2 uses
  %.not.i.i23.i.i.epil = icmp slt i32 %.epil.init207, %i.mj
  br i1 %.not.i.i23.i.i.epil, label %bb.cb, label %stbtt__buf_get.exit28.i.i

bb.cb:                                            ; preds = %.lr.ph.i19.i.i.epil.preheader
  %i.os = sext i32 %.epil.init207 to i64
  %i.ot = getelementptr inbounds i8, ptr %i.mo, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !56
  %i.ov = zext i8 %i.ou to i32
  %i.ow = or disjoint i32 %i.or, %i.ov
  br label %stbtt__buf_get.exit28.i.i

stbtt__buf_get.exit28.i.i:                        ; preds = %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa, %bb.cb, %.lr.ph.i19.i.i.epil.preheader, %stbtt__buf_get8.exit.i.i252.i.a, %stbtt__buf_get8.exit.i263.i, %stbtt__buf_get8.exit.i.1.i255.i.a, %stbtt__cff_get_index.exit250.i, %bb.bv
  %.0.i.i.1.i256368.i = phi i32 [ %i.mv, %stbtt__buf_get8.exit.i263.i ], [ %i.mv, %stbtt__buf_get8.exit.i.1.i255.i.a ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit250.i ], [ %i.mr, %stbtt__buf_get8.exit.i.i252.i.a ], [ %i.mv, %.lr.ph.i19.i.i.epil.preheader ], [ %i.mv, %bb.cb ], [ %i.mv, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ]
  %.sroa.18.8.extract.trunc.i353359367.i = phi i32 [ %i.mj, %stbtt__buf_get8.exit.i263.i ], [ 2, %stbtt__buf_get8.exit.i.1.i255.i.a ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit250.i ], [ 1, %stbtt__buf_get8.exit.i.i252.i.a ], [ %i.mj, %.lr.ph.i19.i.i.epil.preheader ], [ %i.mj, %bb.cb ], [ %i.mj, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.0.i.i246352360366.i = phi ptr [ %i.mo, %stbtt__buf_get8.exit.i263.i ], [ %i.mo, %stbtt__buf_get8.exit.i.1.i255.i.a ], [ null, %bb.bv ], [ %i.mo, %stbtt__cff_get_index.exit250.i ], [ %i.mo, %stbtt__buf_get8.exit.i.i252.i.a ], [ %i.mo, %.lr.ph.i19.i.i.epil.preheader ], [ %i.mo, %bb.cb ], [ %i.mo, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ]
  %.0.i55.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i263.i ], [ 0, %stbtt__buf_get8.exit.i.1.i255.i.a ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit250.i ], [ 0, %stbtt__buf_get8.exit.i.i252.i.a ], [ %i.my, %.lr.ph.i19.i.i.epil.preheader ], [ %i.my, %bb.cb ], [ %i.my, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ]
  %.05.lcssa.i42.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i263.i ], [ 0, %stbtt__buf_get8.exit.i.1.i255.i.a ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit250.i ], [ 0, %stbtt__buf_get8.exit.i.i252.i.a ], [ %.0.i.i15.i.i.lcssa, %.lr.ph.i19.i.i.epil.preheader ], [ %.0.i.i15.i.i.lcssa, %bb.cb ], [ %.0.i.i15.i.i.lcssa, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i27.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i263.i ], [ 0, %stbtt__buf_get8.exit.i.1.i255.i.a ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit250.i ], [ 0, %stbtt__buf_get8.exit.i.i252.i.a ], [ %.0.i.i25.i.i.1, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ], [ %i.ow, %bb.cb ], [ %i.or, %.lr.ph.i19.i.i.epil.preheader ]
  %i.ox = add nuw nsw i32 %.0.i.i.1.i256368.i, 1
  %i.oy = mul nuw nsw i32 %.0.i55.i.i, %i.ox
  %i.oz = add nuw nsw i32 %i.oy, 2
  %i.pa = add nsw i32 %i.oz, %.05.lcssa.i42.i.i   ; 4 uses
  %i.pb = sub nsw i32 %.05.lcssa.i27.i.i, %.05.lcssa.i42.i.i ; 3 uses
  %i.pc = or i32 %i.pb, %i.pa
  %or.cond.not.i.i258.i = icmp sgt i32 %i.pc, -1
  br i1 %or.cond.not.i.i258.i, label %bb.cc, label %stbtt__cff_index_get.exit.i

bb.cc:                                            ; preds = %stbtt__buf_get.exit28.i.i
  %i.pd = icmp sgt i32 %i.pa, %.sroa.18.8.extract.trunc.i353359367.i
  %i.pe = sub nsw i32 %.sroa.18.8.extract.trunc.i353359367.i, %i.pa
  %i.pf = icmp sgt i32 %i.pb, %i.pe
  %or.cond.i.i.i = select i1 %i.pd, i1 true, i1 %i.pf
  br i1 %or.cond.i.i.i, label %stbtt__cff_index_get.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pg = zext nneg i32 %i.pa to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i246352360366.i, i64 %i.pg
  %i.pi = zext nneg i32 %i.pb to i64
  %i.pj = shl nuw nsw i64 %i.pi, 32
  br label %stbtt__cff_index_get.exit.i

stbtt__cff_index_get.exit.i:                      ; preds = %bb.cd, %bb.cc, %stbtt__buf_get.exit28.i.i
  %.sroa.0.0.i.i259.i = phi ptr [ null, %stbtt__buf_get.exit28.i.i ], [ null, %bb.cc ], [ %i.ph, %bb.cd ]
  %.sroa.5.0.i.i260.i = phi i64 [ 0, %stbtt__buf_get.exit28.i.i ], [ 0, %bb.cc ], [ %i.pj, %bb.cd ]
  store ptr %.sroa.0.0.i.i259.i, ptr %4, align 8, !tbaa !60
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %.sroa.5.0.i.i260.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !tbaa !55
  %.not.i.i.i266.i = icmp slt i32 %i.mi, %i.ho
  br i1 %.not.i.i.i266.i, label %bb.ce, label %stbtt__buf_get8.exit.i.i267.i

bb.ce:                                            ; preds = %stbtt__cff_index_get.exit.i
  %i.pk = load ptr, ptr %3, align 8, !tbaa !325
  %i.pl = add nsw i32 %i.mi, 1                    ; 2 uses
  store i32 %i.pl, ptr %i.hk, align 8, !tbaa !323
  %i.pm = sext i32 %i.mi to i64
  %i.pn = getelementptr inbounds i8, ptr %i.pk, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !56
  %i.pp = zext i8 %i.po to i32
  %i.pq = shl nuw nsw i32 %i.pp, 8
  br label %stbtt__buf_get8.exit.i.i267.i

stbtt__buf_get8.exit.i.i267.i:                    ; preds = %bb.ce, %stbtt__cff_index_get.exit.i
  %i.pr = phi i32 [ %i.pl, %bb.ce ], [ %i.mi, %stbtt__cff_index_get.exit.i ] ; 4 uses
  %.0.i.i.i268.i = phi i32 [ %i.pq, %bb.ce ], [ 0, %stbtt__cff_index_get.exit.i ] ; 2 uses
  %.not.i.i.1.i269.i = icmp slt i32 %i.pr, %i.ho
  br i1 %.not.i.i.1.i269.i, label %bb.cf, label %stbtt__buf_get8.exit.i.1.i270.i

bb.cf:                                            ; preds = %stbtt__buf_get8.exit.i.i267.i
  %i.ps = load ptr, ptr %3, align 8, !tbaa !325
  %i.pt = add nsw i32 %i.pr, 1                    ; 2 uses
  store i32 %i.pt, ptr %i.hk, align 8, !tbaa !323
  %i.pu = sext i32 %i.pr to i64
  %i.pv = getelementptr inbounds i8, ptr %i.ps, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !56
  %i.px = zext i8 %i.pw to i32
  %i.py = or disjoint i32 %.0.i.i.i268.i, %i.px
  br label %stbtt__buf_get8.exit.i.1.i270.i

stbtt__buf_get8.exit.i.1.i270.i:                  ; preds = %bb.cf, %stbtt__buf_get8.exit.i.i267.i
  %i.pz = phi i32 [ %i.pt, %bb.cf ], [ %i.pr, %stbtt__buf_get8.exit.i.i267.i ] ; 5 uses
  %.0.i.i.1.i271.i = phi i32 [ %i.py, %bb.cf ], [ %.0.i.i.i268.i, %stbtt__buf_get8.exit.i.i267.i ] ; 2 uses
  %.not.i272.i = icmp eq i32 %.0.i.i.1.i271.i, 0
  br i1 %.not.i272.i, label %stbtt__cff_get_index.exit295.i, label %bb.cg

bb.cg:                                            ; preds = %stbtt__buf_get8.exit.i.1.i270.i
  %.not.i.i273.i = icmp slt i32 %i.pz, %i.ho
  br i1 %.not.i.i273.i, label %bb.ch, label %stbtt__buf_get8.exit.i274.i

bb.ch:                                            ; preds = %bb.cg
  %i.qa = load ptr, ptr %3, align 8, !tbaa !325
  %i.qb = add nsw i32 %i.pz, 1
  %i.qc = sext i32 %i.pz to i64
  %i.qd = getelementptr inbounds i8, ptr %i.qa, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !56
  %i.qf = zext i8 %i.qe to i32
  br label %stbtt__buf_get8.exit.i274.i

stbtt__buf_get8.exit.i274.i:                      ; preds = %bb.ch, %bb.cg
  %.promoted401.i = phi i32 [ %i.qb, %bb.ch ], [ %i.pz, %bb.cg ]
  %.0.i.i275.i = phi i32 [ %i.qf, %bb.ch ], [ 0, %bb.cg ] ; 6 uses
  %i.qg = mul nuw nsw i32 %.0.i.i275.i, %.0.i.i.1.i271.i
  %i.qh = add nsw i32 %i.qg, %.promoted401.i      ; 2 uses
  %i.qi = icmp slt i32 %i.qh, 0
  %i.qj = tail call i32 @llvm.smin.i32(i32 %i.qh, i32 %i.ho)
  %..i.i.i276.i = select i1 %i.qi, i32 %i.ho, i32 %i.qj ; 3 uses
  %.not.i13.i277.i = icmp eq i32 %.0.i.i275.i, 0
  br i1 %.not.i13.i277.i, label %stbtt__buf_get.exit21.i286.i, label %.lr.ph.i.i278.preheader.i

.lr.ph.i.i278.preheader.i:                        ; preds = %stbtt__buf_get8.exit.i274.i
  %i.qk = load ptr, ptr %3, align 8               ; 3 uses
  %xtraiter213 = and i32 %.0.i.i275.i, 1
  %i.ql = icmp eq i32 %.0.i.i275.i, 1
  br i1 %i.ql, label %.lr.ph.i.i278.i.epil.preheader, label %.lr.ph.i.i278.preheader.i.new

.lr.ph.i.i278.preheader.i.new:                    ; preds = %.lr.ph.i.i278.preheader.i
  %unroll_iter220 = and i32 %.0.i.i275.i, 254
  br label %.lr.ph.i.i278.i

.lr.ph.i.i278.i:                                  ; preds = %stbtt__buf_get8.exit.i18.i282.i.1, %.lr.ph.i.i278.preheader.i.new
  %i.qm = phi i32 [ %..i.i.i276.i, %.lr.ph.i.i278.preheader.i.new ], [ %i.rc, %stbtt__buf_get8.exit.i18.i282.i.1 ] ; 4 uses
  %.056.i16.i280.i = phi i32 [ 0, %.lr.ph.i.i278.preheader.i.new ], [ %.0.i.i19.i283.i.1, %stbtt__buf_get8.exit.i18.i282.i.1 ]
  %niter221 = phi i32 [ 0, %.lr.ph.i.i278.preheader.i.new ], [ %niter221.next.1, %stbtt__buf_get8.exit.i18.i282.i.1 ]
  %i.qn = shl i32 %.056.i16.i280.i, 8             ; 2 uses
  %.not.i.i17.i281.i = icmp slt i32 %i.qm, %i.ho
  br i1 %.not.i.i17.i281.i, label %bb.ci, label %stbtt__buf_get8.exit.i18.i282.i

bb.ci:                                            ; preds = %.lr.ph.i.i278.i
  %i.qo = add nsw i32 %i.qm, 1
  %i.qp = sext i32 %i.qm to i64
  %i.qq = getelementptr inbounds i8, ptr %i.qk, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !56
  %i.qs = zext i8 %i.qr to i32
  %i.qt = or disjoint i32 %i.qn, %i.qs
  br label %stbtt__buf_get8.exit.i18.i282.i

stbtt__buf_get8.exit.i18.i282.i:                  ; preds = %bb.ci, %.lr.ph.i.i278.i
  %i.qu = phi i32 [ %i.qo, %bb.ci ], [ %i.qm, %.lr.ph.i.i278.i ] ; 4 uses
  %.0.i.i19.i283.i = phi i32 [ %i.qt, %bb.ci ], [ %i.qn, %.lr.ph.i.i278.i ]
  %i.qv = shl i32 %.0.i.i19.i283.i, 8             ; 2 uses
  %.not.i.i17.i281.i.1 = icmp slt i32 %i.qu, %i.ho
  br i1 %.not.i.i17.i281.i.1, label %bb.cj, label %stbtt__buf_get8.exit.i18.i282.i.1

bb.cj:                                            ; preds = %stbtt__buf_get8.exit.i18.i282.i
  %i.qw = add nsw i32 %i.qu, 1
  %i.qx = sext i32 %i.qu to i64
  %i.qy = getelementptr inbounds i8, ptr %i.qk, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !56
  %i.ra = zext i8 %i.qz to i32
  %i.rb = or disjoint i32 %i.qv, %i.ra
  br label %stbtt__buf_get8.exit.i18.i282.i.1

stbtt__buf_get8.exit.i18.i282.i.1:                ; preds = %bb.cj, %stbtt__buf_get8.exit.i18.i282.i
  %i.rc = phi i32 [ %i.qw, %bb.cj ], [ %i.qu, %stbtt__buf_get8.exit.i18.i282.i ] ; 3 uses
  %.0.i.i19.i283.i.1 = phi i32 [ %i.rb, %bb.cj ], [ %i.qv, %stbtt__buf_get8.exit.i18.i282.i ] ; 3 uses
  %niter221.next.1 = add nuw nsw i32 %niter221, 2 ; 2 uses
  %niter221.ncmp.1 = icmp eq i32 %niter221.next.1, %unroll_iter220
  br i1 %niter221.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa, label %.lr.ph.i.i278.i, !llvm.loop !32

stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa:  ; preds = %stbtt__buf_get8.exit.i18.i282.i.1
  %lcmp.mod216.not = icmp eq i32 %xtraiter213, 0
  br i1 %lcmp.mod216.not, label %stbtt__buf_get.exit21.loopexit.i285.i, label %.lr.ph.i.i278.i.epil.preheader

.lr.ph.i.i278.i.epil.preheader:                   ; preds = %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa, %.lr.ph.i.i278.preheader.i
  %.epil.init215 = phi i32 [ %..i.i.i276.i, %.lr.ph.i.i278.preheader.i ], [ %i.rc, %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa ] ; 4 uses
  %.056.i16.i280.i.epil.init = phi i32 [ 0, %.lr.ph.i.i278.preheader.i ], [ %.0.i.i19.i283.i.1, %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa ]
  %lcmp.mod219 = trunc i32 %.0.i.i275.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod219)
  %i.rd = shl i32 %.056.i16.i280.i.epil.init, 8   ; 2 uses
  %.not.i.i17.i281.i.epil = icmp slt i32 %.epil.init215, %i.ho
  br i1 %.not.i.i17.i281.i.epil, label %bb.ck, label %stbtt__buf_get.exit21.loopexit.i285.i

bb.ck:                                            ; preds = %.lr.ph.i.i278.i.epil.preheader
  %i.re = add nsw i32 %.epil.init215, 1
  %i.rf = sext i32 %.epil.init215 to i64
  %i.rg = getelementptr inbounds i8, ptr %i.qk, i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !56
  %i.ri = zext i8 %i.rh to i32
  %i.rj = or disjoint i32 %i.rd, %i.ri
  br label %stbtt__buf_get.exit21.loopexit.i285.i

stbtt__buf_get.exit21.loopexit.i285.i:            ; preds = %.lr.ph.i.i278.i.epil.preheader, %bb.ck, %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa
  %.lcssa163 = phi i32 [ %i.rc, %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa ], [ %i.re, %bb.ck ], [ %.epil.init215, %.lr.ph.i.i278.i.epil.preheader ]
  %.0.i.i19.i283.i.lcssa = phi i32 [ %.0.i.i19.i283.i.1, %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa ], [ %i.rj, %bb.ck ], [ %i.rd, %.lr.ph.i.i278.i.epil.preheader ]
  %i.rk = add i32 %.0.i.i19.i283.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i286.i

stbtt__buf_get.exit21.i286.i:                     ; preds = %stbtt__buf_get.exit21.loopexit.i285.i, %stbtt__buf_get8.exit.i274.i
  %i.rl = phi i32 [ %..i.i.i276.i, %stbtt__buf_get8.exit.i274.i ], [ %.lcssa163, %stbtt__buf_get.exit21.loopexit.i285.i ]
  %.05.lcssa.i.i287.i = phi i32 [ -1, %stbtt__buf_get8.exit.i274.i ], [ %i.rk, %stbtt__buf_get.exit21.loopexit.i285.i ]
  %i.rm = add nsw i32 %.05.lcssa.i.i287.i, %i.rl  ; 2 uses
  %i.rn = icmp slt i32 %i.rm, 0
  %i.ro = tail call i32 @llvm.smin.i32(i32 %i.rm, i32 %i.ho)
  %..i.i22.i288.i = select i1 %i.rn, i32 %i.ho, i32 %i.ro ; 2 uses
  store i32 %..i.i22.i288.i, ptr %i.hk, align 8, !tbaa !323
  br label %stbtt__cff_get_index.exit295.i

stbtt__cff_get_index.exit295.i:                   ; preds = %stbtt__buf_get.exit21.i286.i, %stbtt__buf_get8.exit.i.1.i270.i
  %i.rp = phi i32 [ %..i.i22.i288.i, %stbtt__buf_get.exit21.i286.i ], [ %i.pz, %stbtt__buf_get8.exit.i.1.i270.i ] ; 7 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.not.i.i.i296.i = icmp slt i32 %i.rp, %i.ho
  br i1 %.not.i.i.i296.i, label %bb.cl, label %stbtt__buf_get8.exit.i.i297.i

bb.cl:                                            ; preds = %stbtt__cff_get_index.exit295.i
  %i.rr = load ptr, ptr %3, align 8, !tbaa !325
  %i.rs = add nsw i32 %i.rp, 1                    ; 2 uses
  store i32 %i.rs, ptr %i.hk, align 8, !tbaa !323
  %i.rt = sext i32 %i.rp to i64
  %i.ru = getelementptr inbounds i8, ptr %i.rr, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !56
  %i.rw = zext i8 %i.rv to i32
  %i.rx = shl nuw nsw i32 %i.rw, 8
  br label %stbtt__buf_get8.exit.i.i297.i

stbtt__buf_get8.exit.i.i297.i:                    ; preds = %bb.cl, %stbtt__cff_get_index.exit295.i
  %i.ry = phi i32 [ %i.rs, %bb.cl ], [ %i.rp, %stbtt__cff_get_index.exit295.i ] ; 4 uses
  %.0.i.i.i298.i = phi i32 [ %i.rx, %bb.cl ], [ 0, %stbtt__cff_get_index.exit295.i ] ; 2 uses
  %.not.i.i.1.i299.i = icmp slt i32 %i.ry, %i.ho
  br i1 %.not.i.i.1.i299.i, label %bb.cm, label %stbtt__buf_get8.exit.i.1.i300.i
end_hunk_0
