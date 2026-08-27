Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/color_lab?download=true
inline.NumInlined: 629
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN2cvL13createLabTabsEv:bb.a
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.qt
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !291
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.qs
  store i16 %i.rk, ptr %i.rl, align 2, !tbaa !291
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.qy
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !291
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.rb
  store i16 %i.rn, ptr %i.ro, align 2, !tbaa !291
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.re
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !291
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.rh
  store i16 %i.rq, ptr %i.rr, align 2, !tbaa !291
  %i.rs = or disjoint i64 %i.lr, 6                ; 2 uses
  %i.rt = add nuw nsw i64 %i.ls, %i.li            ; 4 uses
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.kp, i64 %i.rt
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !291
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.rs
  store i16 %i.rv, ptr %i.rw, align 2, !tbaa !291
  %i.rx = add nuw nsw i64 %i.rt, 1                ; 2 uses
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.kp, i64 %i.rx
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !291
  %i.sa = add nuw nsw i64 %i.lr, 14               ; 2 uses
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.sa
  store i16 %i.rz, ptr %i.sb, align 2, !tbaa !291
  %i.sc = add nuw nsw i64 %i.rt, 2                ; 2 uses
  %i.sd = getelementptr inbounds nuw [2 x i8], ptr %i.kp, i64 %i.sc
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !291
  %i.sf = add nuw nsw i64 %i.lr, 22               ; 2 uses
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.sf
  store i16 %i.se, ptr %i.sg, align 2, !tbaa !291
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.rt
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !291
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.rs
  store i16 %i.si, ptr %i.sj, align 2, !tbaa !291
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.rx
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !291
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.sa
  store i16 %i.sl, ptr %i.sm, align 2, !tbaa !291
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.sc
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !291
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.sf
  store i16 %i.so, ptr %i.sp, align 2, !tbaa !291
  %i.sq = add nuw nsw i32 %i.ms, %i.lh            ; 3 uses
  %i.sr = or disjoint i64 %i.lr, 7                ; 2 uses
  %i.ss = zext nneg i32 %i.sq to i64              ; 2 uses
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.kp, i64 %i.ss
  %i.su = load i16, ptr %i.st, align 2, !tbaa !291
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.sr
  store i16 %i.su, ptr %i.sv, align 2, !tbaa !291
  %i.sw = add nuw nsw i32 %i.sq, 1
  %i.sx = zext nneg i32 %i.sw to i64              ; 2 uses
  %i.sy = getelementptr inbounds nuw [2 x i8], ptr %i.kp, i64 %i.sx
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !291
  %i.ta = add nuw nsw i64 %i.lr, 15               ; 2 uses
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.ta
  store i16 %i.sz, ptr %i.tb, align 2, !tbaa !291
  %i.tc = add nuw nsw i32 %i.sq, 2
  %i.td = zext nneg i32 %i.tc to i64              ; 2 uses
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %i.kp, i64 %i.td
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !291
  %i.tg = add nuw nsw i64 %i.lr, 23               ; 2 uses
  %i.th = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.tg
  store i16 %i.tf, ptr %i.th, align 2, !tbaa !291
  %i.ti = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.ss
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !291
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.sr
  store i16 %i.tj, ptr %i.tk, align 2, !tbaa !291
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.sx
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !291
  %i.tn = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.ta
  store i16 %i.tm, ptr %i.tn, align 2, !tbaa !291
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.td
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !291
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.tg
  store i16 %i.tp, ptr %i.tq, align 2, !tbaa !291
  %exitcond274.not.i = icmp eq i64 %i.mq, 33
  br i1 %exitcond274.not.i, label %bb.li, label %.preheader233.i, !llvm.loop !389

bb.li:                                            ; preds = %.preheader233.i
  %exitcond278.not.i = icmp eq i64 %i.le, 33
  br i1 %exitcond278.not.i, label %_ZN2cvL14allocSingletonIsEEPT_m.exit221.i, label %.preheader234.i, !llvm.loop !390

bb.lj:                                            ; preds = %bb.lh, %bb.lg, %bb.lc
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.lc ], [ %i.la, %bb.lg ], [ %i.lb, %bb.lh ] ; 2 uses
  %i.tr = load ptr, ptr %53, align 8, !tbaa !354  ; 3 uses
  %.not.i.i225.i = icmp eq ptr %i.tr, %i.gc
  %i.ts = icmp eq ptr %i.tr, null
  %or.cond.i226.i = or i1 %.not.i.i225.i, %i.ts
  br i1 %or.cond.i226.i, label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit227.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  call void @_ZdaPv(ptr noundef nonnull %i.tr) #22
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit227.i

_ZN2cv10AutoBufferIsLm520EED2Ev.exit227.i:        ; preds = %bb.lk, %bb.lj, %bb.du
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.gx, %bb.du ], [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.lj ], [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.lk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  %i.tt = load ptr, ptr %52, align 8, !tbaa !354  ; 3 uses
  %.not.i.i228.i = icmp eq ptr %i.tt, %i.fz
  %i.tu = icmp eq ptr %i.tt, null
  %or.cond.i229.i = or i1 %.not.i.i228.i, %i.tu
  br i1 %or.cond.i229.i, label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit230.i, label %bb.ll

bb.ll:                                            ; preds = %_ZN2cv10AutoBufferIsLm520EED2Ev.exit227.i
  call void @_ZdaPv(ptr noundef nonnull %i.tt) #22
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit230.i

_ZN2cv10AutoBufferIsLm520EED2Ev.exit230.i:        ; preds = %bb.ll, %_ZN2cv10AutoBufferIsLm520EED2Ev.exit227.i
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  br label %bb.lm

common.resume:                                    ; preds = %bb.lo, %bb.lm
  %common.resume.op = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.lm ], [ %.pn104, %bb.lo ]
  resume { ptr, i32 } %common.resume.op

bb.lm:                                            ; preds = %_ZN2cv10AutoBufferIsLm520EED2Ev.exit230.i, %bb.dt, %bb.ds, %bb.dr, %bb.do, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZN2cv10AutoBufferIsLm520EED2Ev.exit230.i ], [ %i.gw, %bb.dt ], [ %i.gv, %bb.ds ], [ %.pn127.i, %bb.dr ], [ %.pn.i, %bb.do ], [ %i.gq, %bb.dl ], [ %i.gp, %bb.dk ], [ %i.go, %bb.dj ], [ %i.gn, %bb.di ], [ %i.gm, %bb.dh ], [ %i.gl, %bb.dg ], [ %i.gk, %bb.df ], [ %i.gj, %bb.de ], [ %i.gi, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %common.resume

_ZN2cvL19initLUTforLABLUVs16ERKNS_9softfloatES2_.exit: ; preds = %_ZN2cv10AutoBufferIsLm520EED2Ev.exit.i, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %61)
  call void @llvm.lifetime.end.p0(ptr nonnull %63)
  call void @llvm.lifetime.end.p0(ptr nonnull %65)
  store ptr %i.gh, ptr @_ZN2cvL12LABLUVLUTs16E.0, align 8, !tbaa !391
  store ptr %i.ko, ptr @_ZN2cvL12LABLUVLUTs16E.1, align 8, !tbaa !391
  br label %.preheader5

bb.ln:                                            ; preds = %.split.split
  call void @llvm.lifetime.end.p0(ptr nonnull %237) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #19
  ret void

.split4:                                          ; preds = %.preheader5, %.split
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %.split ], [ 0, %.preheader5 ] ; 5 uses
  %i.tv = sub nuw nsw i64 16, %indvars.iv163      ; 2 uses
  %.idx181 = shl nuw nsw i64 %indvars.iv163, 4
  %gep = getelementptr inbounds i8, ptr %invariant.gep11, i64 %.idx181
  br label %.split1

.preheader5:                                      ; preds = %_ZN2cvL19initLUTforLABLUVs16ERKNS_9softfloatES2_.exit, %.split.split
  %indvars.iv153 = phi i64 [ %i.uz, %.split.split ], [ 0, %_ZN2cvL19initLUTforLABLUVs16ERKNS_9softfloatES2_.exit ] ; 7 uses
  %i.tw = sub nuw nsw i64 16, %indvars.iv153      ; 4 uses
  %.idx182 = shl nuw nsw i64 %indvars.iv153, 12
  %invariant.gep11 = getelementptr inbounds i8, ptr @_ZN2cvL12trilinearLUTE, i64 %.idx182
  br label %.split4

.split1:                                          ; preds = %.split1, %.split4
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %.split1 ], [ 0, %.split4 ] ; 5 uses
  %.idx180 = shl nuw nsw i64 %indvars.iv157, 8
  %i.tx = mul nuw nsw i64 %indvars.iv157, %indvars.iv163 ; 2 uses
  %i.ty = sub nuw nsw i64 16, %indvars.iv157      ; 2 uses
  %i.tz = mul nuw nsw i64 %i.ty, %indvars.iv163   ; 2 uses
  %i.ua = mul nuw nsw i64 %indvars.iv157, %i.tv   ; 2 uses
  %i.ub = mul nuw nsw i64 %i.ty, %i.tv            ; 2 uses
  %gep10 = getelementptr inbounds i8, ptr %gep, i64 %.idx180 ; 8 uses
  %i.uc = mul nuw nsw i64 %i.tw, %i.ub
  %i.ud = trunc nuw i64 %i.uc to i16
  store i16 %i.ud, ptr %gep10, align 16, !tbaa !291
  %i.ue = mul nuw nsw i64 %indvars.iv153, %i.ub
  %i.uf = getelementptr inbounds nuw i8, ptr %gep10, i64 2
  %i.ug = trunc i64 %i.ue to i16
  store i16 %i.ug, ptr %i.uf, align 2, !tbaa !291
  %i.uh = mul nuw nsw i64 %i.tw, %i.ua
  %i.ui = getelementptr inbounds nuw i8, ptr %gep10, i64 4
  %i.uj = trunc i64 %i.uh to i16
  store i16 %i.uj, ptr %i.ui, align 4, !tbaa !291
  %i.uk = mul nuw nsw i64 %indvars.iv153, %i.ua
  %i.ul = getelementptr inbounds nuw i8, ptr %gep10, i64 6
  %i.um = trunc i64 %i.uk to i16
  store i16 %i.um, ptr %i.ul, align 2, !tbaa !291
  %i.un = mul i64 %i.tw, %i.tz
  %i.uo = getelementptr inbounds nuw i8, ptr %gep10, i64 8
  %i.up = trunc i64 %i.un to i16
  store i16 %i.up, ptr %i.uo, align 8, !tbaa !291
  %i.uq = mul i64 %indvars.iv153, %i.tz
  %i.ur = getelementptr inbounds nuw i8, ptr %gep10, i64 10
  %i.us = trunc i64 %i.uq to i16
  store i16 %i.us, ptr %i.ur, align 2, !tbaa !291
  %i.ut = mul nuw nsw i64 %i.tw, %i.tx
  %i.uu = getelementptr inbounds nuw i8, ptr %gep10, i64 12
  %i.uv = trunc i64 %i.ut to i16
  store i16 %i.uv, ptr %i.uu, align 4, !tbaa !291
  %i.uw = mul nuw nsw i64 %indvars.iv153, %i.tx
  %i.ux = getelementptr inbounds nuw i8, ptr %gep10, i64 14
  %i.uy = trunc i64 %i.uw to i16
  store i16 %i.uy, ptr %i.ux, align 2, !tbaa !291
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond162.not.a = icmp eq i64 %indvars.iv.next158, 16
  br i1 %exitcond162.not.a, label %.split, label %.split1, !llvm.loop !392

.split:                                           ; preds = %.split1
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next164, 16
  br i1 %exitcond168.not, label %.split.split, label %.split4, !llvm.loop !393

.split.split:                                     ; preds = %.split
  %i.uz = add nuw nsw i64 %indvars.iv153, 1       ; 2 uses
  %i.va = icmp eq i64 %i.uz, 16
  br i1 %i.va, label %bb.ln, label %.preheader5, !llvm.loop !394

bb.lo:                                            ; preds = %bb.ai, %bb.w, %bb.p
  %_ZGVZN2cvL13createLabTabsEvE7lshift2.sink = phi ptr [ @_ZGVZN2cvL13createLabTabsEvE7lshift2, %bb.ai ], [ @_ZGVZN2cvL13createLabTabsEvE8invScale, %bb.w ], [ @_ZGVZN2cvL13createLabTabsEvE8intScale, %bb.p ]
  %.pn104 = phi { ptr, i32 } [ %i.bd, %bb.ai ], [ %i.am, %bb.w ], [ %i.ab, %bb.p ]
  call void @__cxa_guard_abort(ptr nonnull %_ZGVZN2cvL13createLabTabsEvE7lshift2.sink) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #19
  br label %common.resume
}

declare void @_ZNK2cv9softfloatmlERKS0_(ptr dead_on_unwind writable sret(%"struct.cv::softfloat") align 4, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2cv9softfloatltERKS0_(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN2cv6mulAddERKNS_9softfloatES2_S2_(ptr dead_on_unwind writable sret(%"struct.cv::softfloat") align 4, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN2cv4cbrtERKNS_9softfloatE(ptr dead_on_unwind writable sret(%"struct.cv::softfloat") align 4, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL11splineBuildPKN2cv9softfloatEm(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %1 = alloca %"struct.cv::softfloat", align 4    ; 5 uses
  %2 = alloca %"struct.cv::softfloat", align 4    ; 6 uses
  %3 = alloca %"struct.cv::softfloat", align 4    ; 4 uses
  %4 = alloca %"struct.cv::softfloat", align 4    ; 7 uses
  %5 = alloca %"struct.cv::softfloat", align 4    ; 4 uses
  %6 = alloca %"struct.cv::softfloat", align 4    ; 4 uses
  %7 = alloca %"struct.cv::softfloat", align 4    ; 4 uses
  %8 = alloca %"struct.cv::softfloat", align 4    ; 4 uses
  %9 = alloca %"struct.cv::softfloat", align 4    ; 6 uses
  %10 = alloca %"struct.cv::softfloat", align 4   ; 4 uses
  %11 = alloca %"struct.cv::softfloat", align 4   ; 4 uses
  %12 = alloca %"struct.cv::softfloat", align 4   ; 5 uses
  %13 = alloca %"struct.cv::softfloat", align 4   ; 4 uses
  %14 = alloca %"struct.cv::softfloat", align 4   ; 8 uses
  %15 = alloca %"struct.cv::softfloat", align 4   ; 4 uses
  %16 = alloca %"struct.cv::softfloat", align 4   ; 5 uses
  %17 = alloca %"struct.cv::softfloat", align 4   ; 4 uses
  %18 = alloca %"struct.cv::softfloat", align 4   ; 4 uses
  %19 = alloca %"struct.cv::softfloat", align 4   ; 4 uses
  %20 = alloca %"struct.cv::softfloat", align 4   ; 4 uses
  %21 = alloca %"struct.cv::softfloat", align 4   ; 5 uses
  %22 = alloca %"struct.cv::softfloat", align 4   ; 4 uses
  %i.a = tail call noundef ptr @_ZN2cv20allocSingletonBufferEm(i64 noundef 16384) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @_ZN2cv9softfloatC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN2cv9softfloatC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN2cv9softfloatC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN2cv9softfloatC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 0)
  store <2 x float> zeroinitializer, ptr %i.a, align 4, !tbaa !42
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN2cv9softfloataSERKS0_.exit47
  %.04459 = phi i64 [ 1, %bb.a ], [ %i.b, %_ZN2cv9softfloataSERKS0_.exit47 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.b = add nuw nsw i64 %.04459, 1               ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04459
  call void @_ZNK2cv9softfloatmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %1)
  call void @_ZNK2cv9softfloatmiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %8)
  %i.e = add nsw i64 %.04459, -1                  ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  call void @_ZNK2cv9softfloatplERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @_ZNK2cv9softfloatmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i32 1065353216, ptr %10, align 4, !tbaa !160, !alias.scope !395
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %.idx57 = shl nuw nsw i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx57 ; 2 uses
  call void @_ZNK2cv9softfloatmiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %11, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @_ZNK2cv9softfloatdvERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(4) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %.idx58 = shl nuw nsw i64 %.04459, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx58 ; 3 uses
  %.not.i = icmp eq ptr %9, %i.h
  br i1 %.not.i, label %_ZN2cv9softfloataSERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %9, align 4, !tbaa !160
  store i32 %i.i, ptr %i.h, align 4, !tbaa !160
  br label %_ZN2cv9softfloataSERKS0_.exit

_ZN2cv9softfloataSERKS0_.exit:                    ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @_ZNK2cv9softfloatmiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %13, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  call void @_ZNK2cv9softfloatmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %12, ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull align 4 dereferenceable(4) %9)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %.not.i46 = icmp eq ptr %12, %i.k
  br i1 %.not.i46, label %_ZN2cv9softfloataSERKS0_.exit47, label %bb.d

bb.d:                                             ; preds = %_ZN2cv9softfloataSERKS0_.exit
  %i.l = load i32, ptr %12, align 4, !tbaa !160
  store i32 %i.l, ptr %i.k, align 4, !tbaa !160
  br label %_ZN2cv9softfloataSERKS0_.exit47

_ZN2cv9softfloataSERKS0_.exit47:                  ; preds = %_ZN2cv9softfloataSERKS0_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %exitcond.not = icmp eq i64 %i.b, 1024
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !400

bb.e:                                             ; preds = %_ZN2cv9softfloataSERKS0_.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret ptr %i.a

.preheader:                                       ; preds = %_ZN2cv9softfloataSERKS0_.exit47, %_ZN2cv9softfloataSERKS0_.exit55
  %.060 = phi i64 [ %i.z, %_ZN2cv9softfloataSERKS0_.exit55 ], [ 0, %_ZN2cv9softfloataSERKS0_.exit47 ] ; 3 uses
  %i.m = sub nuw nsw i64 1024, %.060
  %i.n = sub nuw nsw i64 1023, %.060              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %.idx = shl nuw nsw i64 %i.n, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @_ZNK2cv9softfloatmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %15, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @_ZNK2cv9softfloatmiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %14, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n ; 3 uses
  call void @_ZNK2cv9softfloatmiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %17, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @_ZNK2cv9softfloatmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %20, ptr noundef nonnull align 4 dereferenceable(4) %14, ptr noundef nonnull align 4 dereferenceable(4) %1)
  call void @_ZNK2cv9softfloatplERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %19, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %20)
  call void @_ZNK2cv9softfloatdvERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %18, ptr noundef nonnull align 4 dereferenceable(4) %19, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @_ZNK2cv9softfloatmiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %16, ptr noundef nonnull align 4 dereferenceable(4) %17, ptr noundef nonnull align 4 dereferenceable(4) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @_ZNK2cv9softfloatmiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %22, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %14)
  call void @_ZNK2cv9softfloatdvERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softfloat") align 4 %21, ptr noundef nonnull align 4 dereferenceable(4) %22, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %.not.i48 = icmp eq ptr %i.r, %i.o
  br i1 %.not.i48, label %_ZN2cv9softfloataSERKS0_.exit49, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.s = load i32, ptr %i.r, align 4, !tbaa !160
  store i32 %i.s, ptr %i.o, align 4, !tbaa !160
  br label %_ZN2cv9softfloataSERKS0_.exit49

_ZN2cv9softfloataSERKS0_.exit49:                  ; preds = %.preheader, %bb.f
  %.not.i50 = icmp eq ptr %16, %i.p
  br i1 %.not.i50, label %_ZN2cv9softfloataSERKS0_.exit51, label %bb.g

bb.g:                                             ; preds = %_ZN2cv9softfloataSERKS0_.exit49
  %i.t = load i32, ptr %16, align 4, !tbaa !160
  store i32 %i.t, ptr %i.p, align 4, !tbaa !160
  br label %_ZN2cv9softfloataSERKS0_.exit51

_ZN2cv9softfloataSERKS0_.exit51:                  ; preds = %_ZN2cv9softfloataSERKS0_.exit49, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.not.i52 = icmp eq ptr %14, %i.u
  br i1 %.not.i52, label %_ZN2cv9softfloataSERKS0_.exit53, label %bb.h

bb.h:                                             ; preds = %_ZN2cv9softfloataSERKS0_.exit51
  %i.v = load i32, ptr %14, align 4, !tbaa !160
  store i32 %i.v, ptr %i.u, align 4, !tbaa !160
  br label %_ZN2cv9softfloataSERKS0_.exit53

_ZN2cv9softfloataSERKS0_.exit53:                  ; preds = %_ZN2cv9softfloataSERKS0_.exit51, %bb.h
end_hunk_0
