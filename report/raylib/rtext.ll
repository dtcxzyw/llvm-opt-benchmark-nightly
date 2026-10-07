Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a
  br label %stbtt__buf_get8.exit.i18.i.i.i.1

stbtt__buf_get8.exit.i18.i.i.i.1:                 ; preds = %bb.bn, %stbtt__buf_get8.exit.i18.i.i.i
  %i.it = phi i32 [ %i.in, %bb.bn ], [ %i.il, %stbtt__buf_get8.exit.i18.i.i.i ] ; 3 uses
  %.0.i.i19.i.i.i.1 = phi i32 [ %i.is, %bb.bn ], [ %i.im, %stbtt__buf_get8.exit.i18.i.i.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i

stbtt__buf_get.exit21.loopexit.i.i.i.unr-lcssa:   ; preds = %stbtt__buf_get8.exit.i18.i.i.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbtt__buf_get.exit21.loopexit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %stbtt__buf_get.exit21.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.preheader.i.i
  %.epil.init = phi i32 [ %..i.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.it, %stbtt__buf_get.exit21.loopexit.i.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i ], [ %.0.i.i19.i.i.i.1, %stbtt__buf_get.exit21.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod772 = trunc i32 %.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod772)
  %i.iu = shl i32 %.056.i16.i.i.i.epil.init, 8    ; 2 uses
  %.not.i.i17.i.i.i.epil = icmp slt i32 %.epil.init, %i.gs
  br i1 %.not.i.i17.i.i.i.epil, label %bb.bo, label %stbtt__buf_get.exit21.loopexit.i.i.i

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i.epil.preheader
  %i.iv = add nsw i32 %.epil.init, 1
  %i.iw = sext i32 %.epil.init to i64
  %i.ix = getelementptr inbounds i8, ptr %i.ib, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1
  %i.iz = zext i8 %i.iy to i32
  %i.ja = or disjoint i32 %i.iu, %i.iz
  br label %stbtt__buf_get.exit21.loopexit.i.i.i

stbtt__buf_get.exit21.loopexit.i.i.i:             ; preds = %.lr.ph.i.i.i.i.epil.preheader, %bb.bo, %stbtt__buf_get.exit21.loopexit.i.i.i.unr-lcssa
  %.lcssa751.a = phi i32 [ %i.it, %stbtt__buf_get.exit21.loopexit.i.i.i.unr-lcssa ], [ %i.iv, %bb.bo ], [ %.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %.0.i.i19.i.i.i.lcssa = phi i32 [ %.0.i.i19.i.i.i.1, %stbtt__buf_get.exit21.loopexit.i.i.i.unr-lcssa ], [ %i.ja, %bb.bo ], [ %i.iu, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.jb = add i32 %.0.i.i19.i.i.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i.i.i

stbtt__buf_get.exit21.i.i.i:                      ; preds = %stbtt__buf_get.exit21.loopexit.i.i.i, %stbtt__buf_get8.exit.i.i.i
  %i.jc = phi i32 [ %..i.i.i.i.i, %stbtt__buf_get8.exit.i.i.i ], [ %.lcssa751.a, %stbtt__buf_get.exit21.loopexit.i.i.i ]
  %.05.lcssa.i.i.i.i = phi i32 [ -1, %stbtt__buf_get8.exit.i.i.i ], [ %i.jb, %stbtt__buf_get.exit21.loopexit.i.i.i ]
  %i.jd = add nsw i32 %.05.lcssa.i.i.i.i, %i.jc   ; 2 uses
  %i.je = icmp slt i32 %i.jd, 0
  %i.jf = tail call i32 @llvm.smin.i32(i32 %i.jd, i32 %i.gs)
  %..i.i22.i.i.i = select i1 %i.je, i32 %i.gs, i32 %i.jf ; 2 uses
  store i32 %..i.i22.i.i.i, ptr %i.go, align 8
  br label %stbtt__cff_get_index.exit.i.i

stbtt__cff_get_index.exit.i.i:                    ; preds = %stbtt__buf_get.exit21.i.i.i, %stbtt__buf_get8.exit.i.1.i.i.i
  %i.jg = phi i32 [ %..i.i22.i.i.i, %stbtt__buf_get.exit21.i.i.i ], [ %i.hq, %stbtt__buf_get8.exit.i.1.i.i.i ] ; 7 uses
  %.not.i.i.i213.i.i = icmp slt i32 %i.jg, %i.gs
  br i1 %.not.i.i.i213.i.i, label %bb.bp, label %stbtt__buf_get8.exit.i.i214.i.i

bb.bp:                                            ; preds = %stbtt__cff_get_index.exit.i.i
  %i.jh = load ptr, ptr %7, align 8
  %i.ji = add nsw i32 %i.jg, 1                    ; 2 uses
  store i32 %i.ji, ptr %i.go, align 8
  %i.jj = sext i32 %i.jg to i64
  %i.jk = getelementptr inbounds i8, ptr %i.jh, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = zext i8 %i.jl to i32
  %i.jn = shl nuw nsw i32 %i.jm, 8
  br label %stbtt__buf_get8.exit.i.i214.i.i

stbtt__buf_get8.exit.i.i214.i.i:                  ; preds = %bb.bp, %stbtt__cff_get_index.exit.i.i
  %i.jo = phi i32 [ %i.ji, %bb.bp ], [ %i.jg, %stbtt__cff_get_index.exit.i.i ] ; 4 uses
  %.0.i.i.i215.i.i = phi i32 [ %i.jn, %bb.bp ], [ 0, %stbtt__cff_get_index.exit.i.i ] ; 2 uses
  %.not.i.i.1.i216.i.i = icmp slt i32 %i.jo, %i.gs
  br i1 %.not.i.i.1.i216.i.i, label %bb.bq, label %stbtt__buf_get8.exit.i.1.i217.i.i

bb.bq:                                            ; preds = %stbtt__buf_get8.exit.i.i214.i.i
  %i.jp = load ptr, ptr %7, align 8
  %i.jq = add nsw i32 %i.jo, 1                    ; 2 uses
  store i32 %i.jq, ptr %i.go, align 8
  %i.jr = sext i32 %i.jo to i64
  %i.js = getelementptr inbounds i8, ptr %i.jp, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = zext i8 %i.jt to i32
  %i.jv = or disjoint i32 %.0.i.i.i215.i.i, %i.ju
  br label %stbtt__buf_get8.exit.i.1.i217.i.i

stbtt__buf_get8.exit.i.1.i217.i.i:                ; preds = %bb.bq, %stbtt__buf_get8.exit.i.i214.i.i
  %i.jw = phi i32 [ %i.jq, %bb.bq ], [ %i.jo, %stbtt__buf_get8.exit.i.i214.i.i ] ; 5 uses
  %.0.i.i.1.i218.i.i = phi i32 [ %i.jv, %bb.bq ], [ %.0.i.i.i215.i.i, %stbtt__buf_get8.exit.i.i214.i.i ] ; 2 uses
  %.not.i219.i.i = icmp eq i32 %.0.i.i.1.i218.i.i, 0
  br i1 %.not.i219.i.i, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %stbtt__buf_get8.exit.i.1.i217.i.i
  %.not.i.i220.i.i = icmp slt i32 %i.jw, %i.gs
  br i1 %.not.i.i220.i.i, label %bb.bs, label %stbtt__buf_get8.exit.i221.i.i

bb.bs:                                            ; preds = %bb.br
  %i.jx = load ptr, ptr %7, align 8
  %i.jy = add nsw i32 %i.jw, 1
  %i.jz = sext i32 %i.jw to i64
  %i.ka = getelementptr inbounds i8, ptr %i.jx, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1
  %i.kc = zext i8 %i.kb to i32
  br label %stbtt__buf_get8.exit.i221.i.i

stbtt__buf_get8.exit.i221.i.i:                    ; preds = %bb.bs, %bb.br
  %.promoted390.i.i = phi i32 [ %i.jy, %bb.bs ], [ %i.jw, %bb.br ]
  %.0.i.i222.i.i = phi i32 [ %i.kc, %bb.bs ], [ 0, %bb.br ] ; 6 uses
  %i.kd = mul nuw nsw i32 %.0.i.i222.i.i, %.0.i.i.1.i218.i.i
  %i.ke = add nsw i32 %i.kd, %.promoted390.i.i    ; 2 uses
  %i.kf = icmp slt i32 %i.ke, 0
  %i.kg = tail call i32 @llvm.smin.i32(i32 %i.ke, i32 %i.gs)
  %..i.i.i223.i.i = select i1 %i.kf, i32 %i.gs, i32 %i.kg ; 3 uses
  %.not.i13.i224.i.i = icmp eq i32 %.0.i.i222.i.i, 0
  br i1 %.not.i13.i224.i.i, label %stbtt__buf_get.exit21.i233.i.i, label %.lr.ph.i.i225.preheader.i.i

.lr.ph.i.i225.preheader.i.i:                      ; preds = %stbtt__buf_get8.exit.i221.i.i
  %i.kh = load ptr, ptr %7, align 8               ; 3 uses
  %xtraiter773 = and i32 %.0.i.i222.i.i, 1
  %i.ki = icmp eq i32 %.0.i.i222.i.i, 1
  br i1 %i.ki, label %.lr.ph.i.i225.i.i.epil.preheader, label %.lr.ph.i.i225.preheader.i.i.new

.lr.ph.i.i225.preheader.i.i.new:                  ; preds = %.lr.ph.i.i225.preheader.i.i
  %unroll_iter780 = and i32 %.0.i.i222.i.i, 254
  br label %.lr.ph.i.i225.i.i

.lr.ph.i.i225.i.i:                                ; preds = %stbtt__buf_get8.exit.i18.i229.i.i.1, %.lr.ph.i.i225.preheader.i.i.new
  %i.kj = phi i32 [ %..i.i.i223.i.i, %.lr.ph.i.i225.preheader.i.i.new ], [ %i.kz, %stbtt__buf_get8.exit.i18.i229.i.i.1 ] ; 4 uses
  %.056.i16.i227.i.i = phi i32 [ 0, %.lr.ph.i.i225.preheader.i.i.new ], [ %.0.i.i19.i230.i.i.1, %stbtt__buf_get8.exit.i18.i229.i.i.1 ]
  %niter781 = phi i32 [ 0, %.lr.ph.i.i225.preheader.i.i.new ], [ %niter781.next.1, %stbtt__buf_get8.exit.i18.i229.i.i.1 ]
  %i.kk = shl i32 %.056.i16.i227.i.i, 8           ; 2 uses
  %.not.i.i17.i228.i.i = icmp slt i32 %i.kj, %i.gs
  br i1 %.not.i.i17.i228.i.i, label %bb.bt, label %stbtt__buf_get8.exit.i18.i229.i.i

bb.bt:                                            ; preds = %.lr.ph.i.i225.i.i
  %i.kl = add nsw i32 %i.kj, 1
  %i.km = sext i32 %i.kj to i64
  %i.kn = getelementptr inbounds i8, ptr %i.kh, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = zext i8 %i.ko to i32
  %i.kq = or disjoint i32 %i.kk, %i.kp
  br label %stbtt__buf_get8.exit.i18.i229.i.i

stbtt__buf_get8.exit.i18.i229.i.i:                ; preds = %bb.bt, %.lr.ph.i.i225.i.i
  %i.kr = phi i32 [ %i.kl, %bb.bt ], [ %i.kj, %.lr.ph.i.i225.i.i ] ; 4 uses
  %.0.i.i19.i230.i.i = phi i32 [ %i.kq, %bb.bt ], [ %i.kk, %.lr.ph.i.i225.i.i ]
  %i.ks = shl i32 %.0.i.i19.i230.i.i, 8           ; 2 uses
  %.not.i.i17.i228.i.i.1 = icmp slt i32 %i.kr, %i.gs
  br i1 %.not.i.i17.i228.i.i.1, label %bb.bu, label %stbtt__buf_get8.exit.i18.i229.i.i.1

bb.bu:                                            ; preds = %stbtt__buf_get8.exit.i18.i229.i.i
  %i.kt = add nsw i32 %i.kr, 1
  %i.ku = sext i32 %i.kr to i64
  %i.kv = getelementptr inbounds i8, ptr %i.kh, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = zext i8 %i.kw to i32
  %i.ky = or disjoint i32 %i.ks, %i.kx
  br label %stbtt__buf_get8.exit.i18.i229.i.i.1

stbtt__buf_get8.exit.i18.i229.i.i.1:              ; preds = %bb.bu, %stbtt__buf_get8.exit.i18.i229.i.i
  %i.kz = phi i32 [ %i.kt, %bb.bu ], [ %i.kr, %stbtt__buf_get8.exit.i18.i229.i.i ] ; 3 uses
  %.0.i.i19.i230.i.i.1 = phi i32 [ %i.ky, %bb.bu ], [ %i.ks, %stbtt__buf_get8.exit.i18.i229.i.i ] ; 3 uses
  %niter781.next.1 = add nuw nsw i32 %niter781, 2 ; 2 uses
  %niter781.ncmp.1 = icmp eq i32 %niter781.next.1, %unroll_iter780
  br i1 %niter781.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa, label %.lr.ph.i.i225.i.i

stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa: ; preds = %stbtt__buf_get8.exit.i18.i229.i.i.1
  %lcmp.mod776.not = icmp eq i32 %xtraiter773, 0
  br i1 %lcmp.mod776.not, label %stbtt__buf_get.exit21.loopexit.i232.i.i, label %.lr.ph.i.i225.i.i.epil.preheader

.lr.ph.i.i225.i.i.epil.preheader:                 ; preds = %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa, %.lr.ph.i.i225.preheader.i.i
  %.epil.init775 = phi i32 [ %..i.i.i223.i.i, %.lr.ph.i.i225.preheader.i.i ], [ %i.kz, %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i227.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i225.preheader.i.i ], [ %.0.i.i19.i230.i.i.1, %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa ]
  %lcmp.mod779 = trunc i32 %.0.i.i222.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod779)
  %i.la = shl i32 %.056.i16.i227.i.i.epil.init, 8 ; 2 uses
  %.not.i.i17.i228.i.i.epil = icmp slt i32 %.epil.init775, %i.gs
  br i1 %.not.i.i17.i228.i.i.epil, label %bb.bv, label %stbtt__buf_get.exit21.loopexit.i232.i.i

bb.bv:                                            ; preds = %.lr.ph.i.i225.i.i.epil.preheader
  %i.lb = add nsw i32 %.epil.init775, 1
  %i.lc = sext i32 %.epil.init775 to i64
  %i.ld = getelementptr inbounds i8, ptr %i.kh, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = zext i8 %i.le to i32
  %i.lg = or disjoint i32 %i.la, %i.lf
  br label %stbtt__buf_get.exit21.loopexit.i232.i.i

stbtt__buf_get.exit21.loopexit.i232.i.i:          ; preds = %.lr.ph.i.i225.i.i.epil.preheader, %bb.bv, %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa
  %.lcssa750.a = phi i32 [ %i.kz, %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa ], [ %i.lb, %bb.bv ], [ %.epil.init775, %.lr.ph.i.i225.i.i.epil.preheader ]
  %.0.i.i19.i230.i.i.lcssa = phi i32 [ %.0.i.i19.i230.i.i.1, %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa ], [ %i.lg, %bb.bv ], [ %i.la, %.lr.ph.i.i225.i.i.epil.preheader ]
  %i.lh = add i32 %.0.i.i19.i230.i.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i233.i.i

stbtt__buf_get.exit21.i233.i.i:                   ; preds = %stbtt__buf_get.exit21.loopexit.i232.i.i, %stbtt__buf_get8.exit.i221.i.i
  %i.li = phi i32 [ %..i.i.i223.i.i, %stbtt__buf_get8.exit.i221.i.i ], [ %.lcssa750.a, %stbtt__buf_get.exit21.loopexit.i232.i.i ]
  %.05.lcssa.i.i234.i.i = phi i32 [ -1, %stbtt__buf_get8.exit.i221.i.i ], [ %i.lh, %stbtt__buf_get.exit21.loopexit.i232.i.i ]
  %i.lj = add nsw i32 %.05.lcssa.i.i234.i.i, %i.li ; 2 uses
  %i.lk = icmp slt i32 %i.lj, 0
  %i.ll = tail call i32 @llvm.smin.i32(i32 %i.lj, i32 %i.gs)
  %..i.i22.i235.i.i = select i1 %i.lk, i32 %i.gs, i32 %i.ll ; 2 uses
  store i32 %..i.i22.i235.i.i, ptr %i.go, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %stbtt__buf_get.exit21.i233.i.i, %stbtt__buf_get8.exit.i.1.i217.i.i
  %i.lm = phi i32 [ %..i.i22.i235.i.i, %stbtt__buf_get.exit21.i233.i.i ], [ %i.jw, %stbtt__buf_get8.exit.i.1.i217.i.i ] ; 6 uses
  %i.ln = sub nsw i32 %i.lm, %i.jg                ; 14 uses
  %i.lo = or i32 %i.ln, %i.jg
  %or.cond.not.i.i236.i.i = icmp slt i32 %i.lo, 0
  %i.lp = icmp sgt i32 %i.lm, %i.gs
  %or.cond.i237.i.i = or i1 %i.lp, %or.cond.not.i.i236.i.i
  br i1 %or.cond.i237.i.i, label %stbtt__buf_get.exit28.i.i.i, label %stbtt__cff_get_index.exit242.i.i

stbtt__cff_get_index.exit242.i.i:                 ; preds = %bb.bw
  %i.lq = load ptr, ptr %7, align 8
  %i.lr = zext nneg i32 %i.jg to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lr ; 16 uses
  %.not.i.i.i243.not.i.i = icmp eq i32 %i.ln, 0
  br i1 %.not.i.i.i243.not.i.i, label %stbtt__buf_get.exit28.i.i.i, label %stbtt__buf_get8.exit.i.i244.i.i.a

stbtt__buf_get8.exit.i.i244.i.i.a:                ; preds = %stbtt__cff_get_index.exit242.i.i
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw nsw i32 %i.lu, 8                ; 2 uses
  %.not.i.i.1.i246.not.i.i = icmp eq i32 %i.ln, 1
  br i1 %.not.i.i.1.i246.not.i.i, label %stbtt__buf_get.exit28.i.i.i, label %stbtt__buf_get8.exit.i.1.i247.i.i.a

stbtt__buf_get8.exit.i.1.i247.i.i.a:              ; preds = %stbtt__buf_get8.exit.i.i244.i.i.a
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  %i.lx = load i8, ptr %i.lw, align 1
  %i.ly = zext i8 %i.lx to i32
  %i.lz = or disjoint i32 %i.lv, %i.ly            ; 5 uses
  %.not.i.i249.i.i = icmp samesign ugt i32 %i.ln, 2
  br i1 %.not.i.i249.i.i, label %stbtt__buf_get8.exit.i255.i.i, label %stbtt__buf_get.exit28.i.i.i

stbtt__buf_get8.exit.i255.i.i:                    ; preds = %stbtt__buf_get8.exit.i.1.i247.i.i.a
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  %i.mb = load i8, ptr %i.ma, align 1             ; 4 uses
  %i.mc = zext i8 %i.mb to i32                    ; 8 uses
  %.not.i9.i.i.i = icmp eq i8 %i.mb, 0
  br i1 %.not.i9.i.i.i, label %stbtt__buf_get.exit28.i.i.i, label %.lr.ph.i.i257.i.i.preheader

.lr.ph.i.i257.i.i.preheader:                      ; preds = %stbtt__buf_get8.exit.i255.i.i
  %i.md = add nsw i32 %i.mc, -1                   ; 2 uses
  %xtraiter782 = and i32 %i.mc, 1
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %.lr.ph.i.i257.i.i.epil.preheader, label %.lr.ph.i.i257.i.i.preheader.new

.lr.ph.i.i257.i.i.preheader.new:                  ; preds = %.lr.ph.i.i257.i.i.preheader
  %unroll_iter789 = and i32 %i.mc, 254
  br label %.lr.ph.i.i257.i.i

.lr.ph.i.i257.i.i:                                ; preds = %stbtt__buf_get8.exit.i14.i.i.i.1, %.lr.ph.i.i257.i.i.preheader.new
  %.sroa.6.3.i.i.i = phi i32 [ 3, %.lr.ph.i.i257.i.i.preheader.new ], [ %.sroa.6.4.i.i.i.1, %stbtt__buf_get8.exit.i14.i.i.i.1 ]
  %i.mf = phi i32 [ 3, %.lr.ph.i.i257.i.i.preheader.new ], [ %i.mv, %stbtt__buf_get8.exit.i14.i.i.i.1 ] ; 4 uses
  %.056.i12.i.i.i = phi i32 [ 0, %.lr.ph.i.i257.i.i.preheader.new ], [ %.0.i.i15.i.i.i.1, %stbtt__buf_get8.exit.i14.i.i.i.1 ]
  %niter790 = phi i32 [ 0, %.lr.ph.i.i257.i.i.preheader.new ], [ %niter790.next.1, %stbtt__buf_get8.exit.i14.i.i.i.1 ]
  %i.mg = shl i32 %.056.i12.i.i.i, 8              ; 2 uses
  %.not.i.i13.i.i.i = icmp slt i32 %i.mf, %i.ln
  br i1 %.not.i.i13.i.i.i, label %bb.bx, label %stbtt__buf_get8.exit.i14.i.i.i

bb.bx:                                            ; preds = %.lr.ph.i.i257.i.i
  %i.mh = add nsw i32 %i.mf, 1                    ; 2 uses
  %i.mi = sext i32 %i.mf to i64
  %i.mj = getelementptr inbounds i8, ptr %i.ls, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = zext i8 %i.mk to i32
  %i.mm = or disjoint i32 %i.mg, %i.ml
  br label %stbtt__buf_get8.exit.i14.i.i.i

stbtt__buf_get8.exit.i14.i.i.i:                   ; preds = %bb.bx, %.lr.ph.i.i257.i.i
  %.sroa.6.4.i.i.i = phi i32 [ %i.mh, %bb.bx ], [ %.sroa.6.3.i.i.i, %.lr.ph.i.i257.i.i ]
  %i.mn = phi i32 [ %i.mh, %bb.bx ], [ %i.mf, %.lr.ph.i.i257.i.i ] ; 4 uses
  %.0.i.i15.i.i.i = phi i32 [ %i.mm, %bb.bx ], [ %i.mg, %.lr.ph.i.i257.i.i ]
  %i.mo = shl i32 %.0.i.i15.i.i.i, 8              ; 2 uses
  %.not.i.i13.i.i.i.1 = icmp slt i32 %i.mn, %i.ln
  br i1 %.not.i.i13.i.i.i.1, label %bb.by, label %stbtt__buf_get8.exit.i14.i.i.i.1

bb.by:                                            ; preds = %stbtt__buf_get8.exit.i14.i.i.i
  %i.mp = add nsw i32 %i.mn, 1                    ; 2 uses
  %i.mq = sext i32 %i.mn to i64
  %i.mr = getelementptr inbounds i8, ptr %i.ls, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1
  %i.mt = zext i8 %i.ms to i32
  %i.mu = or disjoint i32 %i.mo, %i.mt
  br label %stbtt__buf_get8.exit.i14.i.i.i.1

stbtt__buf_get8.exit.i14.i.i.i.1:                 ; preds = %bb.by, %stbtt__buf_get8.exit.i14.i.i.i
  %.sroa.6.4.i.i.i.1 = phi i32 [ %i.mp, %bb.by ], [ %.sroa.6.4.i.i.i, %stbtt__buf_get8.exit.i14.i.i.i ] ; 3 uses
  %i.mv = phi i32 [ %i.mp, %bb.by ], [ %i.mn, %stbtt__buf_get8.exit.i14.i.i.i ] ; 2 uses
  %.0.i.i15.i.i.i.1 = phi i32 [ %i.mu, %bb.by ], [ %i.mo, %stbtt__buf_get8.exit.i14.i.i.i ] ; 3 uses
  %niter790.next.1 = add i32 %niter790, 2         ; 2 uses
  %niter790.ncmp.1 = icmp eq i32 %niter790.next.1, %unroll_iter789
  br i1 %niter790.ncmp.1, label %.lr.ph.i19.i.i.i.preheader.unr-lcssa, label %.lr.ph.i.i257.i.i

.lr.ph.i19.i.i.i.preheader.unr-lcssa:             ; preds = %stbtt__buf_get8.exit.i14.i.i.i.1
  %lcmp.mod785.not = icmp eq i32 %xtraiter782, 0
  br i1 %lcmp.mod785.not, label %.lr.ph.i19.i.i.i.preheader, label %.lr.ph.i.i257.i.i.epil.preheader

.lr.ph.i.i257.i.i.epil.preheader:                 ; preds = %.lr.ph.i19.i.i.i.preheader.unr-lcssa, %.lr.ph.i.i257.i.i.preheader
  %.sroa.6.3.i.i.i.epil.init = phi i32 [ 3, %.lr.ph.i.i257.i.i.preheader ], [ %.sroa.6.4.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ]
  %.epil.init784 = phi i32 [ 3, %.lr.ph.i.i257.i.i.preheader ], [ %i.mv, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ] ; 3 uses
  %.056.i12.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i257.i.i.preheader ], [ %.0.i.i15.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ]
  %lcmp.mod788 = trunc i8 %i.mb to i1
  tail call void @llvm.assume(i1 %lcmp.mod788)
  %i.mw = shl i32 %.056.i12.i.i.i.epil.init, 8    ; 2 uses
  %.not.i.i13.i.i.i.epil = icmp slt i32 %.epil.init784, %i.ln
  br i1 %.not.i.i13.i.i.i.epil, label %bb.bz, label %.lr.ph.i19.i.i.i.preheader

bb.bz:                                            ; preds = %.lr.ph.i.i257.i.i.epil.preheader
  %i.mx = add nsw i32 %.epil.init784, 1
  %i.my = sext i32 %.epil.init784 to i64
  %i.mz = getelementptr inbounds i8, ptr %i.ls, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1
  %i.nb = zext i8 %i.na to i32
  %i.nc = or disjoint i32 %i.mw, %i.nb
  br label %.lr.ph.i19.i.i.i.preheader

.lr.ph.i19.i.i.i.preheader:                       ; preds = %.lr.ph.i.i257.i.i.epil.preheader, %bb.bz, %.lr.ph.i19.i.i.i.preheader.unr-lcssa
  %.sroa.6.4.i.i.i.lcssa = phi i32 [ %.sroa.6.4.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ], [ %i.mx, %bb.bz ], [ %.sroa.6.3.i.i.i.epil.init, %.lr.ph.i.i257.i.i.epil.preheader ] ; 2 uses
  %.0.i.i15.i.i.i.lcssa = phi i32 [ %.0.i.i15.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ], [ %i.nc, %bb.bz ], [ %i.mw, %.lr.ph.i.i257.i.i.epil.preheader ] ; 3 uses
  %xtraiter791 = and i32 %i.mc, 1
  %i.nd = icmp eq i32 %i.md, 0
  br i1 %i.nd, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.preheader.new

.lr.ph.i19.i.i.i.preheader.new:                   ; preds = %.lr.ph.i19.i.i.i.preheader
  %unroll_iter797 = and i32 %i.mc, 254
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %stbtt__buf_get8.exit.i24.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.new
  %i.ne = phi i32 [ %.sroa.6.4.i.i.i.lcssa, %.lr.ph.i19.i.i.i.preheader.new ], [ %i.nu, %stbtt__buf_get8.exit.i24.i.i.i.1 ] ; 4 uses
  %.056.i22.i.i.i = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %.0.i.i25.i.i.i.1, %stbtt__buf_get8.exit.i24.i.i.i.1 ]
  %niter798 = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %niter798.next.1, %stbtt__buf_get8.exit.i24.i.i.i.1 ]
  %i.nf = shl i32 %.056.i22.i.i.i, 8              ; 2 uses
  %.not.i.i23.i.i.i = icmp slt i32 %i.ne, %i.ln
  br i1 %.not.i.i23.i.i.i, label %bb.ca, label %stbtt__buf_get8.exit.i24.i.i.i

bb.ca:                                            ; preds = %.lr.ph.i19.i.i.i
  %i.ng = add nsw i32 %i.ne, 1
  %i.nh = sext i32 %i.ne to i64
  %i.ni = getelementptr inbounds i8, ptr %i.ls, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1
  %i.nk = zext i8 %i.nj to i32
  %i.nl = or disjoint i32 %i.nf, %i.nk
  br label %stbtt__buf_get8.exit.i24.i.i.i

stbtt__buf_get8.exit.i24.i.i.i:                   ; preds = %bb.ca, %.lr.ph.i19.i.i.i
  %i.nm = phi i32 [ %i.ng, %bb.ca ], [ %i.ne, %.lr.ph.i19.i.i.i ] ; 4 uses
  %.0.i.i25.i.i.i = phi i32 [ %i.nl, %bb.ca ], [ %i.nf, %.lr.ph.i19.i.i.i ]
  %i.nn = shl i32 %.0.i.i25.i.i.i, 8              ; 2 uses
  %.not.i.i23.i.i.i.1 = icmp slt i32 %i.nm, %i.ln
  br i1 %.not.i.i23.i.i.i.1, label %bb.cb, label %stbtt__buf_get8.exit.i24.i.i.i.1

bb.cb:                                            ; preds = %stbtt__buf_get8.exit.i24.i.i.i
  %i.no = add nsw i32 %i.nm, 1
  %i.np = sext i32 %i.nm to i64
  %i.nq = getelementptr inbounds i8, ptr %i.ls, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1
  %i.ns = zext i8 %i.nr to i32
  %i.nt = or disjoint i32 %i.nn, %i.ns
  br label %stbtt__buf_get8.exit.i24.i.i.i.1

stbtt__buf_get8.exit.i24.i.i.i.1:                 ; preds = %bb.cb, %stbtt__buf_get8.exit.i24.i.i.i
  %i.nu = phi i32 [ %i.no, %bb.cb ], [ %i.nm, %stbtt__buf_get8.exit.i24.i.i.i ] ; 2 uses
  %.0.i.i25.i.i.i.1 = phi i32 [ %i.nt, %bb.cb ], [ %i.nn, %stbtt__buf_get8.exit.i24.i.i.i ] ; 3 uses
  %niter798.next.1 = add i32 %niter798, 2         ; 2 uses
  %niter798.ncmp.1 = icmp eq i32 %niter798.next.1, %unroll_iter797
  br i1 %niter798.ncmp.1, label %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i

stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa:   ; preds = %stbtt__buf_get8.exit.i24.i.i.i.1
  %lcmp.mod794.not = icmp eq i32 %xtraiter791, 0
  br i1 %lcmp.mod794.not, label %stbtt__buf_get.exit28.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.preheader
  %.epil.init793 = phi i32 [ %.sroa.6.4.i.i.i.lcssa, %.lr.ph.i19.i.i.i.preheader ], [ %i.nu, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.056.i22.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader ], [ %.0.i.i25.i.i.i.1, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod796 = trunc i8 %i.mb to i1
  tail call void @llvm.assume(i1 %lcmp.mod796)
  %i.nv = shl i32 %.056.i22.i.i.i.epil.init, 8    ; 2 uses
  %.not.i.i23.i.i.i.epil = icmp slt i32 %.epil.init793, %i.ln
  br i1 %.not.i.i23.i.i.i.epil, label %bb.cc, label %stbtt__buf_get.exit28.i.i.i

bb.cc:                                            ; preds = %.lr.ph.i19.i.i.i.epil.preheader
  %i.nw = sext i32 %.epil.init793 to i64
  %i.nx = getelementptr inbounds i8, ptr %i.ls, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = zext i8 %i.ny to i32
  %i.oa = or disjoint i32 %i.nv, %i.nz
  br label %stbtt__buf_get.exit28.i.i.i

stbtt__buf_get.exit28.i.i.i:                      ; preds = %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa, %bb.cc, %.lr.ph.i19.i.i.i.epil.preheader, %stbtt__buf_get8.exit.i255.i.i, %stbtt__buf_get8.exit.i.1.i247.i.i.a, %stbtt__buf_get8.exit.i.i244.i.i.a, %stbtt__cff_get_index.exit242.i.i, %bb.bw
  %.0.i.i.1.i248359.i.i = phi i32 [ %i.lz, %stbtt__buf_get8.exit.i255.i.i ], [ %i.lz, %stbtt__buf_get8.exit.i.1.i247.i.i.a ], [ 0, %bb.bw ], [ 0, %stbtt__cff_get_index.exit242.i.i ], [ %i.lv, %stbtt__buf_get8.exit.i.i244.i.i.a ], [ %i.lz, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.lz, %bb.cc ], [ %i.lz, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ]
  %.sroa.18.8.extract.trunc.i344350358.i.i = phi i32 [ %i.ln, %stbtt__buf_get8.exit.i255.i.i ], [ 2, %stbtt__buf_get8.exit.i.1.i247.i.i.a ], [ 0, %bb.bw ], [ 0, %stbtt__cff_get_index.exit242.i.i ], [ 1, %stbtt__buf_get8.exit.i.i244.i.i.a ], [ %i.ln, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.ln, %bb.cc ], [ %i.ln, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.0.i.i238343351357.i.i = phi ptr [ %i.ls, %stbtt__buf_get8.exit.i255.i.i ], [ %i.ls, %stbtt__buf_get8.exit.i.1.i247.i.i.a ], [ null, %bb.bw ], [ %i.ls, %stbtt__cff_get_index.exit242.i.i ], [ %i.ls, %stbtt__buf_get8.exit.i.i244.i.i.a ], [ %i.ls, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.ls, %bb.cc ], [ %i.ls, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ]
  %.0.i55.i.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i255.i.i ], [ 0, %stbtt__buf_get8.exit.i.1.i247.i.i.a ], [ 0, %bb.bw ], [ 0, %stbtt__cff_get_index.exit242.i.i ], [ 0, %stbtt__buf_get8.exit.i.i244.i.i.a ], [ %i.mc, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.mc, %bb.cc ], [ %i.mc, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ]
  %.05.lcssa.i42.i.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i255.i.i ], [ 0, %stbtt__buf_get8.exit.i.1.i247.i.i.a ], [ 0, %bb.bw ], [ 0, %stbtt__cff_get_index.exit242.i.i ], [ 0, %stbtt__buf_get8.exit.i.i244.i.i.a ], [ %.0.i.i15.i.i.i.lcssa, %.lr.ph.i19.i.i.i.epil.preheader ], [ %.0.i.i15.i.i.i.lcssa, %bb.cc ], [ %.0.i.i15.i.i.i.lcssa, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i27.i.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i255.i.i ], [ 0, %stbtt__buf_get8.exit.i.1.i247.i.i.a ], [ 0, %bb.bw ], [ 0, %stbtt__cff_get_index.exit242.i.i ], [ 0, %stbtt__buf_get8.exit.i.i244.i.i.a ], [ %.0.i.i25.i.i.i.1, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ], [ %i.oa, %bb.cc ], [ %i.nv, %.lr.ph.i19.i.i.i.epil.preheader ]
  %i.ob = add nuw nsw i32 %.0.i.i.1.i248359.i.i, 1
  %i.oc = mul nuw nsw i32 %.0.i55.i.i.i, %i.ob
  %i.od = add nuw nsw i32 %i.oc, 2
  %i.oe = add nsw i32 %i.od, %.05.lcssa.i42.i.i.i ; 4 uses
  %i.of = sub nsw i32 %.05.lcssa.i27.i.i.i, %.05.lcssa.i42.i.i.i ; 3 uses
  %i.og = or i32 %i.of, %i.oe
  %or.cond.not.i.i250.i.i = icmp sgt i32 %i.og, -1
  br i1 %or.cond.not.i.i250.i.i, label %bb.cd, label %stbtt__cff_index_get.exit.i.i

bb.cd:                                            ; preds = %stbtt__buf_get.exit28.i.i.i
  %i.oh = icmp sgt i32 %i.oe, %.sroa.18.8.extract.trunc.i344350358.i.i
  %i.oi = sub nsw i32 %.sroa.18.8.extract.trunc.i344350358.i.i, %i.oe
  %i.oj = icmp sgt i32 %i.of, %i.oi
  %or.cond.i.i.i.i = select i1 %i.oh, i1 true, i1 %i.oj
  br i1 %or.cond.i.i.i.i, label %stbtt__cff_index_get.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ok = zext nneg i32 %i.oe to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i238343351357.i.i, i64 %i.ok
  %i.om = zext nneg i32 %i.of to i64
  %i.on = shl nuw nsw i64 %i.om, 32
  br label %stbtt__cff_index_get.exit.i.i

stbtt__cff_index_get.exit.i.i:                    ; preds = %bb.ce, %bb.cd, %stbtt__buf_get.exit28.i.i.i
  %.sroa.0.0.i.i251.i.i = phi ptr [ null, %stbtt__buf_get.exit28.i.i.i ], [ null, %bb.cd ], [ %i.ol, %bb.ce ]
  %.sroa.5.0.i.i252.i.i = phi i64 [ 0, %stbtt__buf_get.exit28.i.i.i ], [ 0, %bb.cd ], [ %i.on, %bb.ce ]
  store ptr %.sroa.0.0.i.i251.i.i, ptr %8, align 8
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %.sroa.5.0.i.i252.i.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8
  %.not.i.i.i258.i.i = icmp slt i32 %i.lm, %i.gs
  br i1 %.not.i.i.i258.i.i, label %bb.cf, label %stbtt__buf_get8.exit.i.i259.i.i

bb.cf:                                            ; preds = %stbtt__cff_index_get.exit.i.i
  %i.oo = load ptr, ptr %7, align 8
  %i.op = add nsw i32 %i.lm, 1                    ; 2 uses
  store i32 %i.op, ptr %i.go, align 8
  %i.oq = sext i32 %i.lm to i64
  %i.or = getelementptr inbounds i8, ptr %i.oo, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1
  %i.ot = zext i8 %i.os to i32
  %i.ou = shl nuw nsw i32 %i.ot, 8
  br label %stbtt__buf_get8.exit.i.i259.i.i

stbtt__buf_get8.exit.i.i259.i.i:                  ; preds = %bb.cf, %stbtt__cff_index_get.exit.i.i
  %i.ov = phi i32 [ %i.op, %bb.cf ], [ %i.lm, %stbtt__cff_index_get.exit.i.i ] ; 4 uses
  %.0.i.i.i260.i.i = phi i32 [ %i.ou, %bb.cf ], [ 0, %stbtt__cff_index_get.exit.i.i ] ; 2 uses
  %.not.i.i.1.i261.i.i = icmp slt i32 %i.ov, %i.gs
  br i1 %.not.i.i.1.i261.i.i, label %bb.cg, label %stbtt__buf_get8.exit.i.1.i262.i.i

bb.cg:                                            ; preds = %stbtt__buf_get8.exit.i.i259.i.i
  %i.ow = load ptr, ptr %7, align 8
  %i.ox = add nsw i32 %i.ov, 1                    ; 2 uses
  store i32 %i.ox, ptr %i.go, align 8
  %i.oy = sext i32 %i.ov to i64
  %i.oz = getelementptr inbounds i8, ptr %i.ow, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = zext i8 %i.pa to i32
  %i.pc = or disjoint i32 %.0.i.i.i260.i.i, %i.pb
  br label %stbtt__buf_get8.exit.i.1.i262.i.i

stbtt__buf_get8.exit.i.1.i262.i.i:                ; preds = %bb.cg, %stbtt__buf_get8.exit.i.i259.i.i
  %i.pd = phi i32 [ %i.ox, %bb.cg ], [ %i.ov, %stbtt__buf_get8.exit.i.i259.i.i ] ; 5 uses
  %.0.i.i.1.i263.i.i = phi i32 [ %i.pc, %bb.cg ], [ %.0.i.i.i260.i.i, %stbtt__buf_get8.exit.i.i259.i.i ] ; 2 uses
  %.not.i264.i.i = icmp eq i32 %.0.i.i.1.i263.i.i, 0
  br i1 %.not.i264.i.i, label %stbtt__cff_get_index.exit287.i.i, label %bb.ch

bb.ch:                                            ; preds = %stbtt__buf_get8.exit.i.1.i262.i.i
  %.not.i.i265.i.i = icmp slt i32 %i.pd, %i.gs
  br i1 %.not.i.i265.i.i, label %bb.ci, label %stbtt__buf_get8.exit.i266.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.pe = load ptr, ptr %7, align 8
  %i.pf = add nsw i32 %i.pd, 1
  %i.pg = sext i32 %i.pd to i64
  %i.ph = getelementptr inbounds i8, ptr %i.pe, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1
  %i.pj = zext i8 %i.pi to i32
  br label %stbtt__buf_get8.exit.i266.i.i

stbtt__buf_get8.exit.i266.i.i:                    ; preds = %bb.ci, %bb.ch
  %.promoted392.i.i = phi i32 [ %i.pf, %bb.ci ], [ %i.pd, %bb.ch ]
  %.0.i.i267.i.i = phi i32 [ %i.pj, %bb.ci ], [ 0, %bb.ch ] ; 6 uses
  %i.pk = mul nuw nsw i32 %.0.i.i267.i.i, %.0.i.i.1.i263.i.i
  %i.pl = add nsw i32 %i.pk, %.promoted392.i.i    ; 2 uses
  %i.pm = icmp slt i32 %i.pl, 0
  %i.pn = tail call i32 @llvm.smin.i32(i32 %i.pl, i32 %i.gs)
  %..i.i.i268.i.i = select i1 %i.pm, i32 %i.gs, i32 %i.pn ; 3 uses
  %.not.i13.i269.i.i = icmp eq i32 %.0.i.i267.i.i, 0
  br i1 %.not.i13.i269.i.i, label %stbtt__buf_get.exit21.i278.i.i, label %.lr.ph.i.i270.preheader.i.i

.lr.ph.i.i270.preheader.i.i:                      ; preds = %stbtt__buf_get8.exit.i266.i.i
  %i.po = load ptr, ptr %7, align 8               ; 3 uses
  %xtraiter799 = and i32 %.0.i.i267.i.i, 1
  %i.pp = icmp eq i32 %.0.i.i267.i.i, 1
  br i1 %i.pp, label %.lr.ph.i.i270.i.i.epil.preheader, label %.lr.ph.i.i270.preheader.i.i.new

.lr.ph.i.i270.preheader.i.i.new:                  ; preds = %.lr.ph.i.i270.preheader.i.i
  %unroll_iter806 = and i32 %.0.i.i267.i.i, 254
  br label %.lr.ph.i.i270.i.i

.lr.ph.i.i270.i.i:                                ; preds = %stbtt__buf_get8.exit.i18.i274.i.i.1, %.lr.ph.i.i270.preheader.i.i.new
  %i.pq = phi i32 [ %..i.i.i268.i.i, %.lr.ph.i.i270.preheader.i.i.new ], [ %i.qg, %stbtt__buf_get8.exit.i18.i274.i.i.1 ] ; 4 uses
  %.056.i16.i272.i.i = phi i32 [ 0, %.lr.ph.i.i270.preheader.i.i.new ], [ %.0.i.i19.i275.i.i.1, %stbtt__buf_get8.exit.i18.i274.i.i.1 ]
  %niter807 = phi i32 [ 0, %.lr.ph.i.i270.preheader.i.i.new ], [ %niter807.next.1, %stbtt__buf_get8.exit.i18.i274.i.i.1 ]
  %i.pr = shl i32 %.056.i16.i272.i.i, 8           ; 2 uses
  %.not.i.i17.i273.i.i = icmp slt i32 %i.pq, %i.gs
  br i1 %.not.i.i17.i273.i.i, label %bb.cj, label %stbtt__buf_get8.exit.i18.i274.i.i

bb.cj:                                            ; preds = %.lr.ph.i.i270.i.i
  %i.ps = add nsw i32 %i.pq, 1
  %i.pt = sext i32 %i.pq to i64
  %i.pu = getelementptr inbounds i8, ptr %i.po, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1
  %i.pw = zext i8 %i.pv to i32
  %i.px = or disjoint i32 %i.pr, %i.pw
  br label %stbtt__buf_get8.exit.i18.i274.i.i

stbtt__buf_get8.exit.i18.i274.i.i:                ; preds = %bb.cj, %.lr.ph.i.i270.i.i
  %i.py = phi i32 [ %i.ps, %bb.cj ], [ %i.pq, %.lr.ph.i.i270.i.i ] ; 4 uses
  %.0.i.i19.i275.i.i = phi i32 [ %i.px, %bb.cj ], [ %i.pr, %.lr.ph.i.i270.i.i ]
  %i.pz = shl i32 %.0.i.i19.i275.i.i, 8           ; 2 uses
  %.not.i.i17.i273.i.i.1 = icmp slt i32 %i.py, %i.gs
  br i1 %.not.i.i17.i273.i.i.1, label %bb.ck, label %stbtt__buf_get8.exit.i18.i274.i.i.1

bb.ck:                                            ; preds = %stbtt__buf_get8.exit.i18.i274.i.i
  %i.qa = add nsw i32 %i.py, 1
  %i.qb = sext i32 %i.py to i64
  %i.qc = getelementptr inbounds i8, ptr %i.po, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1
  %i.qe = zext i8 %i.qd to i32
  %i.qf = or disjoint i32 %i.pz, %i.qe
  br label %stbtt__buf_get8.exit.i18.i274.i.i.1

stbtt__buf_get8.exit.i18.i274.i.i.1:              ; preds = %bb.ck, %stbtt__buf_get8.exit.i18.i274.i.i
  %i.qg = phi i32 [ %i.qa, %bb.ck ], [ %i.py, %stbtt__buf_get8.exit.i18.i274.i.i ] ; 3 uses
  %.0.i.i19.i275.i.i.1 = phi i32 [ %i.qf, %bb.ck ], [ %i.pz, %stbtt__buf_get8.exit.i18.i274.i.i ] ; 3 uses
  %niter807.next.1 = add nuw nsw i32 %niter807, 2 ; 2 uses
  %niter807.ncmp.1 = icmp eq i32 %niter807.next.1, %unroll_iter806
  br i1 %niter807.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa, label %.lr.ph.i.i270.i.i

stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa: ; preds = %stbtt__buf_get8.exit.i18.i274.i.i.1
  %lcmp.mod802.not = icmp eq i32 %xtraiter799, 0
  br i1 %lcmp.mod802.not, label %stbtt__buf_get.exit21.loopexit.i277.i.i, label %.lr.ph.i.i270.i.i.epil.preheader

.lr.ph.i.i270.i.i.epil.preheader:                 ; preds = %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa, %.lr.ph.i.i270.preheader.i.i
  %.epil.init801 = phi i32 [ %..i.i.i268.i.i, %.lr.ph.i.i270.preheader.i.i ], [ %i.qg, %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i272.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i270.preheader.i.i ], [ %.0.i.i19.i275.i.i.1, %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa ]
  %lcmp.mod805 = trunc i32 %.0.i.i267.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod805)
  %i.qh = shl i32 %.056.i16.i272.i.i.epil.init, 8 ; 2 uses
  %.not.i.i17.i273.i.i.epil = icmp slt i32 %.epil.init801, %i.gs
  br i1 %.not.i.i17.i273.i.i.epil, label %bb.cl, label %stbtt__buf_get.exit21.loopexit.i277.i.i

bb.cl:                                            ; preds = %.lr.ph.i.i270.i.i.epil.preheader
  %i.qi = add nsw i32 %.epil.init801, 1
  %i.qj = sext i32 %.epil.init801 to i64
  %i.qk = getelementptr inbounds i8, ptr %i.po, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1
  %i.qm = zext i8 %i.ql to i32
  %i.qn = or disjoint i32 %i.qh, %i.qm
  br label %stbtt__buf_get.exit21.loopexit.i277.i.i

stbtt__buf_get.exit21.loopexit.i277.i.i:          ; preds = %.lr.ph.i.i270.i.i.epil.preheader, %bb.cl, %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa
  %.lcssa749.a = phi i32 [ %i.qg, %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa ], [ %i.qi, %bb.cl ], [ %.epil.init801, %.lr.ph.i.i270.i.i.epil.preheader ]
  %.0.i.i19.i275.i.i.lcssa = phi i32 [ %.0.i.i19.i275.i.i.1, %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa ], [ %i.qn, %bb.cl ], [ %i.qh, %.lr.ph.i.i270.i.i.epil.preheader ]
  %i.qo = add i32 %.0.i.i19.i275.i.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i278.i.i

stbtt__buf_get.exit21.i278.i.i:                   ; preds = %stbtt__buf_get.exit21.loopexit.i277.i.i, %stbtt__buf_get8.exit.i266.i.i
  %i.qp = phi i32 [ %..i.i.i268.i.i, %stbtt__buf_get8.exit.i266.i.i ], [ %.lcssa749.a, %stbtt__buf_get.exit21.loopexit.i277.i.i ]
  %.05.lcssa.i.i279.i.i = phi i32 [ -1, %stbtt__buf_get8.exit.i266.i.i ], [ %i.qo, %stbtt__buf_get.exit21.loopexit.i277.i.i ]
  %i.qq = add nsw i32 %.05.lcssa.i.i279.i.i, %i.qp ; 2 uses
  %i.qr = icmp slt i32 %i.qq, 0
  %i.qs = tail call i32 @llvm.smin.i32(i32 %i.qq, i32 %i.gs)
  %..i.i22.i280.i.i = select i1 %i.qr, i32 %i.gs, i32 %i.qs ; 2 uses
  store i32 %..i.i22.i280.i.i, ptr %i.go, align 8
  br label %stbtt__cff_get_index.exit287.i.i

stbtt__cff_get_index.exit287.i.i:                 ; preds = %stbtt__buf_get.exit21.i278.i.i, %stbtt__buf_get8.exit.i.1.i262.i.i
  %i.qt = phi i32 [ %..i.i22.i280.i.i, %stbtt__buf_get.exit21.i278.i.i ], [ %i.pd, %stbtt__buf_get8.exit.i.1.i262.i.i ] ; 7 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %9, i64 96
  %.not.i.i.i288.i.i = icmp slt i32 %i.qt, %i.gs
  br i1 %.not.i.i.i288.i.i, label %bb.cm, label %stbtt__buf_get8.exit.i.i289.i.i

bb.cm:                                            ; preds = %stbtt__cff_get_index.exit287.i.i
  %i.qv = load ptr, ptr %7, align 8
  %i.qw = add nsw i32 %i.qt, 1                    ; 2 uses
  store i32 %i.qw, ptr %i.go, align 8
  %i.qx = sext i32 %i.qt to i64
  %i.qy = getelementptr inbounds i8, ptr %i.qv, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1
  %i.ra = zext i8 %i.qz to i32
  %i.rb = shl nuw nsw i32 %i.ra, 8
  br label %stbtt__buf_get8.exit.i.i289.i.i

stbtt__buf_get8.exit.i.i289.i.i:                  ; preds = %bb.cm, %stbtt__cff_get_index.exit287.i.i
  %i.rc = phi i32 [ %i.qw, %bb.cm ], [ %i.qt, %stbtt__cff_get_index.exit287.i.i ] ; 4 uses
  %.0.i.i.i290.i.i = phi i32 [ %i.rb, %bb.cm ], [ 0, %stbtt__cff_get_index.exit287.i.i ] ; 2 uses
  %.not.i.i.1.i291.i.i = icmp slt i32 %i.rc, %i.gs
  br i1 %.not.i.i.1.i291.i.i, label %bb.cn, label %stbtt__buf_get8.exit.i.1.i292.i.i
end_hunk_0
