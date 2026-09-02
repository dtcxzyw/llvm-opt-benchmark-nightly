Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/imgtool?download=true
inline.NumInlined: 9676
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 216
begin_hunk_0_@_Z6splitnSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %i.po, i64 96
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !127
  %i.rb = getelementptr [2 x i8], ptr %i.ra, i64 %i.qy
  %i.rc = getelementptr [2 x i8], ptr %i.rb, i64 %indvars.iv
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !173 ; 2 uses
  %i.re = zext i16 %i.rd to i32
  %i.rf = shl nuw nsw i32 %i.re, 13               ; 4 uses
  %i.rg = and i32 %i.rf, 260046848                ; 2 uses
  %i.rh = icmp eq i32 %i.rg, 260046848
  br i1 %i.rh, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ri = or i32 %i.rf, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i411

bb.cp:                                            ; preds = %bb.cn
  %i.rj = and i32 %i.rf, 268427264
  %i.rk = add nuw nsw i32 %i.rj, 939524096
  %i.rl = icmp eq i32 %i.rg, 0
  br i1 %i.rl, label %bb.cq, label %_ZNK4pbrt4HalfcvfEv.exit.i411

bb.cq:                                            ; preds = %bb.cp
  %i.rm = or i32 %i.rf, 947912704
  %i.rn = bitcast i32 %i.rm to float
  %i.ro = fadd float %i.rn, f0xB8800000
  %i.rp = bitcast float %i.ro to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i411

_ZNK4pbrt4HalfcvfEv.exit.i411:                    ; preds = %bb.cq, %bb.cp, %bb.co
  %.sroa.0.0.i.i412 = phi i32 [ %i.ri, %bb.co ], [ %i.rp, %bb.cq ], [ %i.rk, %bb.cp ]
  %.signext.i.i413 = sext i16 %i.rd to i32
  %i.rq = and i32 %.signext.i.i413, -2147483648
  %i.rr = or i32 %.sroa.0.0.i.i412, %i.rq
  %i.rs = bitcast i32 %i.rr to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit424

bb.cr:                                            ; preds = %.preheader.1.i671
  %i.rt = getelementptr inbounds nuw i8, ptr %i.po, i64 40
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !138
  %i.rv = trunc i64 %i.ru to i32
  %i.rw = mul nsw i32 %.sroa.14815.2, %.sroa.0.0.extract.trunc.i658
  %i.rx = add nsw i32 %i.rw, %.sroa.0807.0
  %i.ry = mul nsw i32 %i.rx, %i.rv
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.po, i64 128
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !118
  %i.sc = getelementptr [4 x i8], ptr %i.sb, i64 %i.rz
  %i.sd = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv
  %i.se = load float, ptr %i.sd, align 4, !tbaa !66
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit424

bb.cs:                                            ; preds = %.preheader.1.i671
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.250, i32 noundef 273, ptr noundef nonnull @.str.255) #39
          to label %.noexc423 unwind label %.loopexit.split-lp881

.noexc423:                                        ; preds = %bb.cs
  unreachable

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit424: ; preds = %bb.cr, %_ZNK4pbrt4HalfcvfEv.exit.i411, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i418
  %.0.i402 = phi float [ %i.qr, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i418 ], [ %i.rs, %_ZNK4pbrt4HalfcvfEv.exit.i411 ], [ %i.se, %bb.cr ]
  %i.sf = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %18, i64 %.sroa.0736.0.insert.insert, i32 noundef %i.sf, float noundef %.0.i402)
          to label %bb.ct unwind label %.loopexit880

bb.ct:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit424
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sg = load i64, ptr %i.ki, align 8, !tbaa !138 ; 2 uses
  %sext = shl i64 %i.sg, 32
  %i.sh = ashr exact i64 %sext, 32
  %i.si = icmp slt i64 %indvars.iv.next, %i.sh
  br i1 %i.si, label %.preheader.preheader.i664, label %._crit_edge1113, !llvm.loop !526

.preheader873:                                    ; preds = %.preheader873.preheader, %._crit_edge1118
  %i.sj = phi i64 [ %i.sm, %._crit_edge1118 ], [ %.pre1257, %.preheader873.preheader ] ; 2 uses
  %.32261119 = phi i32 [ %i.sn, %._crit_edge1118 ], [ %.2225.lcssa1422, %.preheader873.preheader ] ; 4 uses
  %i.sk = trunc i64 %i.sj to i32                  ; 2 uses
  %i.sl = icmp sgt i32 %i.sk, 0
  br i1 %i.sl, label %.lr.ph1117, label %._crit_edge1118

._crit_edge1118:                                  ; preds = %bb.da, %.preheader873
  %i.sm = phi i64 [ %i.sj, %.preheader873 ], [ %i.tt, %bb.da ]
  %i.sn = add i32 %.32261119, 1                   ; 2 uses
  %exitcond1202.not = icmp eq i32 %i.sn, %i.pe
  br i1 %exitcond1202.not, label %.loopexit886, label %.preheader873, !llvm.loop !527

.loopexit874:                                     ; preds = %bb.cv, %bb.cw
  %lpad.loopexit876 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

.loopexit.split-lp875:                            ; preds = %bb.cz
  %lpad.loopexit.split-lp877 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

.lr.ph1117:                                       ; preds = %.preheader873, %bb.da
  %indvars.iv1199 = phi i64 [ %indvars.iv.next1200, %bb.da ], [ 0, %.preheader873 ] ; 4 uses
  %i.so = phi i32 [ %i.tu, %bb.da ], [ %i.sk, %.preheader873 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !66
  %i.sp = load i32, ptr %18, align 8, !tbaa !150
  switch i32 %i.sp, label %bb.cz [
    i32 0, label %bb.cu
    i32 1, label %bb.cx
    i32 2, label %bb.cy
  ]

bb.cu:                                            ; preds = %.lr.ph1117
  %i.sq = load i32, ptr %i.kf, align 4, !tbaa !151
  %i.sr = mul nsw i32 %i.sq, %i.ku
  %i.ss = add nsw i32 %i.sr, %.32261119
  %i.st = mul nsw i32 %i.ss, %i.so
  %i.su = sext i32 %i.st to i64
  %i.sv = load ptr, ptr %i.km, align 8, !tbaa !133
  %i.sw = getelementptr i8, ptr %i.sv, i64 %i.su
  %i.sx = getelementptr i8, ptr %i.sw, i64 %indvars.iv1199 ; 3 uses
  %i.sy = load i64, ptr %i.kl, align 8, !tbaa !75 ; 2 uses
  %i.sz = and i64 %i.sy, 144115188075855871
  %i.ta = inttoptr i64 %i.sz to ptr               ; 2 uses
  %i.tb = lshr i64 %i.sy, 57
  %i.tc = trunc nuw nsw i64 %i.tb to i32
  switch i32 %i.tc, label %bb.cw [
    i32 1, label %.lr.ph.i.i.i.i.i.preheader.i432
    i32 2, label %bb.cv
  ]

.lr.ph.i.i.i.i.i.preheader.i432:                  ; preds = %bb.cu
  store i8 0, ptr %i.sx, align 1, !tbaa !46
  br label %bb.da

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZNK4pbrt17sRGBColorEncoding10FromLinearEN4pstd4spanIKfEENS2_IhEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ta, ptr nonnull %i.c, i64 1, ptr %i.sx, i64 1)
          to label %bb.da unwind label %.loopexit874

bb.cw:                                            ; preds = %bb.cu
  invoke void @_ZNK4pbrt18GammaColorEncoding10FromLinearEN4pstd4spanIKfEENS2_IhEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.ta, ptr nonnull %i.c, i64 1, ptr %i.sx, i64 1)
          to label %bb.da unwind label %.loopexit874

bb.cx:                                            ; preds = %.lr.ph1117
  %i.td = load i32, ptr %i.kf, align 4, !tbaa !151
  %i.te = mul nsw i32 %i.td, %i.ku
  %i.tf = add nsw i32 %i.te, %.32261119
  %i.tg = mul nsw i32 %i.tf, %i.so
  %i.th = sext i32 %i.tg to i64
  %i.ti = load ptr, ptr %i.kk, align 8, !tbaa !127
  %i.tj = getelementptr [2 x i8], ptr %i.ti, i64 %i.th
  %i.tk = getelementptr [2 x i8], ptr %i.tj, i64 %indvars.iv1199
  store i16 0, ptr %i.tk, align 2, !tbaa !176
  br label %bb.da

bb.cy:                                            ; preds = %.lr.ph1117
  %i.tl = load i32, ptr %i.kf, align 4, !tbaa !151
  %i.tm = mul nsw i32 %i.tl, %i.ku
  %i.tn = add nsw i32 %i.tm, %.32261119
  %i.to = mul nsw i32 %i.tn, %i.so
  %i.tp = sext i32 %i.to to i64
  %i.tq = load ptr, ptr %i.kj, align 8, !tbaa !118
  %i.tr = getelementptr [4 x i8], ptr %i.tq, i64 %i.tp
  %i.ts = getelementptr [4 x i8], ptr %i.tr, i64 %indvars.iv1199
  store float 0.000000e+00, ptr %i.ts, align 4, !tbaa !66
  br label %bb.da

bb.cz:                                            ; preds = %.lr.ph1117
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.250, i32 noundef 445, ptr noundef nonnull @.str.252) #39
          to label %.noexc435 unwind label %.loopexit.split-lp875

.noexc435:                                        ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cy, %bb.cx, %.lr.ph.i.i.i.i.i.preheader.i432, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %indvars.iv.next1200 = add nuw nsw i64 %indvars.iv1199, 1 ; 2 uses
  %i.tt = load i64, ptr %i.ki, align 8, !tbaa !138 ; 3 uses
  %i.tu = trunc i64 %i.tt to i32
  %sext1417 = shl i64 %i.tt, 32
  %i.tv = ashr exact i64 %sext1417, 32
  %i.tw = icmp slt i64 %indvars.iv.next1200, %i.tv
  br i1 %i.tw, label %.lr.ph1117, label %._crit_edge1118, !llvm.loop !528

.loopexit886:                                     ; preds = %._crit_edge1118, %._crit_edge1122, %.preheader887, %.preheader885
  %.4227 = phi i32 [ %i.ln, %._crit_edge1122 ], [ %.02231128, %.preheader885 ], [ %.02231128, %.preheader887 ], [ %i.pe, %._crit_edge1118 ]
  %indvars.iv.next1207 = add nuw nsw i64 %indvars.iv1206, 1 ; 2 uses
  %i.tx = load ptr, ptr %i.kh, align 8, !tbaa !182 ; 2 uses
  %i.ty = load ptr, ptr %12, align 8, !tbaa !184  ; 3 uses
  %i.tz = ptrtoint ptr %i.tx to i64
  %i.ua = ptrtoint ptr %i.ty to i64
  %i.ub = sub i64 %i.tz, %i.ua
  %i.uc = sdiv exact i64 %i.ub, 152               ; 2 uses
  %i.ud = icmp ugt i64 %i.uc, %indvars.iv.next1207
  br i1 %i.ud, label %bb.by, label %._crit_edge1130.loopexit, !llvm.loop !529

._crit_edge.i.i436:                               ; preds = %._crit_edge1130, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.._crit_edge.i.i436_crit_edge
  %i.ue = phi ptr [ %.pre1264, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.._crit_edge.i.i436_crit_edge ], [ %i.ky, %._crit_edge1130 ]
  %i.uf = phi ptr [ %.pre1263, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.._crit_edge.i.i436_crit_edge ], [ %i.la, %._crit_edge1130 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  store <8 x float> <float 8.000000e-01, float 1.500000e-01, float 1.500000e-01, float 1.500000e-01, float 8.000000e-01, float 1.500000e-01, float 1.500000e-01, float 1.500000e-01>, ptr %21, align 16, !tbaa !66
  %i.ug = getelementptr inbounds nuw i8, ptr %21, i64 32
  store float 8.000000e-01, ptr %i.ug, align 16, !tbaa !539
  %i.uh = load i32, ptr %i.j, align 4, !tbaa !67
  %34 = add i32 %i.uh, 10
  %35 = zext i32 %34 to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.uj = ptrtoint ptr %i.uf to i64
  %i.uk = ptrtoint ptr %i.ue to i64
  %i.ul = sub i64 %i.uj, %i.uk
  %i.um = sdiv exact i64 %i.ul, 152
  %reass.add = add nuw nsw i64 %35, 6             ; 2 uses
  %reass.mul = mul i64 %i.um, %reass.add
  %36 = trunc i64 %reass.mul to i32
  %i.un = add i32 %36, -6
  %i.uo = ptrtoint ptr %.sroa.14.1 to i64
  %i.up = ptrtoint ptr %.sroa.0770.1 to i64
  %i.uq = sub i64 %i.uo, %i.up
  %i.ur = ashr exact i64 %i.uq, 4                 ; 4 uses
  %reass.mul863 = mul i64 %reass.add, %i.ur
  %37 = trunc i64 %reass.mul863 to i32
  %i.us = add i32 %37, -6
  %spec.store.select4 = call i32 @llvm.smax.i32(i32 %i.un, i32 1) ; 2 uses
  %spec.store.select3 = call i32 @llvm.smax.i32(i32 %i.us, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  %i.ut = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %i.ut, ptr %23, align 8, !tbaa !42
  store i8 82, ptr %i.ut, align 8, !tbaa !46
  %i.uu = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %i.uu, align 8, !tbaa !45
  %i.uv = getelementptr inbounds nuw i8, ptr %23, i64 17
  store i8 0, ptr %i.uv, align 1, !tbaa !46
  %i.uw = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ux = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  store ptr %i.ux, ptr %i.uw, align 8, !tbaa !42
  store i8 71, ptr %i.ux, align 8, !tbaa !46
  %i.uy = getelementptr inbounds nuw i8, ptr %23, i64 40
  store i64 1, ptr %i.uy, align 8, !tbaa !45
  %i.uz = getelementptr inbounds nuw i8, ptr %23, i64 49
  store i8 0, ptr %i.uz, align 1, !tbaa !46
  %i.va = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.vb = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  store ptr %i.vb, ptr %i.va, align 8, !tbaa !42
  store i8 66, ptr %i.vb, align 8, !tbaa !46
  %i.vc = getelementptr inbounds nuw i8, ptr %23, i64 72
  store i64 1, ptr %i.vc, align 8, !tbaa !45
  %i.vd = getelementptr inbounds nuw i8, ptr %23, i64 81
  store i8 0, ptr %i.vd, align 1, !tbaa !46
  store i64 0, ptr %24, align 8, !tbaa !75
  %i.ve = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  %.sroa.2731.0.insert.ext = zext nneg i32 %spec.store.select3 to i64
  %.sroa.2731.0.insert.shift = shl nuw nsw i64 %.sroa.2731.0.insert.ext, 32
  %.sroa.0730.0.insert.ext = zext nneg i32 %spec.store.select4 to i64
  %.sroa.0730.0.insert.insert = or disjoint i64 %.sroa.2731.0.insert.shift, %.sroa.0730.0.insert.ext
  %i.vf = ptrtoint ptr %i.ve to i64
  invoke void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %22, i32 noundef 2, i64 %.sroa.0730.0.insert.insert, ptr nonnull %23, i64 3, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %24, i64 %i.vf)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %._crit_edge.i.i436
  %i.vg = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !48 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  %i.vj = icmp eq ptr %i.vh, %i.vi
  br i1 %i.vj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448: ; preds = %bb.db
  %i.vk = load i64, ptr %i.vi, align 8, !tbaa !46
  %i.vl = add i64 %i.vk, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vl) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448
  %i.vm = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !48 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.vp = icmp eq ptr %i.vn, %i.vo
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  %i.vq = load i64, ptr %i.vo, align 8, !tbaa !46
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vr) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448.1
  %i.vs = load ptr, ptr %23, align 8, !tbaa !48   ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.vu = icmp eq ptr %i.vs, %i.vt
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450.1
  %i.vv = load i64, ptr %i.vt, align 8, !tbaa !46
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448.2
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  %i.vx = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 9 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 9 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %22, i64 128 ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %22, i64 96 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 3 uses
  br label %.preheader866

.preheader866:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450.2, %bb.de
  %.02391137 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450.2 ], [ %i.wx, %bb.de ] ; 10 uses
  br label %.preheader865

bb.dc:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #37
  store i64 %i.ur, ptr %i.k, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #37
  store i64 3, ptr %i.l, align 8, !tbaa !47
  %i.wd = icmp ult i64 %i.ur, 4
  br i1 %i.wd, label %._crit_edge.i.i475, label %bb.dy

bb.dd:                                            ; preds = %._crit_edge.i.i436
  %i.we = landingpad { ptr, i32 }
          cleanup
  %i.wf = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !48 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  %i.wi = icmp eq ptr %i.wg, %i.wh
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451: ; preds = %bb.dd
  %i.wj = load i64, ptr %i.wh, align 8, !tbaa !46
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451
  %i.wl = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !48 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.wo = icmp eq ptr %i.wm, %i.wn
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453
  %i.wp = load i64, ptr %i.wn, align 8, !tbaa !46
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451.1
  %i.wr = load ptr, ptr %23, align 8, !tbaa !48   ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.wt = icmp eq ptr %i.wr, %i.ws
  br i1 %i.wt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.1
  %i.wu = load i64, ptr %i.ws, align 8, !tbaa !46
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %i.wr, i64 noundef %i.wv) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451.2
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br label %bb.fx

.preheader865:                                    ; preds = %.preheader866, %bb.dx
  %.02381136 = phi i32 [ 0, %.preheader866 ], [ %i.aay, %bb.dx ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !66
  %i.ww = load i32, ptr %22, align 8, !tbaa !150
  switch i32 %i.ww, label %bb.dk [
    i32 0, label %bb.df
    i32 1, label %bb.di
    i32 2, label %bb.dj
  ]

bb.de:                                            ; preds = %bb.dx
  %i.wx = add nuw nsw i32 %.02391137, 1           ; 2 uses
  %exitcond1218.not = icmp eq i32 %i.wx, %spec.store.select3
  br i1 %exitcond1218.not, label %bb.dc, label %.preheader866, !llvm.loop !530

bb.df:                                            ; preds = %.preheader865
  %i.wy = load i64, ptr %i.vx, align 8, !tbaa !138
  %i.wz = trunc i64 %i.wy to i32
  %i.xa = load i32, ptr %i.vy, align 4, !tbaa !151
  %i.xb = mul nsw i32 %i.xa, %.02391137
  %i.xc = add nsw i32 %i.xb, %.02381136
  %i.xd = mul nsw i32 %i.xc, %i.wz
  %i.xe = sext i32 %i.xd to i64
  %i.xf = load ptr, ptr %i.wc, align 8, !tbaa !133
  %i.xg = getelementptr i8, ptr %i.xf, i64 %i.xe  ; 3 uses
  %i.xh = load i64, ptr %i.wb, align 8, !tbaa !75 ; 2 uses
  %i.xi = and i64 %i.xh, 144115188075855871
  %i.xj = inttoptr i64 %i.xi to ptr               ; 2 uses
  %i.xk = lshr i64 %i.xh, 57
  %i.xl = trunc nuw nsw i64 %i.xk to i32
  switch i32 %i.xl, label %bb.dh [
    i32 1, label %.lr.ph.i.i.i.i.i.preheader.i470
    i32 2, label %bb.dg
  ]

.lr.ph.i.i.i.i.i.preheader.i470:                  ; preds = %bb.df
  store i8 -1, ptr %i.xg, align 1, !tbaa !46
  br label %bb.dl

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZNK4pbrt17sRGBColorEncoding10FromLinearEN4pstd4spanIKfEENS2_IhEE(ptr noundef nonnull align 1 dereferenceable(1) %i.xj, ptr nonnull %i.b, i64 1, ptr %i.xg, i64 1)
          to label %bb.dl unwind label %.loopexit

bb.dh:                                            ; preds = %bb.df
  invoke void @_ZNK4pbrt18GammaColorEncoding10FromLinearEN4pstd4spanIKfEENS2_IhEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.xj, ptr nonnull %i.b, i64 1, ptr %i.xg, i64 1)
          to label %bb.dl unwind label %.loopexit

bb.di:                                            ; preds = %.preheader865
  %i.xm = load i64, ptr %i.vx, align 8, !tbaa !138
  %i.xn = trunc i64 %i.xm to i32
  %i.xo = load i32, ptr %i.vy, align 4, !tbaa !151
  %i.xp = mul nsw i32 %i.xo, %.02391137
  %i.xq = add nsw i32 %i.xp, %.02381136
  %i.xr = mul nsw i32 %i.xq, %i.xn
  %i.xs = sext i32 %i.xr to i64
  %i.xt = load ptr, ptr %i.wa, align 8, !tbaa !127
  %i.xu = getelementptr [2 x i8], ptr %i.xt, i64 %i.xs
end_hunk_0
