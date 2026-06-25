inline.NumInlined: 6772
inline.NumDeleted: 1981
begin_hunk_0_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
.body49.i383:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406, %.loopexit.split-lp.loopexit.i430, %.loopexit.i457, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454
  %eh.lpad-body50.i384 = phi { ptr, i32 } [ %i.bue, %bb.ou ], [ %.pn.i.i.i.i.i463, %bb.nf ], [ %i.bnk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454 ], [ %i.bmm, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i408, %bb.oi ], [ %i.bry, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403 ], [ %.pn.i.i.i.i.i.i.i.i.i433, %bb.pf ], [ %i.bvc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427 ], [ %lpad.loopexit.split-lp.i382, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381 ], [ %lpad.loopexit.i458, %.loopexit.i457 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i430 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406 ], [ %i.bra, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i364

.body.i364:                                       ; preds = %.body49.i383, %bb.md
  %.pn.i365 = phi { ptr, i32 } [ %eh.lpad-body50.i384, %.body49.i383 ], [ %i.bjk, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357
  %i.bvq = load i32, ptr %i.bhw, align 4, !tbaa !288
  %i.bvr = icmp eq i32 %i.bvq, 1
  %i.bvs = load i32, ptr %i.bhy, align 4, !tbaa !288
  %i.bvt = icmp eq i32 %i.bvs, 1                  ; 2 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bho, i64 28
  %i.bvv = load i32, ptr %i.bvu, align 4, !tbaa !291 ; 14 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bho, i64 32
  %i.bvx = load i32, ptr %i.bvw, align 8, !tbaa !300 ; 9 uses
  %i.bvy = sub i32 %i.bvx, %i.bvv
  %i.bvz = and i32 %i.bvy, -4                     ; 17 uses
  %i.bwa = sext i32 %i.bvz to i64                 ; 5 uses
  %i.bwb = icmp ult i32 %i.bvv, %i.bvz            ; 4 uses
  br i1 %i.bvr, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bwd = load i64, ptr %i.bwc, align 8, !tbaa !537 ; 4 uses
  br i1 %i.bvt, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bhq, i64 168
  %i.bwf = load i64, ptr %i.bwe, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bwb, label %iter.check, label %.preheader.i.i488

iter.check:                                       ; preds = %bb.pl
  %i.bwg = insertelement <4 x i64> poison, i64 %i.bwd, i64 0
  %i.bwh = insertelement <4 x i64> poison, i64 %i.bwf, i64 0
  %i.bwi = icmp eq <4 x i64> %i.bwg, %i.bwh
  %i.bwj = shufflevector <4 x i1> %i.bwi, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bwk = bitcast <4 x i1> %i.bwj to i4
  %i.bwl = zext i4 %i.bwk to i8                   ; 4 uses
  %i.bwm = shl nuw i8 %i.bwl, 4                   ; 3 uses
  %i.bwn = add i32 %i.bvv, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvz, i32 %i.bwn)
  %i.bwo = xor i32 %i.bvv, -1
  %i.bwp = add i32 %umax, %i.bwo                  ; 3 uses
  %i.bwq = lshr i32 %i.bwp, 3
  %i.bwr = add nuw nsw i32 %i.bwq, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bwp, 56
  br i1 %min.iters.check, label %.lr.ph.i.i490.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1431 = icmp ult i32 %i.bwp, 248
  br i1 %min.iters.check1431, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.bwr, 24
  %n.vec = and i32 %i.bwr, 1073741792             ; 4 uses
  %i.bws = shl i32 %n.vec, 3
  %i.bwt = add i32 %i.bvv, %i.bws                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bwl, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1432 = insertelement <32 x i8> poison, i8 %i.bwm, i64 0
  %broadcast.splat1433 = shufflevector <32 x i8> %broadcast.splatinsert1432, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1434 = insertelement <32 x i32> poison, i32 %i.bvz, i64 0
  %broadcast.splat1435 = shufflevector <32 x i32> %broadcast.splatinsert1434, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1436 = insertelement <32 x i32> poison, i32 %i.bvv, i64 0
  %broadcast.splat1437 = shufflevector <32 x i32> %broadcast.splatinsert1436, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1437, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwu = shl i32 %index, 3
  %i.bwv = add i32 %i.bvv, %i.bwu                 ; 5 uses
  %i.bww = add i32 %i.bwv, 8
  %i.bwx = add i32 %i.bwv, 16
  %i.bwy = add i32 %i.bwv, 24
  %i.bwz = sdiv i32 %i.bwv, 8
  %i.bxa = sdiv i32 %i.bww, 8
  %i.bxb = sdiv i32 %i.bwx, 8
  %i.bxc = sdiv i32 %i.bwy, 8
  %i.bxd = sext i32 %i.bwz to i64
  %i.bxe = sext i32 %i.bxa to i64
  %i.bxf = sext i32 %i.bxb to i64
  %i.bxg = sext i32 %i.bxc to i64
  %i.bxh = insertelement <4 x i32> poison, i32 %i.bwv, i64 0
  %i.bxi = shufflevector <4 x i32> %i.bxh, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bxj = add <4 x i32> %i.bxi, <i32 32, i32 40, i32 48, i32 56>
  %i.bxk = sdiv <4 x i32> %i.bxj, splat (i32 8)   ; 4 uses
  %i.bxl = add <4 x i32> %i.bxi, <i32 64, i32 72, i32 80, i32 88>
  %i.bxm = sdiv <4 x i32> %i.bxl, splat (i32 8)   ; 4 uses
  %i.bxn = add <4 x i32> %i.bxi, <i32 96, i32 104, i32 112, i32 120>
  %i.bxo = sdiv <4 x i32> %i.bxn, splat (i32 8)   ; 4 uses
  %i.bxp = add <4 x i32> %i.bxi, <i32 128, i32 136, i32 144, i32 152>
  %i.bxq = sdiv <4 x i32> %i.bxp, splat (i32 8)   ; 4 uses
  %i.bxr = add <4 x i32> %i.bxi, <i32 160, i32 168, i32 176, i32 184>
  %i.bxs = sdiv <4 x i32> %i.bxr, splat (i32 8)   ; 4 uses
  %i.bxt = add <4 x i32> %i.bxi, <i32 192, i32 200, i32 208, i32 216>
  %i.bxu = sdiv <4 x i32> %i.bxt, splat (i32 8)   ; 4 uses
  %i.bxv = add <4 x i32> %i.bxi, <i32 224, i32 232, i32 240, i32 248>
  %i.bxw = sdiv <4 x i32> %i.bxv, splat (i32 8)   ; 4 uses
  %i.bxx = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxd
  %i.bxy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxe
  %i.bxz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxf
  %i.bya = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxg
  %i.byb = extractelement <4 x i32> %i.bxk, i64 0
  %i.byc = sext i32 %i.byb to i64
  %i.byd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byc
  %i.bye = extractelement <4 x i32> %i.bxk, i64 1
  %i.byf = sext i32 %i.bye to i64
  %i.byg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byf
  %i.byh = extractelement <4 x i32> %i.bxk, i64 2
  %i.byi = sext i32 %i.byh to i64
  %i.byj = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byi
  %i.byk = extractelement <4 x i32> %i.bxk, i64 3
  %i.byl = sext i32 %i.byk to i64
  %i.bym = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byl
  %i.byn = extractelement <4 x i32> %i.bxm, i64 0
  %i.byo = sext i32 %i.byn to i64
  %i.byp = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byo
  %i.byq = extractelement <4 x i32> %i.bxm, i64 1
  %i.byr = sext i32 %i.byq to i64
  %i.bys = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byr
  %i.byt = extractelement <4 x i32> %i.bxm, i64 2
  %i.byu = sext i32 %i.byt to i64
  %i.byv = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byu
  %i.byw = extractelement <4 x i32> %i.bxm, i64 3
  %i.byx = sext i32 %i.byw to i64
  %i.byy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byx
  %i.byz = extractelement <4 x i32> %i.bxo, i64 0
  %i.bza = sext i32 %i.byz to i64
  %i.bzb = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bza
  %i.bzc = extractelement <4 x i32> %i.bxo, i64 1
  %i.bzd = sext i32 %i.bzc to i64
  %i.bze = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzd
  %i.bzf = extractelement <4 x i32> %i.bxo, i64 2
  %i.bzg = sext i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzg
  %i.bzi = extractelement <4 x i32> %i.bxo, i64 3
  %i.bzj = sext i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzj
  %i.bzl = extractelement <4 x i32> %i.bxq, i64 0
  %i.bzm = sext i32 %i.bzl to i64
  %i.bzn = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzm
  %i.bzo = extractelement <4 x i32> %i.bxq, i64 1
  %i.bzp = sext i32 %i.bzo to i64
  %i.bzq = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzp
  %i.bzr = extractelement <4 x i32> %i.bxq, i64 2
  %i.bzs = sext i32 %i.bzr to i64
  %i.bzt = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzs
  %i.bzu = extractelement <4 x i32> %i.bxq, i64 3
  %i.bzv = sext i32 %i.bzu to i64
  %i.bzw = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzv
  %i.bzx = extractelement <4 x i32> %i.bxs, i64 0
  %i.bzy = sext i32 %i.bzx to i64
  %i.bzz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzy
  %i.caa = extractelement <4 x i32> %i.bxs, i64 1
  %i.cab = sext i32 %i.caa to i64
  %i.cac = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cab
  %i.cad = extractelement <4 x i32> %i.bxs, i64 2
  %i.cae = sext i32 %i.cad to i64
  %i.caf = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cae
  %i.cag = extractelement <4 x i32> %i.bxs, i64 3
  %i.cah = sext i32 %i.cag to i64
  %i.cai = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cah
  %i.caj = extractelement <4 x i32> %i.bxu, i64 0
  %i.cak = sext i32 %i.caj to i64
  %i.cal = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cak
  %i.cam = extractelement <4 x i32> %i.bxu, i64 1
  %i.can = sext i32 %i.cam to i64
  %i.cao = getelementptr inbounds i8, ptr %i.bhv, i64 %i.can
  %i.cap = extractelement <4 x i32> %i.bxu, i64 2
  %i.caq = sext i32 %i.cap to i64
  %i.car = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caq
  %i.cas = extractelement <4 x i32> %i.bxu, i64 3
  %i.cat = sext i32 %i.cas to i64
  %i.cau = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cat
  %i.cav = extractelement <4 x i32> %i.bxw, i64 0
  %i.caw = sext i32 %i.cav to i64
  %i.cax = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caw
  %i.cay = extractelement <4 x i32> %i.bxw, i64 1
  %i.caz = sext i32 %i.cay to i64
  %i.cba = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caz
  %i.cbb = extractelement <4 x i32> %i.bxw, i64 2
  %i.cbc = sext i32 %i.cbb to i64
  %i.cbd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbc
  %i.cbe = extractelement <4 x i32> %i.bxw, i64 3
  %i.cbf = sext i32 %i.cbe to i64
  %i.cbg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbf
  %i.cbh = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cbi = icmp ult <32 x i32> %i.cbh, %broadcast.splat1435
  %i.cbj = select <32 x i1> %i.cbi, <32 x i8> %broadcast.splat1433, <32 x i8> zeroinitializer
  %i.cbk = or disjoint <32 x i8> %i.cbj, %broadcast.splat ; 32 uses
  %i.cbl = extractelement <32 x i8> %i.cbk, i64 0
  store i8 %i.cbl, ptr %i.bxx, align 1, !tbaa !32
  %i.cbm = extractelement <32 x i8> %i.cbk, i64 1
  store i8 %i.cbm, ptr %i.bxy, align 1, !tbaa !32
  %i.cbn = extractelement <32 x i8> %i.cbk, i64 2
  store i8 %i.cbn, ptr %i.bxz, align 1, !tbaa !32
  %i.cbo = extractelement <32 x i8> %i.cbk, i64 3
  store i8 %i.cbo, ptr %i.bya, align 1, !tbaa !32
  %i.cbp = extractelement <32 x i8> %i.cbk, i64 4
  store i8 %i.cbp, ptr %i.byd, align 1, !tbaa !32
  %i.cbq = extractelement <32 x i8> %i.cbk, i64 5
  store i8 %i.cbq, ptr %i.byg, align 1, !tbaa !32
  %i.cbr = extractelement <32 x i8> %i.cbk, i64 6
  store i8 %i.cbr, ptr %i.byj, align 1, !tbaa !32
  %i.cbs = extractelement <32 x i8> %i.cbk, i64 7
  store i8 %i.cbs, ptr %i.bym, align 1, !tbaa !32
  %i.cbt = extractelement <32 x i8> %i.cbk, i64 8
  store i8 %i.cbt, ptr %i.byp, align 1, !tbaa !32
  %i.cbu = extractelement <32 x i8> %i.cbk, i64 9
  store i8 %i.cbu, ptr %i.bys, align 1, !tbaa !32
  %i.cbv = extractelement <32 x i8> %i.cbk, i64 10
  store i8 %i.cbv, ptr %i.byv, align 1, !tbaa !32
  %i.cbw = extractelement <32 x i8> %i.cbk, i64 11
  store i8 %i.cbw, ptr %i.byy, align 1, !tbaa !32
  %i.cbx = extractelement <32 x i8> %i.cbk, i64 12
  store i8 %i.cbx, ptr %i.bzb, align 1, !tbaa !32
  %i.cby = extractelement <32 x i8> %i.cbk, i64 13
  store i8 %i.cby, ptr %i.bze, align 1, !tbaa !32
  %i.cbz = extractelement <32 x i8> %i.cbk, i64 14
  store i8 %i.cbz, ptr %i.bzh, align 1, !tbaa !32
  %i.cca = extractelement <32 x i8> %i.cbk, i64 15
  store i8 %i.cca, ptr %i.bzk, align 1, !tbaa !32
  %69 = extractelement <32 x i8> %i.cbk, i64 16
  store i8 %69, ptr %i.bzn, align 1, !tbaa !32
  %70 = extractelement <32 x i8> %i.cbk, i64 17
  store i8 %70, ptr %i.bzq, align 1, !tbaa !32
  %71 = extractelement <32 x i8> %i.cbk, i64 18
  store i8 %71, ptr %i.bzt, align 1, !tbaa !32
  %72 = extractelement <32 x i8> %i.cbk, i64 19
  store i8 %72, ptr %i.bzw, align 1, !tbaa !32
  %73 = extractelement <32 x i8> %i.cbk, i64 20
  store i8 %73, ptr %i.bzz, align 1, !tbaa !32
  %74 = extractelement <32 x i8> %i.cbk, i64 21
  store i8 %74, ptr %i.cac, align 1, !tbaa !32
  %75 = extractelement <32 x i8> %i.cbk, i64 22
  store i8 %75, ptr %i.caf, align 1, !tbaa !32
  %76 = extractelement <32 x i8> %i.cbk, i64 23
  store i8 %76, ptr %i.cai, align 1, !tbaa !32
  %77 = extractelement <32 x i8> %i.cbk, i64 24
  store i8 %77, ptr %i.cal, align 1, !tbaa !32
  %78 = extractelement <32 x i8> %i.cbk, i64 25
  store i8 %78, ptr %i.cao, align 1, !tbaa !32
  %79 = extractelement <32 x i8> %i.cbk, i64 26
  store i8 %79, ptr %i.car, align 1, !tbaa !32
  %80 = extractelement <32 x i8> %i.cbk, i64 27
  store i8 %80, ptr %i.cau, align 1, !tbaa !32
  %81 = extractelement <32 x i8> %i.cbk, i64 28
  store i8 %81, ptr %i.cax, align 1, !tbaa !32
  %82 = extractelement <32 x i8> %i.cbk, i64 29
  store i8 %82, ptr %i.cba, align 1, !tbaa !32
  %83 = extractelement <32 x i8> %i.cbk, i64 30
  store i8 %83, ptr %i.cbd, align 1, !tbaa !32
  %84 = extractelement <32 x i8> %i.cbk, i64 31
  store i8 %84, ptr %i.cbg, align 1, !tbaa !32
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 256)
  %i.ccb = icmp eq i32 %index.next, %n.vec
  br i1 %i.ccb, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.bwr, %n.vec
  br i1 %cmp.n, label %.preheader.i.i488, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i490.preheader, label %vec.epilog.ph, !prof !546

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.bwt, %vec.epilog.iter.check ], [ %i.bvv, %vector.main.loop.iter.check ]
  %n.vec1439 = and i32 %i.bwr, 1073741816         ; 3 uses
  %i.ccc = shl i32 %n.vec1439, 3
  %i.ccd = add i32 %i.bvv, %i.ccc
  %broadcast.splatinsert1440 = insertelement <8 x i8> poison, i8 %i.bwl, i64 0
  %broadcast.splat1441 = shufflevector <8 x i8> %broadcast.splatinsert1440, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1442 = insertelement <8 x i8> poison, i8 %i.bwm, i64 0
  %broadcast.splat1443 = shufflevector <8 x i8> %broadcast.splatinsert1442, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1444 = insertelement <8 x i32> poison, i32 %i.bvz, i64 0
  %broadcast.splat1445 = shufflevector <8 x i32> %broadcast.splatinsert1444, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1446 = insertelement <8 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat1447 = shufflevector <8 x i32> %broadcast.splatinsert1446, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1448 = add nsw <8 x i32> %broadcast.splat1447, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1449 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1451, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind1450 = phi <8 x i32> [ %induction1448, %vec.epilog.ph ], [ %vec.ind.next1452, %vec.epilog.vector.body ] ; 2 uses
  %i.cce = shl i32 %index1449, 3
  %i.ccf = add i32 %i.bvv, %i.cce                 ; 5 uses
  %i.ccg = add i32 %i.ccf, 8
  %i.cch = add i32 %i.ccf, 16
  %i.cci = add i32 %i.ccf, 24
  %i.ccj = sdiv i32 %i.ccf, 8
  %i.cck = sdiv i32 %i.ccg, 8
  %i.ccl = sdiv i32 %i.cch, 8
  %i.ccm = sdiv i32 %i.cci, 8
  %i.ccn = sext i32 %i.ccj to i64
  %i.cco = sext i32 %i.cck to i64
  %i.ccp = sext i32 %i.ccl to i64
  %i.ccq = sext i32 %i.ccm to i64
  %i.ccr = insertelement <4 x i32> poison, i32 %i.ccf, i64 0
  %i.ccs = shufflevector <4 x i32> %i.ccr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cct = add <4 x i32> %i.ccs, <i32 32, i32 40, i32 48, i32 56>
  %i.ccu = sdiv <4 x i32> %i.cct, splat (i32 8)   ; 4 uses
  %i.ccv = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ccn
  %i.ccw = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cco
  %i.ccx = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ccp
  %i.ccy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ccq
  %i.ccz = extractelement <4 x i32> %i.ccu, i64 0
  %i.cda = sext i32 %i.ccz to i64
  %i.cdb = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cda
  %i.cdc = extractelement <4 x i32> %i.ccu, i64 1
  %i.cdd = sext i32 %i.cdc to i64
  %i.cde = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cdd
  %i.cdf = extractelement <4 x i32> %i.ccu, i64 2
  %i.cdg = sext i32 %i.cdf to i64
  %i.cdh = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cdg
  %i.cdi = extractelement <4 x i32> %i.ccu, i64 3
  %i.cdj = sext i32 %i.cdi to i64
  %i.cdk = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cdj
  %i.cdl = add nuw <8 x i32> %vec.ind1450, splat (i32 4)
  %i.cdm = icmp ult <8 x i32> %i.cdl, %broadcast.splat1445
  %i.cdn = select <8 x i1> %i.cdm, <8 x i8> %broadcast.splat1443, <8 x i8> zeroinitializer
  %i.cdo = or disjoint <8 x i8> %i.cdn, %broadcast.splat1441 ; 8 uses
  %i.cdp = extractelement <8 x i8> %i.cdo, i64 0
  store i8 %i.cdp, ptr %i.ccv, align 1, !tbaa !32
  %i.cdq = extractelement <8 x i8> %i.cdo, i64 1
  store i8 %i.cdq, ptr %i.ccw, align 1, !tbaa !32
  %i.cdr = extractelement <8 x i8> %i.cdo, i64 2
  store i8 %i.cdr, ptr %i.ccx, align 1, !tbaa !32
  %i.cds = extractelement <8 x i8> %i.cdo, i64 3
  store i8 %i.cds, ptr %i.ccy, align 1, !tbaa !32
  %85 = extractelement <8 x i8> %i.cdo, i64 4
  store i8 %85, ptr %i.cdb, align 1, !tbaa !32
  %86 = extractelement <8 x i8> %i.cdo, i64 5
  store i8 %86, ptr %i.cde, align 1, !tbaa !32
  %87 = extractelement <8 x i8> %i.cdo, i64 6
  store i8 %87, ptr %i.cdh, align 1, !tbaa !32
  %88 = extractelement <8 x i8> %i.cdo, i64 7
  store i8 %88, ptr %i.cdk, align 1, !tbaa !32
  %index.next1451 = add nuw i32 %index1449, 8     ; 2 uses
  %vec.ind.next1452 = add nsw <8 x i32> %vec.ind1450, splat (i32 64)
  %i.cdt = icmp eq i32 %index.next1451, %n.vec1439
  br i1 %i.cdt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !547

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1453 = icmp eq i32 %i.bwr, %n.vec1439
  br i1 %cmp.n1453, label %.preheader.i.i488, label %.lr.ph.i.i490.preheader

.lr.ph.i.i490.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03241.i.i.ph = phi i32 [ %i.bvv, %iter.check ], [ %i.bwt, %vec.epilog.iter.check ], [ %i.ccd, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i490

.preheader.i.i488:                                ; preds = %.lr.ph.i.i490, %middle.block, %vec.epilog.middle.block, %bb.pl
  %i.cdu = sext i32 %i.bvx to i64                 ; 2 uses
  %i.cdv = icmp ult i32 %i.bvz, %i.bvx
  br i1 %i.cdv, label %.lr.ph43.i.preheader.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph43.i.preheader.i:                           ; preds = %.preheader.i.i488
  %i.cdw = icmp eq i64 %i.bwd, %i.bwf
  br i1 %i.cdw, label %.lr.ph43.i.us.i, label %.lr.ph43.i.i

.lr.ph43.i.us.i:                                  ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.us.i
  %.042.i.us.i = phi i64 [ %i.cee, %.lr.ph43.i.us.i ], [ %i.bwa, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cdx = lshr i64 %.042.i.us.i, 3
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.cdx ; 2 uses
  %i.cdz = load i8, ptr %i.cdy, align 1, !tbaa !32
  %i.cea = trunc i64 %.042.i.us.i to i8
  %i.ceb = and i8 %i.cea, 7
  %i.cec = shl nuw i8 1, %i.ceb
  %i.ced = or i8 %i.cec, %i.cdz
  store i8 %i.ced, ptr %i.cdy, align 1, !tbaa !32
  %i.cee = add nuw i64 %.042.i.us.i, 1            ; 2 uses
  %i.cef = icmp ult i64 %i.cee, %i.cdu
  br i1 %i.cef, label %.lr.ph43.i.us.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !548

.lr.ph.i.i490:                                    ; preds = %.lr.ph.i.i490.preheader, %.lr.ph.i.i490
  %.03241.i.i = phi i32 [ %i.cel, %.lr.ph.i.i490 ], [ %.03241.i.i.ph, %.lr.ph.i.i490.preheader ] ; 3 uses
  %i.ceg = sdiv i32 %.03241.i.i, 8
  %i.ceh = sext i32 %i.ceg to i64
  %i.cei = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ceh
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.cej = icmp ult i32 %invariant.op.i.i, %i.bvz
  %i.cek = select i1 %i.cej, i8 %i.bwm, i8 0
  %spec.select.i = or disjoint i8 %i.cek, %i.bwl
  store i8 %spec.select.i, ptr %i.cei, align 1, !tbaa !32
  %i.cel = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cem = icmp ult i32 %i.cel, %i.bvz
  br i1 %i.cem, label %.lr.ph.i.i490, label %.preheader.i.i488, !llvm.loop !549

.lr.ph43.i.i:                                     ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.i
  %.042.i.i = phi i64 [ %i.ceu, %.lr.ph43.i.i ], [ %i.bwa, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cen = lshr i64 %.042.i.i, 3
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.cen ; 2 uses
  %i.cep = load i8, ptr %i.ceo, align 1, !tbaa !32
  %i.ceq = and i64 %.042.i.i, 7
  %i.cer = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ceq
  %i.ces = load i8, ptr %i.cer, align 1, !tbaa !32
  %i.cet = and i8 %i.ces, %i.cep
  store i8 %i.cet, ptr %i.ceo, align 1, !tbaa !32
  %i.ceu = add nuw i64 %.042.i.i, 1               ; 2 uses
  %i.cev = icmp ult i64 %i.ceu, %i.cdu
  br i1 %i.cev, label %.lr.ph43.i.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !548

bb.pm:                                            ; preds = %bb.pk
  %i.cew = getelementptr inbounds nuw i8, ptr %i.bhq, i64 144
  %i.cex = load ptr, ptr %i.cew, align 8, !tbaa !550 ; 3 uses
  br i1 %i.bwb, label %.lr.ph.preheader.i.i, label %.preheader.i56.i487

.lr.ph.preheader.i.i:                             ; preds = %bb.pm
  %i.cey = sext i32 %i.bvv to i64
  %i.cez = insertelement <4 x i64> poison, i64 %i.bwd, i64 0
  %i.cfa = shufflevector <4 x i64> %i.cez, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pn

.preheader.i56.i487:                              ; preds = %.critedge.i62.i, %bb.pm
  %i.cfb = sext i32 %i.bvx to i64
  %i.cfc = icmp ult i32 %i.bvz, %i.bvx
  br i1 %i.cfc, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i

.critedge.i62.i:                                  ; preds = %bb.po, %bb.pn
  %indvars.iv.next.i63.i = add nsw i64 %indvars.iv.i61.i, 8 ; 2 uses
  %i.cfd = trunc nsw i64 %indvars.iv.next.i63.i to i32
  %i.cfe = icmp ugt i32 %i.bvz, %i.cfd
  br i1 %i.cfe, label %bb.pn, label %.preheader.i56.i487, !llvm.loop !552

bb.pn:                                            ; preds = %.critedge.i62.i, %.lr.ph.preheader.i.i
  %indvars.iv.i61.i = phi i64 [ %i.cey, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i63.i, %.critedge.i62.i ] ; 4 uses
  %i.cff = trunc nsw i64 %indvars.iv.i61.i to i32
  %i.cfg = sdiv i32 %i.cff, 8
  %i.cfh = sext i32 %i.cfg to i64
  %i.cfi = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cfh ; 3 uses
  store i8 0, ptr %i.cfi, align 1, !tbaa !32
  %i.cfj = getelementptr inbounds [8 x i8], ptr %i.cex, i64 %indvars.iv.i61.i
  %i.cfk = load <4 x i64>, ptr %i.cfj, align 1, !tbaa !32, !noalias !553
  %i.cfl = icmp eq <4 x i64> %i.cfa, %i.cfk
  %i.cfm = bitcast <4 x i1> %i.cfl to i4
  %i.cfn = zext i4 %i.cfm to i8                   ; 2 uses
  store i8 %i.cfn, ptr %i.cfi, align 1, !tbaa !32
  %i.cfo = add nuw nsw i64 %indvars.iv.i61.i, 4   ; 2 uses
  %i.cfp = trunc nsw i64 %i.cfo to i32
  %i.cfq = icmp ugt i32 %i.bvz, %i.cfp
  br i1 %i.cfq, label %bb.po, label %.critedge.i62.i

bb.po:                                            ; preds = %bb.pn
  %i.cfr = getelementptr inbounds [8 x i8], ptr %i.cex, i64 %i.cfo
  %i.cfs = load <4 x i64>, ptr %i.cfr, align 1, !tbaa !32, !noalias !553
  %i.cft = icmp eq <4 x i64> %i.cfa, %i.cfs
  %i.cfu = bitcast <4 x i1> %i.cft to i4
  %i.cfv = zext i4 %i.cfu to i8
  %i.cfw = shl nuw i8 %i.cfv, 4
  %i.cfx = or disjoint i8 %i.cfw, %i.cfn
  store i8 %i.cfx, ptr %i.cfi, align 1, !tbaa !32
  br label %.critedge.i62.i

.lr.ph43.i57.i:                                   ; preds = %.preheader.i56.i487, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i
  %.042.i58.i = phi i64 [ %i.cgm, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i ], [ %i.bwa, %.preheader.i56.i487 ] ; 5 uses
  %i.cfy = getelementptr inbounds nuw [8 x i8], ptr %i.cex, i64 %.042.i58.i
  %i.cfz = load i64, ptr %i.cfy, align 8, !tbaa !176
  %i.cga = icmp eq i64 %i.bwd, %i.cfz
  %i.cgb = lshr i64 %.042.i58.i, 3
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.cgb ; 2 uses
  %i.cgd = load i8, ptr %i.cgc, align 1, !tbaa !32 ; 2 uses
  br i1 %i.cga, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %.lr.ph43.i57.i
  %i.cge = trunc i64 %.042.i58.i to i8
  %i.cgf = and i8 %i.cge, 7
  %i.cgg = shl nuw i8 1, %i.cgf
  %i.cgh = or i8 %i.cgg, %i.cgd
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i

bb.pq:                                            ; preds = %.lr.ph43.i57.i
  %i.cgi = and i64 %.042.i58.i, 7
  %i.cgj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cgi
  %i.cgk = load i8, ptr %i.cgj, align 1, !tbaa !32
  %i.cgl = and i8 %i.cgk, %i.cgd
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i: ; preds = %bb.pq, %bb.pp
  %.sink.i.i60.i = phi i8 [ %i.cgl, %bb.pq ], [ %i.cgh, %bb.pp ]
  store i8 %.sink.i.i60.i, ptr %i.cgc, align 1, !tbaa !32
  %i.cgm = add nuw i64 %.042.i58.i, 1             ; 2 uses
  %i.cgn = icmp ult i64 %i.cgm, %i.cfb
  br i1 %i.cgn, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !560

bb.pr:                                            ; preds = %bb.pj
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.cgp = load ptr, ptr %i.cgo, align 8, !tbaa !550 ; 6 uses
  br i1 %i.bvt, label %bb.ps, label %bb.px

bb.ps:                                            ; preds = %bb.pr
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.bhq, i64 168
  %i.cgr = load i64, ptr %i.cgq, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bwb, label %.lr.ph.preheader.i69.i, label %.preheader.i64.i

.lr.ph.preheader.i69.i:                           ; preds = %bb.ps
  %i.cgs = sext i32 %i.bvv to i64
  %i.cgt = insertelement <4 x i64> poison, i64 %i.cgr, i64 0
  %i.cgu = shufflevector <4 x i64> %i.cgt, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pt

.preheader.i64.i:                                 ; preds = %.critedge.i71.i, %bb.ps
  %i.cgv = sext i32 %i.bvx to i64
  %i.cgw = icmp ult i32 %i.bvz, %i.bvx
  br i1 %i.cgw, label %.lr.ph43.i65.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i

.critedge.i71.i:                                  ; preds = %bb.pu, %bb.pt
  %indvars.iv.next.i72.i = add nsw i64 %indvars.iv.i70.i, 8 ; 2 uses
  %i.cgx = trunc nsw i64 %indvars.iv.next.i72.i to i32
  %i.cgy = icmp ugt i32 %i.bvz, %i.cgx
  br i1 %i.cgy, label %bb.pt, label %.preheader.i64.i, !llvm.loop !561

bb.pt:                                            ; preds = %.critedge.i71.i, %.lr.ph.preheader.i69.i
  %indvars.iv.i70.i = phi i64 [ %i.cgs, %.lr.ph.preheader.i69.i ], [ %indvars.iv.next.i72.i, %.critedge.i71.i ] ; 4 uses
  %i.cgz = trunc nsw i64 %indvars.iv.i70.i to i32
  %i.cha = sdiv i32 %i.cgz, 8
  %i.chb = sext i32 %i.cha to i64
  %i.chc = getelementptr inbounds i8, ptr %i.bhv, i64 %i.chb ; 3 uses
  store i8 0, ptr %i.chc, align 1, !tbaa !32
  %i.chd = getelementptr inbounds [8 x i8], ptr %i.cgp, i64 %indvars.iv.i70.i
  %i.che = load <4 x i64>, ptr %i.chd, align 1, !tbaa !32, !noalias !562
  %i.chf = icmp eq <4 x i64> %i.che, %i.cgu
  %i.chg = bitcast <4 x i1> %i.chf to i4
  %i.chh = zext i4 %i.chg to i8                   ; 2 uses
  store i8 %i.chh, ptr %i.chc, align 1, !tbaa !32
  %i.chi = add nuw nsw i64 %indvars.iv.i70.i, 4   ; 2 uses
  %i.chj = trunc nsw i64 %i.chi to i32
  %i.chk = icmp ugt i32 %i.bvz, %i.chj
  br i1 %i.chk, label %bb.pu, label %.critedge.i71.i

bb.pu:                                            ; preds = %bb.pt
  %i.chl = getelementptr inbounds [8 x i8], ptr %i.cgp, i64 %i.chi
  %i.chm = load <4 x i64>, ptr %i.chl, align 1, !tbaa !32, !noalias !562
  %i.chn = icmp eq <4 x i64> %i.chm, %i.cgu
  %i.cho = bitcast <4 x i1> %i.chn to i4
  %i.chp = zext i4 %i.cho to i8
  %i.chq = shl nuw i8 %i.chp, 4
  %i.chr = or disjoint i8 %i.chq, %i.chh
end_hunk_0
begin_hunk_1_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a

.body49.i393:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416, %.loopexit.split-lp.loopexit.i440, %.loopexit.i467, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464
  %eh.lpad-body50.i394 = phi { ptr, i32 } [ %i.btm, %bb.ou ], [ %.pn.i.i.i.i.i473, %bb.nf ], [ %i.bms, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464 ], [ %i.blu, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i418, %bb.oi ], [ %i.brg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413 ], [ %.pn.i.i.i.i.i.i.i.i.i443, %bb.pf ], [ %i.buk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437 ], [ %lpad.loopexit.split-lp.i392, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391 ], [ %lpad.loopexit.i468, %.loopexit.i467 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i440 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416 ], [ %i.bqi, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i374

.body.i374:                                       ; preds = %.body49.i393, %bb.md
  %.pn.i375 = phi { ptr, i32 } [ %eh.lpad-body50.i394, %.body49.i393 ], [ %i.bis, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367
  %i.buy = load i32, ptr %i.bhe, align 4, !tbaa !288
  %i.buz = icmp eq i32 %i.buy, 1
  %i.bva = load i32, ptr %i.bhg, align 4, !tbaa !288
  %i.bvb = icmp eq i32 %i.bva, 1                  ; 2 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bgw, i64 28
  %i.bvd = load i32, ptr %i.bvc, align 4, !tbaa !291 ; 14 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bgw, i64 32
  %i.bvf = load i32, ptr %i.bve, align 8, !tbaa !300 ; 9 uses
  %i.bvg = sub i32 %i.bvf, %i.bvd
  %i.bvh = and i32 %i.bvg, -4                     ; 17 uses
  %i.bvi = sext i32 %i.bvh to i64                 ; 5 uses
  %i.bvj = icmp ult i32 %i.bvd, %i.bvh            ; 4 uses
  br i1 %i.buz, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bvl = load i64, ptr %i.bvk, align 8, !tbaa !537 ; 4 uses
  br i1 %i.bvb, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bgy, i64 168
  %i.bvn = load i64, ptr %i.bvm, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bvj, label %iter.check, label %.preheader.i.i498

iter.check:                                       ; preds = %bb.pl
  %.scalar.i.i501 = icmp ne i64 %i.bvl, %i.bvn
  %i.bvo = insertelement <4 x i1> poison, i1 %.scalar.i.i501, i64 0
  %i.bvp = shufflevector <4 x i1> %i.bvo, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bvq = bitcast <4 x i1> %i.bvp to i4
  %i.bvr = zext i4 %i.bvq to i8                   ; 4 uses
  %i.bvs = shl nuw i8 %i.bvr, 4                   ; 3 uses
  %i.bvt = add i32 %i.bvd, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvh, i32 %i.bvt)
  %i.bvu = xor i32 %i.bvd, -1
  %i.bvv = add i32 %umax, %i.bvu                  ; 3 uses
  %i.bvw = lshr i32 %i.bvv, 3
  %i.bvx = add nuw nsw i32 %i.bvw, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bvv, 56
  br i1 %min.iters.check, label %.lr.ph.i.i502.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1442 = icmp ult i32 %i.bvv, 248
  br i1 %min.iters.check1442, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.bvx, 24
  %n.vec = and i32 %i.bvx, 1073741792             ; 4 uses
  %i.bvy = shl i32 %n.vec, 3
  %i.bvz = add i32 %i.bvd, %i.bvy                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bvr, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1443 = insertelement <32 x i8> poison, i8 %i.bvs, i64 0
  %broadcast.splat1444 = shufflevector <32 x i8> %broadcast.splatinsert1443, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1445 = insertelement <32 x i32> poison, i32 %i.bvh, i64 0
  %broadcast.splat1446 = shufflevector <32 x i32> %broadcast.splatinsert1445, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1447 = insertelement <32 x i32> poison, i32 %i.bvd, i64 0
  %broadcast.splat1448 = shufflevector <32 x i32> %broadcast.splatinsert1447, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1448, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwa = shl i32 %index, 3
  %i.bwb = add i32 %i.bvd, %i.bwa                 ; 5 uses
  %i.bwc = add i32 %i.bwb, 8
  %i.bwd = add i32 %i.bwb, 16
  %i.bwe = add i32 %i.bwb, 24
  %i.bwf = sdiv i32 %i.bwb, 8
  %i.bwg = sdiv i32 %i.bwc, 8
  %i.bwh = sdiv i32 %i.bwd, 8
  %i.bwi = sdiv i32 %i.bwe, 8
  %i.bwj = sext i32 %i.bwf to i64
  %i.bwk = sext i32 %i.bwg to i64
  %i.bwl = sext i32 %i.bwh to i64
  %i.bwm = sext i32 %i.bwi to i64
  %i.bwn = insertelement <4 x i32> poison, i32 %i.bwb, i64 0
  %i.bwo = shufflevector <4 x i32> %i.bwn, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bwp = add <4 x i32> %i.bwo, <i32 32, i32 40, i32 48, i32 56>
  %i.bwq = sdiv <4 x i32> %i.bwp, splat (i32 8)   ; 4 uses
  %i.bwr = add <4 x i32> %i.bwo, <i32 64, i32 72, i32 80, i32 88>
  %i.bws = sdiv <4 x i32> %i.bwr, splat (i32 8)   ; 4 uses
  %i.bwt = add <4 x i32> %i.bwo, <i32 96, i32 104, i32 112, i32 120>
  %i.bwu = sdiv <4 x i32> %i.bwt, splat (i32 8)   ; 4 uses
  %i.bwv = add <4 x i32> %i.bwo, <i32 128, i32 136, i32 144, i32 152>
  %i.bww = sdiv <4 x i32> %i.bwv, splat (i32 8)   ; 4 uses
  %i.bwx = add <4 x i32> %i.bwo, <i32 160, i32 168, i32 176, i32 184>
  %i.bwy = sdiv <4 x i32> %i.bwx, splat (i32 8)   ; 4 uses
  %i.bwz = add <4 x i32> %i.bwo, <i32 192, i32 200, i32 208, i32 216>
  %i.bxa = sdiv <4 x i32> %i.bwz, splat (i32 8)   ; 4 uses
  %i.bxb = add <4 x i32> %i.bwo, <i32 224, i32 232, i32 240, i32 248>
  %i.bxc = sdiv <4 x i32> %i.bxb, splat (i32 8)   ; 4 uses
  %i.bxd = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwj
  %i.bxe = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwk
  %i.bxf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwl
  %i.bxg = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwm
  %i.bxh = extractelement <4 x i32> %i.bwq, i64 0
  %i.bxi = sext i32 %i.bxh to i64
  %i.bxj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxi
  %i.bxk = extractelement <4 x i32> %i.bwq, i64 1
  %i.bxl = sext i32 %i.bxk to i64
  %i.bxm = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxl
  %i.bxn = extractelement <4 x i32> %i.bwq, i64 2
  %i.bxo = sext i32 %i.bxn to i64
  %i.bxp = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxo
  %i.bxq = extractelement <4 x i32> %i.bwq, i64 3
  %i.bxr = sext i32 %i.bxq to i64
  %i.bxs = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxr
  %i.bxt = extractelement <4 x i32> %i.bws, i64 0
  %i.bxu = sext i32 %i.bxt to i64
  %i.bxv = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxu
  %i.bxw = extractelement <4 x i32> %i.bws, i64 1
  %i.bxx = sext i32 %i.bxw to i64
  %i.bxy = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxx
  %i.bxz = extractelement <4 x i32> %i.bws, i64 2
  %i.bya = sext i32 %i.bxz to i64
  %i.byb = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bya
  %i.byc = extractelement <4 x i32> %i.bws, i64 3
  %i.byd = sext i32 %i.byc to i64
  %i.bye = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byd
  %i.byf = extractelement <4 x i32> %i.bwu, i64 0
  %i.byg = sext i32 %i.byf to i64
  %i.byh = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byg
  %i.byi = extractelement <4 x i32> %i.bwu, i64 1
  %i.byj = sext i32 %i.byi to i64
  %i.byk = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byj
  %i.byl = extractelement <4 x i32> %i.bwu, i64 2
  %i.bym = sext i32 %i.byl to i64
  %i.byn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bym
  %i.byo = extractelement <4 x i32> %i.bwu, i64 3
  %i.byp = sext i32 %i.byo to i64
  %i.byq = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byp
  %i.byr = extractelement <4 x i32> %i.bww, i64 0
  %i.bys = sext i32 %i.byr to i64
  %i.byt = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bys
  %i.byu = extractelement <4 x i32> %i.bww, i64 1
  %i.byv = sext i32 %i.byu to i64
  %i.byw = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byv
  %i.byx = extractelement <4 x i32> %i.bww, i64 2
  %i.byy = sext i32 %i.byx to i64
  %i.byz = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byy
  %i.bza = extractelement <4 x i32> %i.bww, i64 3
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzb
  %i.bzd = extractelement <4 x i32> %i.bwy, i64 0
  %i.bze = sext i32 %i.bzd to i64
  %i.bzf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bze
  %i.bzg = extractelement <4 x i32> %i.bwy, i64 1
  %i.bzh = sext i32 %i.bzg to i64
  %i.bzi = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzh
  %i.bzj = extractelement <4 x i32> %i.bwy, i64 2
  %i.bzk = sext i32 %i.bzj to i64
  %i.bzl = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzk
  %i.bzm = extractelement <4 x i32> %i.bwy, i64 3
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzn
  %i.bzp = extractelement <4 x i32> %i.bxa, i64 0
  %i.bzq = sext i32 %i.bzp to i64
  %i.bzr = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzq
  %i.bzs = extractelement <4 x i32> %i.bxa, i64 1
  %i.bzt = sext i32 %i.bzs to i64
  %i.bzu = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzt
  %i.bzv = extractelement <4 x i32> %i.bxa, i64 2
  %i.bzw = sext i32 %i.bzv to i64
  %i.bzx = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzw
  %i.bzy = extractelement <4 x i32> %i.bxa, i64 3
  %i.bzz = sext i32 %i.bzy to i64
  %i.caa = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzz
  %i.cab = extractelement <4 x i32> %i.bxc, i64 0
  %i.cac = sext i32 %i.cab to i64
  %i.cad = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cac
  %i.cae = extractelement <4 x i32> %i.bxc, i64 1
  %i.caf = sext i32 %i.cae to i64
  %i.cag = getelementptr inbounds i8, ptr %i.bhd, i64 %i.caf
  %i.cah = extractelement <4 x i32> %i.bxc, i64 2
  %i.cai = sext i32 %i.cah to i64
  %i.caj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cai
  %i.cak = extractelement <4 x i32> %i.bxc, i64 3
  %i.cal = sext i32 %i.cak to i64
  %i.cam = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cal
  %i.can = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cao = icmp ult <32 x i32> %i.can, %broadcast.splat1446
  %i.cap = select <32 x i1> %i.cao, <32 x i8> %broadcast.splat1444, <32 x i8> zeroinitializer
  %i.caq = or disjoint <32 x i8> %i.cap, %broadcast.splat ; 32 uses
  %i.car = extractelement <32 x i8> %i.caq, i64 0
  store i8 %i.car, ptr %i.bxd, align 1, !tbaa !32
  %i.cas = extractelement <32 x i8> %i.caq, i64 1
  store i8 %i.cas, ptr %i.bxe, align 1, !tbaa !32
  %i.cat = extractelement <32 x i8> %i.caq, i64 2
  store i8 %i.cat, ptr %i.bxf, align 1, !tbaa !32
  %i.cau = extractelement <32 x i8> %i.caq, i64 3
  store i8 %i.cau, ptr %i.bxg, align 1, !tbaa !32
  %i.cav = extractelement <32 x i8> %i.caq, i64 4
  store i8 %i.cav, ptr %i.bxj, align 1, !tbaa !32
  %i.caw = extractelement <32 x i8> %i.caq, i64 5
  store i8 %i.caw, ptr %i.bxm, align 1, !tbaa !32
  %i.cax = extractelement <32 x i8> %i.caq, i64 6
  store i8 %i.cax, ptr %i.bxp, align 1, !tbaa !32
  %i.cay = extractelement <32 x i8> %i.caq, i64 7
  store i8 %i.cay, ptr %i.bxs, align 1, !tbaa !32
  %i.caz = extractelement <32 x i8> %i.caq, i64 8
  store i8 %i.caz, ptr %i.bxv, align 1, !tbaa !32
  %i.cba = extractelement <32 x i8> %i.caq, i64 9
  store i8 %i.cba, ptr %i.bxy, align 1, !tbaa !32
  %i.cbb = extractelement <32 x i8> %i.caq, i64 10
  store i8 %i.cbb, ptr %i.byb, align 1, !tbaa !32
  %i.cbc = extractelement <32 x i8> %i.caq, i64 11
  store i8 %i.cbc, ptr %i.bye, align 1, !tbaa !32
  %i.cbd = extractelement <32 x i8> %i.caq, i64 12
  store i8 %i.cbd, ptr %i.byh, align 1, !tbaa !32
  %i.cbe = extractelement <32 x i8> %i.caq, i64 13
  store i8 %i.cbe, ptr %i.byk, align 1, !tbaa !32
  %i.cbf = extractelement <32 x i8> %i.caq, i64 14
  store i8 %i.cbf, ptr %i.byn, align 1, !tbaa !32
  %i.cbg = extractelement <32 x i8> %i.caq, i64 15
  store i8 %i.cbg, ptr %i.byq, align 1, !tbaa !32
  %69 = extractelement <32 x i8> %i.caq, i64 16
  store i8 %69, ptr %i.byt, align 1, !tbaa !32
  %70 = extractelement <32 x i8> %i.caq, i64 17
  store i8 %70, ptr %i.byw, align 1, !tbaa !32
  %71 = extractelement <32 x i8> %i.caq, i64 18
  store i8 %71, ptr %i.byz, align 1, !tbaa !32
  %72 = extractelement <32 x i8> %i.caq, i64 19
  store i8 %72, ptr %i.bzc, align 1, !tbaa !32
  %73 = extractelement <32 x i8> %i.caq, i64 20
  store i8 %73, ptr %i.bzf, align 1, !tbaa !32
  %74 = extractelement <32 x i8> %i.caq, i64 21
  store i8 %74, ptr %i.bzi, align 1, !tbaa !32
  %75 = extractelement <32 x i8> %i.caq, i64 22
  store i8 %75, ptr %i.bzl, align 1, !tbaa !32
  %76 = extractelement <32 x i8> %i.caq, i64 23
  store i8 %76, ptr %i.bzo, align 1, !tbaa !32
  %77 = extractelement <32 x i8> %i.caq, i64 24
  store i8 %77, ptr %i.bzr, align 1, !tbaa !32
  %78 = extractelement <32 x i8> %i.caq, i64 25
  store i8 %78, ptr %i.bzu, align 1, !tbaa !32
  %79 = extractelement <32 x i8> %i.caq, i64 26
  store i8 %79, ptr %i.bzx, align 1, !tbaa !32
  %80 = extractelement <32 x i8> %i.caq, i64 27
  store i8 %80, ptr %i.caa, align 1, !tbaa !32
  %81 = extractelement <32 x i8> %i.caq, i64 28
  store i8 %81, ptr %i.cad, align 1, !tbaa !32
  %82 = extractelement <32 x i8> %i.caq, i64 29
  store i8 %82, ptr %i.cag, align 1, !tbaa !32
  %83 = extractelement <32 x i8> %i.caq, i64 30
  store i8 %83, ptr %i.caj, align 1, !tbaa !32
  %84 = extractelement <32 x i8> %i.caq, i64 31
  store i8 %84, ptr %i.cam, align 1, !tbaa !32
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 256)
  %i.cbh = icmp eq i32 %index.next, %n.vec
  br i1 %i.cbh, label %middle.block, label %vector.body, !llvm.loop !1090

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.bvx, %n.vec
  br i1 %cmp.n, label %.preheader.i.i498, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i502.preheader, label %vec.epilog.ph, !prof !546

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.bvz, %vec.epilog.iter.check ], [ %i.bvd, %vector.main.loop.iter.check ]
  %n.vec1450 = and i32 %i.bvx, 1073741816         ; 3 uses
  %i.cbi = shl i32 %n.vec1450, 3
  %i.cbj = add i32 %i.bvd, %i.cbi
  %broadcast.splatinsert1451 = insertelement <8 x i8> poison, i8 %i.bvr, i64 0
  %broadcast.splat1452 = shufflevector <8 x i8> %broadcast.splatinsert1451, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1453 = insertelement <8 x i8> poison, i8 %i.bvs, i64 0
  %broadcast.splat1454 = shufflevector <8 x i8> %broadcast.splatinsert1453, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1455 = insertelement <8 x i32> poison, i32 %i.bvh, i64 0
  %broadcast.splat1456 = shufflevector <8 x i32> %broadcast.splatinsert1455, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1457 = insertelement <8 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat1458 = shufflevector <8 x i32> %broadcast.splatinsert1457, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1459 = add nsw <8 x i32> %broadcast.splat1458, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1460 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1462, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind1461 = phi <8 x i32> [ %induction1459, %vec.epilog.ph ], [ %vec.ind.next1463, %vec.epilog.vector.body ] ; 2 uses
  %i.cbk = shl i32 %index1460, 3
  %i.cbl = add i32 %i.bvd, %i.cbk                 ; 5 uses
  %i.cbm = add i32 %i.cbl, 8
  %i.cbn = add i32 %i.cbl, 16
  %i.cbo = add i32 %i.cbl, 24
  %i.cbp = sdiv i32 %i.cbl, 8
  %i.cbq = sdiv i32 %i.cbm, 8
  %i.cbr = sdiv i32 %i.cbn, 8
  %i.cbs = sdiv i32 %i.cbo, 8
  %i.cbt = sext i32 %i.cbp to i64
  %i.cbu = sext i32 %i.cbq to i64
  %i.cbv = sext i32 %i.cbr to i64
  %i.cbw = sext i32 %i.cbs to i64
  %i.cbx = insertelement <4 x i32> poison, i32 %i.cbl, i64 0
  %i.cby = shufflevector <4 x i32> %i.cbx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cbz = add <4 x i32> %i.cby, <i32 32, i32 40, i32 48, i32 56>
  %i.cca = sdiv <4 x i32> %i.cbz, splat (i32 8)   ; 4 uses
  %i.ccb = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbt
  %i.ccc = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbu
  %i.ccd = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbv
  %i.cce = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbw
  %i.ccf = extractelement <4 x i32> %i.cca, i64 0
  %i.ccg = sext i32 %i.ccf to i64
  %i.cch = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccg
  %i.cci = extractelement <4 x i32> %i.cca, i64 1
  %i.ccj = sext i32 %i.cci to i64
  %i.cck = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccj
  %i.ccl = extractelement <4 x i32> %i.cca, i64 2
  %i.ccm = sext i32 %i.ccl to i64
  %i.ccn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccm
  %i.cco = extractelement <4 x i32> %i.cca, i64 3
  %i.ccp = sext i32 %i.cco to i64
  %i.ccq = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccp
  %i.ccr = add nuw <8 x i32> %vec.ind1461, splat (i32 4)
  %i.ccs = icmp ult <8 x i32> %i.ccr, %broadcast.splat1456
  %i.cct = select <8 x i1> %i.ccs, <8 x i8> %broadcast.splat1454, <8 x i8> zeroinitializer
  %i.ccu = or disjoint <8 x i8> %i.cct, %broadcast.splat1452 ; 8 uses
  %i.ccv = extractelement <8 x i8> %i.ccu, i64 0
  store i8 %i.ccv, ptr %i.ccb, align 1, !tbaa !32
  %i.ccw = extractelement <8 x i8> %i.ccu, i64 1
  store i8 %i.ccw, ptr %i.ccc, align 1, !tbaa !32
  %i.ccx = extractelement <8 x i8> %i.ccu, i64 2
  store i8 %i.ccx, ptr %i.ccd, align 1, !tbaa !32
  %i.ccy = extractelement <8 x i8> %i.ccu, i64 3
  store i8 %i.ccy, ptr %i.cce, align 1, !tbaa !32
  %85 = extractelement <8 x i8> %i.ccu, i64 4
  store i8 %85, ptr %i.cch, align 1, !tbaa !32
  %86 = extractelement <8 x i8> %i.ccu, i64 5
  store i8 %86, ptr %i.cck, align 1, !tbaa !32
  %87 = extractelement <8 x i8> %i.ccu, i64 6
  store i8 %87, ptr %i.ccn, align 1, !tbaa !32
  %88 = extractelement <8 x i8> %i.ccu, i64 7
  store i8 %88, ptr %i.ccq, align 1, !tbaa !32
  %index.next1462 = add nuw i32 %index1460, 8     ; 2 uses
  %vec.ind.next1463 = add nsw <8 x i32> %vec.ind1461, splat (i32 64)
  %i.ccz = icmp eq i32 %index.next1462, %n.vec1450
  br i1 %i.ccz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1091

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1464 = icmp eq i32 %i.bvx, %n.vec1450
  br i1 %cmp.n1464, label %.preheader.i.i498, label %.lr.ph.i.i502.preheader

.lr.ph.i.i502.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03241.i.i.ph = phi i32 [ %i.bvd, %iter.check ], [ %i.bvz, %vec.epilog.iter.check ], [ %i.cbj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i502

.preheader.i.i498:                                ; preds = %.lr.ph.i.i502, %middle.block, %vec.epilog.middle.block, %bb.pl
  %i.cda = sext i32 %i.bvf to i64                 ; 2 uses
  %i.cdb = icmp ult i32 %i.bvh, %i.bvf
  br i1 %i.cdb, label %.lr.ph43.i.preheader.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph43.i.preheader.i:                           ; preds = %.preheader.i.i498
  %.not.i.i499 = icmp eq i64 %i.bvl, %i.bvn
  br i1 %.not.i.i499, label %.lr.ph43.i.us.i, label %.lr.ph43.i.i

.lr.ph43.i.us.i:                                  ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.us.i
  %.042.i.us.i = phi i64 [ %i.cdj, %.lr.ph43.i.us.i ], [ %i.bvi, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cdc = lshr i64 %.042.i.us.i, 3
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.cdc ; 2 uses
  %i.cde = load i8, ptr %i.cdd, align 1, !tbaa !32
  %i.cdf = and i64 %.042.i.us.i, 7
  %i.cdg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cdf
  %i.cdh = load i8, ptr %i.cdg, align 1, !tbaa !32
  %i.cdi = and i8 %i.cdh, %i.cde
  store i8 %i.cdi, ptr %i.cdd, align 1, !tbaa !32
  %i.cdj = add nuw i64 %.042.i.us.i, 1            ; 2 uses
  %i.cdk = icmp ult i64 %i.cdj, %i.cda
  br i1 %i.cdk, label %.lr.ph43.i.us.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1092

.lr.ph.i.i502:                                    ; preds = %.lr.ph.i.i502.preheader, %.lr.ph.i.i502
  %.03241.i.i = phi i32 [ %i.cdq, %.lr.ph.i.i502 ], [ %.03241.i.i.ph, %.lr.ph.i.i502.preheader ] ; 3 uses
  %i.cdl = sdiv i32 %.03241.i.i, 8
  %i.cdm = sext i32 %i.cdl to i64
  %i.cdn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cdm
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.cdo = icmp ult i32 %invariant.op.i.i, %i.bvh
  %i.cdp = select i1 %i.cdo, i8 %i.bvs, i8 0
  %spec.select.i = or disjoint i8 %i.cdp, %i.bvr
  store i8 %spec.select.i, ptr %i.cdn, align 1, !tbaa !32
  %i.cdq = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cdr = icmp ult i32 %i.cdq, %i.bvh
  br i1 %i.cdr, label %.lr.ph.i.i502, label %.preheader.i.i498, !llvm.loop !1093

.lr.ph43.i.i:                                     ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.i
  %.042.i.i = phi i64 [ %i.cdz, %.lr.ph43.i.i ], [ %i.bvi, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cds = lshr i64 %.042.i.i, 3
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.cds ; 2 uses
  %i.cdu = load i8, ptr %i.cdt, align 1, !tbaa !32
  %i.cdv = trunc i64 %.042.i.i to i8
  %i.cdw = and i8 %i.cdv, 7
  %i.cdx = shl nuw i8 1, %i.cdw
  %i.cdy = or i8 %i.cdx, %i.cdu
  store i8 %i.cdy, ptr %i.cdt, align 1, !tbaa !32
  %i.cdz = add nuw i64 %.042.i.i, 1               ; 2 uses
  %i.cea = icmp ult i64 %i.cdz, %i.cda
  br i1 %i.cea, label %.lr.ph43.i.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1092

bb.pm:                                            ; preds = %bb.pk
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.bgy, i64 144
  %i.cec = load ptr, ptr %i.ceb, align 8, !tbaa !550 ; 3 uses
  br i1 %i.bvj, label %.lr.ph.preheader.i.i, label %.preheader.i56.i497

.lr.ph.preheader.i.i:                             ; preds = %bb.pm
  %i.ced = sext i32 %i.bvd to i64
  %i.cee = insertelement <4 x i64> poison, i64 %i.bvl, i64 0
  %i.cef = shufflevector <4 x i64> %i.cee, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pn

.preheader.i56.i497:                              ; preds = %.critedge.i63.i, %bb.pm
  %i.ceg = sext i32 %i.bvf to i64
  %i.ceh = icmp ult i32 %i.bvh, %i.bvf
  br i1 %i.ceh, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i

.critedge.i63.i:                                  ; preds = %bb.po, %bb.pn
  %indvars.iv.next.i64.i = add nsw i64 %indvars.iv.i62.i, 8 ; 2 uses
  %i.cei = trunc nsw i64 %indvars.iv.next.i64.i to i32
  %i.cej = icmp ugt i32 %i.bvh, %i.cei
  br i1 %i.cej, label %bb.pn, label %.preheader.i56.i497, !llvm.loop !1094

bb.pn:                                            ; preds = %.critedge.i63.i, %.lr.ph.preheader.i.i
  %indvars.iv.i62.i = phi i64 [ %i.ced, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i64.i, %.critedge.i63.i ] ; 4 uses
  %i.cek = trunc nsw i64 %indvars.iv.i62.i to i32
  %i.cel = sdiv i32 %i.cek, 8
  %i.cem = sext i32 %i.cel to i64
  %i.cen = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cem ; 3 uses
  store i8 0, ptr %i.cen, align 1, !tbaa !32
  %i.ceo = getelementptr inbounds [8 x i8], ptr %i.cec, i64 %indvars.iv.i62.i
  %i.cep = load <4 x i64>, ptr %i.ceo, align 1, !tbaa !32, !noalias !1095
  %i.ceq = icmp ne <4 x i64> %i.cef, %i.cep
  %i.cer = bitcast <4 x i1> %i.ceq to i4
  %i.ces = zext i4 %i.cer to i8                   ; 2 uses
  store i8 %i.ces, ptr %i.cen, align 1, !tbaa !32
  %i.cet = add nuw nsw i64 %indvars.iv.i62.i, 4   ; 2 uses
  %i.ceu = trunc nsw i64 %i.cet to i32
  %i.cev = icmp ugt i32 %i.bvh, %i.ceu
  br i1 %i.cev, label %bb.po, label %.critedge.i63.i

bb.po:                                            ; preds = %bb.pn
  %i.cew = getelementptr inbounds [8 x i8], ptr %i.cec, i64 %i.cet
  %i.cex = load <4 x i64>, ptr %i.cew, align 1, !tbaa !32, !noalias !1095
  %i.cey = icmp ne <4 x i64> %i.cef, %i.cex
  %i.cez = bitcast <4 x i1> %i.cey to i4
  %i.cfa = zext i4 %i.cez to i8
  %i.cfb = shl nuw i8 %i.cfa, 4
  %i.cfc = or disjoint i8 %i.cfb, %i.ces
  store i8 %i.cfc, ptr %i.cen, align 1, !tbaa !32
  br label %.critedge.i63.i

.lr.ph43.i57.i:                                   ; preds = %.preheader.i56.i497, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i
  %.042.i58.i = phi i64 [ %i.cfq, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i ], [ %i.bvi, %.preheader.i56.i497 ] ; 5 uses
  %i.cfd = getelementptr inbounds nuw [8 x i8], ptr %i.cec, i64 %.042.i58.i
  %i.cfe = load i64, ptr %i.cfd, align 8, !tbaa !176
  %.not.i59.i = icmp eq i64 %i.bvl, %i.cfe
  %i.cff = lshr i64 %.042.i58.i, 3
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.cff ; 2 uses
  %i.cfh = load i8, ptr %i.cfg, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i59.i, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %.lr.ph43.i57.i
  %i.cfi = trunc i64 %.042.i58.i to i8
  %i.cfj = and i8 %i.cfi, 7
  %i.cfk = shl nuw i8 1, %i.cfj
  %i.cfl = or i8 %i.cfk, %i.cfh
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i

bb.pq:                                            ; preds = %.lr.ph43.i57.i
  %i.cfm = and i64 %.042.i58.i, 7
  %i.cfn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cfm
  %i.cfo = load i8, ptr %i.cfn, align 1, !tbaa !32
  %i.cfp = and i8 %i.cfo, %i.cfh
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i: ; preds = %bb.pq, %bb.pp
  %.sink.i.i61.i = phi i8 [ %i.cfp, %bb.pq ], [ %i.cfl, %bb.pp ]
  store i8 %.sink.i.i61.i, ptr %i.cfg, align 1, !tbaa !32
  %i.cfq = add nuw i64 %.042.i58.i, 1             ; 2 uses
  %i.cfr = icmp ult i64 %i.cfq, %i.ceg
  br i1 %i.cfr, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1102

bb.pr:                                            ; preds = %bb.pj
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.cft = load ptr, ptr %i.cfs, align 8, !tbaa !550 ; 6 uses
  br i1 %i.bvb, label %bb.ps, label %bb.px

bb.ps:                                            ; preds = %bb.pr
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.bgy, i64 168
  %i.cfv = load i64, ptr %i.cfu, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bvj, label %.lr.ph.preheader.i71.i, label %.preheader.i65.i

.lr.ph.preheader.i71.i:                           ; preds = %bb.ps
  %i.cfw = sext i32 %i.bvd to i64
  %i.cfx = insertelement <4 x i64> poison, i64 %i.cfv, i64 0
  %i.cfy = shufflevector <4 x i64> %i.cfx, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pt

.preheader.i65.i:                                 ; preds = %.critedge.i73.i, %bb.ps
  %i.cfz = sext i32 %i.bvf to i64
  %i.cga = icmp ult i32 %i.bvh, %i.bvf
  br i1 %i.cga, label %.lr.ph43.i66.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i

.critedge.i73.i:                                  ; preds = %bb.pu, %bb.pt
  %indvars.iv.next.i74.i = add nsw i64 %indvars.iv.i72.i, 8 ; 2 uses
  %i.cgb = trunc nsw i64 %indvars.iv.next.i74.i to i32
  %i.cgc = icmp ugt i32 %i.bvh, %i.cgb
  br i1 %i.cgc, label %bb.pt, label %.preheader.i65.i, !llvm.loop !1103

bb.pt:                                            ; preds = %.critedge.i73.i, %.lr.ph.preheader.i71.i
  %indvars.iv.i72.i = phi i64 [ %i.cfw, %.lr.ph.preheader.i71.i ], [ %indvars.iv.next.i74.i, %.critedge.i73.i ] ; 4 uses
  %i.cgd = trunc nsw i64 %indvars.iv.i72.i to i32
  %i.cge = sdiv i32 %i.cgd, 8
  %i.cgf = sext i32 %i.cge to i64
  %i.cgg = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cgf ; 3 uses
  store i8 0, ptr %i.cgg, align 1, !tbaa !32
  %i.cgh = getelementptr inbounds [8 x i8], ptr %i.cft, i64 %indvars.iv.i72.i
  %i.cgi = load <4 x i64>, ptr %i.cgh, align 1, !tbaa !32, !noalias !1104
  %i.cgj = icmp ne <4 x i64> %i.cgi, %i.cfy
  %i.cgk = bitcast <4 x i1> %i.cgj to i4
  %i.cgl = zext i4 %i.cgk to i8                   ; 2 uses
  store i8 %i.cgl, ptr %i.cgg, align 1, !tbaa !32
  %i.cgm = add nuw nsw i64 %indvars.iv.i72.i, 4   ; 2 uses
  %i.cgn = trunc nsw i64 %i.cgm to i32
  %i.cgo = icmp ugt i32 %i.bvh, %i.cgn
  br i1 %i.cgo, label %bb.pu, label %.critedge.i73.i

bb.pu:                                            ; preds = %bb.pt
  %i.cgp = getelementptr inbounds [8 x i8], ptr %i.cft, i64 %i.cgm
  %i.cgq = load <4 x i64>, ptr %i.cgp, align 1, !tbaa !32, !noalias !1104
  %i.cgr = icmp ne <4 x i64> %i.cgq, %i.cfy
  %i.cgs = bitcast <4 x i1> %i.cgr to i4
  %i.cgt = zext i4 %i.cgs to i8
  %i.cgu = shl nuw i8 %i.cgt, 4
  %i.cgv = or disjoint i8 %i.cgu, %i.cgl
end_hunk_1
begin_hunk_2_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
.body49.i383:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406, %.loopexit.split-lp.loopexit.i430, %.loopexit.i457, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454
  %eh.lpad-body50.i384 = phi { ptr, i32 } [ %i.bue, %bb.ou ], [ %.pn.i.i.i.i.i463, %bb.nf ], [ %i.bnk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454 ], [ %i.bmm, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i408, %bb.oi ], [ %i.bry, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403 ], [ %.pn.i.i.i.i.i.i.i.i.i433, %bb.pf ], [ %i.bvc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427 ], [ %lpad.loopexit.split-lp.i382, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381 ], [ %lpad.loopexit.i458, %.loopexit.i457 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i430 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406 ], [ %i.bra, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i364

.body.i364:                                       ; preds = %.body49.i383, %bb.md
  %.pn.i365 = phi { ptr, i32 } [ %eh.lpad-body50.i384, %.body49.i383 ], [ %i.bjk, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357
  %i.bvq = load i32, ptr %i.bhw, align 4, !tbaa !288
  %i.bvr = icmp eq i32 %i.bvq, 1
  %i.bvs = load i32, ptr %i.bhy, align 4, !tbaa !288
  %i.bvt = icmp eq i32 %i.bvs, 1                  ; 2 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bho, i64 28
  %i.bvv = load i32, ptr %i.bvu, align 4, !tbaa !291 ; 14 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bho, i64 32
  %i.bvx = load i32, ptr %i.bvw, align 8, !tbaa !300 ; 9 uses
  %i.bvy = sub i32 %i.bvx, %i.bvv
  %i.bvz = and i32 %i.bvy, -4                     ; 17 uses
  %i.bwa = sext i32 %i.bvz to i64                 ; 5 uses
  %i.bwb = icmp ult i32 %i.bvv, %i.bvz            ; 4 uses
  br i1 %i.bvr, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bwd = load i64, ptr %i.bwc, align 8, !tbaa !537 ; 4 uses
  br i1 %i.bvt, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bhq, i64 168
  %i.bwf = load i64, ptr %i.bwe, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bwb, label %iter.check, label %.preheader.i.i488

iter.check:                                       ; preds = %bb.pl
  %i.bwg = insertelement <4 x i64> poison, i64 %i.bwd, i64 0
  %i.bwh = insertelement <4 x i64> poison, i64 %i.bwf, i64 0
  %i.bwi = icmp sgt <4 x i64> %i.bwh, %i.bwg
  %i.bwj = shufflevector <4 x i1> %i.bwi, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bwk = bitcast <4 x i1> %i.bwj to i4
  %i.bwl = zext i4 %i.bwk to i8                   ; 4 uses
  %i.bwm = shl nuw i8 %i.bwl, 4                   ; 3 uses
  %i.bwn = add i32 %i.bvv, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvz, i32 %i.bwn)
  %i.bwo = xor i32 %i.bvv, -1
  %i.bwp = add i32 %umax, %i.bwo                  ; 3 uses
  %i.bwq = lshr i32 %i.bwp, 3
  %i.bwr = add nuw nsw i32 %i.bwq, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bwp, 56
  br i1 %min.iters.check, label %.lr.ph.i.i490.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1431 = icmp ult i32 %i.bwp, 248
  br i1 %min.iters.check1431, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.bwr, 24
  %n.vec = and i32 %i.bwr, 1073741792             ; 4 uses
  %i.bws = shl i32 %n.vec, 3
  %i.bwt = add i32 %i.bvv, %i.bws                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bwl, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1432 = insertelement <32 x i8> poison, i8 %i.bwm, i64 0
  %broadcast.splat1433 = shufflevector <32 x i8> %broadcast.splatinsert1432, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1434 = insertelement <32 x i32> poison, i32 %i.bvz, i64 0
  %broadcast.splat1435 = shufflevector <32 x i32> %broadcast.splatinsert1434, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1436 = insertelement <32 x i32> poison, i32 %i.bvv, i64 0
  %broadcast.splat1437 = shufflevector <32 x i32> %broadcast.splatinsert1436, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1437, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwu = shl i32 %index, 3
  %i.bwv = add i32 %i.bvv, %i.bwu                 ; 5 uses
  %i.bww = add i32 %i.bwv, 8
  %i.bwx = add i32 %i.bwv, 16
  %i.bwy = add i32 %i.bwv, 24
  %i.bwz = sdiv i32 %i.bwv, 8
  %i.bxa = sdiv i32 %i.bww, 8
  %i.bxb = sdiv i32 %i.bwx, 8
  %i.bxc = sdiv i32 %i.bwy, 8
  %i.bxd = sext i32 %i.bwz to i64
  %i.bxe = sext i32 %i.bxa to i64
  %i.bxf = sext i32 %i.bxb to i64
  %i.bxg = sext i32 %i.bxc to i64
  %i.bxh = insertelement <4 x i32> poison, i32 %i.bwv, i64 0
  %i.bxi = shufflevector <4 x i32> %i.bxh, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bxj = add <4 x i32> %i.bxi, <i32 32, i32 40, i32 48, i32 56>
  %i.bxk = sdiv <4 x i32> %i.bxj, splat (i32 8)   ; 4 uses
  %i.bxl = add <4 x i32> %i.bxi, <i32 64, i32 72, i32 80, i32 88>
  %i.bxm = sdiv <4 x i32> %i.bxl, splat (i32 8)   ; 4 uses
  %i.bxn = add <4 x i32> %i.bxi, <i32 96, i32 104, i32 112, i32 120>
  %i.bxo = sdiv <4 x i32> %i.bxn, splat (i32 8)   ; 4 uses
  %i.bxp = add <4 x i32> %i.bxi, <i32 128, i32 136, i32 144, i32 152>
  %i.bxq = sdiv <4 x i32> %i.bxp, splat (i32 8)   ; 4 uses
  %i.bxr = add <4 x i32> %i.bxi, <i32 160, i32 168, i32 176, i32 184>
  %i.bxs = sdiv <4 x i32> %i.bxr, splat (i32 8)   ; 4 uses
  %i.bxt = add <4 x i32> %i.bxi, <i32 192, i32 200, i32 208, i32 216>
  %i.bxu = sdiv <4 x i32> %i.bxt, splat (i32 8)   ; 4 uses
  %i.bxv = add <4 x i32> %i.bxi, <i32 224, i32 232, i32 240, i32 248>
  %i.bxw = sdiv <4 x i32> %i.bxv, splat (i32 8)   ; 4 uses
  %i.bxx = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxd
  %i.bxy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxe
  %i.bxz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxf
  %i.bya = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxg
  %i.byb = extractelement <4 x i32> %i.bxk, i64 0
  %i.byc = sext i32 %i.byb to i64
  %i.byd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byc
  %i.bye = extractelement <4 x i32> %i.bxk, i64 1
  %i.byf = sext i32 %i.bye to i64
  %i.byg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byf
  %i.byh = extractelement <4 x i32> %i.bxk, i64 2
  %i.byi = sext i32 %i.byh to i64
  %i.byj = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byi
  %i.byk = extractelement <4 x i32> %i.bxk, i64 3
  %i.byl = sext i32 %i.byk to i64
  %i.bym = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byl
  %i.byn = extractelement <4 x i32> %i.bxm, i64 0
  %i.byo = sext i32 %i.byn to i64
  %i.byp = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byo
  %i.byq = extractelement <4 x i32> %i.bxm, i64 1
  %i.byr = sext i32 %i.byq to i64
  %i.bys = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byr
  %i.byt = extractelement <4 x i32> %i.bxm, i64 2
  %i.byu = sext i32 %i.byt to i64
  %i.byv = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byu
  %i.byw = extractelement <4 x i32> %i.bxm, i64 3
  %i.byx = sext i32 %i.byw to i64
  %i.byy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byx
  %i.byz = extractelement <4 x i32> %i.bxo, i64 0
  %i.bza = sext i32 %i.byz to i64
  %i.bzb = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bza
  %i.bzc = extractelement <4 x i32> %i.bxo, i64 1
  %i.bzd = sext i32 %i.bzc to i64
  %i.bze = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzd
  %i.bzf = extractelement <4 x i32> %i.bxo, i64 2
  %i.bzg = sext i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzg
  %i.bzi = extractelement <4 x i32> %i.bxo, i64 3
  %i.bzj = sext i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzj
  %i.bzl = extractelement <4 x i32> %i.bxq, i64 0
  %i.bzm = sext i32 %i.bzl to i64
  %i.bzn = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzm
  %i.bzo = extractelement <4 x i32> %i.bxq, i64 1
  %i.bzp = sext i32 %i.bzo to i64
  %i.bzq = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzp
  %i.bzr = extractelement <4 x i32> %i.bxq, i64 2
  %i.bzs = sext i32 %i.bzr to i64
  %i.bzt = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzs
  %i.bzu = extractelement <4 x i32> %i.bxq, i64 3
  %i.bzv = sext i32 %i.bzu to i64
  %i.bzw = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzv
  %i.bzx = extractelement <4 x i32> %i.bxs, i64 0
  %i.bzy = sext i32 %i.bzx to i64
  %i.bzz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzy
  %i.caa = extractelement <4 x i32> %i.bxs, i64 1
  %i.cab = sext i32 %i.caa to i64
  %i.cac = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cab
  %i.cad = extractelement <4 x i32> %i.bxs, i64 2
  %i.cae = sext i32 %i.cad to i64
  %i.caf = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cae
  %i.cag = extractelement <4 x i32> %i.bxs, i64 3
  %i.cah = sext i32 %i.cag to i64
  %i.cai = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cah
  %i.caj = extractelement <4 x i32> %i.bxu, i64 0
  %i.cak = sext i32 %i.caj to i64
  %i.cal = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cak
  %i.cam = extractelement <4 x i32> %i.bxu, i64 1
  %i.can = sext i32 %i.cam to i64
  %i.cao = getelementptr inbounds i8, ptr %i.bhv, i64 %i.can
  %i.cap = extractelement <4 x i32> %i.bxu, i64 2
  %i.caq = sext i32 %i.cap to i64
  %i.car = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caq
  %i.cas = extractelement <4 x i32> %i.bxu, i64 3
  %i.cat = sext i32 %i.cas to i64
  %i.cau = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cat
  %i.cav = extractelement <4 x i32> %i.bxw, i64 0
  %i.caw = sext i32 %i.cav to i64
  %i.cax = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caw
  %i.cay = extractelement <4 x i32> %i.bxw, i64 1
  %i.caz = sext i32 %i.cay to i64
  %i.cba = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caz
  %i.cbb = extractelement <4 x i32> %i.bxw, i64 2
  %i.cbc = sext i32 %i.cbb to i64
  %i.cbd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbc
  %i.cbe = extractelement <4 x i32> %i.bxw, i64 3
  %i.cbf = sext i32 %i.cbe to i64
  %i.cbg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbf
  %i.cbh = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cbi = icmp ult <32 x i32> %i.cbh, %broadcast.splat1435
  %i.cbj = select <32 x i1> %i.cbi, <32 x i8> %broadcast.splat1433, <32 x i8> zeroinitializer
  %i.cbk = or disjoint <32 x i8> %i.cbj, %broadcast.splat ; 32 uses
  %i.cbl = extractelement <32 x i8> %i.cbk, i64 0
  store i8 %i.cbl, ptr %i.bxx, align 1, !tbaa !32
  %i.cbm = extractelement <32 x i8> %i.cbk, i64 1
  store i8 %i.cbm, ptr %i.bxy, align 1, !tbaa !32
  %i.cbn = extractelement <32 x i8> %i.cbk, i64 2
  store i8 %i.cbn, ptr %i.bxz, align 1, !tbaa !32
  %i.cbo = extractelement <32 x i8> %i.cbk, i64 3
  store i8 %i.cbo, ptr %i.bya, align 1, !tbaa !32
  %i.cbp = extractelement <32 x i8> %i.cbk, i64 4
  store i8 %i.cbp, ptr %i.byd, align 1, !tbaa !32
  %i.cbq = extractelement <32 x i8> %i.cbk, i64 5
  store i8 %i.cbq, ptr %i.byg, align 1, !tbaa !32
  %i.cbr = extractelement <32 x i8> %i.cbk, i64 6
  store i8 %i.cbr, ptr %i.byj, align 1, !tbaa !32
  %i.cbs = extractelement <32 x i8> %i.cbk, i64 7
  store i8 %i.cbs, ptr %i.bym, align 1, !tbaa !32
  %i.cbt = extractelement <32 x i8> %i.cbk, i64 8
  store i8 %i.cbt, ptr %i.byp, align 1, !tbaa !32
  %i.cbu = extractelement <32 x i8> %i.cbk, i64 9
  store i8 %i.cbu, ptr %i.bys, align 1, !tbaa !32
  %i.cbv = extractelement <32 x i8> %i.cbk, i64 10
  store i8 %i.cbv, ptr %i.byv, align 1, !tbaa !32
  %i.cbw = extractelement <32 x i8> %i.cbk, i64 11
  store i8 %i.cbw, ptr %i.byy, align 1, !tbaa !32
  %i.cbx = extractelement <32 x i8> %i.cbk, i64 12
  store i8 %i.cbx, ptr %i.bzb, align 1, !tbaa !32
  %i.cby = extractelement <32 x i8> %i.cbk, i64 13
  store i8 %i.cby, ptr %i.bze, align 1, !tbaa !32
  %i.cbz = extractelement <32 x i8> %i.cbk, i64 14
  store i8 %i.cbz, ptr %i.bzh, align 1, !tbaa !32
  %i.cca = extractelement <32 x i8> %i.cbk, i64 15
  store i8 %i.cca, ptr %i.bzk, align 1, !tbaa !32
  %69 = extractelement <32 x i8> %i.cbk, i64 16
  store i8 %69, ptr %i.bzn, align 1, !tbaa !32
  %70 = extractelement <32 x i8> %i.cbk, i64 17
  store i8 %70, ptr %i.bzq, align 1, !tbaa !32
  %71 = extractelement <32 x i8> %i.cbk, i64 18
  store i8 %71, ptr %i.bzt, align 1, !tbaa !32
  %72 = extractelement <32 x i8> %i.cbk, i64 19
  store i8 %72, ptr %i.bzw, align 1, !tbaa !32
  %73 = extractelement <32 x i8> %i.cbk, i64 20
  store i8 %73, ptr %i.bzz, align 1, !tbaa !32
  %74 = extractelement <32 x i8> %i.cbk, i64 21
  store i8 %74, ptr %i.cac, align 1, !tbaa !32
  %75 = extractelement <32 x i8> %i.cbk, i64 22
  store i8 %75, ptr %i.caf, align 1, !tbaa !32
  %76 = extractelement <32 x i8> %i.cbk, i64 23
  store i8 %76, ptr %i.cai, align 1, !tbaa !32
  %77 = extractelement <32 x i8> %i.cbk, i64 24
  store i8 %77, ptr %i.cal, align 1, !tbaa !32
  %78 = extractelement <32 x i8> %i.cbk, i64 25
  store i8 %78, ptr %i.cao, align 1, !tbaa !32
  %79 = extractelement <32 x i8> %i.cbk, i64 26
  store i8 %79, ptr %i.car, align 1, !tbaa !32
  %80 = extractelement <32 x i8> %i.cbk, i64 27
  store i8 %80, ptr %i.cau, align 1, !tbaa !32
  %81 = extractelement <32 x i8> %i.cbk, i64 28
  store i8 %81, ptr %i.cax, align 1, !tbaa !32
  %82 = extractelement <32 x i8> %i.cbk, i64 29
  store i8 %82, ptr %i.cba, align 1, !tbaa !32
  %83 = extractelement <32 x i8> %i.cbk, i64 30
  store i8 %83, ptr %i.cbd, align 1, !tbaa !32
  %84 = extractelement <32 x i8> %i.cbk, i64 31
  store i8 %84, ptr %i.cbg, align 1, !tbaa !32
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 256)
  %i.ccb = icmp eq i32 %index.next, %n.vec
  br i1 %i.ccb, label %middle.block, label %vector.body, !llvm.loop !1361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.bwr, %n.vec
  br i1 %cmp.n, label %.preheader.i.i488, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i490.preheader, label %vec.epilog.ph, !prof !546

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.bwt, %vec.epilog.iter.check ], [ %i.bvv, %vector.main.loop.iter.check ]
  %n.vec1439 = and i32 %i.bwr, 1073741816         ; 3 uses
  %i.ccc = shl i32 %n.vec1439, 3
  %i.ccd = add i32 %i.bvv, %i.ccc
  %broadcast.splatinsert1440 = insertelement <8 x i8> poison, i8 %i.bwl, i64 0
  %broadcast.splat1441 = shufflevector <8 x i8> %broadcast.splatinsert1440, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1442 = insertelement <8 x i8> poison, i8 %i.bwm, i64 0
  %broadcast.splat1443 = shufflevector <8 x i8> %broadcast.splatinsert1442, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1444 = insertelement <8 x i32> poison, i32 %i.bvz, i64 0
  %broadcast.splat1445 = shufflevector <8 x i32> %broadcast.splatinsert1444, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1446 = insertelement <8 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat1447 = shufflevector <8 x i32> %broadcast.splatinsert1446, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1448 = add nsw <8 x i32> %broadcast.splat1447, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1449 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1451, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind1450 = phi <8 x i32> [ %induction1448, %vec.epilog.ph ], [ %vec.ind.next1452, %vec.epilog.vector.body ] ; 2 uses
  %i.cce = shl i32 %index1449, 3
  %i.ccf = add i32 %i.bvv, %i.cce                 ; 5 uses
  %i.ccg = add i32 %i.ccf, 8
  %i.cch = add i32 %i.ccf, 16
  %i.cci = add i32 %i.ccf, 24
  %i.ccj = sdiv i32 %i.ccf, 8
  %i.cck = sdiv i32 %i.ccg, 8
  %i.ccl = sdiv i32 %i.cch, 8
  %i.ccm = sdiv i32 %i.cci, 8
  %i.ccn = sext i32 %i.ccj to i64
  %i.cco = sext i32 %i.cck to i64
  %i.ccp = sext i32 %i.ccl to i64
  %i.ccq = sext i32 %i.ccm to i64
  %i.ccr = insertelement <4 x i32> poison, i32 %i.ccf, i64 0
  %i.ccs = shufflevector <4 x i32> %i.ccr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cct = add <4 x i32> %i.ccs, <i32 32, i32 40, i32 48, i32 56>
  %i.ccu = sdiv <4 x i32> %i.cct, splat (i32 8)   ; 4 uses
  %i.ccv = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ccn
  %i.ccw = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cco
  %i.ccx = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ccp
  %i.ccy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ccq
  %i.ccz = extractelement <4 x i32> %i.ccu, i64 0
  %i.cda = sext i32 %i.ccz to i64
  %i.cdb = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cda
  %i.cdc = extractelement <4 x i32> %i.ccu, i64 1
  %i.cdd = sext i32 %i.cdc to i64
  %i.cde = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cdd
  %i.cdf = extractelement <4 x i32> %i.ccu, i64 2
  %i.cdg = sext i32 %i.cdf to i64
  %i.cdh = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cdg
  %i.cdi = extractelement <4 x i32> %i.ccu, i64 3
  %i.cdj = sext i32 %i.cdi to i64
  %i.cdk = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cdj
  %i.cdl = add nuw <8 x i32> %vec.ind1450, splat (i32 4)
  %i.cdm = icmp ult <8 x i32> %i.cdl, %broadcast.splat1445
  %i.cdn = select <8 x i1> %i.cdm, <8 x i8> %broadcast.splat1443, <8 x i8> zeroinitializer
  %i.cdo = or disjoint <8 x i8> %i.cdn, %broadcast.splat1441 ; 8 uses
  %i.cdp = extractelement <8 x i8> %i.cdo, i64 0
  store i8 %i.cdp, ptr %i.ccv, align 1, !tbaa !32
  %i.cdq = extractelement <8 x i8> %i.cdo, i64 1
  store i8 %i.cdq, ptr %i.ccw, align 1, !tbaa !32
  %i.cdr = extractelement <8 x i8> %i.cdo, i64 2
  store i8 %i.cdr, ptr %i.ccx, align 1, !tbaa !32
  %i.cds = extractelement <8 x i8> %i.cdo, i64 3
  store i8 %i.cds, ptr %i.ccy, align 1, !tbaa !32
  %85 = extractelement <8 x i8> %i.cdo, i64 4
  store i8 %85, ptr %i.cdb, align 1, !tbaa !32
  %86 = extractelement <8 x i8> %i.cdo, i64 5
  store i8 %86, ptr %i.cde, align 1, !tbaa !32
  %87 = extractelement <8 x i8> %i.cdo, i64 6
  store i8 %87, ptr %i.cdh, align 1, !tbaa !32
  %88 = extractelement <8 x i8> %i.cdo, i64 7
  store i8 %88, ptr %i.cdk, align 1, !tbaa !32
  %index.next1451 = add nuw i32 %index1449, 8     ; 2 uses
  %vec.ind.next1452 = add nsw <8 x i32> %vec.ind1450, splat (i32 64)
  %i.cdt = icmp eq i32 %index.next1451, %n.vec1439
  br i1 %i.cdt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1362

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1453 = icmp eq i32 %i.bwr, %n.vec1439
  br i1 %cmp.n1453, label %.preheader.i.i488, label %.lr.ph.i.i490.preheader

.lr.ph.i.i490.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03241.i.i.ph = phi i32 [ %i.bvv, %iter.check ], [ %i.bwt, %vec.epilog.iter.check ], [ %i.ccd, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i490

.preheader.i.i488:                                ; preds = %.lr.ph.i.i490, %middle.block, %vec.epilog.middle.block, %bb.pl
  %i.cdu = sext i32 %i.bvx to i64                 ; 2 uses
  %i.cdv = icmp ult i32 %i.bvz, %i.bvx
  br i1 %i.cdv, label %.lr.ph43.i.preheader.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i

.lr.ph43.i.preheader.i:                           ; preds = %.preheader.i.i488
  %i.cdw = icmp slt i64 %i.bwd, %i.bwf
  br i1 %i.cdw, label %.lr.ph43.i.us.i, label %.lr.ph43.i.i

.lr.ph43.i.us.i:                                  ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.us.i
  %.042.i.us.i = phi i64 [ %i.cee, %.lr.ph43.i.us.i ], [ %i.bwa, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cdx = lshr i64 %.042.i.us.i, 3
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.cdx ; 2 uses
  %i.cdz = load i8, ptr %i.cdy, align 1, !tbaa !32
  %i.cea = trunc i64 %.042.i.us.i to i8
  %i.ceb = and i8 %i.cea, 7
  %i.cec = shl nuw i8 1, %i.ceb
  %i.ced = or i8 %i.cec, %i.cdz
  store i8 %i.ced, ptr %i.cdy, align 1, !tbaa !32
  %i.cee = add nuw i64 %.042.i.us.i, 1            ; 2 uses
  %i.cef = icmp ult i64 %i.cee, %i.cdu
  br i1 %i.cef, label %.lr.ph43.i.us.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1363

.lr.ph.i.i490:                                    ; preds = %.lr.ph.i.i490.preheader, %.lr.ph.i.i490
  %.03241.i.i = phi i32 [ %i.cel, %.lr.ph.i.i490 ], [ %.03241.i.i.ph, %.lr.ph.i.i490.preheader ] ; 3 uses
  %i.ceg = sdiv i32 %.03241.i.i, 8
  %i.ceh = sext i32 %i.ceg to i64
  %i.cei = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ceh
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.cej = icmp ult i32 %invariant.op.i.i, %i.bvz
  %i.cek = select i1 %i.cej, i8 %i.bwm, i8 0
  %spec.select.i = or disjoint i8 %i.cek, %i.bwl
  store i8 %spec.select.i, ptr %i.cei, align 1, !tbaa !32
  %i.cel = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cem = icmp ult i32 %i.cel, %i.bvz
  br i1 %i.cem, label %.lr.ph.i.i490, label %.preheader.i.i488, !llvm.loop !1364

.lr.ph43.i.i:                                     ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.i
  %.042.i.i = phi i64 [ %i.ceu, %.lr.ph43.i.i ], [ %i.bwa, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cen = lshr i64 %.042.i.i, 3
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.cen ; 2 uses
  %i.cep = load i8, ptr %i.ceo, align 1, !tbaa !32
  %i.ceq = and i64 %.042.i.i, 7
  %i.cer = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ceq
  %i.ces = load i8, ptr %i.cer, align 1, !tbaa !32
  %i.cet = and i8 %i.ces, %i.cep
  store i8 %i.cet, ptr %i.ceo, align 1, !tbaa !32
  %i.ceu = add nuw i64 %.042.i.i, 1               ; 2 uses
  %i.cev = icmp ult i64 %i.ceu, %i.cdu
  br i1 %i.cev, label %.lr.ph43.i.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1363

bb.pm:                                            ; preds = %bb.pk
  %i.cew = getelementptr inbounds nuw i8, ptr %i.bhq, i64 144
  %i.cex = load ptr, ptr %i.cew, align 8, !tbaa !550 ; 3 uses
  br i1 %i.bwb, label %.lr.ph.preheader.i.i, label %.preheader.i56.i487

.lr.ph.preheader.i.i:                             ; preds = %bb.pm
  %i.cey = sext i32 %i.bvv to i64
  %i.cez = insertelement <4 x i64> poison, i64 %i.bwd, i64 0
  %i.cfa = shufflevector <4 x i64> %i.cez, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pn

.preheader.i56.i487:                              ; preds = %.critedge.i62.i, %bb.pm
  %i.cfb = sext i32 %i.bvx to i64
  %i.cfc = icmp ult i32 %i.bvz, %i.bvx
  br i1 %i.cfc, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i

.critedge.i62.i:                                  ; preds = %bb.po, %bb.pn
  %indvars.iv.next.i63.i = add nsw i64 %indvars.iv.i61.i, 8 ; 2 uses
  %i.cfd = trunc nsw i64 %indvars.iv.next.i63.i to i32
  %i.cfe = icmp ugt i32 %i.bvz, %i.cfd
  br i1 %i.cfe, label %bb.pn, label %.preheader.i56.i487, !llvm.loop !1365

bb.pn:                                            ; preds = %.critedge.i62.i, %.lr.ph.preheader.i.i
  %indvars.iv.i61.i = phi i64 [ %i.cey, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i63.i, %.critedge.i62.i ] ; 4 uses
  %i.cff = trunc nsw i64 %indvars.iv.i61.i to i32
  %i.cfg = sdiv i32 %i.cff, 8
  %i.cfh = sext i32 %i.cfg to i64
  %i.cfi = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cfh ; 3 uses
  store i8 0, ptr %i.cfi, align 1, !tbaa !32
  %i.cfj = getelementptr inbounds [8 x i8], ptr %i.cex, i64 %indvars.iv.i61.i
  %i.cfk = load <4 x i64>, ptr %i.cfj, align 1, !tbaa !32, !noalias !1366
  %i.cfl = icmp sgt <4 x i64> %i.cfk, %i.cfa
  %i.cfm = bitcast <4 x i1> %i.cfl to i4
  %i.cfn = zext i4 %i.cfm to i8                   ; 2 uses
  store i8 %i.cfn, ptr %i.cfi, align 1, !tbaa !32
  %i.cfo = add nuw nsw i64 %indvars.iv.i61.i, 4   ; 2 uses
  %i.cfp = trunc nsw i64 %i.cfo to i32
  %i.cfq = icmp ugt i32 %i.bvz, %i.cfp
  br i1 %i.cfq, label %bb.po, label %.critedge.i62.i

bb.po:                                            ; preds = %bb.pn
  %i.cfr = getelementptr inbounds [8 x i8], ptr %i.cex, i64 %i.cfo
  %i.cfs = load <4 x i64>, ptr %i.cfr, align 1, !tbaa !32, !noalias !1366
  %i.cft = icmp sgt <4 x i64> %i.cfs, %i.cfa
  %i.cfu = bitcast <4 x i1> %i.cft to i4
  %i.cfv = zext i4 %i.cfu to i8
  %i.cfw = shl nuw i8 %i.cfv, 4
  %i.cfx = or disjoint i8 %i.cfw, %i.cfn
  store i8 %i.cfx, ptr %i.cfi, align 1, !tbaa !32
  br label %.critedge.i62.i

.lr.ph43.i57.i:                                   ; preds = %.preheader.i56.i487, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i
  %.042.i58.i = phi i64 [ %i.cgm, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i ], [ %i.bwa, %.preheader.i56.i487 ] ; 5 uses
  %i.cfy = getelementptr inbounds nuw [8 x i8], ptr %i.cex, i64 %.042.i58.i
  %i.cfz = load i64, ptr %i.cfy, align 8, !tbaa !176
  %i.cga = icmp slt i64 %i.bwd, %i.cfz
  %i.cgb = lshr i64 %.042.i58.i, 3
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.cgb ; 2 uses
  %i.cgd = load i8, ptr %i.cgc, align 1, !tbaa !32 ; 2 uses
  br i1 %i.cga, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %.lr.ph43.i57.i
  %i.cge = trunc i64 %.042.i58.i to i8
  %i.cgf = and i8 %i.cge, 7
  %i.cgg = shl nuw i8 1, %i.cgf
  %i.cgh = or i8 %i.cgg, %i.cgd
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i

bb.pq:                                            ; preds = %.lr.ph43.i57.i
  %i.cgi = and i64 %.042.i58.i, 7
  %i.cgj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cgi
  %i.cgk = load i8, ptr %i.cgj, align 1, !tbaa !32
  %i.cgl = and i8 %i.cgk, %i.cgd
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i: ; preds = %bb.pq, %bb.pp
  %.sink.i.i60.i = phi i8 [ %i.cgl, %bb.pq ], [ %i.cgh, %bb.pp ]
  store i8 %.sink.i.i60.i, ptr %i.cgc, align 1, !tbaa !32
  %i.cgm = add nuw i64 %.042.i58.i, 1             ; 2 uses
  %i.cgn = icmp ult i64 %i.cgm, %i.cfb
  br i1 %i.cgn, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1373

bb.pr:                                            ; preds = %bb.pj
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.cgp = load ptr, ptr %i.cgo, align 8, !tbaa !550 ; 6 uses
  br i1 %i.bvt, label %bb.ps, label %bb.px

bb.ps:                                            ; preds = %bb.pr
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.bhq, i64 168
  %i.cgr = load i64, ptr %i.cgq, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bwb, label %.lr.ph.preheader.i69.i, label %.preheader.i64.i

.lr.ph.preheader.i69.i:                           ; preds = %bb.ps
  %i.cgs = sext i32 %i.bvv to i64
  %i.cgt = insertelement <4 x i64> poison, i64 %i.cgr, i64 0
  %i.cgu = shufflevector <4 x i64> %i.cgt, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pt

.preheader.i64.i:                                 ; preds = %.critedge.i71.i, %bb.ps
  %i.cgv = sext i32 %i.bvx to i64
  %i.cgw = icmp ult i32 %i.bvz, %i.bvx
  br i1 %i.cgw, label %.lr.ph43.i65.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i

.critedge.i71.i:                                  ; preds = %bb.pu, %bb.pt
  %indvars.iv.next.i72.i = add nsw i64 %indvars.iv.i70.i, 8 ; 2 uses
  %i.cgx = trunc nsw i64 %indvars.iv.next.i72.i to i32
  %i.cgy = icmp ugt i32 %i.bvz, %i.cgx
  br i1 %i.cgy, label %bb.pt, label %.preheader.i64.i, !llvm.loop !1374

bb.pt:                                            ; preds = %.critedge.i71.i, %.lr.ph.preheader.i69.i
  %indvars.iv.i70.i = phi i64 [ %i.cgs, %.lr.ph.preheader.i69.i ], [ %indvars.iv.next.i72.i, %.critedge.i71.i ] ; 4 uses
  %i.cgz = trunc nsw i64 %indvars.iv.i70.i to i32
  %i.cha = sdiv i32 %i.cgz, 8
  %i.chb = sext i32 %i.cha to i64
  %i.chc = getelementptr inbounds i8, ptr %i.bhv, i64 %i.chb ; 3 uses
  store i8 0, ptr %i.chc, align 1, !tbaa !32
  %i.chd = getelementptr inbounds [8 x i8], ptr %i.cgp, i64 %indvars.iv.i70.i
  %i.che = load <4 x i64>, ptr %i.chd, align 1, !tbaa !32, !noalias !1375
  %i.chf = icmp sgt <4 x i64> %i.cgu, %i.che
  %i.chg = bitcast <4 x i1> %i.chf to i4
  %i.chh = zext i4 %i.chg to i8                   ; 2 uses
  store i8 %i.chh, ptr %i.chc, align 1, !tbaa !32
  %i.chi = add nuw nsw i64 %indvars.iv.i70.i, 4   ; 2 uses
  %i.chj = trunc nsw i64 %i.chi to i32
  %i.chk = icmp ugt i32 %i.bvz, %i.chj
  br i1 %i.chk, label %bb.pu, label %.critedge.i71.i

bb.pu:                                            ; preds = %bb.pt
  %i.chl = getelementptr inbounds [8 x i8], ptr %i.cgp, i64 %i.chi
  %i.chm = load <4 x i64>, ptr %i.chl, align 1, !tbaa !32, !noalias !1375
  %i.chn = icmp sgt <4 x i64> %i.cgu, %i.chm
  %i.cho = bitcast <4 x i1> %i.chn to i4
  %i.chp = zext i4 %i.cho to i8
  %i.chq = shl nuw i8 %i.chp, 4
  %i.chr = or disjoint i8 %i.chq, %i.chh
end_hunk_2
begin_hunk_3_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
.body49.i383:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406, %.loopexit.split-lp.loopexit.i430, %.loopexit.i457, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454
  %eh.lpad-body50.i384 = phi { ptr, i32 } [ %i.bue, %bb.ou ], [ %.pn.i.i.i.i.i463, %bb.nf ], [ %i.bnk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454 ], [ %i.bmm, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i408, %bb.oi ], [ %i.bry, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403 ], [ %.pn.i.i.i.i.i.i.i.i.i433, %bb.pf ], [ %i.bvc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427 ], [ %lpad.loopexit.split-lp.i382, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381 ], [ %lpad.loopexit.i458, %.loopexit.i457 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i430 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406 ], [ %i.bra, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i364

.body.i364:                                       ; preds = %.body49.i383, %bb.md
  %.pn.i365 = phi { ptr, i32 } [ %eh.lpad-body50.i384, %.body49.i383 ], [ %i.bjk, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357
  %i.bvq = load i32, ptr %i.bhw, align 4, !tbaa !288
  %i.bvr = icmp eq i32 %i.bvq, 1
  %i.bvs = load i32, ptr %i.bhy, align 4, !tbaa !288
  %i.bvt = icmp eq i32 %i.bvs, 1                  ; 2 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bho, i64 28
  %i.bvv = load i32, ptr %i.bvu, align 4, !tbaa !291 ; 14 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bho, i64 32
  %i.bvx = load i32, ptr %i.bvw, align 8, !tbaa !300 ; 9 uses
  %i.bvy = sub i32 %i.bvx, %i.bvv
  %i.bvz = and i32 %i.bvy, -4                     ; 17 uses
  %i.bwa = sext i32 %i.bvz to i64                 ; 5 uses
  %i.bwb = icmp ult i32 %i.bvv, %i.bvz            ; 4 uses
  br i1 %i.bvr, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bwd = load i64, ptr %i.bwc, align 8, !tbaa !537 ; 4 uses
  br i1 %i.bvt, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bhq, i64 168
  %i.bwf = load i64, ptr %i.bwe, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bwb, label %iter.check, label %.preheader.i.i488

iter.check:                                       ; preds = %bb.pl
  %i.bwg = insertelement <4 x i64> poison, i64 %i.bwd, i64 0
  %i.bwh = insertelement <4 x i64> poison, i64 %i.bwf, i64 0
  %i.bwi = icmp sgt <4 x i64> %i.bwg, %i.bwh
  %i.bwj = shufflevector <4 x i1> %i.bwi, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bwk = bitcast <4 x i1> %i.bwj to i4
  %i.bwl = zext i4 %i.bwk to i8                   ; 4 uses
  %i.bwm = shl nuw i8 %i.bwl, 4                   ; 3 uses
  %i.bwn = add i32 %i.bvv, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvz, i32 %i.bwn)
  %i.bwo = xor i32 %i.bvv, -1
  %i.bwp = add i32 %umax, %i.bwo                  ; 3 uses
  %i.bwq = lshr i32 %i.bwp, 3
  %i.bwr = add nuw nsw i32 %i.bwq, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bwp, 56
  br i1 %min.iters.check, label %.lr.ph.i.i490.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1405 = icmp ult i32 %i.bwp, 248
  br i1 %min.iters.check1405, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.bwr, 24
  %n.vec = and i32 %i.bwr, 1073741792             ; 4 uses
  %i.bws = shl i32 %n.vec, 3
  %i.bwt = add i32 %i.bvv, %i.bws                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bwl, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1406 = insertelement <32 x i8> poison, i8 %i.bwm, i64 0
  %broadcast.splat1407 = shufflevector <32 x i8> %broadcast.splatinsert1406, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1408 = insertelement <32 x i32> poison, i32 %i.bvz, i64 0
  %broadcast.splat1409 = shufflevector <32 x i32> %broadcast.splatinsert1408, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1410 = insertelement <32 x i32> poison, i32 %i.bvv, i64 0
  %broadcast.splat1411 = shufflevector <32 x i32> %broadcast.splatinsert1410, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1411, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwu = shl i32 %index, 3
  %i.bwv = add i32 %i.bvv, %i.bwu                 ; 5 uses
  %i.bww = add i32 %i.bwv, 8
  %i.bwx = add i32 %i.bwv, 16
  %i.bwy = add i32 %i.bwv, 24
  %i.bwz = sdiv i32 %i.bwv, 8
  %i.bxa = sdiv i32 %i.bww, 8
  %i.bxb = sdiv i32 %i.bwx, 8
  %i.bxc = sdiv i32 %i.bwy, 8
  %i.bxd = sext i32 %i.bwz to i64
  %i.bxe = sext i32 %i.bxa to i64
  %i.bxf = sext i32 %i.bxb to i64
  %i.bxg = sext i32 %i.bxc to i64
  %i.bxh = insertelement <4 x i32> poison, i32 %i.bwv, i64 0
  %i.bxi = shufflevector <4 x i32> %i.bxh, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bxj = add <4 x i32> %i.bxi, <i32 32, i32 40, i32 48, i32 56>
  %i.bxk = sdiv <4 x i32> %i.bxj, splat (i32 8)   ; 4 uses
  %i.bxl = add <4 x i32> %i.bxi, <i32 64, i32 72, i32 80, i32 88>
  %i.bxm = sdiv <4 x i32> %i.bxl, splat (i32 8)   ; 4 uses
  %i.bxn = add <4 x i32> %i.bxi, <i32 96, i32 104, i32 112, i32 120>
  %i.bxo = sdiv <4 x i32> %i.bxn, splat (i32 8)   ; 4 uses
  %i.bxp = add <4 x i32> %i.bxi, <i32 128, i32 136, i32 144, i32 152>
  %i.bxq = sdiv <4 x i32> %i.bxp, splat (i32 8)   ; 4 uses
  %i.bxr = add <4 x i32> %i.bxi, <i32 160, i32 168, i32 176, i32 184>
  %i.bxs = sdiv <4 x i32> %i.bxr, splat (i32 8)   ; 4 uses
  %i.bxt = add <4 x i32> %i.bxi, <i32 192, i32 200, i32 208, i32 216>
  %i.bxu = sdiv <4 x i32> %i.bxt, splat (i32 8)   ; 4 uses
  %i.bxv = add <4 x i32> %i.bxi, <i32 224, i32 232, i32 240, i32 248>
  %i.bxw = sdiv <4 x i32> %i.bxv, splat (i32 8)   ; 4 uses
  %i.bxx = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxd
  %i.bxy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxe
  %i.bxz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxf
  %i.bya = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxg
  %i.byb = extractelement <4 x i32> %i.bxk, i64 0
  %i.byc = sext i32 %i.byb to i64
  %i.byd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byc
  %i.bye = extractelement <4 x i32> %i.bxk, i64 1
  %i.byf = sext i32 %i.bye to i64
  %i.byg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byf
  %i.byh = extractelement <4 x i32> %i.bxk, i64 2
  %i.byi = sext i32 %i.byh to i64
  %i.byj = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byi
  %i.byk = extractelement <4 x i32> %i.bxk, i64 3
  %i.byl = sext i32 %i.byk to i64
  %i.bym = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byl
  %i.byn = extractelement <4 x i32> %i.bxm, i64 0
  %i.byo = sext i32 %i.byn to i64
  %i.byp = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byo
  %i.byq = extractelement <4 x i32> %i.bxm, i64 1
  %i.byr = sext i32 %i.byq to i64
  %i.bys = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byr
  %i.byt = extractelement <4 x i32> %i.bxm, i64 2
  %i.byu = sext i32 %i.byt to i64
  %i.byv = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byu
  %i.byw = extractelement <4 x i32> %i.bxm, i64 3
  %i.byx = sext i32 %i.byw to i64
  %i.byy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byx
  %i.byz = extractelement <4 x i32> %i.bxo, i64 0
  %i.bza = sext i32 %i.byz to i64
  %i.bzb = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bza
  %i.bzc = extractelement <4 x i32> %i.bxo, i64 1
  %i.bzd = sext i32 %i.bzc to i64
  %i.bze = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzd
  %i.bzf = extractelement <4 x i32> %i.bxo, i64 2
  %i.bzg = sext i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzg
  %i.bzi = extractelement <4 x i32> %i.bxo, i64 3
  %i.bzj = sext i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzj
  %i.bzl = extractelement <4 x i32> %i.bxq, i64 0
  %i.bzm = sext i32 %i.bzl to i64
  %i.bzn = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzm
  %i.bzo = extractelement <4 x i32> %i.bxq, i64 1
  %i.bzp = sext i32 %i.bzo to i64
  %i.bzq = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzp
  %i.bzr = extractelement <4 x i32> %i.bxq, i64 2
  %i.bzs = sext i32 %i.bzr to i64
  %i.bzt = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzs
  %i.bzu = extractelement <4 x i32> %i.bxq, i64 3
  %i.bzv = sext i32 %i.bzu to i64
  %i.bzw = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzv
  %i.bzx = extractelement <4 x i32> %i.bxs, i64 0
  %i.bzy = sext i32 %i.bzx to i64
  %i.bzz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzy
  %i.caa = extractelement <4 x i32> %i.bxs, i64 1
  %i.cab = sext i32 %i.caa to i64
  %i.cac = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cab
  %i.cad = extractelement <4 x i32> %i.bxs, i64 2
  %i.cae = sext i32 %i.cad to i64
  %i.caf = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cae
  %i.cag = extractelement <4 x i32> %i.bxs, i64 3
  %i.cah = sext i32 %i.cag to i64
  %i.cai = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cah
  %i.caj = extractelement <4 x i32> %i.bxu, i64 0
  %i.cak = sext i32 %i.caj to i64
  %i.cal = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cak
  %i.cam = extractelement <4 x i32> %i.bxu, i64 1
  %i.can = sext i32 %i.cam to i64
  %i.cao = getelementptr inbounds i8, ptr %i.bhv, i64 %i.can
  %i.cap = extractelement <4 x i32> %i.bxu, i64 2
  %i.caq = sext i32 %i.cap to i64
  %i.car = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caq
  %i.cas = extractelement <4 x i32> %i.bxu, i64 3
  %i.cat = sext i32 %i.cas to i64
  %i.cau = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cat
  %i.cav = extractelement <4 x i32> %i.bxw, i64 0
  %i.caw = sext i32 %i.cav to i64
  %i.cax = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caw
  %i.cay = extractelement <4 x i32> %i.bxw, i64 1
  %i.caz = sext i32 %i.cay to i64
  %i.cba = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caz
  %i.cbb = extractelement <4 x i32> %i.bxw, i64 2
  %i.cbc = sext i32 %i.cbb to i64
  %i.cbd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbc
  %i.cbe = extractelement <4 x i32> %i.bxw, i64 3
  %i.cbf = sext i32 %i.cbe to i64
  %i.cbg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbf
  %i.cbh = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cbi = icmp ult <32 x i32> %i.cbh, %broadcast.splat1409
  %i.cbj = select <32 x i1> %i.cbi, <32 x i8> %broadcast.splat1407, <32 x i8> zeroinitializer
  %i.cbk = or disjoint <32 x i8> %i.cbj, %broadcast.splat ; 32 uses
  %i.cbl = extractelement <32 x i8> %i.cbk, i64 0
  store i8 %i.cbl, ptr %i.bxx, align 1, !tbaa !32
  %i.cbm = extractelement <32 x i8> %i.cbk, i64 1
  store i8 %i.cbm, ptr %i.bxy, align 1, !tbaa !32
  %i.cbn = extractelement <32 x i8> %i.cbk, i64 2
  store i8 %i.cbn, ptr %i.bxz, align 1, !tbaa !32
  %i.cbo = extractelement <32 x i8> %i.cbk, i64 3
  store i8 %i.cbo, ptr %i.bya, align 1, !tbaa !32
  %i.cbp = extractelement <32 x i8> %i.cbk, i64 4
  store i8 %i.cbp, ptr %i.byd, align 1, !tbaa !32
  %i.cbq = extractelement <32 x i8> %i.cbk, i64 5
  store i8 %i.cbq, ptr %i.byg, align 1, !tbaa !32
  %i.cbr = extractelement <32 x i8> %i.cbk, i64 6
  store i8 %i.cbr, ptr %i.byj, align 1, !tbaa !32
  %i.cbs = extractelement <32 x i8> %i.cbk, i64 7
  store i8 %i.cbs, ptr %i.bym, align 1, !tbaa !32
  %i.cbt = extractelement <32 x i8> %i.cbk, i64 8
  store i8 %i.cbt, ptr %i.byp, align 1, !tbaa !32
  %i.cbu = extractelement <32 x i8> %i.cbk, i64 9
  store i8 %i.cbu, ptr %i.bys, align 1, !tbaa !32
  %i.cbv = extractelement <32 x i8> %i.cbk, i64 10
  store i8 %i.cbv, ptr %i.byv, align 1, !tbaa !32
  %i.cbw = extractelement <32 x i8> %i.cbk, i64 11
  store i8 %i.cbw, ptr %i.byy, align 1, !tbaa !32
  %i.cbx = extractelement <32 x i8> %i.cbk, i64 12
  store i8 %i.cbx, ptr %i.bzb, align 1, !tbaa !32
  %i.cby = extractelement <32 x i8> %i.cbk, i64 13
  store i8 %i.cby, ptr %i.bze, align 1, !tbaa !32
  %i.cbz = extractelement <32 x i8> %i.cbk, i64 14
  store i8 %i.cbz, ptr %i.bzh, align 1, !tbaa !32
  %i.cca = extractelement <32 x i8> %i.cbk, i64 15
  store i8 %i.cca, ptr %i.bzk, align 1, !tbaa !32
  %69 = extractelement <32 x i8> %i.cbk, i64 16
  store i8 %69, ptr %i.bzn, align 1, !tbaa !32
  %70 = extractelement <32 x i8> %i.cbk, i64 17
  store i8 %70, ptr %i.bzq, align 1, !tbaa !32
  %71 = extractelement <32 x i8> %i.cbk, i64 18
  store i8 %71, ptr %i.bzt, align 1, !tbaa !32
  %72 = extractelement <32 x i8> %i.cbk, i64 19
  store i8 %72, ptr %i.bzw, align 1, !tbaa !32
  %73 = extractelement <32 x i8> %i.cbk, i64 20
  store i8 %73, ptr %i.bzz, align 1, !tbaa !32
  %74 = extractelement <32 x i8> %i.cbk, i64 21
  store i8 %74, ptr %i.cac, align 1, !tbaa !32
  %75 = extractelement <32 x i8> %i.cbk, i64 22
  store i8 %75, ptr %i.caf, align 1, !tbaa !32
  %76 = extractelement <32 x i8> %i.cbk, i64 23
  store i8 %76, ptr %i.cai, align 1, !tbaa !32
  %77 = extractelement <32 x i8> %i.cbk, i64 24
  store i8 %77, ptr %i.cal, align 1, !tbaa !32
  %78 = extractelement <32 x i8> %i.cbk, i64 25
  store i8 %78, ptr %i.cao, align 1, !tbaa !32
  %79 = extractelement <32 x i8> %i.cbk, i64 26
  store i8 %79, ptr %i.car, align 1, !tbaa !32
  %80 = extractelement <32 x i8> %i.cbk, i64 27
  store i8 %80, ptr %i.cau, align 1, !tbaa !32
  %81 = extractelement <32 x i8> %i.cbk, i64 28
  store i8 %81, ptr %i.cax, align 1, !tbaa !32
  %82 = extractelement <32 x i8> %i.cbk, i64 29
  store i8 %82, ptr %i.cba, align 1, !tbaa !32
  %83 = extractelement <32 x i8> %i.cbk, i64 30
  store i8 %83, ptr %i.cbd, align 1, !tbaa !32
  %84 = extractelement <32 x i8> %i.cbk, i64 31
  store i8 %84, ptr %i.cbg, align 1, !tbaa !32
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 256)
  %i.ccb = icmp eq i32 %index.next, %n.vec
  br i1 %i.ccb, label %middle.block, label %vector.body, !llvm.loop !1632

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.bwr, %n.vec
  br i1 %cmp.n, label %.preheader.i.i488, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i490.preheader, label %vec.epilog.ph, !prof !546

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.bwt, %vec.epilog.iter.check ], [ %i.bvv, %vector.main.loop.iter.check ]
  %n.vec1413 = and i32 %i.bwr, 1073741816         ; 3 uses
  %i.ccc = shl i32 %n.vec1413, 3
  %i.ccd = add i32 %i.bvv, %i.ccc
  %broadcast.splatinsert1414 = insertelement <8 x i8> poison, i8 %i.bwl, i64 0
  %broadcast.splat1415 = shufflevector <8 x i8> %broadcast.splatinsert1414, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1416 = insertelement <8 x i8> poison, i8 %i.bwm, i64 0
  %broadcast.splat1417 = shufflevector <8 x i8> %broadcast.splatinsert1416, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1418 = insertelement <8 x i32> poison, i32 %i.bvz, i64 0
  %broadcast.splat1419 = shufflevector <8 x i32> %broadcast.splatinsert1418, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1420 = insertelement <8 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat1421 = shufflevector <8 x i32> %broadcast.splatinsert1420, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1422 = add nsw <8 x i32> %broadcast.splat1421, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1423 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1425, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind1424 = phi <8 x i32> [ %induction1422, %vec.epilog.ph ], [ %vec.ind.next1426, %vec.epilog.vector.body ] ; 2 uses
  %i.cce = shl i32 %index1423, 3
  %i.ccf = add i32 %i.bvv, %i.cce                 ; 5 uses
  %i.ccg = add i32 %i.ccf, 8
  %i.cch = add i32 %i.ccf, 16
  %i.cci = add i32 %i.ccf, 24
  %i.ccj = sdiv i32 %i.ccf, 8
  %i.cck = sdiv i32 %i.ccg, 8
  %i.ccl = sdiv i32 %i.cch, 8
  %i.ccm = sdiv i32 %i.cci, 8
  %i.ccn = sext i32 %i.ccj to i64
  %i.cco = sext i32 %i.cck to i64
  %i.ccp = sext i32 %i.ccl to i64
  %i.ccq = sext i32 %i.ccm to i64
  %i.ccr = insertelement <4 x i32> poison, i32 %i.ccf, i64 0
  %i.ccs = shufflevector <4 x i32> %i.ccr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cct = add <4 x i32> %i.ccs, <i32 32, i32 40, i32 48, i32 56>
  %i.ccu = sdiv <4 x i32> %i.cct, splat (i32 8)   ; 4 uses
  %i.ccv = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ccn
  %i.ccw = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cco
  %i.ccx = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ccp
  %i.ccy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ccq
  %i.ccz = extractelement <4 x i32> %i.ccu, i64 0
  %i.cda = sext i32 %i.ccz to i64
  %i.cdb = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cda
  %i.cdc = extractelement <4 x i32> %i.ccu, i64 1
  %i.cdd = sext i32 %i.cdc to i64
  %i.cde = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cdd
  %i.cdf = extractelement <4 x i32> %i.ccu, i64 2
  %i.cdg = sext i32 %i.cdf to i64
  %i.cdh = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cdg
  %i.cdi = extractelement <4 x i32> %i.ccu, i64 3
  %i.cdj = sext i32 %i.cdi to i64
  %i.cdk = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cdj
  %i.cdl = add nuw <8 x i32> %vec.ind1424, splat (i32 4)
  %i.cdm = icmp ult <8 x i32> %i.cdl, %broadcast.splat1419
  %i.cdn = select <8 x i1> %i.cdm, <8 x i8> %broadcast.splat1417, <8 x i8> zeroinitializer
  %i.cdo = or disjoint <8 x i8> %i.cdn, %broadcast.splat1415 ; 8 uses
  %i.cdp = extractelement <8 x i8> %i.cdo, i64 0
  store i8 %i.cdp, ptr %i.ccv, align 1, !tbaa !32
  %i.cdq = extractelement <8 x i8> %i.cdo, i64 1
  store i8 %i.cdq, ptr %i.ccw, align 1, !tbaa !32
  %i.cdr = extractelement <8 x i8> %i.cdo, i64 2
  store i8 %i.cdr, ptr %i.ccx, align 1, !tbaa !32
  %i.cds = extractelement <8 x i8> %i.cdo, i64 3
  store i8 %i.cds, ptr %i.ccy, align 1, !tbaa !32
  %85 = extractelement <8 x i8> %i.cdo, i64 4
  store i8 %85, ptr %i.cdb, align 1, !tbaa !32
  %86 = extractelement <8 x i8> %i.cdo, i64 5
  store i8 %86, ptr %i.cde, align 1, !tbaa !32
  %87 = extractelement <8 x i8> %i.cdo, i64 6
  store i8 %87, ptr %i.cdh, align 1, !tbaa !32
  %88 = extractelement <8 x i8> %i.cdo, i64 7
  store i8 %88, ptr %i.cdk, align 1, !tbaa !32
  %index.next1425 = add nuw i32 %index1423, 8     ; 2 uses
  %vec.ind.next1426 = add nsw <8 x i32> %vec.ind1424, splat (i32 64)
  %i.cdt = icmp eq i32 %index.next1425, %n.vec1413
  br i1 %i.cdt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1633

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1427 = icmp eq i32 %i.bwr, %n.vec1413
  br i1 %cmp.n1427, label %.preheader.i.i488, label %.lr.ph.i.i490.preheader

.lr.ph.i.i490.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03241.i.i.ph = phi i32 [ %i.bvv, %iter.check ], [ %i.bwt, %vec.epilog.iter.check ], [ %i.ccd, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i490

.preheader.i.i488:                                ; preds = %.lr.ph.i.i490, %middle.block, %vec.epilog.middle.block, %bb.pl
  %i.cdu = sext i32 %i.bvx to i64                 ; 2 uses
  %i.cdv = icmp ult i32 %i.bvz, %i.bvx
  br i1 %i.cdv, label %.lr.ph43.i.preheader.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i

.lr.ph43.i.preheader.i:                           ; preds = %.preheader.i.i488
  %i.cdw = icmp sgt i64 %i.bwd, %i.bwf
  br i1 %i.cdw, label %.lr.ph43.i.us.i, label %.lr.ph43.i.i

.lr.ph43.i.us.i:                                  ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.us.i
  %.042.i.us.i = phi i64 [ %i.cee, %.lr.ph43.i.us.i ], [ %i.bwa, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cdx = lshr i64 %.042.i.us.i, 3
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.cdx ; 2 uses
  %i.cdz = load i8, ptr %i.cdy, align 1, !tbaa !32
  %i.cea = trunc i64 %.042.i.us.i to i8
  %i.ceb = and i8 %i.cea, 7
  %i.cec = shl nuw i8 1, %i.ceb
  %i.ced = or i8 %i.cec, %i.cdz
  store i8 %i.ced, ptr %i.cdy, align 1, !tbaa !32
  %i.cee = add nuw i64 %.042.i.us.i, 1            ; 2 uses
  %i.cef = icmp ult i64 %i.cee, %i.cdu
  br i1 %i.cef, label %.lr.ph43.i.us.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1634

.lr.ph.i.i490:                                    ; preds = %.lr.ph.i.i490.preheader, %.lr.ph.i.i490
  %.03241.i.i = phi i32 [ %i.cel, %.lr.ph.i.i490 ], [ %.03241.i.i.ph, %.lr.ph.i.i490.preheader ] ; 3 uses
  %i.ceg = sdiv i32 %.03241.i.i, 8
  %i.ceh = sext i32 %i.ceg to i64
  %i.cei = getelementptr inbounds i8, ptr %i.bhv, i64 %i.ceh
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.cej = icmp ult i32 %invariant.op.i.i, %i.bvz
  %i.cek = select i1 %i.cej, i8 %i.bwm, i8 0
  %spec.select.i = or disjoint i8 %i.cek, %i.bwl
  store i8 %spec.select.i, ptr %i.cei, align 1, !tbaa !32
  %i.cel = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cem = icmp ult i32 %i.cel, %i.bvz
  br i1 %i.cem, label %.lr.ph.i.i490, label %.preheader.i.i488, !llvm.loop !1635

.lr.ph43.i.i:                                     ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.i
  %.042.i.i = phi i64 [ %i.ceu, %.lr.ph43.i.i ], [ %i.bwa, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cen = lshr i64 %.042.i.i, 3
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.cen ; 2 uses
  %i.cep = load i8, ptr %i.ceo, align 1, !tbaa !32
  %i.ceq = and i64 %.042.i.i, 7
  %i.cer = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ceq
  %i.ces = load i8, ptr %i.cer, align 1, !tbaa !32
  %i.cet = and i8 %i.ces, %i.cep
  store i8 %i.cet, ptr %i.ceo, align 1, !tbaa !32
  %i.ceu = add nuw i64 %.042.i.i, 1               ; 2 uses
  %i.cev = icmp ult i64 %i.ceu, %i.cdu
  br i1 %i.cev, label %.lr.ph43.i.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1634

bb.pm:                                            ; preds = %bb.pk
  %i.cew = getelementptr inbounds nuw i8, ptr %i.bhq, i64 144
  %i.cex = load ptr, ptr %i.cew, align 8, !tbaa !550 ; 3 uses
  br i1 %i.bwb, label %.lr.ph.preheader.i.i, label %.preheader.i56.i487

.lr.ph.preheader.i.i:                             ; preds = %bb.pm
  %i.cey = sext i32 %i.bvv to i64
  %i.cez = insertelement <4 x i64> poison, i64 %i.bwd, i64 0
  %i.cfa = shufflevector <4 x i64> %i.cez, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pn

.preheader.i56.i487:                              ; preds = %.critedge.i62.i, %bb.pm
  %i.cfb = sext i32 %i.bvx to i64
  %i.cfc = icmp ult i32 %i.bvz, %i.bvx
  br i1 %i.cfc, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i

.critedge.i62.i:                                  ; preds = %bb.po, %bb.pn
  %indvars.iv.next.i63.i = add nsw i64 %indvars.iv.i61.i, 8 ; 2 uses
  %i.cfd = trunc nsw i64 %indvars.iv.next.i63.i to i32
  %i.cfe = icmp ugt i32 %i.bvz, %i.cfd
  br i1 %i.cfe, label %bb.pn, label %.preheader.i56.i487, !llvm.loop !1636

bb.pn:                                            ; preds = %.critedge.i62.i, %.lr.ph.preheader.i.i
  %indvars.iv.i61.i = phi i64 [ %i.cey, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i63.i, %.critedge.i62.i ] ; 4 uses
  %i.cff = trunc nsw i64 %indvars.iv.i61.i to i32
  %i.cfg = sdiv i32 %i.cff, 8
  %i.cfh = sext i32 %i.cfg to i64
  %i.cfi = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cfh ; 3 uses
  store i8 0, ptr %i.cfi, align 1, !tbaa !32
  %i.cfj = getelementptr inbounds [8 x i8], ptr %i.cex, i64 %indvars.iv.i61.i
  %i.cfk = load <4 x i64>, ptr %i.cfj, align 1, !tbaa !32, !noalias !1637
  %i.cfl = icmp sgt <4 x i64> %i.cfa, %i.cfk
  %i.cfm = bitcast <4 x i1> %i.cfl to i4
  %i.cfn = zext i4 %i.cfm to i8                   ; 2 uses
  store i8 %i.cfn, ptr %i.cfi, align 1, !tbaa !32
  %i.cfo = add nuw nsw i64 %indvars.iv.i61.i, 4   ; 2 uses
  %i.cfp = trunc nsw i64 %i.cfo to i32
  %i.cfq = icmp ugt i32 %i.bvz, %i.cfp
  br i1 %i.cfq, label %bb.po, label %.critedge.i62.i

bb.po:                                            ; preds = %bb.pn
  %i.cfr = getelementptr inbounds [8 x i8], ptr %i.cex, i64 %i.cfo
  %i.cfs = load <4 x i64>, ptr %i.cfr, align 1, !tbaa !32, !noalias !1637
  %i.cft = icmp sgt <4 x i64> %i.cfa, %i.cfs
  %i.cfu = bitcast <4 x i1> %i.cft to i4
  %i.cfv = zext i4 %i.cfu to i8
  %i.cfw = shl nuw i8 %i.cfv, 4
  %i.cfx = or disjoint i8 %i.cfw, %i.cfn
  store i8 %i.cfx, ptr %i.cfi, align 1, !tbaa !32
  br label %.critedge.i62.i

.lr.ph43.i57.i:                                   ; preds = %.preheader.i56.i487, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i
  %.042.i58.i = phi i64 [ %i.cgm, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i ], [ %i.bwa, %.preheader.i56.i487 ] ; 5 uses
  %i.cfy = getelementptr inbounds nuw [8 x i8], ptr %i.cex, i64 %.042.i58.i
  %i.cfz = load i64, ptr %i.cfy, align 8, !tbaa !176
  %i.cga = icmp sgt i64 %i.bwd, %i.cfz
  %i.cgb = lshr i64 %.042.i58.i, 3
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.cgb ; 2 uses
  %i.cgd = load i8, ptr %i.cgc, align 1, !tbaa !32 ; 2 uses
  br i1 %i.cga, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %.lr.ph43.i57.i
  %i.cge = trunc i64 %.042.i58.i to i8
  %i.cgf = and i8 %i.cge, 7
  %i.cgg = shl nuw i8 1, %i.cgf
  %i.cgh = or i8 %i.cgg, %i.cgd
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i

bb.pq:                                            ; preds = %.lr.ph43.i57.i
  %i.cgi = and i64 %.042.i58.i, 7
  %i.cgj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cgi
  %i.cgk = load i8, ptr %i.cgj, align 1, !tbaa !32
  %i.cgl = and i8 %i.cgk, %i.cgd
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i59.i: ; preds = %bb.pq, %bb.pp
  %.sink.i.i60.i = phi i8 [ %i.cgl, %bb.pq ], [ %i.cgh, %bb.pp ]
  store i8 %.sink.i.i60.i, ptr %i.cgc, align 1, !tbaa !32
  %i.cgm = add nuw i64 %.042.i58.i, 1             ; 2 uses
  %i.cgn = icmp ult i64 %i.cgm, %i.cfb
  br i1 %i.cgn, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1644

bb.pr:                                            ; preds = %bb.pj
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.cgp = load ptr, ptr %i.cgo, align 8, !tbaa !550 ; 6 uses
  br i1 %i.bvt, label %bb.ps, label %bb.px

bb.ps:                                            ; preds = %bb.pr
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.bhq, i64 168
  %i.cgr = load i64, ptr %i.cgq, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bwb, label %.lr.ph.preheader.i69.i, label %.preheader.i64.i

.lr.ph.preheader.i69.i:                           ; preds = %bb.ps
  %i.cgs = sext i32 %i.bvv to i64
  %i.cgt = insertelement <4 x i64> poison, i64 %i.cgr, i64 0
  %i.cgu = shufflevector <4 x i64> %i.cgt, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pt

.preheader.i64.i:                                 ; preds = %.critedge.i71.i, %bb.ps
  %i.cgv = sext i32 %i.bvx to i64
  %i.cgw = icmp ult i32 %i.bvz, %i.bvx
  br i1 %i.cgw, label %.lr.ph43.i65.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i

.critedge.i71.i:                                  ; preds = %bb.pu, %bb.pt
  %indvars.iv.next.i72.i = add nsw i64 %indvars.iv.i70.i, 8 ; 2 uses
  %i.cgx = trunc nsw i64 %indvars.iv.next.i72.i to i32
  %i.cgy = icmp ugt i32 %i.bvz, %i.cgx
  br i1 %i.cgy, label %bb.pt, label %.preheader.i64.i, !llvm.loop !1645

bb.pt:                                            ; preds = %.critedge.i71.i, %.lr.ph.preheader.i69.i
  %indvars.iv.i70.i = phi i64 [ %i.cgs, %.lr.ph.preheader.i69.i ], [ %indvars.iv.next.i72.i, %.critedge.i71.i ] ; 4 uses
  %i.cgz = trunc nsw i64 %indvars.iv.i70.i to i32
  %i.cha = sdiv i32 %i.cgz, 8
  %i.chb = sext i32 %i.cha to i64
  %i.chc = getelementptr inbounds i8, ptr %i.bhv, i64 %i.chb ; 3 uses
  store i8 0, ptr %i.chc, align 1, !tbaa !32
  %i.chd = getelementptr inbounds [8 x i8], ptr %i.cgp, i64 %indvars.iv.i70.i
  %i.che = load <4 x i64>, ptr %i.chd, align 1, !tbaa !32, !noalias !1646
  %i.chf = icmp sgt <4 x i64> %i.che, %i.cgu
  %i.chg = bitcast <4 x i1> %i.chf to i4
  %i.chh = zext i4 %i.chg to i8                   ; 2 uses
  store i8 %i.chh, ptr %i.chc, align 1, !tbaa !32
  %i.chi = add nuw nsw i64 %indvars.iv.i70.i, 4   ; 2 uses
  %i.chj = trunc nsw i64 %i.chi to i32
  %i.chk = icmp ugt i32 %i.bvz, %i.chj
  br i1 %i.chk, label %bb.pu, label %.critedge.i71.i

bb.pu:                                            ; preds = %bb.pt
  %i.chl = getelementptr inbounds [8 x i8], ptr %i.cgp, i64 %i.chi
  %i.chm = load <4 x i64>, ptr %i.chl, align 1, !tbaa !32, !noalias !1646
  %i.chn = icmp sgt <4 x i64> %i.chm, %i.cgu
  %i.cho = bitcast <4 x i1> %i.chn to i4
  %i.chp = zext i4 %i.cho to i8
  %i.chq = shl nuw i8 %i.chp, 4
  %i.chr = or disjoint i8 %i.chq, %i.chh
end_hunk_3
begin_hunk_4_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a

.body49.i393:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416, %.loopexit.split-lp.loopexit.i440, %.loopexit.i467, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464
  %eh.lpad-body50.i394 = phi { ptr, i32 } [ %i.btm, %bb.ou ], [ %.pn.i.i.i.i.i473, %bb.nf ], [ %i.bms, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464 ], [ %i.blu, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i418, %bb.oi ], [ %i.brg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413 ], [ %.pn.i.i.i.i.i.i.i.i.i443, %bb.pf ], [ %i.buk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437 ], [ %lpad.loopexit.split-lp.i392, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391 ], [ %lpad.loopexit.i468, %.loopexit.i467 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i440 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416 ], [ %i.bqi, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i374

.body.i374:                                       ; preds = %.body49.i393, %bb.md
  %.pn.i375 = phi { ptr, i32 } [ %eh.lpad-body50.i394, %.body49.i393 ], [ %i.bis, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367
  %i.buy = load i32, ptr %i.bhe, align 4, !tbaa !288
  %i.buz = icmp eq i32 %i.buy, 1
  %i.bva = load i32, ptr %i.bhg, align 4, !tbaa !288
  %i.bvb = icmp eq i32 %i.bva, 1                  ; 2 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bgw, i64 28
  %i.bvd = load i32, ptr %i.bvc, align 4, !tbaa !291 ; 14 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bgw, i64 32
  %i.bvf = load i32, ptr %i.bve, align 8, !tbaa !300 ; 9 uses
  %i.bvg = sub i32 %i.bvf, %i.bvd
  %i.bvh = and i32 %i.bvg, -4                     ; 17 uses
  %i.bvi = sext i32 %i.bvh to i64                 ; 5 uses
  %i.bvj = icmp ult i32 %i.bvd, %i.bvh            ; 4 uses
  br i1 %i.buz, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bvl = load i64, ptr %i.bvk, align 8, !tbaa !537 ; 4 uses
  br i1 %i.bvb, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bgy, i64 168
  %i.bvn = load i64, ptr %i.bvm, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bvj, label %iter.check, label %.preheader.i.i498

iter.check:                                       ; preds = %bb.pl
  %.scalar.i.i501 = icmp sge i64 %i.bvn, %i.bvl
  %i.bvo = insertelement <4 x i1> poison, i1 %.scalar.i.i501, i64 0
  %i.bvp = shufflevector <4 x i1> %i.bvo, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bvq = bitcast <4 x i1> %i.bvp to i4
  %i.bvr = zext i4 %i.bvq to i8                   ; 4 uses
  %i.bvs = shl nuw i8 %i.bvr, 4                   ; 3 uses
  %i.bvt = add i32 %i.bvd, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvh, i32 %i.bvt)
  %i.bvu = xor i32 %i.bvd, -1
  %i.bvv = add i32 %umax, %i.bvu                  ; 3 uses
  %i.bvw = lshr i32 %i.bvv, 3
  %i.bvx = add nuw nsw i32 %i.bvw, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bvv, 56
  br i1 %min.iters.check, label %.lr.ph.i.i502.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1434 = icmp ult i32 %i.bvv, 248
  br i1 %min.iters.check1434, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.bvx, 24
  %n.vec = and i32 %i.bvx, 1073741792             ; 4 uses
  %i.bvy = shl i32 %n.vec, 3
  %i.bvz = add i32 %i.bvd, %i.bvy                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bvr, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1435 = insertelement <32 x i8> poison, i8 %i.bvs, i64 0
  %broadcast.splat1436 = shufflevector <32 x i8> %broadcast.splatinsert1435, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1437 = insertelement <32 x i32> poison, i32 %i.bvh, i64 0
  %broadcast.splat1438 = shufflevector <32 x i32> %broadcast.splatinsert1437, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1439 = insertelement <32 x i32> poison, i32 %i.bvd, i64 0
  %broadcast.splat1440 = shufflevector <32 x i32> %broadcast.splatinsert1439, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1440, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwa = shl i32 %index, 3
  %i.bwb = add i32 %i.bvd, %i.bwa                 ; 5 uses
  %i.bwc = add i32 %i.bwb, 8
  %i.bwd = add i32 %i.bwb, 16
  %i.bwe = add i32 %i.bwb, 24
  %i.bwf = sdiv i32 %i.bwb, 8
  %i.bwg = sdiv i32 %i.bwc, 8
  %i.bwh = sdiv i32 %i.bwd, 8
  %i.bwi = sdiv i32 %i.bwe, 8
  %i.bwj = sext i32 %i.bwf to i64
  %i.bwk = sext i32 %i.bwg to i64
  %i.bwl = sext i32 %i.bwh to i64
  %i.bwm = sext i32 %i.bwi to i64
  %i.bwn = insertelement <4 x i32> poison, i32 %i.bwb, i64 0
  %i.bwo = shufflevector <4 x i32> %i.bwn, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bwp = add <4 x i32> %i.bwo, <i32 32, i32 40, i32 48, i32 56>
  %i.bwq = sdiv <4 x i32> %i.bwp, splat (i32 8)   ; 4 uses
  %i.bwr = add <4 x i32> %i.bwo, <i32 64, i32 72, i32 80, i32 88>
  %i.bws = sdiv <4 x i32> %i.bwr, splat (i32 8)   ; 4 uses
  %i.bwt = add <4 x i32> %i.bwo, <i32 96, i32 104, i32 112, i32 120>
  %i.bwu = sdiv <4 x i32> %i.bwt, splat (i32 8)   ; 4 uses
  %i.bwv = add <4 x i32> %i.bwo, <i32 128, i32 136, i32 144, i32 152>
  %i.bww = sdiv <4 x i32> %i.bwv, splat (i32 8)   ; 4 uses
  %i.bwx = add <4 x i32> %i.bwo, <i32 160, i32 168, i32 176, i32 184>
  %i.bwy = sdiv <4 x i32> %i.bwx, splat (i32 8)   ; 4 uses
  %i.bwz = add <4 x i32> %i.bwo, <i32 192, i32 200, i32 208, i32 216>
  %i.bxa = sdiv <4 x i32> %i.bwz, splat (i32 8)   ; 4 uses
  %i.bxb = add <4 x i32> %i.bwo, <i32 224, i32 232, i32 240, i32 248>
  %i.bxc = sdiv <4 x i32> %i.bxb, splat (i32 8)   ; 4 uses
  %i.bxd = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwj
  %i.bxe = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwk
  %i.bxf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwl
  %i.bxg = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwm
  %i.bxh = extractelement <4 x i32> %i.bwq, i64 0
  %i.bxi = sext i32 %i.bxh to i64
  %i.bxj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxi
  %i.bxk = extractelement <4 x i32> %i.bwq, i64 1
  %i.bxl = sext i32 %i.bxk to i64
  %i.bxm = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxl
  %i.bxn = extractelement <4 x i32> %i.bwq, i64 2
  %i.bxo = sext i32 %i.bxn to i64
  %i.bxp = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxo
  %i.bxq = extractelement <4 x i32> %i.bwq, i64 3
  %i.bxr = sext i32 %i.bxq to i64
  %i.bxs = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxr
  %i.bxt = extractelement <4 x i32> %i.bws, i64 0
  %i.bxu = sext i32 %i.bxt to i64
  %i.bxv = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxu
  %i.bxw = extractelement <4 x i32> %i.bws, i64 1
  %i.bxx = sext i32 %i.bxw to i64
  %i.bxy = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxx
  %i.bxz = extractelement <4 x i32> %i.bws, i64 2
  %i.bya = sext i32 %i.bxz to i64
  %i.byb = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bya
  %i.byc = extractelement <4 x i32> %i.bws, i64 3
  %i.byd = sext i32 %i.byc to i64
  %i.bye = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byd
  %i.byf = extractelement <4 x i32> %i.bwu, i64 0
  %i.byg = sext i32 %i.byf to i64
  %i.byh = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byg
  %i.byi = extractelement <4 x i32> %i.bwu, i64 1
  %i.byj = sext i32 %i.byi to i64
  %i.byk = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byj
  %i.byl = extractelement <4 x i32> %i.bwu, i64 2
  %i.bym = sext i32 %i.byl to i64
  %i.byn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bym
  %i.byo = extractelement <4 x i32> %i.bwu, i64 3
  %i.byp = sext i32 %i.byo to i64
  %i.byq = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byp
  %i.byr = extractelement <4 x i32> %i.bww, i64 0
  %i.bys = sext i32 %i.byr to i64
  %i.byt = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bys
  %i.byu = extractelement <4 x i32> %i.bww, i64 1
  %i.byv = sext i32 %i.byu to i64
  %i.byw = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byv
  %i.byx = extractelement <4 x i32> %i.bww, i64 2
  %i.byy = sext i32 %i.byx to i64
  %i.byz = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byy
  %i.bza = extractelement <4 x i32> %i.bww, i64 3
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzb
  %i.bzd = extractelement <4 x i32> %i.bwy, i64 0
  %i.bze = sext i32 %i.bzd to i64
  %i.bzf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bze
  %i.bzg = extractelement <4 x i32> %i.bwy, i64 1
  %i.bzh = sext i32 %i.bzg to i64
  %i.bzi = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzh
  %i.bzj = extractelement <4 x i32> %i.bwy, i64 2
  %i.bzk = sext i32 %i.bzj to i64
  %i.bzl = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzk
  %i.bzm = extractelement <4 x i32> %i.bwy, i64 3
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzn
  %i.bzp = extractelement <4 x i32> %i.bxa, i64 0
  %i.bzq = sext i32 %i.bzp to i64
  %i.bzr = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzq
  %i.bzs = extractelement <4 x i32> %i.bxa, i64 1
  %i.bzt = sext i32 %i.bzs to i64
  %i.bzu = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzt
  %i.bzv = extractelement <4 x i32> %i.bxa, i64 2
  %i.bzw = sext i32 %i.bzv to i64
  %i.bzx = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzw
  %i.bzy = extractelement <4 x i32> %i.bxa, i64 3
  %i.bzz = sext i32 %i.bzy to i64
  %i.caa = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzz
  %i.cab = extractelement <4 x i32> %i.bxc, i64 0
  %i.cac = sext i32 %i.cab to i64
  %i.cad = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cac
  %i.cae = extractelement <4 x i32> %i.bxc, i64 1
  %i.caf = sext i32 %i.cae to i64
  %i.cag = getelementptr inbounds i8, ptr %i.bhd, i64 %i.caf
  %i.cah = extractelement <4 x i32> %i.bxc, i64 2
  %i.cai = sext i32 %i.cah to i64
  %i.caj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cai
  %i.cak = extractelement <4 x i32> %i.bxc, i64 3
  %i.cal = sext i32 %i.cak to i64
  %i.cam = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cal
  %i.can = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cao = icmp ult <32 x i32> %i.can, %broadcast.splat1438
  %i.cap = select <32 x i1> %i.cao, <32 x i8> %broadcast.splat1436, <32 x i8> zeroinitializer
  %i.caq = or disjoint <32 x i8> %i.cap, %broadcast.splat ; 32 uses
  %i.car = extractelement <32 x i8> %i.caq, i64 0
  store i8 %i.car, ptr %i.bxd, align 1, !tbaa !32
  %i.cas = extractelement <32 x i8> %i.caq, i64 1
  store i8 %i.cas, ptr %i.bxe, align 1, !tbaa !32
  %i.cat = extractelement <32 x i8> %i.caq, i64 2
  store i8 %i.cat, ptr %i.bxf, align 1, !tbaa !32
  %i.cau = extractelement <32 x i8> %i.caq, i64 3
  store i8 %i.cau, ptr %i.bxg, align 1, !tbaa !32
  %i.cav = extractelement <32 x i8> %i.caq, i64 4
  store i8 %i.cav, ptr %i.bxj, align 1, !tbaa !32
  %i.caw = extractelement <32 x i8> %i.caq, i64 5
  store i8 %i.caw, ptr %i.bxm, align 1, !tbaa !32
  %i.cax = extractelement <32 x i8> %i.caq, i64 6
  store i8 %i.cax, ptr %i.bxp, align 1, !tbaa !32
  %i.cay = extractelement <32 x i8> %i.caq, i64 7
  store i8 %i.cay, ptr %i.bxs, align 1, !tbaa !32
  %i.caz = extractelement <32 x i8> %i.caq, i64 8
  store i8 %i.caz, ptr %i.bxv, align 1, !tbaa !32
  %i.cba = extractelement <32 x i8> %i.caq, i64 9
  store i8 %i.cba, ptr %i.bxy, align 1, !tbaa !32
  %i.cbb = extractelement <32 x i8> %i.caq, i64 10
  store i8 %i.cbb, ptr %i.byb, align 1, !tbaa !32
  %i.cbc = extractelement <32 x i8> %i.caq, i64 11
  store i8 %i.cbc, ptr %i.bye, align 1, !tbaa !32
  %i.cbd = extractelement <32 x i8> %i.caq, i64 12
  store i8 %i.cbd, ptr %i.byh, align 1, !tbaa !32
  %i.cbe = extractelement <32 x i8> %i.caq, i64 13
  store i8 %i.cbe, ptr %i.byk, align 1, !tbaa !32
  %i.cbf = extractelement <32 x i8> %i.caq, i64 14
  store i8 %i.cbf, ptr %i.byn, align 1, !tbaa !32
  %i.cbg = extractelement <32 x i8> %i.caq, i64 15
  store i8 %i.cbg, ptr %i.byq, align 1, !tbaa !32
  %69 = extractelement <32 x i8> %i.caq, i64 16
  store i8 %69, ptr %i.byt, align 1, !tbaa !32
  %70 = extractelement <32 x i8> %i.caq, i64 17
  store i8 %70, ptr %i.byw, align 1, !tbaa !32
  %71 = extractelement <32 x i8> %i.caq, i64 18
  store i8 %71, ptr %i.byz, align 1, !tbaa !32
  %72 = extractelement <32 x i8> %i.caq, i64 19
  store i8 %72, ptr %i.bzc, align 1, !tbaa !32
  %73 = extractelement <32 x i8> %i.caq, i64 20
  store i8 %73, ptr %i.bzf, align 1, !tbaa !32
  %74 = extractelement <32 x i8> %i.caq, i64 21
  store i8 %74, ptr %i.bzi, align 1, !tbaa !32
  %75 = extractelement <32 x i8> %i.caq, i64 22
  store i8 %75, ptr %i.bzl, align 1, !tbaa !32
  %76 = extractelement <32 x i8> %i.caq, i64 23
  store i8 %76, ptr %i.bzo, align 1, !tbaa !32
  %77 = extractelement <32 x i8> %i.caq, i64 24
  store i8 %77, ptr %i.bzr, align 1, !tbaa !32
  %78 = extractelement <32 x i8> %i.caq, i64 25
  store i8 %78, ptr %i.bzu, align 1, !tbaa !32
  %79 = extractelement <32 x i8> %i.caq, i64 26
  store i8 %79, ptr %i.bzx, align 1, !tbaa !32
  %80 = extractelement <32 x i8> %i.caq, i64 27
  store i8 %80, ptr %i.caa, align 1, !tbaa !32
  %81 = extractelement <32 x i8> %i.caq, i64 28
  store i8 %81, ptr %i.cad, align 1, !tbaa !32
  %82 = extractelement <32 x i8> %i.caq, i64 29
  store i8 %82, ptr %i.cag, align 1, !tbaa !32
  %83 = extractelement <32 x i8> %i.caq, i64 30
  store i8 %83, ptr %i.caj, align 1, !tbaa !32
  %84 = extractelement <32 x i8> %i.caq, i64 31
  store i8 %84, ptr %i.cam, align 1, !tbaa !32
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 256)
  %i.cbh = icmp eq i32 %index.next, %n.vec
  br i1 %i.cbh, label %middle.block, label %vector.body, !llvm.loop !1903

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.bvx, %n.vec
  br i1 %cmp.n, label %.preheader.i.i498, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i502.preheader, label %vec.epilog.ph, !prof !546

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.bvz, %vec.epilog.iter.check ], [ %i.bvd, %vector.main.loop.iter.check ]
  %n.vec1442 = and i32 %i.bvx, 1073741816         ; 3 uses
  %i.cbi = shl i32 %n.vec1442, 3
  %i.cbj = add i32 %i.bvd, %i.cbi
  %broadcast.splatinsert1443 = insertelement <8 x i8> poison, i8 %i.bvr, i64 0
  %broadcast.splat1444 = shufflevector <8 x i8> %broadcast.splatinsert1443, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1445 = insertelement <8 x i8> poison, i8 %i.bvs, i64 0
  %broadcast.splat1446 = shufflevector <8 x i8> %broadcast.splatinsert1445, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1447 = insertelement <8 x i32> poison, i32 %i.bvh, i64 0
  %broadcast.splat1448 = shufflevector <8 x i32> %broadcast.splatinsert1447, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1449 = insertelement <8 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat1450 = shufflevector <8 x i32> %broadcast.splatinsert1449, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1451 = add nsw <8 x i32> %broadcast.splat1450, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1452 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1454, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind1453 = phi <8 x i32> [ %induction1451, %vec.epilog.ph ], [ %vec.ind.next1455, %vec.epilog.vector.body ] ; 2 uses
  %i.cbk = shl i32 %index1452, 3
  %i.cbl = add i32 %i.bvd, %i.cbk                 ; 5 uses
  %i.cbm = add i32 %i.cbl, 8
  %i.cbn = add i32 %i.cbl, 16
  %i.cbo = add i32 %i.cbl, 24
  %i.cbp = sdiv i32 %i.cbl, 8
  %i.cbq = sdiv i32 %i.cbm, 8
  %i.cbr = sdiv i32 %i.cbn, 8
  %i.cbs = sdiv i32 %i.cbo, 8
  %i.cbt = sext i32 %i.cbp to i64
  %i.cbu = sext i32 %i.cbq to i64
  %i.cbv = sext i32 %i.cbr to i64
  %i.cbw = sext i32 %i.cbs to i64
  %i.cbx = insertelement <4 x i32> poison, i32 %i.cbl, i64 0
  %i.cby = shufflevector <4 x i32> %i.cbx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cbz = add <4 x i32> %i.cby, <i32 32, i32 40, i32 48, i32 56>
  %i.cca = sdiv <4 x i32> %i.cbz, splat (i32 8)   ; 4 uses
  %i.ccb = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbt
  %i.ccc = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbu
  %i.ccd = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbv
  %i.cce = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbw
  %i.ccf = extractelement <4 x i32> %i.cca, i64 0
  %i.ccg = sext i32 %i.ccf to i64
  %i.cch = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccg
  %i.cci = extractelement <4 x i32> %i.cca, i64 1
  %i.ccj = sext i32 %i.cci to i64
  %i.cck = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccj
  %i.ccl = extractelement <4 x i32> %i.cca, i64 2
  %i.ccm = sext i32 %i.ccl to i64
  %i.ccn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccm
  %i.cco = extractelement <4 x i32> %i.cca, i64 3
  %i.ccp = sext i32 %i.cco to i64
  %i.ccq = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccp
  %i.ccr = add nuw <8 x i32> %vec.ind1453, splat (i32 4)
  %i.ccs = icmp ult <8 x i32> %i.ccr, %broadcast.splat1448
  %i.cct = select <8 x i1> %i.ccs, <8 x i8> %broadcast.splat1446, <8 x i8> zeroinitializer
  %i.ccu = or disjoint <8 x i8> %i.cct, %broadcast.splat1444 ; 8 uses
  %i.ccv = extractelement <8 x i8> %i.ccu, i64 0
  store i8 %i.ccv, ptr %i.ccb, align 1, !tbaa !32
  %i.ccw = extractelement <8 x i8> %i.ccu, i64 1
  store i8 %i.ccw, ptr %i.ccc, align 1, !tbaa !32
  %i.ccx = extractelement <8 x i8> %i.ccu, i64 2
  store i8 %i.ccx, ptr %i.ccd, align 1, !tbaa !32
  %i.ccy = extractelement <8 x i8> %i.ccu, i64 3
  store i8 %i.ccy, ptr %i.cce, align 1, !tbaa !32
  %85 = extractelement <8 x i8> %i.ccu, i64 4
  store i8 %85, ptr %i.cch, align 1, !tbaa !32
  %86 = extractelement <8 x i8> %i.ccu, i64 5
  store i8 %86, ptr %i.cck, align 1, !tbaa !32
  %87 = extractelement <8 x i8> %i.ccu, i64 6
  store i8 %87, ptr %i.ccn, align 1, !tbaa !32
  %88 = extractelement <8 x i8> %i.ccu, i64 7
  store i8 %88, ptr %i.ccq, align 1, !tbaa !32
  %index.next1454 = add nuw i32 %index1452, 8     ; 2 uses
  %vec.ind.next1455 = add nsw <8 x i32> %vec.ind1453, splat (i32 64)
  %i.ccz = icmp eq i32 %index.next1454, %n.vec1442
  br i1 %i.ccz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1904

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1456 = icmp eq i32 %i.bvx, %n.vec1442
  br i1 %cmp.n1456, label %.preheader.i.i498, label %.lr.ph.i.i502.preheader

.lr.ph.i.i502.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03241.i.i.ph = phi i32 [ %i.bvd, %iter.check ], [ %i.bvz, %vec.epilog.iter.check ], [ %i.cbj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i502

.preheader.i.i498:                                ; preds = %.lr.ph.i.i502, %middle.block, %vec.epilog.middle.block, %bb.pl
  %i.cda = sext i32 %i.bvf to i64                 ; 2 uses
  %i.cdb = icmp ult i32 %i.bvh, %i.bvf
  br i1 %i.cdb, label %.lr.ph43.i.preheader.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph43.i.preheader.i:                           ; preds = %.preheader.i.i498
  %.not.i.i499 = icmp sgt i64 %i.bvl, %i.bvn
  br i1 %.not.i.i499, label %.lr.ph43.i.us.i, label %.lr.ph43.i.i

.lr.ph43.i.us.i:                                  ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.us.i
  %.042.i.us.i = phi i64 [ %i.cdj, %.lr.ph43.i.us.i ], [ %i.bvi, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cdc = lshr i64 %.042.i.us.i, 3
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.cdc ; 2 uses
  %i.cde = load i8, ptr %i.cdd, align 1, !tbaa !32
  %i.cdf = and i64 %.042.i.us.i, 7
  %i.cdg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cdf
  %i.cdh = load i8, ptr %i.cdg, align 1, !tbaa !32
  %i.cdi = and i8 %i.cdh, %i.cde
  store i8 %i.cdi, ptr %i.cdd, align 1, !tbaa !32
  %i.cdj = add nuw i64 %.042.i.us.i, 1            ; 2 uses
  %i.cdk = icmp ult i64 %i.cdj, %i.cda
  br i1 %i.cdk, label %.lr.ph43.i.us.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1905

.lr.ph.i.i502:                                    ; preds = %.lr.ph.i.i502.preheader, %.lr.ph.i.i502
  %.03241.i.i = phi i32 [ %i.cdq, %.lr.ph.i.i502 ], [ %.03241.i.i.ph, %.lr.ph.i.i502.preheader ] ; 3 uses
  %i.cdl = sdiv i32 %.03241.i.i, 8
  %i.cdm = sext i32 %i.cdl to i64
  %i.cdn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cdm
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.cdo = icmp ult i32 %invariant.op.i.i, %i.bvh
  %i.cdp = select i1 %i.cdo, i8 %i.bvs, i8 0
  %spec.select.i = or disjoint i8 %i.cdp, %i.bvr
  store i8 %spec.select.i, ptr %i.cdn, align 1, !tbaa !32
  %i.cdq = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cdr = icmp ult i32 %i.cdq, %i.bvh
  br i1 %i.cdr, label %.lr.ph.i.i502, label %.preheader.i.i498, !llvm.loop !1906

.lr.ph43.i.i:                                     ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.i
  %.042.i.i = phi i64 [ %i.cdz, %.lr.ph43.i.i ], [ %i.bvi, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cds = lshr i64 %.042.i.i, 3
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.cds ; 2 uses
  %i.cdu = load i8, ptr %i.cdt, align 1, !tbaa !32
  %i.cdv = trunc i64 %.042.i.i to i8
  %i.cdw = and i8 %i.cdv, 7
  %i.cdx = shl nuw i8 1, %i.cdw
  %i.cdy = or i8 %i.cdx, %i.cdu
  store i8 %i.cdy, ptr %i.cdt, align 1, !tbaa !32
  %i.cdz = add nuw i64 %.042.i.i, 1               ; 2 uses
  %i.cea = icmp ult i64 %i.cdz, %i.cda
  br i1 %i.cea, label %.lr.ph43.i.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1905

bb.pm:                                            ; preds = %bb.pk
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.bgy, i64 144
  %i.cec = load ptr, ptr %i.ceb, align 8, !tbaa !550 ; 3 uses
  br i1 %i.bvj, label %.lr.ph.preheader.i.i, label %.preheader.i56.i497

.lr.ph.preheader.i.i:                             ; preds = %bb.pm
  %i.ced = sext i32 %i.bvd to i64
  %i.cee = insertelement <4 x i64> poison, i64 %i.bvl, i64 0
  %i.cef = shufflevector <4 x i64> %i.cee, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pn

.preheader.i56.i497:                              ; preds = %.critedge.i63.i, %bb.pm
  %i.ceg = sext i32 %i.bvf to i64
  %i.ceh = icmp ult i32 %i.bvh, %i.bvf
  br i1 %i.ceh, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i

.critedge.i63.i:                                  ; preds = %bb.po, %bb.pn
  %indvars.iv.next.i64.i = add nsw i64 %indvars.iv.i62.i, 8 ; 2 uses
  %i.cei = trunc nsw i64 %indvars.iv.next.i64.i to i32
  %i.cej = icmp ugt i32 %i.bvh, %i.cei
  br i1 %i.cej, label %bb.pn, label %.preheader.i56.i497, !llvm.loop !1907

bb.pn:                                            ; preds = %.critedge.i63.i, %.lr.ph.preheader.i.i
  %indvars.iv.i62.i = phi i64 [ %i.ced, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i64.i, %.critedge.i63.i ] ; 4 uses
  %i.cek = trunc nsw i64 %indvars.iv.i62.i to i32
  %i.cel = sdiv i32 %i.cek, 8
  %i.cem = sext i32 %i.cel to i64
  %i.cen = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cem ; 3 uses
  store i8 0, ptr %i.cen, align 1, !tbaa !32
  %i.ceo = getelementptr inbounds [8 x i8], ptr %i.cec, i64 %indvars.iv.i62.i
  %i.cep = load <4 x i64>, ptr %i.ceo, align 1, !tbaa !32, !noalias !1908
  %i.ceq = icmp sge <4 x i64> %i.cep, %i.cef
  %i.cer = bitcast <4 x i1> %i.ceq to i4
  %i.ces = zext i4 %i.cer to i8                   ; 2 uses
  store i8 %i.ces, ptr %i.cen, align 1, !tbaa !32
  %i.cet = add nuw nsw i64 %indvars.iv.i62.i, 4   ; 2 uses
  %i.ceu = trunc nsw i64 %i.cet to i32
  %i.cev = icmp ugt i32 %i.bvh, %i.ceu
  br i1 %i.cev, label %bb.po, label %.critedge.i63.i

bb.po:                                            ; preds = %bb.pn
  %i.cew = getelementptr inbounds [8 x i8], ptr %i.cec, i64 %i.cet
  %i.cex = load <4 x i64>, ptr %i.cew, align 1, !tbaa !32, !noalias !1908
  %i.cey = icmp sge <4 x i64> %i.cex, %i.cef
  %i.cez = bitcast <4 x i1> %i.cey to i4
  %i.cfa = zext i4 %i.cez to i8
  %i.cfb = shl nuw i8 %i.cfa, 4
  %i.cfc = or disjoint i8 %i.cfb, %i.ces
  store i8 %i.cfc, ptr %i.cen, align 1, !tbaa !32
  br label %.critedge.i63.i

.lr.ph43.i57.i:                                   ; preds = %.preheader.i56.i497, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i
  %.042.i58.i = phi i64 [ %i.cfq, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i ], [ %i.bvi, %.preheader.i56.i497 ] ; 5 uses
  %i.cfd = getelementptr inbounds nuw [8 x i8], ptr %i.cec, i64 %.042.i58.i
  %i.cfe = load i64, ptr %i.cfd, align 8, !tbaa !176
  %.not.i59.i = icmp sgt i64 %i.bvl, %i.cfe
  %i.cff = lshr i64 %.042.i58.i, 3
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.cff ; 2 uses
  %i.cfh = load i8, ptr %i.cfg, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i59.i, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %.lr.ph43.i57.i
  %i.cfi = trunc i64 %.042.i58.i to i8
  %i.cfj = and i8 %i.cfi, 7
  %i.cfk = shl nuw i8 1, %i.cfj
  %i.cfl = or i8 %i.cfk, %i.cfh
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i

bb.pq:                                            ; preds = %.lr.ph43.i57.i
  %i.cfm = and i64 %.042.i58.i, 7
  %i.cfn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cfm
  %i.cfo = load i8, ptr %i.cfn, align 1, !tbaa !32
  %i.cfp = and i8 %i.cfo, %i.cfh
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i: ; preds = %bb.pq, %bb.pp
  %.sink.i.i61.i = phi i8 [ %i.cfp, %bb.pq ], [ %i.cfl, %bb.pp ]
  store i8 %.sink.i.i61.i, ptr %i.cfg, align 1, !tbaa !32
  %i.cfq = add nuw i64 %.042.i58.i, 1             ; 2 uses
  %i.cfr = icmp ult i64 %i.cfq, %i.ceg
  br i1 %i.cfr, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1915

bb.pr:                                            ; preds = %bb.pj
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.cft = load ptr, ptr %i.cfs, align 8, !tbaa !550 ; 6 uses
  br i1 %i.bvb, label %bb.ps, label %bb.px

bb.ps:                                            ; preds = %bb.pr
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.bgy, i64 168
  %i.cfv = load i64, ptr %i.cfu, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bvj, label %.lr.ph.preheader.i71.i, label %.preheader.i65.i

.lr.ph.preheader.i71.i:                           ; preds = %bb.ps
  %i.cfw = sext i32 %i.bvd to i64
  %i.cfx = insertelement <4 x i64> poison, i64 %i.cfv, i64 0
  %i.cfy = shufflevector <4 x i64> %i.cfx, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pt

.preheader.i65.i:                                 ; preds = %.critedge.i73.i, %bb.ps
  %i.cfz = sext i32 %i.bvf to i64
  %i.cga = icmp ult i32 %i.bvh, %i.bvf
  br i1 %i.cga, label %.lr.ph43.i66.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i

.critedge.i73.i:                                  ; preds = %bb.pu, %bb.pt
  %indvars.iv.next.i74.i = add nsw i64 %indvars.iv.i72.i, 8 ; 2 uses
  %i.cgb = trunc nsw i64 %indvars.iv.next.i74.i to i32
  %i.cgc = icmp ugt i32 %i.bvh, %i.cgb
  br i1 %i.cgc, label %bb.pt, label %.preheader.i65.i, !llvm.loop !1916

bb.pt:                                            ; preds = %.critedge.i73.i, %.lr.ph.preheader.i71.i
  %indvars.iv.i72.i = phi i64 [ %i.cfw, %.lr.ph.preheader.i71.i ], [ %indvars.iv.next.i74.i, %.critedge.i73.i ] ; 4 uses
  %i.cgd = trunc nsw i64 %indvars.iv.i72.i to i32
  %i.cge = sdiv i32 %i.cgd, 8
  %i.cgf = sext i32 %i.cge to i64
  %i.cgg = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cgf ; 3 uses
  store i8 0, ptr %i.cgg, align 1, !tbaa !32
  %i.cgh = getelementptr inbounds [8 x i8], ptr %i.cft, i64 %indvars.iv.i72.i
  %i.cgi = load <4 x i64>, ptr %i.cgh, align 1, !tbaa !32, !noalias !1917
  %i.cgj = icmp sge <4 x i64> %i.cfy, %i.cgi
  %i.cgk = bitcast <4 x i1> %i.cgj to i4
  %i.cgl = zext i4 %i.cgk to i8                   ; 2 uses
  store i8 %i.cgl, ptr %i.cgg, align 1, !tbaa !32
  %i.cgm = add nuw nsw i64 %indvars.iv.i72.i, 4   ; 2 uses
  %i.cgn = trunc nsw i64 %i.cgm to i32
  %i.cgo = icmp ugt i32 %i.bvh, %i.cgn
  br i1 %i.cgo, label %bb.pu, label %.critedge.i73.i

bb.pu:                                            ; preds = %bb.pt
  %i.cgp = getelementptr inbounds [8 x i8], ptr %i.cft, i64 %i.cgm
  %i.cgq = load <4 x i64>, ptr %i.cgp, align 1, !tbaa !32, !noalias !1917
  %i.cgr = icmp sge <4 x i64> %i.cfy, %i.cgq
  %i.cgs = bitcast <4 x i1> %i.cgr to i4
  %i.cgt = zext i4 %i.cgs to i8
  %i.cgu = shl nuw i8 %i.cgt, 4
  %i.cgv = or disjoint i8 %i.cgu, %i.cgl
end_hunk_4
begin_hunk_5_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a

.body49.i393:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416, %.loopexit.split-lp.loopexit.i440, %.loopexit.i467, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464
  %eh.lpad-body50.i394 = phi { ptr, i32 } [ %i.btm, %bb.ou ], [ %.pn.i.i.i.i.i473, %bb.nf ], [ %i.bms, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464 ], [ %i.blu, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i418, %bb.oi ], [ %i.brg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413 ], [ %.pn.i.i.i.i.i.i.i.i.i443, %bb.pf ], [ %i.buk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437 ], [ %lpad.loopexit.split-lp.i392, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391 ], [ %lpad.loopexit.i468, %.loopexit.i467 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i440 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416 ], [ %i.bqi, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i374

.body.i374:                                       ; preds = %.body49.i393, %bb.md
  %.pn.i375 = phi { ptr, i32 } [ %eh.lpad-body50.i394, %.body49.i393 ], [ %i.bis, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367
  %i.buy = load i32, ptr %i.bhe, align 4, !tbaa !288
  %i.buz = icmp eq i32 %i.buy, 1
  %i.bva = load i32, ptr %i.bhg, align 4, !tbaa !288
  %i.bvb = icmp eq i32 %i.bva, 1                  ; 2 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bgw, i64 28
  %i.bvd = load i32, ptr %i.bvc, align 4, !tbaa !291 ; 14 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bgw, i64 32
  %i.bvf = load i32, ptr %i.bve, align 8, !tbaa !300 ; 9 uses
  %i.bvg = sub i32 %i.bvf, %i.bvd
  %i.bvh = and i32 %i.bvg, -4                     ; 17 uses
  %i.bvi = sext i32 %i.bvh to i64                 ; 5 uses
  %i.bvj = icmp ult i32 %i.bvd, %i.bvh            ; 4 uses
  br i1 %i.buz, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bvl = load i64, ptr %i.bvk, align 8, !tbaa !537 ; 4 uses
  br i1 %i.bvb, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bgy, i64 168
  %i.bvn = load i64, ptr %i.bvm, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bvj, label %iter.check, label %.preheader.i.i498

iter.check:                                       ; preds = %bb.pl
  %.scalar.i.i501 = icmp sge i64 %i.bvl, %i.bvn
  %i.bvo = insertelement <4 x i1> poison, i1 %.scalar.i.i501, i64 0
  %i.bvp = shufflevector <4 x i1> %i.bvo, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bvq = bitcast <4 x i1> %i.bvp to i4
  %i.bvr = zext i4 %i.bvq to i8                   ; 4 uses
  %i.bvs = shl nuw i8 %i.bvr, 4                   ; 3 uses
  %i.bvt = add i32 %i.bvd, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvh, i32 %i.bvt)
  %i.bvu = xor i32 %i.bvd, -1
  %i.bvv = add i32 %umax, %i.bvu                  ; 3 uses
  %i.bvw = lshr i32 %i.bvv, 3
  %i.bvx = add nuw nsw i32 %i.bvw, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bvv, 56
  br i1 %min.iters.check, label %.lr.ph.i.i502.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1434 = icmp ult i32 %i.bvv, 248
  br i1 %min.iters.check1434, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.bvx, 24
  %n.vec = and i32 %i.bvx, 1073741792             ; 4 uses
  %i.bvy = shl i32 %n.vec, 3
  %i.bvz = add i32 %i.bvd, %i.bvy                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bvr, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1435 = insertelement <32 x i8> poison, i8 %i.bvs, i64 0
  %broadcast.splat1436 = shufflevector <32 x i8> %broadcast.splatinsert1435, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1437 = insertelement <32 x i32> poison, i32 %i.bvh, i64 0
  %broadcast.splat1438 = shufflevector <32 x i32> %broadcast.splatinsert1437, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1439 = insertelement <32 x i32> poison, i32 %i.bvd, i64 0
  %broadcast.splat1440 = shufflevector <32 x i32> %broadcast.splatinsert1439, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1440, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwa = shl i32 %index, 3
  %i.bwb = add i32 %i.bvd, %i.bwa                 ; 5 uses
  %i.bwc = add i32 %i.bwb, 8
  %i.bwd = add i32 %i.bwb, 16
  %i.bwe = add i32 %i.bwb, 24
  %i.bwf = sdiv i32 %i.bwb, 8
  %i.bwg = sdiv i32 %i.bwc, 8
  %i.bwh = sdiv i32 %i.bwd, 8
  %i.bwi = sdiv i32 %i.bwe, 8
  %i.bwj = sext i32 %i.bwf to i64
  %i.bwk = sext i32 %i.bwg to i64
  %i.bwl = sext i32 %i.bwh to i64
  %i.bwm = sext i32 %i.bwi to i64
  %i.bwn = insertelement <4 x i32> poison, i32 %i.bwb, i64 0
  %i.bwo = shufflevector <4 x i32> %i.bwn, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bwp = add <4 x i32> %i.bwo, <i32 32, i32 40, i32 48, i32 56>
  %i.bwq = sdiv <4 x i32> %i.bwp, splat (i32 8)   ; 4 uses
  %i.bwr = add <4 x i32> %i.bwo, <i32 64, i32 72, i32 80, i32 88>
  %i.bws = sdiv <4 x i32> %i.bwr, splat (i32 8)   ; 4 uses
  %i.bwt = add <4 x i32> %i.bwo, <i32 96, i32 104, i32 112, i32 120>
  %i.bwu = sdiv <4 x i32> %i.bwt, splat (i32 8)   ; 4 uses
  %i.bwv = add <4 x i32> %i.bwo, <i32 128, i32 136, i32 144, i32 152>
  %i.bww = sdiv <4 x i32> %i.bwv, splat (i32 8)   ; 4 uses
  %i.bwx = add <4 x i32> %i.bwo, <i32 160, i32 168, i32 176, i32 184>
  %i.bwy = sdiv <4 x i32> %i.bwx, splat (i32 8)   ; 4 uses
  %i.bwz = add <4 x i32> %i.bwo, <i32 192, i32 200, i32 208, i32 216>
  %i.bxa = sdiv <4 x i32> %i.bwz, splat (i32 8)   ; 4 uses
  %i.bxb = add <4 x i32> %i.bwo, <i32 224, i32 232, i32 240, i32 248>
  %i.bxc = sdiv <4 x i32> %i.bxb, splat (i32 8)   ; 4 uses
  %i.bxd = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwj
  %i.bxe = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwk
  %i.bxf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwl
  %i.bxg = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwm
  %i.bxh = extractelement <4 x i32> %i.bwq, i64 0
  %i.bxi = sext i32 %i.bxh to i64
  %i.bxj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxi
  %i.bxk = extractelement <4 x i32> %i.bwq, i64 1
  %i.bxl = sext i32 %i.bxk to i64
  %i.bxm = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxl
  %i.bxn = extractelement <4 x i32> %i.bwq, i64 2
  %i.bxo = sext i32 %i.bxn to i64
  %i.bxp = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxo
  %i.bxq = extractelement <4 x i32> %i.bwq, i64 3
  %i.bxr = sext i32 %i.bxq to i64
  %i.bxs = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxr
  %i.bxt = extractelement <4 x i32> %i.bws, i64 0
  %i.bxu = sext i32 %i.bxt to i64
  %i.bxv = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxu
  %i.bxw = extractelement <4 x i32> %i.bws, i64 1
  %i.bxx = sext i32 %i.bxw to i64
  %i.bxy = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxx
  %i.bxz = extractelement <4 x i32> %i.bws, i64 2
  %i.bya = sext i32 %i.bxz to i64
  %i.byb = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bya
  %i.byc = extractelement <4 x i32> %i.bws, i64 3
  %i.byd = sext i32 %i.byc to i64
  %i.bye = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byd
  %i.byf = extractelement <4 x i32> %i.bwu, i64 0
  %i.byg = sext i32 %i.byf to i64
  %i.byh = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byg
  %i.byi = extractelement <4 x i32> %i.bwu, i64 1
  %i.byj = sext i32 %i.byi to i64
  %i.byk = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byj
  %i.byl = extractelement <4 x i32> %i.bwu, i64 2
  %i.bym = sext i32 %i.byl to i64
  %i.byn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bym
  %i.byo = extractelement <4 x i32> %i.bwu, i64 3
  %i.byp = sext i32 %i.byo to i64
  %i.byq = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byp
  %i.byr = extractelement <4 x i32> %i.bww, i64 0
  %i.bys = sext i32 %i.byr to i64
  %i.byt = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bys
  %i.byu = extractelement <4 x i32> %i.bww, i64 1
  %i.byv = sext i32 %i.byu to i64
  %i.byw = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byv
  %i.byx = extractelement <4 x i32> %i.bww, i64 2
  %i.byy = sext i32 %i.byx to i64
  %i.byz = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byy
  %i.bza = extractelement <4 x i32> %i.bww, i64 3
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzb
  %i.bzd = extractelement <4 x i32> %i.bwy, i64 0
  %i.bze = sext i32 %i.bzd to i64
  %i.bzf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bze
  %i.bzg = extractelement <4 x i32> %i.bwy, i64 1
  %i.bzh = sext i32 %i.bzg to i64
  %i.bzi = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzh
  %i.bzj = extractelement <4 x i32> %i.bwy, i64 2
  %i.bzk = sext i32 %i.bzj to i64
  %i.bzl = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzk
  %i.bzm = extractelement <4 x i32> %i.bwy, i64 3
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzn
  %i.bzp = extractelement <4 x i32> %i.bxa, i64 0
  %i.bzq = sext i32 %i.bzp to i64
  %i.bzr = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzq
  %i.bzs = extractelement <4 x i32> %i.bxa, i64 1
  %i.bzt = sext i32 %i.bzs to i64
  %i.bzu = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzt
  %i.bzv = extractelement <4 x i32> %i.bxa, i64 2
  %i.bzw = sext i32 %i.bzv to i64
  %i.bzx = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzw
  %i.bzy = extractelement <4 x i32> %i.bxa, i64 3
  %i.bzz = sext i32 %i.bzy to i64
  %i.caa = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzz
  %i.cab = extractelement <4 x i32> %i.bxc, i64 0
  %i.cac = sext i32 %i.cab to i64
  %i.cad = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cac
  %i.cae = extractelement <4 x i32> %i.bxc, i64 1
  %i.caf = sext i32 %i.cae to i64
  %i.cag = getelementptr inbounds i8, ptr %i.bhd, i64 %i.caf
  %i.cah = extractelement <4 x i32> %i.bxc, i64 2
  %i.cai = sext i32 %i.cah to i64
  %i.caj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cai
  %i.cak = extractelement <4 x i32> %i.bxc, i64 3
  %i.cal = sext i32 %i.cak to i64
  %i.cam = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cal
  %i.can = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cao = icmp ult <32 x i32> %i.can, %broadcast.splat1438
  %i.cap = select <32 x i1> %i.cao, <32 x i8> %broadcast.splat1436, <32 x i8> zeroinitializer
  %i.caq = or disjoint <32 x i8> %i.cap, %broadcast.splat ; 32 uses
  %i.car = extractelement <32 x i8> %i.caq, i64 0
  store i8 %i.car, ptr %i.bxd, align 1, !tbaa !32
  %i.cas = extractelement <32 x i8> %i.caq, i64 1
  store i8 %i.cas, ptr %i.bxe, align 1, !tbaa !32
  %i.cat = extractelement <32 x i8> %i.caq, i64 2
  store i8 %i.cat, ptr %i.bxf, align 1, !tbaa !32
  %i.cau = extractelement <32 x i8> %i.caq, i64 3
  store i8 %i.cau, ptr %i.bxg, align 1, !tbaa !32
  %i.cav = extractelement <32 x i8> %i.caq, i64 4
  store i8 %i.cav, ptr %i.bxj, align 1, !tbaa !32
  %i.caw = extractelement <32 x i8> %i.caq, i64 5
  store i8 %i.caw, ptr %i.bxm, align 1, !tbaa !32
  %i.cax = extractelement <32 x i8> %i.caq, i64 6
  store i8 %i.cax, ptr %i.bxp, align 1, !tbaa !32
  %i.cay = extractelement <32 x i8> %i.caq, i64 7
  store i8 %i.cay, ptr %i.bxs, align 1, !tbaa !32
  %i.caz = extractelement <32 x i8> %i.caq, i64 8
  store i8 %i.caz, ptr %i.bxv, align 1, !tbaa !32
  %i.cba = extractelement <32 x i8> %i.caq, i64 9
  store i8 %i.cba, ptr %i.bxy, align 1, !tbaa !32
  %i.cbb = extractelement <32 x i8> %i.caq, i64 10
  store i8 %i.cbb, ptr %i.byb, align 1, !tbaa !32
  %i.cbc = extractelement <32 x i8> %i.caq, i64 11
  store i8 %i.cbc, ptr %i.bye, align 1, !tbaa !32
  %i.cbd = extractelement <32 x i8> %i.caq, i64 12
  store i8 %i.cbd, ptr %i.byh, align 1, !tbaa !32
  %i.cbe = extractelement <32 x i8> %i.caq, i64 13
  store i8 %i.cbe, ptr %i.byk, align 1, !tbaa !32
  %i.cbf = extractelement <32 x i8> %i.caq, i64 14
  store i8 %i.cbf, ptr %i.byn, align 1, !tbaa !32
  %i.cbg = extractelement <32 x i8> %i.caq, i64 15
  store i8 %i.cbg, ptr %i.byq, align 1, !tbaa !32
  %69 = extractelement <32 x i8> %i.caq, i64 16
  store i8 %69, ptr %i.byt, align 1, !tbaa !32
  %70 = extractelement <32 x i8> %i.caq, i64 17
  store i8 %70, ptr %i.byw, align 1, !tbaa !32
  %71 = extractelement <32 x i8> %i.caq, i64 18
  store i8 %71, ptr %i.byz, align 1, !tbaa !32
  %72 = extractelement <32 x i8> %i.caq, i64 19
  store i8 %72, ptr %i.bzc, align 1, !tbaa !32
  %73 = extractelement <32 x i8> %i.caq, i64 20
  store i8 %73, ptr %i.bzf, align 1, !tbaa !32
  %74 = extractelement <32 x i8> %i.caq, i64 21
  store i8 %74, ptr %i.bzi, align 1, !tbaa !32
  %75 = extractelement <32 x i8> %i.caq, i64 22
  store i8 %75, ptr %i.bzl, align 1, !tbaa !32
  %76 = extractelement <32 x i8> %i.caq, i64 23
  store i8 %76, ptr %i.bzo, align 1, !tbaa !32
  %77 = extractelement <32 x i8> %i.caq, i64 24
  store i8 %77, ptr %i.bzr, align 1, !tbaa !32
  %78 = extractelement <32 x i8> %i.caq, i64 25
  store i8 %78, ptr %i.bzu, align 1, !tbaa !32
  %79 = extractelement <32 x i8> %i.caq, i64 26
  store i8 %79, ptr %i.bzx, align 1, !tbaa !32
  %80 = extractelement <32 x i8> %i.caq, i64 27
  store i8 %80, ptr %i.caa, align 1, !tbaa !32
  %81 = extractelement <32 x i8> %i.caq, i64 28
  store i8 %81, ptr %i.cad, align 1, !tbaa !32
  %82 = extractelement <32 x i8> %i.caq, i64 29
  store i8 %82, ptr %i.cag, align 1, !tbaa !32
  %83 = extractelement <32 x i8> %i.caq, i64 30
  store i8 %83, ptr %i.caj, align 1, !tbaa !32
  %84 = extractelement <32 x i8> %i.caq, i64 31
  store i8 %84, ptr %i.cam, align 1, !tbaa !32
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 256)
  %i.cbh = icmp eq i32 %index.next, %n.vec
  br i1 %i.cbh, label %middle.block, label %vector.body, !llvm.loop !2174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.bvx, %n.vec
  br i1 %cmp.n, label %.preheader.i.i498, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i502.preheader, label %vec.epilog.ph, !prof !546

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.bvz, %vec.epilog.iter.check ], [ %i.bvd, %vector.main.loop.iter.check ]
  %n.vec1442 = and i32 %i.bvx, 1073741816         ; 3 uses
  %i.cbi = shl i32 %n.vec1442, 3
  %i.cbj = add i32 %i.bvd, %i.cbi
  %broadcast.splatinsert1443 = insertelement <8 x i8> poison, i8 %i.bvr, i64 0
  %broadcast.splat1444 = shufflevector <8 x i8> %broadcast.splatinsert1443, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1445 = insertelement <8 x i8> poison, i8 %i.bvs, i64 0
  %broadcast.splat1446 = shufflevector <8 x i8> %broadcast.splatinsert1445, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1447 = insertelement <8 x i32> poison, i32 %i.bvh, i64 0
  %broadcast.splat1448 = shufflevector <8 x i32> %broadcast.splatinsert1447, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1449 = insertelement <8 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat1450 = shufflevector <8 x i32> %broadcast.splatinsert1449, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1451 = add nsw <8 x i32> %broadcast.splat1450, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1452 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1454, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind1453 = phi <8 x i32> [ %induction1451, %vec.epilog.ph ], [ %vec.ind.next1455, %vec.epilog.vector.body ] ; 2 uses
  %i.cbk = shl i32 %index1452, 3
  %i.cbl = add i32 %i.bvd, %i.cbk                 ; 5 uses
  %i.cbm = add i32 %i.cbl, 8
  %i.cbn = add i32 %i.cbl, 16
  %i.cbo = add i32 %i.cbl, 24
  %i.cbp = sdiv i32 %i.cbl, 8
  %i.cbq = sdiv i32 %i.cbm, 8
  %i.cbr = sdiv i32 %i.cbn, 8
  %i.cbs = sdiv i32 %i.cbo, 8
  %i.cbt = sext i32 %i.cbp to i64
  %i.cbu = sext i32 %i.cbq to i64
  %i.cbv = sext i32 %i.cbr to i64
  %i.cbw = sext i32 %i.cbs to i64
  %i.cbx = insertelement <4 x i32> poison, i32 %i.cbl, i64 0
  %i.cby = shufflevector <4 x i32> %i.cbx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cbz = add <4 x i32> %i.cby, <i32 32, i32 40, i32 48, i32 56>
  %i.cca = sdiv <4 x i32> %i.cbz, splat (i32 8)   ; 4 uses
  %i.ccb = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbt
  %i.ccc = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbu
  %i.ccd = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbv
  %i.cce = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cbw
  %i.ccf = extractelement <4 x i32> %i.cca, i64 0
  %i.ccg = sext i32 %i.ccf to i64
  %i.cch = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccg
  %i.cci = extractelement <4 x i32> %i.cca, i64 1
  %i.ccj = sext i32 %i.cci to i64
  %i.cck = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccj
  %i.ccl = extractelement <4 x i32> %i.cca, i64 2
  %i.ccm = sext i32 %i.ccl to i64
  %i.ccn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccm
  %i.cco = extractelement <4 x i32> %i.cca, i64 3
  %i.ccp = sext i32 %i.cco to i64
  %i.ccq = getelementptr inbounds i8, ptr %i.bhd, i64 %i.ccp
  %i.ccr = add nuw <8 x i32> %vec.ind1453, splat (i32 4)
  %i.ccs = icmp ult <8 x i32> %i.ccr, %broadcast.splat1448
  %i.cct = select <8 x i1> %i.ccs, <8 x i8> %broadcast.splat1446, <8 x i8> zeroinitializer
  %i.ccu = or disjoint <8 x i8> %i.cct, %broadcast.splat1444 ; 8 uses
  %i.ccv = extractelement <8 x i8> %i.ccu, i64 0
  store i8 %i.ccv, ptr %i.ccb, align 1, !tbaa !32
  %i.ccw = extractelement <8 x i8> %i.ccu, i64 1
  store i8 %i.ccw, ptr %i.ccc, align 1, !tbaa !32
  %i.ccx = extractelement <8 x i8> %i.ccu, i64 2
  store i8 %i.ccx, ptr %i.ccd, align 1, !tbaa !32
  %i.ccy = extractelement <8 x i8> %i.ccu, i64 3
  store i8 %i.ccy, ptr %i.cce, align 1, !tbaa !32
  %85 = extractelement <8 x i8> %i.ccu, i64 4
  store i8 %85, ptr %i.cch, align 1, !tbaa !32
  %86 = extractelement <8 x i8> %i.ccu, i64 5
  store i8 %86, ptr %i.cck, align 1, !tbaa !32
  %87 = extractelement <8 x i8> %i.ccu, i64 6
  store i8 %87, ptr %i.ccn, align 1, !tbaa !32
  %88 = extractelement <8 x i8> %i.ccu, i64 7
  store i8 %88, ptr %i.ccq, align 1, !tbaa !32
  %index.next1454 = add nuw i32 %index1452, 8     ; 2 uses
  %vec.ind.next1455 = add nsw <8 x i32> %vec.ind1453, splat (i32 64)
  %i.ccz = icmp eq i32 %index.next1454, %n.vec1442
  br i1 %i.ccz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1456 = icmp eq i32 %i.bvx, %n.vec1442
  br i1 %cmp.n1456, label %.preheader.i.i498, label %.lr.ph.i.i502.preheader

.lr.ph.i.i502.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03241.i.i.ph = phi i32 [ %i.bvd, %iter.check ], [ %i.bvz, %vec.epilog.iter.check ], [ %i.cbj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i502

.preheader.i.i498:                                ; preds = %.lr.ph.i.i502, %middle.block, %vec.epilog.middle.block, %bb.pl
  %i.cda = sext i32 %i.bvf to i64                 ; 2 uses
  %i.cdb = icmp ult i32 %i.bvh, %i.bvf
  br i1 %i.cdb, label %.lr.ph43.i.preheader.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph43.i.preheader.i:                           ; preds = %.preheader.i.i498
  %.not.i.i499 = icmp slt i64 %i.bvl, %i.bvn
  br i1 %.not.i.i499, label %.lr.ph43.i.us.i, label %.lr.ph43.i.i

.lr.ph43.i.us.i:                                  ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.us.i
  %.042.i.us.i = phi i64 [ %i.cdj, %.lr.ph43.i.us.i ], [ %i.bvi, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cdc = lshr i64 %.042.i.us.i, 3
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.cdc ; 2 uses
  %i.cde = load i8, ptr %i.cdd, align 1, !tbaa !32
  %i.cdf = and i64 %.042.i.us.i, 7
  %i.cdg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cdf
  %i.cdh = load i8, ptr %i.cdg, align 1, !tbaa !32
  %i.cdi = and i8 %i.cdh, %i.cde
  store i8 %i.cdi, ptr %i.cdd, align 1, !tbaa !32
  %i.cdj = add nuw i64 %.042.i.us.i, 1            ; 2 uses
  %i.cdk = icmp ult i64 %i.cdj, %i.cda
  br i1 %i.cdk, label %.lr.ph43.i.us.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2176

.lr.ph.i.i502:                                    ; preds = %.lr.ph.i.i502.preheader, %.lr.ph.i.i502
  %.03241.i.i = phi i32 [ %i.cdq, %.lr.ph.i.i502 ], [ %.03241.i.i.ph, %.lr.ph.i.i502.preheader ] ; 3 uses
  %i.cdl = sdiv i32 %.03241.i.i, 8
  %i.cdm = sext i32 %i.cdl to i64
  %i.cdn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cdm
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.cdo = icmp ult i32 %invariant.op.i.i, %i.bvh
  %i.cdp = select i1 %i.cdo, i8 %i.bvs, i8 0
  %spec.select.i = or disjoint i8 %i.cdp, %i.bvr
  store i8 %spec.select.i, ptr %i.cdn, align 1, !tbaa !32
  %i.cdq = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cdr = icmp ult i32 %i.cdq, %i.bvh
  br i1 %i.cdr, label %.lr.ph.i.i502, label %.preheader.i.i498, !llvm.loop !2177

.lr.ph43.i.i:                                     ; preds = %.lr.ph43.i.preheader.i, %.lr.ph43.i.i
  %.042.i.i = phi i64 [ %i.cdz, %.lr.ph43.i.i ], [ %i.bvi, %.lr.ph43.i.preheader.i ] ; 3 uses
  %i.cds = lshr i64 %.042.i.i, 3
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.cds ; 2 uses
  %i.cdu = load i8, ptr %i.cdt, align 1, !tbaa !32
  %i.cdv = trunc i64 %.042.i.i to i8
  %i.cdw = and i8 %i.cdv, 7
  %i.cdx = shl nuw i8 1, %i.cdw
  %i.cdy = or i8 %i.cdx, %i.cdu
  store i8 %i.cdy, ptr %i.cdt, align 1, !tbaa !32
  %i.cdz = add nuw i64 %.042.i.i, 1               ; 2 uses
  %i.cea = icmp ult i64 %i.cdz, %i.cda
  br i1 %i.cea, label %.lr.ph43.i.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2176

bb.pm:                                            ; preds = %bb.pk
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.bgy, i64 144
  %i.cec = load ptr, ptr %i.ceb, align 8, !tbaa !550 ; 3 uses
  br i1 %i.bvj, label %.lr.ph.preheader.i.i, label %.preheader.i56.i497

.lr.ph.preheader.i.i:                             ; preds = %bb.pm
  %i.ced = sext i32 %i.bvd to i64
  %i.cee = insertelement <4 x i64> poison, i64 %i.bvl, i64 0
  %i.cef = shufflevector <4 x i64> %i.cee, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pn

.preheader.i56.i497:                              ; preds = %.critedge.i63.i, %bb.pm
  %i.ceg = sext i32 %i.bvf to i64
  %i.ceh = icmp ult i32 %i.bvh, %i.bvf
  br i1 %i.ceh, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i

.critedge.i63.i:                                  ; preds = %bb.po, %bb.pn
  %indvars.iv.next.i64.i = add nsw i64 %indvars.iv.i62.i, 8 ; 2 uses
  %i.cei = trunc nsw i64 %indvars.iv.next.i64.i to i32
  %i.cej = icmp ugt i32 %i.bvh, %i.cei
  br i1 %i.cej, label %bb.pn, label %.preheader.i56.i497, !llvm.loop !2178

bb.pn:                                            ; preds = %.critedge.i63.i, %.lr.ph.preheader.i.i
  %indvars.iv.i62.i = phi i64 [ %i.ced, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i64.i, %.critedge.i63.i ] ; 4 uses
  %i.cek = trunc nsw i64 %indvars.iv.i62.i to i32
  %i.cel = sdiv i32 %i.cek, 8
  %i.cem = sext i32 %i.cel to i64
  %i.cen = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cem ; 3 uses
  store i8 0, ptr %i.cen, align 1, !tbaa !32
  %i.ceo = getelementptr inbounds [8 x i8], ptr %i.cec, i64 %indvars.iv.i62.i
  %i.cep = load <4 x i64>, ptr %i.ceo, align 1, !tbaa !32, !noalias !2179
  %i.ceq = icmp sge <4 x i64> %i.cef, %i.cep
  %i.cer = bitcast <4 x i1> %i.ceq to i4
  %i.ces = zext i4 %i.cer to i8                   ; 2 uses
  store i8 %i.ces, ptr %i.cen, align 1, !tbaa !32
  %i.cet = add nuw nsw i64 %indvars.iv.i62.i, 4   ; 2 uses
  %i.ceu = trunc nsw i64 %i.cet to i32
  %i.cev = icmp ugt i32 %i.bvh, %i.ceu
  br i1 %i.cev, label %bb.po, label %.critedge.i63.i

bb.po:                                            ; preds = %bb.pn
  %i.cew = getelementptr inbounds [8 x i8], ptr %i.cec, i64 %i.cet
  %i.cex = load <4 x i64>, ptr %i.cew, align 1, !tbaa !32, !noalias !2179
  %i.cey = icmp sge <4 x i64> %i.cef, %i.cex
  %i.cez = bitcast <4 x i1> %i.cey to i4
  %i.cfa = zext i4 %i.cez to i8
  %i.cfb = shl nuw i8 %i.cfa, 4
  %i.cfc = or disjoint i8 %i.cfb, %i.ces
  store i8 %i.cfc, ptr %i.cen, align 1, !tbaa !32
  br label %.critedge.i63.i

.lr.ph43.i57.i:                                   ; preds = %.preheader.i56.i497, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i
  %.042.i58.i = phi i64 [ %i.cfq, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i ], [ %i.bvi, %.preheader.i56.i497 ] ; 5 uses
  %i.cfd = getelementptr inbounds nuw [8 x i8], ptr %i.cec, i64 %.042.i58.i
  %i.cfe = load i64, ptr %i.cfd, align 8, !tbaa !176
  %.not.i59.i = icmp slt i64 %i.bvl, %i.cfe
  %i.cff = lshr i64 %.042.i58.i, 3
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.cff ; 2 uses
  %i.cfh = load i8, ptr %i.cfg, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i59.i, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %.lr.ph43.i57.i
  %i.cfi = trunc i64 %.042.i58.i to i8
  %i.cfj = and i8 %i.cfi, 7
  %i.cfk = shl nuw i8 1, %i.cfj
  %i.cfl = or i8 %i.cfk, %i.cfh
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i

bb.pq:                                            ; preds = %.lr.ph43.i57.i
  %i.cfm = and i64 %.042.i58.i, 7
  %i.cfn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cfm
  %i.cfo = load i8, ptr %i.cfn, align 1, !tbaa !32
  %i.cfp = and i8 %i.cfo, %i.cfh
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i60.i: ; preds = %bb.pq, %bb.pp
  %.sink.i.i61.i = phi i8 [ %i.cfp, %bb.pq ], [ %i.cfl, %bb.pp ]
  store i8 %.sink.i.i61.i, ptr %i.cfg, align 1, !tbaa !32
  %i.cfq = add nuw i64 %.042.i58.i, 1             ; 2 uses
  %i.cfr = icmp ult i64 %i.cfq, %i.ceg
  br i1 %i.cfr, label %.lr.ph43.i57.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2186

bb.pr:                                            ; preds = %bb.pj
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.cft = load ptr, ptr %i.cfs, align 8, !tbaa !550 ; 6 uses
  br i1 %i.bvb, label %bb.ps, label %bb.px

bb.ps:                                            ; preds = %bb.pr
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.bgy, i64 168
  %i.cfv = load i64, ptr %i.cfu, align 8, !tbaa !537 ; 2 uses
  br i1 %i.bvj, label %.lr.ph.preheader.i71.i, label %.preheader.i65.i

.lr.ph.preheader.i71.i:                           ; preds = %bb.ps
  %i.cfw = sext i32 %i.bvd to i64
  %i.cfx = insertelement <4 x i64> poison, i64 %i.cfv, i64 0
  %i.cfy = shufflevector <4 x i64> %i.cfx, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.pt

.preheader.i65.i:                                 ; preds = %.critedge.i73.i, %bb.ps
  %i.cfz = sext i32 %i.bvf to i64
  %i.cga = icmp ult i32 %i.bvh, %i.bvf
  br i1 %i.cga, label %.lr.ph43.i66.i, label %_ZN8facebook5velox9functions19applySimdComparisonIlLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i

.critedge.i73.i:                                  ; preds = %bb.pu, %bb.pt
  %indvars.iv.next.i74.i = add nsw i64 %indvars.iv.i72.i, 8 ; 2 uses
  %i.cgb = trunc nsw i64 %indvars.iv.next.i74.i to i32
  %i.cgc = icmp ugt i32 %i.bvh, %i.cgb
  br i1 %i.cgc, label %bb.pt, label %.preheader.i65.i, !llvm.loop !2187

bb.pt:                                            ; preds = %.critedge.i73.i, %.lr.ph.preheader.i71.i
  %indvars.iv.i72.i = phi i64 [ %i.cfw, %.lr.ph.preheader.i71.i ], [ %indvars.iv.next.i74.i, %.critedge.i73.i ] ; 4 uses
  %i.cgd = trunc nsw i64 %indvars.iv.i72.i to i32
  %i.cge = sdiv i32 %i.cgd, 8
  %i.cgf = sext i32 %i.cge to i64
  %i.cgg = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cgf ; 3 uses
  store i8 0, ptr %i.cgg, align 1, !tbaa !32
  %i.cgh = getelementptr inbounds [8 x i8], ptr %i.cft, i64 %indvars.iv.i72.i
  %i.cgi = load <4 x i64>, ptr %i.cgh, align 1, !tbaa !32, !noalias !2188
  %i.cgj = icmp sge <4 x i64> %i.cgi, %i.cfy
  %i.cgk = bitcast <4 x i1> %i.cgj to i4
  %i.cgl = zext i4 %i.cgk to i8                   ; 2 uses
  store i8 %i.cgl, ptr %i.cgg, align 1, !tbaa !32
  %i.cgm = add nuw nsw i64 %indvars.iv.i72.i, 4   ; 2 uses
  %i.cgn = trunc nsw i64 %i.cgm to i32
  %i.cgo = icmp ugt i32 %i.bvh, %i.cgn
  br i1 %i.cgo, label %bb.pu, label %.critedge.i73.i

bb.pu:                                            ; preds = %bb.pt
  %i.cgp = getelementptr inbounds [8 x i8], ptr %i.cft, i64 %i.cgm
  %i.cgq = load <4 x i64>, ptr %i.cgp, align 1, !tbaa !32, !noalias !2188
  %i.cgr = icmp sge <4 x i64> %i.cgq, %i.cfy
  %i.cgs = bitcast <4 x i1> %i.cgr to i4
  %i.cgt = zext i4 %i.cgs to i8
  %i.cgu = shl nuw i8 %i.cgt, 4
  %i.cgv = or disjoint i8 %i.cgu, %i.cgl
end_hunk_5
