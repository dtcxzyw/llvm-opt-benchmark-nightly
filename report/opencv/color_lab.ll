Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/color_lab?download=true
inline.NumInlined: 629
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN2cvL13createLabTabsEv:bb.a
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !291
  %i.qt = add nuw nsw i64 %i.ld, 21               ; 2 uses
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.qt
  store i16 %i.qs, ptr %i.qu, align 2, !tbaa !291
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.qf
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !291
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.qe
  store i16 %i.qw, ptr %i.qx, align 2, !tbaa !291
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.qk
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !291
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.qn
  store i16 %i.qz, ptr %i.ra, align 2, !tbaa !291
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.qq
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !291
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.qt
  store i16 %i.rc, ptr %i.rd, align 2, !tbaa !291
  %i.re = or disjoint i64 %i.ld, 6                ; 2 uses
  %i.rf = add nuw nsw i64 %i.le, %i.ku            ; 4 uses
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %i.rf
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !291
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.re
  store i16 %i.rh, ptr %i.ri, align 2, !tbaa !291
  %i.rj = add nuw nsw i64 %i.rf, 1                ; 2 uses
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %i.rj
  %i.rl = load i16, ptr %i.rk, align 2, !tbaa !291
  %i.rm = add nuw nsw i64 %i.ld, 14               ; 2 uses
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.rm
  store i16 %i.rl, ptr %i.rn, align 2, !tbaa !291
  %i.ro = add nuw nsw i64 %i.rf, 2                ; 2 uses
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %i.ro
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !291
  %i.rr = add nuw nsw i64 %i.ld, 22               ; 2 uses
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.rr
  store i16 %i.rq, ptr %i.rs, align 2, !tbaa !291
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.rf
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !291
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.re
  store i16 %i.ru, ptr %i.rv, align 2, !tbaa !291
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.rj
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !291
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.rm
  store i16 %i.rx, ptr %i.ry, align 2, !tbaa !291
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.ro
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !291
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.rr
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !291
  %i.sc = add nuw nsw i32 %i.me, %i.kt            ; 3 uses
  %i.sd = or disjoint i64 %i.ld, 7                ; 2 uses
  %i.se = zext nneg i32 %i.sc to i64              ; 2 uses
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %i.se
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !291
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.sd
  store i16 %i.sg, ptr %i.sh, align 2, !tbaa !291
  %i.si = add nuw nsw i32 %i.sc, 1
  %i.sj = zext nneg i32 %i.si to i64              ; 2 uses
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %i.sj
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !291
  %i.sm = add nuw nsw i64 %i.ld, 15               ; 2 uses
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.sm
  store i16 %i.sl, ptr %i.sn, align 2, !tbaa !291
  %i.so = add nuw nsw i32 %i.sc, 2
  %i.sp = zext nneg i32 %i.so to i64              ; 2 uses
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %i.sp
  %i.sr = load i16, ptr %i.sq, align 2, !tbaa !291
  %i.ss = add nuw nsw i64 %i.ld, 23               ; 2 uses
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.ss
  store i16 %i.sr, ptr %i.st, align 2, !tbaa !291
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.se
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !291
  %i.sw = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.sd
  store i16 %i.sv, ptr %i.sw, align 2, !tbaa !291
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.sj
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !291
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.sm
  store i16 %i.sy, ptr %i.sz, align 2, !tbaa !291
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.sp
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !291
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.ss
  store i16 %i.tb, ptr %i.tc, align 2, !tbaa !291
  %exitcond274.not.i = icmp eq i64 %i.mc, 33
  br i1 %exitcond274.not.i, label %bb.lf, label %.preheader233.i, !llvm.loop !385

bb.lf:                                            ; preds = %.preheader233.i
  %exitcond278.not.i = icmp eq i64 %i.kq, 33
  br i1 %exitcond278.not.i, label %_ZN2cvL14allocSingletonIsEEPT_m.exit221.i, label %.preheader234.i, !llvm.loop !386

bb.lg:                                            ; preds = %bb.lc, %bb.ld, %bb.le
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.lc ], [ %i.km, %bb.ld ], [ %i.kn, %bb.le ]
  call void @_ZdaPv(ptr noundef nonnull %i.ga) #22
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit230.i

_ZN2cv10AutoBufferIsLm520EED2Ev.exit230.i:        ; preds = %bb.lg, %bb.du
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.gt, %bb.du ], [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.lg ]
  call void @_ZdaPv(ptr noundef nonnull %i.fz) #22
  br label %bb.lh

common.resume:                                    ; preds = %bb.lj, %bb.lh
  %common.resume.op = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.lh ], [ %.pn104, %bb.lj ]
  resume { ptr, i32 } %common.resume.op

bb.lh:                                            ; preds = %_ZN2cv10AutoBufferIsLm520EED2Ev.exit230.i, %bb.dt, %bb.ds, %bb.dr, %bb.do, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZN2cv10AutoBufferIsLm520EED2Ev.exit230.i ], [ %i.gs, %bb.dt ], [ %i.gr, %bb.ds ], [ %.pn127.i, %bb.dr ], [ %.pn.i, %bb.do ], [ %i.gm, %bb.dl ], [ %i.gl, %bb.dk ], [ %i.gk, %bb.dj ], [ %i.gj, %bb.di ], [ %i.gi, %bb.dh ], [ %i.gh, %bb.dg ], [ %i.gg, %bb.df ], [ %i.gf, %bb.de ], [ %i.ge, %bb.dd ]
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

bb.li:                                            ; preds = %.split.split
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #19
  ret void

.split4:                                          ; preds = %_ZN2cvL19initLUTforLABLUVs16ERKNS_9softfloatES2_.exit, %.split
  %indvars.iv177 = phi i64 [ 0, %_ZN2cvL19initLUTforLABLUVs16ERKNS_9softfloatES2_.exit ], [ %indvars.iv.next178, %.split ] ; 5 uses
  %i.td = sub nuw nsw i64 16, %indvars.iv177      ; 2 uses
  %.idx191 = shl nuw nsw i64 %indvars.iv177, 4
  %gep = getelementptr inbounds i8, ptr %invariant.gep10, i64 %.idx191
  br label %.split1

.preheader3:                                      ; preds = %_ZN2cvL14allocSingletonIsEEPT_m.exit221.i
  call void @_ZdaPv(ptr noundef nonnull %i.ga) #22
  call void @_ZdaPv(ptr noundef nonnull %i.fz) #22
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
  call void @llvm.lifetime.end.p0(ptr nonnull %59)
  call void @llvm.lifetime.end.p0(ptr nonnull %61)
  call void @llvm.lifetime.end.p0(ptr nonnull %63)
  store ptr %i.gd, ptr @_ZN2cvL12LABLUVLUTs16E.0, align 8, !tbaa !387
  store ptr %i.ke, ptr @_ZN2cvL12LABLUVLUTs16E.1, align 8, !tbaa !387
  br label %_ZN2cvL19initLUTforLABLUVs16ERKNS_9softfloatES2_.exit

_ZN2cvL19initLUTforLABLUVs16ERKNS_9softfloatES2_.exit: ; preds = %.preheader3, %.split.split
  %indvars.iv167 = phi i64 [ %i.uh, %.split.split ], [ 0, %.preheader3 ] ; 7 uses
  %i.te = sub nuw nsw i64 16, %indvars.iv167      ; 4 uses
  %.idx192 = shl nuw nsw i64 %indvars.iv167, 12
  %invariant.gep10 = getelementptr inbounds i8, ptr @_ZN2cvL12trilinearLUTE, i64 %.idx192
  br label %.split4

.split1:                                          ; preds = %.split1, %.split4
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.split1 ], [ 0, %.split4 ] ; 5 uses
  %.idx190 = shl nuw nsw i64 %indvars.iv171, 8
  %i.tf = mul nuw nsw i64 %indvars.iv171, %indvars.iv177 ; 2 uses
  %i.tg = sub nuw nsw i64 16, %indvars.iv171      ; 2 uses
  %i.th = mul nuw nsw i64 %i.tg, %indvars.iv177   ; 2 uses
  %i.ti = mul nuw nsw i64 %indvars.iv171, %i.td   ; 2 uses
  %i.tj = mul nuw nsw i64 %i.tg, %i.td            ; 2 uses
  %gep9 = getelementptr inbounds i8, ptr %gep, i64 %.idx190 ; 8 uses
  %i.tk = mul nuw nsw i64 %i.te, %i.tj
  %i.tl = trunc nuw i64 %i.tk to i16
  store i16 %i.tl, ptr %gep9, align 16, !tbaa !291
  %i.tm = mul nuw nsw i64 %indvars.iv167, %i.tj
  %i.tn = getelementptr inbounds nuw i8, ptr %gep9, i64 2
  %i.to = trunc i64 %i.tm to i16
  store i16 %i.to, ptr %i.tn, align 2, !tbaa !291
  %i.tp = mul nuw nsw i64 %i.te, %i.ti
  %i.tq = getelementptr inbounds nuw i8, ptr %gep9, i64 4
  %i.tr = trunc i64 %i.tp to i16
  store i16 %i.tr, ptr %i.tq, align 4, !tbaa !291
  %i.ts = mul nuw nsw i64 %indvars.iv167, %i.ti
  %i.tt = getelementptr inbounds nuw i8, ptr %gep9, i64 6
  %i.tu = trunc i64 %i.ts to i16
  store i16 %i.tu, ptr %i.tt, align 2, !tbaa !291
  %i.tv = mul i64 %i.te, %i.th
  %i.tw = getelementptr inbounds nuw i8, ptr %gep9, i64 8
  %i.tx = trunc i64 %i.tv to i16
  store i16 %i.tx, ptr %i.tw, align 8, !tbaa !291
  %i.ty = mul i64 %indvars.iv167, %i.th
  %i.tz = getelementptr inbounds nuw i8, ptr %gep9, i64 10
  %i.ua = trunc i64 %i.ty to i16
  store i16 %i.ua, ptr %i.tz, align 2, !tbaa !291
  %i.ub = mul nuw nsw i64 %i.te, %i.tf
  %i.uc = getelementptr inbounds nuw i8, ptr %gep9, i64 12
  %i.ud = trunc i64 %i.ub to i16
  store i16 %i.ud, ptr %i.uc, align 4, !tbaa !291
  %i.ue = mul nuw nsw i64 %indvars.iv167, %i.tf
  %i.uf = getelementptr inbounds nuw i8, ptr %gep9, i64 14
  %i.ug = trunc i64 %i.ue to i16
  store i16 %i.ug, ptr %i.uf, align 2, !tbaa !291
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next172, 16
  br i1 %exitcond176.not, label %.split, label %.split1, !llvm.loop !389

.split:                                           ; preds = %.split1
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next178, 16
  br i1 %exitcond182.not, label %.split.split, label %.split4, !llvm.loop !390

.split.split:                                     ; preds = %.split
  %i.uh = add nuw nsw i64 %indvars.iv167, 1       ; 2 uses
  %i.ui = icmp eq i64 %i.uh, 16
  br i1 %i.ui, label %bb.li, label %_ZN2cvL19initLUTforLABLUVs16ERKNS_9softfloatES2_.exit, !llvm.loop !391

bb.lj:                                            ; preds = %bb.ai, %bb.w, %bb.p
  %_ZGVZN2cvL13createLabTabsEvE7lshift2.sink = phi ptr [ @_ZGVZN2cvL13createLabTabsEvE7lshift2, %bb.ai ], [ @_ZGVZN2cvL13createLabTabsEvE8invScale, %bb.w ], [ @_ZGVZN2cvL13createLabTabsEvE8intScale, %bb.p ]
  %.pn104 = phi { ptr, i32 } [ %i.bd, %bb.ai ], [ %i.am, %bb.w ], [ %i.ab, %bb.p ]
  call void @__cxa_guard_abort(ptr nonnull %_ZGVZN2cvL13createLabTabsEvE7lshift2.sink) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #19
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
  store i32 1065353216, ptr %10, align 4, !tbaa !160, !alias.scope !392
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
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !397

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
end_hunk_0
