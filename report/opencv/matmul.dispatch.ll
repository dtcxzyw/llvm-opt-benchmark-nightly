Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul.dispatch?download=true
inline.NumInlined: 1374
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 233
begin_hunk_0_@_ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i:bb.a
.lr.ph1310:                                       ; preds = %bb.ay
  %i.ye = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %.idx1034 = shl nuw nsw i64 %i.od, 4
  %i.yg = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %.idx1035 = mul nuw nsw i64 %i.od, 24
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.ob ; 4 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %.idx1266 = shl nuw nsw i64 %i.ob, 4
  %i.yl = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.idx1266 ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  %.idx1267 = mul nuw nsw i64 %i.ob, 24
  %i.yp = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.idx1267 ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  %.idx1036 = shl nuw nsw i64 %spec.select1080, 4
  %.idx1037 = shl nuw nsw i64 %i.nz, 4
  %.idx1038 = mul nuw nsw i64 %spec.select1080, 24
  %.idx1039 = mul nuw nsw i64 %i.nz, 24
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph1310, %bb.az
  %.111309 = phi i32 [ 0, %.lr.ph1310 ], [ %i.aay, %bb.az ]
  %.59581308 = phi ptr [ %i.no, %.lr.ph1310 ], [ %i.aaz, %bb.az ] ; 5 uses
  %.29651307 = phi ptr [ %i.nu, %.lr.ph1310 ], [ %i.aba, %bb.az ] ; 5 uses
  %.59711306 = phi ptr [ %spec.store.select5, %.lr.ph1310 ], [ %i.abb, %bb.az ] ; 5 uses
  %i.yt = load double, ptr %i.nr, align 8, !tbaa !29
  %i.yu = load double, ptr %.29651307, align 8, !tbaa !29 ; 4 uses
  %i.yv = load double, ptr %i.ye, align 8, !tbaa !29
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %.29651307, i64 %i.od
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !29 ; 4 uses
  %i.yy = fmul double %i.yv, %i.yx
  %i.yz = call double @llvm.fmuladd.f64(double %i.yt, double %i.yu, double %i.yy)
  %i.za = load double, ptr %i.yf, align 8, !tbaa !29
  %i.zb = getelementptr inbounds nuw i8, ptr %.29651307, i64 %.idx1034
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !29 ; 4 uses
  %i.zd = call double @llvm.fmuladd.f64(double %i.za, double %i.zc, double %i.yz)
  %i.ze = load double, ptr %i.yg, align 8, !tbaa !29
  %i.zf = getelementptr inbounds nuw i8, ptr %.29651307, i64 %.idx1035
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !29 ; 4 uses
  %i.zh = call double @llvm.fmuladd.f64(double %i.ze, double %i.zg, double %i.zd)
  %i.zi = load double, ptr %i.yh, align 8, !tbaa !29
  %i.zj = load double, ptr %i.yi, align 8, !tbaa !29
  %i.zk = fmul double %i.yx, %i.zj
  %i.zl = call double @llvm.fmuladd.f64(double %i.zi, double %i.yu, double %i.zk)
  %i.zm = load double, ptr %i.yj, align 8, !tbaa !29
  %i.zn = call double @llvm.fmuladd.f64(double %i.zm, double %i.zc, double %i.zl)
  %i.zo = load double, ptr %i.yk, align 8, !tbaa !29
  %i.zp = call double @llvm.fmuladd.f64(double %i.zo, double %i.zg, double %i.zn)
  %i.zq = load double, ptr %i.yl, align 8, !tbaa !29
  %i.zr = load double, ptr %i.ym, align 8, !tbaa !29
  %i.zs = fmul double %i.yx, %i.zr
  %i.zt = call double @llvm.fmuladd.f64(double %i.zq, double %i.yu, double %i.zs)
  %i.zu = load double, ptr %i.yn, align 8, !tbaa !29
  %i.zv = call double @llvm.fmuladd.f64(double %i.zu, double %i.zc, double %i.zt)
  %i.zw = load double, ptr %i.yo, align 8, !tbaa !29
  %i.zx = call double @llvm.fmuladd.f64(double %i.zw, double %i.zg, double %i.zv)
  %i.zy = load double, ptr %i.yp, align 8, !tbaa !29
  %i.zz = load double, ptr %i.yq, align 8, !tbaa !29
  %i.aaa = fmul double %i.yx, %i.zz
  %i.aab = call double @llvm.fmuladd.f64(double %i.zy, double %i.yu, double %i.aaa)
  %i.aac = load double, ptr %i.yr, align 8, !tbaa !29
  %i.aad = call double @llvm.fmuladd.f64(double %i.aac, double %i.zc, double %i.aab)
  %i.aae = load double, ptr %i.ys, align 8, !tbaa !29
  %i.aaf = call double @llvm.fmuladd.f64(double %i.aae, double %i.zg, double %i.aad)
  %i.aag = load double, ptr %.59711306, align 8, !tbaa !29
  %i.aah = fmul double %4, %i.aag
  %i.aai = call double @llvm.fmuladd.f64(double %i.zh, double %2, double %i.aah)
  store double %i.aai, ptr %.59581308, align 8, !tbaa !29
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %.59711306, i64 %spec.select1080
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !29
  %i.aal = fmul double %4, %i.aak
  %i.aam = call double @llvm.fmuladd.f64(double %i.zp, double %2, double %i.aal)
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %.59581308, i64 %i.nz
  store double %i.aam, ptr %i.aan, align 8, !tbaa !29
  %i.aao = getelementptr inbounds nuw i8, ptr %.59711306, i64 %.idx1036
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !29
  %i.aaq = fmul double %4, %i.aap
  %i.aar = call double @llvm.fmuladd.f64(double %i.zx, double %2, double %i.aaq)
  %i.aas = getelementptr inbounds nuw i8, ptr %.59581308, i64 %.idx1037
  store double %i.aar, ptr %i.aas, align 8, !tbaa !29
  %i.aat = getelementptr inbounds nuw i8, ptr %.59711306, i64 %.idx1038
  %i.aau = load double, ptr %i.aat, align 8, !tbaa !29
  %i.aav = fmul double %4, %i.aau
  %i.aaw = call double @llvm.fmuladd.f64(double %i.aaf, double %2, double %i.aav)
  %i.aax = getelementptr inbounds nuw i8, ptr %.59581308, i64 %.idx1039
  store double %i.aaw, ptr %i.aax, align 8, !tbaa !29
  %i.aay = add nuw nsw i32 %.111309, 1            ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.59581308, i64 8
  %i.aba = getelementptr inbounds nuw i8, ptr %.29651307, i64 8
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %.59711306, i64 %spec.select1081
  %exitcond1405.not = icmp eq i32 %i.aay, %.sroa.01169.0
  br i1 %exitcond1405.not, label %.critedge, label %bb.az, !llvm.loop !906

default.unreachable1260:                          ; preds = %bb.s
  unreachable

default.unreachable1261:                          ; preds = %bb.ak
  unreachable

bb.ba:                                            ; preds = %bb.v, %bb.aa, %bb.af, %bb.ax, %bb.as, %bb.an, %bb.p, %bb.o, %bb.n
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !38 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !47 ; 3 uses
  %.not1047 = icmp eq ptr %i.abf, null
  br i1 %.not1047, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.abg = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.abh = load i64, ptr %i.abg, align 8, !tbaa !38
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.abi = phi i64 [ %i.abh, %bb.bb ], [ 0, %bb.ba ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.abj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.abj, ptr %12, align 8, !tbaa !51
  %i.abk = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 1032, ptr %i.abk, align 8, !tbaa !52
  %switch.tableidx = add nsw i32 %i.y, -5         ; 5 uses
  %i.abl = icmp ult i32 %switch.tableidx, 34
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 12884901891, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond1508 = select i1 %i.abl, i1 %switch.lobit, i1 false
  br i1 %or.cond1508, label %switch.lookup, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i, ptr noundef nonnull @.str.1, i32 noundef 1053) #26
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.bd
  %i.abm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.bh:                                            ; preds = %bb.be
  %i.abn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abo = load ptr, ptr %13, align 8, !tbaa !37  ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.abq = icmp eq ptr %i.abo, %i.abp
  br i1 %i.abq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bh
  %i.abr = load i64, ptr %i.abp, align 8, !tbaa !23
  %i.abs = add i64 %i.abr, 1
  call void @_ZdlPvm(ptr noundef %i.abo, i64 noundef %i.abs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bg
  %.pn = phi { ptr, i32 } [ %i.abm, %bb.bg ], [ %i.abn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.abn, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body1095

switch.lookup:                                    ; preds = %bb.bc
  %i.abt = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i, i64 %i.abt
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.abu = zext nneg i32 %switch.tableidx to i64
  %switch.gep1504 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i.7, i64 %i.abu
  %switch.load1505 = load ptr, ptr %switch.gep1504, align 8
  %i.abv = zext nneg i32 %switch.tableidx to i64
  %switch.gep1506 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i.8, i64 %i.abv
  %switch.load1507 = load ptr, ptr %switch.gep1506, align 8
  %i.abw = icmp eq i32 %.sroa.01169.0, 1          ; 2 uses
  %i.abx = icmp eq i32 %.01253, 1
  %or.cond7 = select i1 %i.abw, i1 true, i1 %i.abx
  %i.aby = and i32 %6, 2
  %.not1049 = icmp eq i32 %i.aby, 0
  %or.cond1084 = and i1 %.not1049, %or.cond7
  br i1 %or.cond1084, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %switch.lookup
  %i.abz = load i32, ptr %1, align 8, !tbaa !46
  %i.aca = and i32 %i.abz, 16384
  %.not1276 = icmp eq i32 %i.aca, 0
  br i1 %.not1276, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.abw, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.acb = lshr i32 %i.y, 5
  %i.acc = shl nuw nsw i32 %i.y, 2
  %i.acd = and i32 %i.acc, 124
  %i.ace = zext nneg i32 %i.acd to i64
  %i.acf = lshr i64 1275511473185297, %i.ace
  %i.acg = trunc i64 %i.acf to i32
  %i.ach = and i32 %i.acg, 15
  %15 = shl nuw nsw i32 %i.ach, %i.acb
  %i.aci = zext nneg i32 %15 to i64
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.acj = phi i64 [ %i.aci, %bb.bk ], [ 0, %bb.bj ]
  %i.ack = or disjoint i32 %6, 2
  br label %bb.bm

bb.bm:                                            ; preds = %switch.lookup, %bb.bl, %bb.bi
  %.0918 = phi i64 [ %i.abd, %switch.lookup ], [ %i.acj, %bb.bl ], [ %i.abd, %bb.bi ] ; 7 uses
  %.0 = phi i32 [ %6, %switch.lookup ], [ %i.ack, %bb.bl ], [ %6, %bb.bi ] ; 6 uses
  %i.acl = icmp slt i32 %.sroa.32.0, 65
  %i.acm = icmp slt i32 %.sroa.01169.0, 65
  %or.cond10 = select i1 %i.acl, i1 true, i1 %i.acm
  %i.acn = icmp slt i32 %.01253, 10001
  %or.cond12 = select i1 %or.cond10, i1 %i.acn, i1 false
  %i.aco = icmp slt i32 %.01253, 11
  %or.cond14 = select i1 %or.cond12, i1 true, i1 %i.aco
  br i1 %or.cond14, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.acp = icmp slt i32 %.sroa.01169.0, 129
  %i.acq = icmp slt i32 %.sroa.32.0, 129
  %or.cond17 = and i1 %i.acq, %i.acp
  %i.acr = icmp samesign ult i32 %.01253, 129
  %or.cond19 = select i1 %or.cond17, i1 %i.acr, i1 false
  br i1 %or.cond19, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !47
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !38
  %i.acw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !47
  %i.acy = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !47
  %i.ada = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !38
  %.sroa.32.0.insert.ext = zext i32 %.sroa.32.0 to i64
  %.sroa.32.0.insert.shift = shl nuw i64 %.sroa.32.0.insert.ext, 32
  %.sroa.01169.0.insert.ext = zext i32 %.sroa.01169.0 to i64
  %.sroa.01169.0.insert.insert = or disjoint i64 %.sroa.32.0.insert.shift, %.sroa.01169.0.insert.ext
  invoke void %switch.load(ptr noundef %i.act, i64 noundef %i.acv, ptr noundef %i.acx, i64 noundef %.0918, ptr noundef %i.abf, i64 noundef %i.abi, ptr noundef %i.acz, i64 noundef %i.adb, i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.01169.0.insert.insert, double noundef %2, double noundef %4, i32 noundef %.0)
          to label %.loopexit1280 unwind label %bb.bp, !callees !923

bb.bp:                                            ; preds = %bb.bo
  %i.adc = landingpad { ptr, i32 }
          cleanup
  br label %.body1095

bb.bq:                                            ; preds = %bb.bn
  %i.add = and i32 %.0, 2
  %i.ade = lshr i32 %i.y, 5
  %i.adf = and i32 %i.x, 31                       ; 2 uses
  %i.adg = shl nuw nsw i32 %i.adf, 2
  %i.adh = zext nneg i32 %i.adg to i64
  %i.adi = lshr i64 1275511473185297, %i.adh
  %i.adj = trunc i64 %i.adi to i32
  %i.adk = and i32 %i.adj, 15
  %16 = shl nuw nsw i32 %i.adk, %i.ade            ; 8 uses
  %i.adl = icmp eq i32 %i.adf, 5
  %i.adm = zext i1 %i.adl to i32
  %i.adn = shl nuw nsw i32 %16, %i.adm            ; 2 uses
  %i.ado = trunc i32 %.0 to i1                    ; 4 uses
  br i1 %i.ado, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !38
  %i.adr = zext nneg i32 %16 to i64               ; 2 uses
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.ads = zext nneg i32 %16 to i64               ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !38
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pre-phi = phi i64 [ %i.ads, %bb.bs ], [ %i.adr, %bb.br ] ; 6 uses
  %.0895 = phi i64 [ %i.ads, %bb.bs ], [ %i.adq, %bb.br ]
  %.0894 = phi i64 [ %i.adu, %bb.bs ], [ %i.adr, %bb.br ]
  %.not1050 = icmp eq i32 %i.add, 0               ; 4 uses
  %.0918. = select i1 %.not1050, i64 %.0918, i64 %.pre-phi
  %..0918 = select i1 %.not1050, i64 %.pre-phi, i64 %.0918
  %i.adv = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.adv, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.adw = and i32 %.0, -5
  br label %bb.by

bb.bw:                                            ; preds = %bb.cj, %bb.bt
  %i.adx = landingpad { ptr, i32 }
          cleanup
  br label %.body1095

bb.bx:                                            ; preds = %bb.bu
  %i.ady = and i32 %.0, 4
  %.not1051 = icmp eq i32 %i.ady, 0               ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.aea = load i64, ptr %i.adz, align 8, !tbaa !38 ; 2 uses
  %..pre-phi = select i1 %.not1051, i64 %i.aea, i64 %.pre-phi
  %.pre-phi. = select i1 %.not1051, i64 %.pre-phi, i64 %i.aea
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bv
  %.0891 = phi i64 [ 0, %bb.bv ], [ %..pre-phi, %bb.bx ]
  %.0890 = phi i64 [ 0, %bb.bv ], [ %.pre-phi., %bb.bx ]
  %.1 = phi i32 [ %i.adw, %bb.bv ], [ %.0, %bb.bx ] ; 2 uses
  %.sroa.speculated1210 = call i32 @llvm.smin.i32(i32 %.sroa.32.0, i32 128) ; 3 uses
  %.sroa.speculated1213 = call i32 @llvm.smin.i32(i32 %.sroa.01169.0, i32 128) ; 3 uses
  %i.aeb = sdiv i32 16384, %.sroa.speculated1210
  %i.aec = sdiv i32 16384, %.sroa.speculated1213
  %.sroa.speculated1144 = call i32 @llvm.smin.i32(i32 %i.aec, i32 %i.aeb) ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.01253, i32 %.sroa.speculated1144) ; 8 uses
  %i.aed = mul nsw i32 %.sroa.speculated, %.sroa.speculated1210
  %i.aee = icmp sgt i32 %i.aed, 16384
  br i1 %i.aee, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %.rhs.trunc = trunc nsw i32 %.sroa.speculated to i16
  %i.aef = sdiv i16 16384, %.rhs.trunc
  %.sext = sext i16 %i.aef to i32
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0897 = phi i32 [ %.sext, %bb.bz ], [ %.sroa.speculated1210, %bb.by ] ; 5 uses
  %i.aeg = mul nsw i32 %.sroa.speculated, %.sroa.speculated1213
  %i.aeh = icmp sgt i32 %i.aeg, 16384
  %.rhs.trunc1257 = trunc nsw i32 %.sroa.speculated to i16 ; 2 uses
  br i1 %i.aeh, label %bb.cb, label %._crit_edge

bb.cb:                                            ; preds = %bb.ca
  %i.aei = sdiv i16 16384, %.rhs.trunc1257
  %.sext1258 = sext i16 %i.aei to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ca, %bb.cb
  %.0896 = phi i32 [ %.sext1258, %bb.cb ], [ %.sroa.speculated1213, %bb.ca ] ; 5 uses
  %i.aej = sdiv i32 %.0896, 8
  %i.aek = add i32 %i.aej, %.0896
  %i.ael = and i32 %i.aek, -2
  %i.aem = add i32 %i.ael, 2
  %i.aen = sdiv i16 %.rhs.trunc1257, 8
  %.sext1259 = sext i16 %i.aen to i32
  %i.aeo = add i32 %.sroa.speculated, %.sext1259  ; 2 uses
  %i.aep = add i32 %i.aeo, 1
  %i.aeq = sext i32 %i.aep to i64                 ; 2 uses
  %i.aer = sext i32 %i.aem to i64                 ; 2 uses
  %i.aes = mul nsw i64 %i.aer, %i.aeq             ; 2 uses
  %i.aet = mul nsw i64 %i.aes, %.pre-phi          ; 2 uses
  %i.aeu = zext nneg i32 %i.adn to i64            ; 2 uses
  %i.aev = mul nsw i64 %i.aes, %i.aeu             ; 2 uses
  br i1 %i.ado, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %._crit_edge
  %i.aew = sdiv i32 %.0897, 8
  %i.aex = add nsw i32 %.0897, 1
  %i.aey = add i32 %i.aex, %i.aew
  %i.aez = sext i32 %i.aey to i64
  %i.afa = and i32 %i.aeo, -2
  %i.afb = add nsw i32 %i.afa, 2
  %i.afc = sext i32 %i.afb to i64
  %i.afd = mul nsw i64 %.pre-phi, %i.afc
  %i.afe = mul i64 %i.afd, %i.aez
  %i.aff = and i32 %.1, -2
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge
  %.0904 = phi i64 [ %i.afe, %bb.cc ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %i.aff, %bb.cc ], [ %.1, %._crit_edge ]
  %i.afg = add nsw i64 %i.aev, %i.aet
  %i.afh = add i64 %i.afg, %.0904                 ; 5 uses
  %i.afi = load i64, ptr %i.abk, align 8, !tbaa !52
  %.not.i1089 = icmp ugt i64 %i.afh, %i.afi
  br i1 %.not.i1089, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store i64 %i.afh, ptr %i.abk, align 8, !tbaa !52
  %.pre = load ptr, ptr %12, align 8, !tbaa !51
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.cf:                                            ; preds = %bb.cd
  %i.afj = load ptr, ptr %12, align 8, !tbaa !51  ; 4 uses
  %.not.i.i = icmp eq ptr %i.afj, %i.abj
  br i1 %.not.i.i, label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.afk = icmp eq ptr %i.afj, null
  br i1 %i.afk, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdaPv(ptr noundef nonnull %i.afj) #27
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store ptr %i.abj, ptr %12, align 8, !tbaa !51
  br label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i

_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i: ; preds = %bb.ci, %bb.cf
  %i.afl = phi ptr [ %i.abj, %bb.ci ], [ %i.afj, %bb.cf ]
  store i64 %i.afh, ptr %i.abk, align 8, !tbaa !52
  %i.afm = icmp ugt i64 %i.afh, 1032
  br i1 %i.afm, label %bb.cj, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.cj:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i
  %i.afn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afh) #28
          to label %.noexc1090 unwind label %bb.bw ; 2 uses

.noexc1090:                                       ; preds = %bb.cj
  store ptr %i.afn, ptr %12, align 8, !tbaa !51
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit:     ; preds = %.noexc1090, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i, %bb.ce
  %i.afo = phi ptr [ %i.afn, %.noexc1090 ], [ %i.afl, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i ], [ %.pre, %bb.ce ] ; 6 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 %i.aev ; 4 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 %i.aet ; 9 uses
  %spec.select1085 = select i1 %i.ado, ptr %i.afq, ptr null ; 4 uses
  %i.afr = icmp sgt i32 %.sroa.32.0, 0
  br i1 %i.afr, label %.lr.ph1383, label %.loopexit1280

.lr.ph1383:                                       ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit
  %i.afs = shl nsw i32 %.sroa.32.0, 3
  %i.aft = icmp sgt i32 %.sroa.01169.0, 0
  %i.afu = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.afw = shl nsw i32 %.sroa.01169.0, 3
  %i.afx = icmp slt i32 %.sroa.speculated1144, %.01253
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.agb = shl nuw nsw i32 %.01253, 3
  %.not1277 = icmp eq ptr %i.afo, null
  %i.agc = lshr i32 %16, 2
  %i.agd = mul nsw i64 %i.aeq, %i.aer
  %i.age = mul i64 %i.agd, %i.aeu                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.afo, i64 %i.age
  %scevgep1498 = getelementptr i8, ptr %i.afo, i64 %i.age
  %stride.check1502 = icmp slt i64 %.0918, 0
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph1383, %._crit_edge1368
  %.31382 = phi i32 [ %.2, %.lr.ph1383 ], [ %.4.lcssa, %._crit_edge1368 ] ; 2 uses
  %.121381 = phi i32 [ 0, %.lr.ph1383 ], [ %i.ang, %._crit_edge1368 ] ; 4 uses
  %i.agf = add nsw i32 %.121381, %.0897           ; 2 uses
  %.not1052 = icmp slt i32 %i.agf, %.sroa.32.0
  br i1 %.not1052, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.agg = shl nsw i32 %i.agf, 3
  %i.agh = add nsw i32 %i.agg, %.0897
  %i.agi = icmp sgt i32 %i.agh, %i.afs
  br i1 %i.agi, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.agj = sub nsw i32 %.sroa.32.0, %.121381
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.0900 = phi i32 [ %i.agj, %bb.cm ], [ %.0897, %bb.cl ] ; 19 uses
  br i1 %i.aft, label %.lr.ph1367.split.us.preheader, label %._crit_edge1368

.lr.ph1367.split.us.preheader:                    ; preds = %bb.cn
  %i.agk = sext i32 %.121381 to i64               ; 4 uses
  %i.agl = mul i64 %.0891, %i.agk
  %i.agm = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.agl
  %i.agn = mul i64 %.0895, %i.agk
  %i.ago = icmp sgt i32 %.0900, 0
  %.sroa.21111.0.insert.ext = zext i32 %.0900 to i64
  %.sroa.21111.0.insert.shift = shl nuw i64 %.sroa.21111.0.insert.ext, 32
  %i.agp = and i32 %.31382, 15                    ; 2 uses
  %i.agq = or disjoint i32 %i.agp, 16             ; 3 uses
  %xtraiter = and i32 %.0900, 1
  %i.agr = icmp eq i32 %.0900, 1
  %unroll_iter = and i32 %.0900, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1522 = trunc i32 %.0900 to i1
  br label %.lr.ph1367.split.us

.lr.ph1367.split.us:                              ; preds = %.lr.ph1367.split.us.preheader, %._crit_edge.us.thread
  %.09021364.us = phi i32 [ %i.ams, %._crit_edge.us.thread ], [ 0, %.lr.ph1367.split.us.preheader ] ; 5 uses
  %i.ags = load ptr, ptr %i.afu, align 8, !tbaa !47
  %i.agt = load i64, ptr %i.afv, align 8, !tbaa !38 ; 2 uses
  %i.agu = mul i64 %i.agt, %i.agk
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ags, i64 %i.agu
  %i.agw = mul nsw i32 %.09021364.us, %16
  %i.agx = sext i32 %i.agw to i64                 ; 2 uses
  %i.agy = getelementptr inbounds i8, ptr %i.agv, i64 %i.agx
  %i.agz = sext i32 %.09021364.us to i64          ; 2 uses
  %i.aha = mul i64 %.0890, %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.aha ; 2 uses
  %i.ahc = add nsw i32 %.09021364.us, %.0896      ; 2 uses
  %.not1053.us = icmp slt i32 %i.ahc, %.sroa.01169.0
  br i1 %.not1053.us, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.lr.ph1367.split.us
  %i.ahd = shl nsw i32 %i.ahc, 3
  %i.ahe = add nsw i32 %i.ahd, %.0896
  %i.ahf = icmp sgt i32 %i.ahe, %i.afw
  br i1 %i.ahf, label %bb.cp, label %.lr.ph1363.us

bb.cp:                                            ; preds = %bb.co, %.lr.ph1367.split.us
  %i.ahg = sub nsw i32 %.sroa.01169.0, %.09021364.us
  br label %.lr.ph1363.us

.lr.ph1363.us:                                    ; preds = %bb.cp, %bb.co
  %.0899.us = phi i32 [ %i.ahg, %bb.cp ], [ %.0896, %bb.co ] ; 6 uses
  %i.ahh = mul nsw i32 %.0899.us, %i.adn
  %i.ahi = sext i32 %i.ahh to i64                 ; 2 uses
  %i.ahj = mul i64 %..0918, %i.agz                ; 2 uses
  %i.ahk = icmp slt i32 %.0899.us, %.sroa.01169.0
  %.sroa.01110.0.insert.ext.us = zext i32 %.0899.us to i64
  %.sroa.01110.0.insert.insert.us = or disjoint i64 %.sroa.21111.0.insert.shift, %.sroa.01110.0.insert.ext.us ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph1363.us
  %.51362.us = phi i32 [ %i.agp, %.lr.ph1363.us ], [ %i.agq, %.backedge.backedge ] ; 2 uses
  %.09011361.us = phi i32 [ 0, %.lr.ph1363.us ], [ %.09011361.us.be, %.backedge.backedge ] ; 5 uses
  %i.ahl = load ptr, ptr %i.afy, align 8, !tbaa !47
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.agn
  %i.ahn = sext i32 %.09011361.us to i64          ; 2 uses
  %i.aho = mul i64 %.0894, %i.ahn
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahm, i64 %i.aho ; 6 uses
  %i.ahq = load i64, ptr %i.afz, align 8, !tbaa !38 ; 15 uses
  %i.ahr = load ptr, ptr %i.aga, align 8, !tbaa !47 ; 2 uses
  %i.ahs = mul i64 %.0918., %i.ahn                ; 2 uses
  %i.aht = getelementptr i8, ptr %i.ahr, i64 %i.ahs
  %i.ahu = getelementptr i8, ptr %i.aht, i64 %i.ahj ; 3 uses
  %i.ahv = add nsw i32 %.09011361.us, %.sroa.speculated ; 2 uses
  %.not1054.us = icmp slt i32 %i.ahv, %.01253
  br i1 %.not1054.us, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.backedge
  %i.ahw = shl nsw i32 %i.ahv, 3
  %i.ahx = add nsw i32 %i.ahw, %.sroa.speculated
  %i.ahy = icmp sgt i32 %i.ahx, %i.agb
  br i1 %i.ahy, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %.backedge
  %i.ahz = sub nsw i32 %.01253, %.09011361.us
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.0898.us = phi i32 [ %i.ahz, %bb.cr ], [ %.sroa.speculated, %bb.cq ] ; 20 uses
  br i1 %i.ado, label %bb.ct, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us

bb.ct:                                            ; preds = %bb.cs
  br i1 %.not1277, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aia = mul nsw i32 %.0898.us, %16
  %i.aib = sext i32 %i.aia to i64                 ; 12 uses
  %.sroa.11.0.insert.ext1126.us = zext i32 %.0898.us to i64 ; 4 uses
  br i1 %i.ago, label %.lr.ph77.i.us, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us

.lr.ph77.i.us:                                    ; preds = %bb.cu
  %i.aic = shl nuw nsw i64 %.sroa.11.0.insert.ext1126.us, 2
  switch i32 %16, label %.split.us [
    i32 4, label %.lr.ph77.split.split.us.i.us
    i32 8, label %.lr.ph77.split.split.us78.i.us
    i32 16, label %.lr.ph77.split.split.i.us
  ]

.lr.ph77.split.split.i.us:                        ; preds = %.lr.ph77.i.us
  %i.aid = icmp sgt i32 %.0898.us, 0
  br i1 %i.aid, label %.preheader62.preheader.i.us, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us

.preheader62.preheader.i.us:                      ; preds = %.lr.ph77.split.split.i.us
  %i.aie = and i64 %i.aic, 4294967292             ; 3 uses
  br i1 %i.agr, label %.preheader62.i.us.epil.preheader, label %.preheader62.i.us

.preheader62.i.us:                                ; preds = %.preheader62.preheader.i.us, %..loopexit63_crit_edge.i.us.1
  %.05275.i.us = phi ptr [ %i.aiw, %..loopexit63_crit_edge.i.us.1 ], [ %i.ahp, %.preheader62.preheader.i.us ] ; 3 uses
  %.05373.i.us = phi ptr [ %i.aiv, %..loopexit63_crit_edge.i.us.1 ], [ %i.afq, %.preheader62.preheader.i.us ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %..loopexit63_crit_edge.i.us.1 ], [ 0, %.preheader62.preheader.i.us ]
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.preheader62.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.preheader62.i.us ], [ %indvars.iv.next.i.us, %bb.cv ] ; 2 uses
  %.25864.i.us = phi ptr [ %.05275.i.us, %.preheader62.i.us ], [ %i.aik, %bb.cv ] ; 3 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %.05373.i.us, i64 %indvars.iv.i.us ; 2 uses
  %i.aig = load <2 x i32>, ptr %.25864.i.us, align 4, !tbaa !30
  store <2 x i32> %i.aig, ptr %i.aif, align 4, !tbaa !30
  %i.aih = getelementptr inbounds nuw i8, ptr %.25864.i.us, i64 8
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  %i.aij = load <2 x i32>, ptr %i.aih, align 4, !tbaa !30
  store <2 x i32> %i.aij, ptr %i.aii, align 4, !tbaa !30
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %.25864.i.us, i64 %i.ahq
  %i.ail = icmp samesign ult i64 %indvars.iv.next.i.us, %i.aie
  br i1 %i.ail, label %bb.cv, label %..loopexit63_crit_edge.i.us, !llvm.loop !907

..loopexit63_crit_edge.i.us:                      ; preds = %bb.cv
  %i.aim = getelementptr inbounds nuw i8, ptr %.05373.i.us, i64 %i.aib ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.05275.i.us, i64 16
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %..loopexit63_crit_edge.i.us
  %indvars.iv.i.us.1 = phi i64 [ 0, %..loopexit63_crit_edge.i.us ], [ %indvars.iv.next.i.us.1, %bb.cw ] ; 2 uses
  %.25864.i.us.1 = phi ptr [ %i.ain, %..loopexit63_crit_edge.i.us ], [ %i.ait, %bb.cw ] ; 3 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %indvars.iv.i.us.1 ; 2 uses
  %i.aip = load <2 x i32>, ptr %.25864.i.us.1, align 4, !tbaa !30
  store <2 x i32> %i.aip, ptr %i.aio, align 4, !tbaa !30
  %i.aiq = getelementptr inbounds nuw i8, ptr %.25864.i.us.1, i64 8
  %i.air = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  %i.ais = load <2 x i32>, ptr %i.aiq, align 4, !tbaa !30
  store <2 x i32> %i.ais, ptr %i.air, align 4, !tbaa !30
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us.1, 4 ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.25864.i.us.1, i64 %i.ahq
  %i.aiu = icmp samesign ult i64 %indvars.iv.next.i.us.1, %i.aie
  br i1 %i.aiu, label %bb.cw, label %..loopexit63_crit_edge.i.us.1, !llvm.loop !907

..loopexit63_crit_edge.i.us.1:                    ; preds = %bb.cw
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aim, i64 %i.aib ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %.05275.i.us, i64 32 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1510.unr-lcssa, label %.preheader62.i.us, !llvm.loop !908

.lr.ph77.split.split.us78.i.us:                   ; preds = %.lr.ph77.i.us
  %i.aix = icmp sgt i32 %.0898.us, 0
  br i1 %i.aix, label %.preheader60.us.i.us.preheader, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us

.preheader60.us.i.us.preheader:                   ; preds = %.lr.ph77.split.split.us78.i.us
  %i.aiy = add nuw i64 %.sroa.11.0.insert.ext1126.us, 9223372036854775807
  %i.aiz = and i64 %i.aiy, 9223372036854775807    ; 2 uses
  %i.aja = add nuw i64 %i.aiz, 1                  ; 2 uses
  %xtraiter1523 = and i64 %i.aja, 3               ; 3 uses
  %i.ajb = icmp samesign ult i64 %i.aiz, 3
  %unroll_iter1526 = and i64 %i.aja, -4
  %lcmp.mod1524.not = icmp eq i64 %xtraiter1523, 0
  %lcmp.mod1525 = icmp ne i64 %xtraiter1523, 0
  br label %.preheader60.us.i.us

.preheader60.us.i.us:                             ; preds = %.preheader60.us.i.us.preheader, %..loopexit61_crit_edge.us.i.us
  %.05275.us79.i.us = phi ptr [ %i.ajw, %..loopexit61_crit_edge.us.i.us ], [ %i.ahp, %.preheader60.us.i.us.preheader ] ; 3 uses
  %.05373.us80.i.us = phi ptr [ %i.ajv, %..loopexit61_crit_edge.us.i.us ], [ %i.afq, %.preheader60.us.i.us.preheader ] ; 6 uses
  %.05472.us81.i.us = phi i32 [ %i.aju, %..loopexit61_crit_edge.us.i.us ], [ 0, %.preheader60.us.i.us.preheader ]
  br i1 %i.ajb, label %.epil.preheader, label %.preheader60.us.i.us.new

.preheader60.us.i.us.new:                         ; preds = %.preheader60.us.i.us, %.preheader60.us.i.us.new
  %indvars.iv85.i.us = phi i64 [ %indvars.iv.next86.i.us.3, %.preheader60.us.i.us.new ], [ 0, %.preheader60.us.i.us ] ; 5 uses
  %.15766.us.i.us = phi ptr [ %i.ajq, %.preheader60.us.i.us.new ], [ %.05275.us79.i.us, %.preheader60.us.i.us ] ; 2 uses
  %niter1527 = phi i64 [ %niter1527.next.3, %.preheader60.us.i.us.new ], [ 0, %.preheader60.us.i.us ]
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %.05373.us80.i.us, i64 %indvars.iv85.i.us
  %i.ajd = load <2 x i32>, ptr %.15766.us.i.us, align 4, !tbaa !30
  store <2 x i32> %i.ajd, ptr %i.ajc, align 4, !tbaa !30
  %i.aje = getelementptr inbounds nuw i8, ptr %.15766.us.i.us, i64 %i.ahq ; 2 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.05373.us80.i.us, i64 %indvars.iv85.i.us
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %i.ajh = load <2 x i32>, ptr %i.aje, align 4, !tbaa !30
  store <2 x i32> %i.ajh, ptr %i.ajg, align 4, !tbaa !30
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aje, i64 %i.ahq ; 2 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %.05373.us80.i.us, i64 %indvars.iv85.i.us
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 16
  %i.ajl = load <2 x i32>, ptr %i.aji, align 4, !tbaa !30
  store <2 x i32> %i.ajl, ptr %i.ajk, align 4, !tbaa !30
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aji, i64 %i.ahq ; 2 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %.05373.us80.i.us, i64 %indvars.iv85.i.us
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 24
  %i.ajp = load <2 x i32>, ptr %i.ajm, align 4, !tbaa !30
  store <2 x i32> %i.ajp, ptr %i.ajo, align 4, !tbaa !30
  %indvars.iv.next86.i.us.3 = add nuw nsw i64 %indvars.iv85.i.us, 8 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ahq ; 2 uses
  %niter1527.next.3 = add i64 %niter1527, 4       ; 2 uses
  %niter1527.ncmp.3.not = icmp eq i64 %niter1527.next.3, %unroll_iter1526
  br i1 %niter1527.ncmp.3.not, label %..loopexit61_crit_edge.us.i.us.unr-lcssa, label %.preheader60.us.i.us.new, !llvm.loop !909

..loopexit61_crit_edge.us.i.us.unr-lcssa:         ; preds = %.preheader60.us.i.us.new
  br i1 %lcmp.mod1524.not, label %..loopexit61_crit_edge.us.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit61_crit_edge.us.i.us.unr-lcssa, %.preheader60.us.i.us
  %indvars.iv85.i.us.epil.init = phi i64 [ 0, %.preheader60.us.i.us ], [ %indvars.iv.next86.i.us.3, %..loopexit61_crit_edge.us.i.us.unr-lcssa ]
  %.15766.us.i.us.epil.init = phi ptr [ %.05275.us79.i.us, %.preheader60.us.i.us ], [ %i.ajq, %..loopexit61_crit_edge.us.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1525)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %.epil.preheader
  %indvars.iv85.i.us.epil = phi i64 [ %indvars.iv85.i.us.epil.init, %.epil.preheader ], [ %indvars.iv.next86.i.us.epil, %bb.cx ] ; 2 uses
  %.15766.us.i.us.epil = phi ptr [ %.15766.us.i.us.epil.init, %.epil.preheader ], [ %i.ajt, %bb.cx ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cx ]
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %.05373.us80.i.us, i64 %indvars.iv85.i.us.epil
  %i.ajs = load <2 x i32>, ptr %.15766.us.i.us.epil, align 4, !tbaa !30
  store <2 x i32> %i.ajs, ptr %i.ajr, align 4, !tbaa !30
  %indvars.iv.next86.i.us.epil = add nuw nsw i64 %indvars.iv85.i.us.epil, 2
  %i.ajt = getelementptr inbounds nuw i8, ptr %.15766.us.i.us.epil, i64 %i.ahq
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1523
  br i1 %epil.iter.cmp.not, label %..loopexit61_crit_edge.us.i.us, label %bb.cx, !llvm.loop !910

..loopexit61_crit_edge.us.i.us:                   ; preds = %bb.cx, %..loopexit61_crit_edge.us.i.us.unr-lcssa
  %i.aju = add nuw nsw i32 %.05472.us81.i.us, 1   ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.05373.us80.i.us, i64 %i.aib
  %i.ajw = getelementptr inbounds nuw i8, ptr %.05275.us79.i.us, i64 8
  %exitcond88.not.i.us = icmp eq i32 %i.aju, %.0900
  br i1 %exitcond88.not.i.us, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us, label %.preheader60.us.i.us, !llvm.loop !908

.lr.ph77.split.split.us.i.us:                     ; preds = %.lr.ph77.i.us
  %i.ajx = icmp sgt i32 %.0898.us, 0
  br i1 %i.ajx, label %.preheader.us.i.us.preheader, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us

.preheader.us.i.us.preheader:                     ; preds = %.lr.ph77.split.split.us.i.us
  %xtraiter1529 = and i64 %.sroa.11.0.insert.ext1126.us, 3 ; 3 uses
  %i.ajy = icmp ult i32 %.0898.us, 4
  %unroll_iter1533 = and i64 %.sroa.11.0.insert.ext1126.us, 2147483644
  %lcmp.mod1531.not = icmp eq i64 %xtraiter1529, 0
  %lcmp.mod1532 = icmp ne i64 %xtraiter1529, 0
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %.preheader.us.i.us.preheader, %..loopexit_crit_edge.us.i.us
  %.05275.us.i.us = phi ptr [ %i.akt, %..loopexit_crit_edge.us.i.us ], [ %i.ahp, %.preheader.us.i.us.preheader ] ; 3 uses
  %.05373.us.i.us = phi ptr [ %i.aks, %..loopexit_crit_edge.us.i.us ], [ %i.afq, %.preheader.us.i.us.preheader ] ; 6 uses
  %.05472.us.i.us = phi i32 [ %i.akr, %..loopexit_crit_edge.us.i.us ], [ 0, %.preheader.us.i.us.preheader ]
  br i1 %i.ajy, label %.epil.preheader1528, label %.preheader.us.i.us.new

.preheader.us.i.us.new:                           ; preds = %.preheader.us.i.us, %.preheader.us.i.us.new
  %indvars.iv89.i.us = phi i64 [ %indvars.iv.next90.i.us.3, %.preheader.us.i.us.new ], [ 0, %.preheader.us.i.us ] ; 5 uses
  %.05669.us.i.us = phi ptr [ %i.akn, %.preheader.us.i.us.new ], [ %.05275.us.i.us, %.preheader.us.i.us ] ; 2 uses
  %niter1534 = phi i64 [ %niter1534.next.3, %.preheader.us.i.us.new ], [ 0, %.preheader.us.i.us ]
  %i.ajz = load i32, ptr %.05669.us.i.us, align 4, !tbaa !30
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %.05373.us.i.us, i64 %indvars.iv89.i.us
  store i32 %i.ajz, ptr %i.aka, align 4, !tbaa !30
  %i.akb = getelementptr inbounds nuw i8, ptr %.05669.us.i.us, i64 %i.ahq ; 2 uses
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !30
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %.05373.us.i.us, i64 %indvars.iv89.i.us
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 4
  store i32 %i.akc, ptr %i.ake, align 4, !tbaa !30
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.ahq ; 2 uses
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !30
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %.05373.us.i.us, i64 %indvars.iv89.i.us
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  store i32 %i.akg, ptr %i.aki, align 4, !tbaa !30
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akf, i64 %i.ahq ; 2 uses
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !30
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %.05373.us.i.us, i64 %indvars.iv89.i.us
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 12
  store i32 %i.akk, ptr %i.akm, align 4, !tbaa !30
  %indvars.iv.next90.i.us.3 = add nuw nsw i64 %indvars.iv89.i.us, 4 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akj, i64 %i.ahq ; 2 uses
  %niter1534.next.3 = add i64 %niter1534, 4       ; 2 uses
  %niter1534.ncmp.3 = icmp eq i64 %niter1534.next.3, %unroll_iter1533
  br i1 %niter1534.ncmp.3, label %..loopexit_crit_edge.us.i.us.unr-lcssa, label %.preheader.us.i.us.new, !llvm.loop !911

..loopexit_crit_edge.us.i.us.unr-lcssa:           ; preds = %.preheader.us.i.us.new
  br i1 %lcmp.mod1531.not, label %..loopexit_crit_edge.us.i.us, label %.epil.preheader1528

.epil.preheader1528:                              ; preds = %..loopexit_crit_edge.us.i.us.unr-lcssa, %.preheader.us.i.us
  %indvars.iv89.i.us.epil.init = phi i64 [ 0, %.preheader.us.i.us ], [ %indvars.iv.next90.i.us.3, %..loopexit_crit_edge.us.i.us.unr-lcssa ]
  %.05669.us.i.us.epil.init = phi ptr [ %.05275.us.i.us, %.preheader.us.i.us ], [ %i.akn, %..loopexit_crit_edge.us.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1532)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %.epil.preheader1528
  %indvars.iv89.i.us.epil = phi i64 [ %indvars.iv89.i.us.epil.init, %.epil.preheader1528 ], [ %indvars.iv.next90.i.us.epil, %bb.cy ] ; 2 uses
  %.05669.us.i.us.epil = phi ptr [ %.05669.us.i.us.epil.init, %.epil.preheader1528 ], [ %i.akq, %bb.cy ] ; 2 uses
  %epil.iter1530 = phi i64 [ 0, %.epil.preheader1528 ], [ %epil.iter1530.next, %bb.cy ]
  %i.ako = load i32, ptr %.05669.us.i.us.epil, align 4, !tbaa !30
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %.05373.us.i.us, i64 %indvars.iv89.i.us.epil
  store i32 %i.ako, ptr %i.akp, align 4, !tbaa !30
  %indvars.iv.next90.i.us.epil = add nuw nsw i64 %indvars.iv89.i.us.epil, 1
  %i.akq = getelementptr inbounds nuw i8, ptr %.05669.us.i.us.epil, i64 %i.ahq
  %epil.iter1530.next = add i64 %epil.iter1530, 1 ; 2 uses
  %epil.iter1530.cmp.not = icmp eq i64 %epil.iter1530.next, %xtraiter1529
  br i1 %epil.iter1530.cmp.not, label %..loopexit_crit_edge.us.i.us, label %bb.cy, !llvm.loop !912

..loopexit_crit_edge.us.i.us:                     ; preds = %bb.cy, %..loopexit_crit_edge.us.i.us.unr-lcssa
  %i.akr = add nuw nsw i32 %.05472.us.i.us, 1     ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.05373.us.i.us, i64 %i.aib
  %i.akt = getelementptr inbounds nuw i8, ptr %.05275.us.i.us, i64 4
  %exitcond93.not.i.us = icmp eq i32 %i.akr, %.0900
  br i1 %exitcond93.not.i.us, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us, label %.preheader.us.i.us, !llvm.loop !908

_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1510.unr-lcssa: ; preds = %..loopexit63_crit_edge.i.us.1
  br i1 %lcmp.mod.not, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us, label %.preheader62.i.us.epil.preheader

.preheader62.i.us.epil.preheader:                 ; preds = %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1510.unr-lcssa, %.preheader62.preheader.i.us
  %.05275.i.us.epil.init = phi ptr [ %i.ahp, %.preheader62.preheader.i.us ], [ %i.aiw, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1510.unr-lcssa ]
  %.05373.i.us.epil.init = phi ptr [ %i.afq, %.preheader62.preheader.i.us ], [ %i.aiv, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1510.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1522)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %.preheader62.i.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ 0, %.preheader62.i.us.epil.preheader ], [ %indvars.iv.next.i.us.epil, %bb.cz ] ; 2 uses
  %.25864.i.us.epil = phi ptr [ %.05275.i.us.epil.init, %.preheader62.i.us.epil.preheader ], [ %i.akz, %bb.cz ] ; 3 uses
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %.05373.i.us.epil.init, i64 %indvars.iv.i.us.epil ; 2 uses
  %i.akv = load <2 x i32>, ptr %.25864.i.us.epil, align 4, !tbaa !30
  store <2 x i32> %i.akv, ptr %i.aku, align 4, !tbaa !30
  %i.akw = getelementptr inbounds nuw i8, ptr %.25864.i.us.epil, i64 8
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aku, i64 8
  %i.aky = load <2 x i32>, ptr %i.akw, align 4, !tbaa !30
  store <2 x i32> %i.aky, ptr %i.akx, align 4, !tbaa !30
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 4 ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %.25864.i.us.epil, i64 %i.ahq
  %i.ala = icmp samesign ult i64 %indvars.iv.next.i.us.epil, %i.aie
  br i1 %i.ala, label %bb.cz, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us, !llvm.loop !907

_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us: ; preds = %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1510.unr-lcssa, %bb.cz, %..loopexit61_crit_edge.us.i.us, %..loopexit_crit_edge.us.i.us, %.lr.ph77.split.split.us.i.us, %.lr.ph77.split.split.us78.i.us, %.lr.ph77.split.split.i.us, %bb.cu, %bb.ct, %bb.cs
  %.sroa.11.1.us = phi i32 [ %.0900, %bb.cu ], [ %.0898.us, %bb.ct ], [ %.0900, %..loopexit_crit_edge.us.i.us ], [ %.0900, %.lr.ph77.split.split.i.us ], [ %.0900, %..loopexit61_crit_edge.us.i.us ], [ %.0900, %.lr.ph77.split.split.us78.i.us ], [ %.0900, %bb.cs ], [ %.0900, %.lr.ph77.split.split.us.i.us ], [ %.0900, %bb.cz ], [ %.0900, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1510.unr-lcssa ]
  %.sroa.01115.1.us = phi i32 [ %.0898.us, %bb.cu ], [ %.0900, %bb.ct ], [ %.0898.us, %..loopexit_crit_edge.us.i.us ], [ %.0898.us, %.lr.ph77.split.split.i.us ], [ %.0898.us, %..loopexit61_crit_edge.us.i.us ], [ %.0898.us, %.lr.ph77.split.split.us78.i.us ], [ %.0898.us, %bb.cs ], [ %.0898.us, %.lr.ph77.split.split.us.i.us ], [ %.0898.us, %bb.cz ], [ %.0898.us, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1510.unr-lcssa ]
  %.0887.us = phi ptr [ %i.afq, %bb.cu ], [ %i.ahp, %bb.ct ], [ %spec.select1085, %..loopexit_crit_edge.us.i.us ], [ %i.afq, %.lr.ph77.split.split.i.us ], [ %spec.select1085, %..loopexit61_crit_edge.us.i.us ], [ %i.afq, %.lr.ph77.split.split.us78.i.us ], [ %i.ahp, %bb.cs ], [ %i.afq, %.lr.ph77.split.split.us.i.us ], [ %spec.select1085, %bb.cz ], [ %spec.select1085, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1510.unr-lcssa ] ; 2 uses
  %.0886.us = phi i64 [ %i.aib, %bb.cu ], [ %i.ahq, %bb.ct ], [ %i.aib, %..loopexit_crit_edge.us.i.us ], [ %i.aib, %.lr.ph77.split.split.i.us ], [ %i.aib, %..loopexit61_crit_edge.us.i.us ], [ %i.aib, %.lr.ph77.split.split.us78.i.us ], [ %i.ahq, %bb.cs ], [ %i.aib, %.lr.ph77.split.split.us.i.us ], [ %i.aib, %bb.cz ], [ %i.aib, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1510.unr-lcssa ] ; 2 uses
  br i1 %i.ahk, label %bb.da, label %_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us

bb.da:                                            ; preds = %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us
  %spec.select1262.us = select i1 %.not1050, i32 %.0898.us, i32 %.0899.us ; 3 uses
  %spec.select1263.us = select i1 %.not1050, i32 %.0899.us, i32 %.0898.us ; 2 uses
  %i.alb = mul i32 %spec.select1263.us, %16       ; 2 uses
  %i.alc = sext i32 %i.alb to i64                 ; 4 uses
  %i.ald = mul i32 %spec.select1263.us, %i.agc    ; 3 uses
  %.not14.i.us = icmp ne i32 %spec.select1262.us, 0
  %i.ale = icmp sgt i32 %i.ald, 0
  %or.cond.i.us = select i1 %.not14.i.us, i1 %i.ale, i1 false
  br i1 %or.cond.i.us, label %.preheader.preheader.i.us, label %_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us

.preheader.preheader.i.us:                        ; preds = %bb.da
  %wide.trip.count.i.us = zext nneg i32 %i.ald to i64 ; 6 uses
  %i.alf = add i32 %spec.select1262.us, -1
  %i.alg = zext i32 %i.alf to i64                 ; 2 uses
  %i.alh = mul nsw i64 %i.alc, %i.alg
  %i.ali = shl nuw nsw i64 %wide.trip.count.i.us, 2 ; 2 uses
  %i.alj = getelementptr i8, ptr %scevgep1498, i64 %i.alh
  %scevgep1499 = getelementptr i8, ptr %i.alj, i64 %i.ali
  %scevgep1500 = getelementptr i8, ptr %i.ahr, i64 %i.ahj
  %i.alk = mul i64 %.0918, %i.alg
  %i.all = getelementptr i8, ptr %scevgep1500, i64 %i.ahs
  %i.alm = getelementptr i8, ptr %i.all, i64 %i.alk
  %scevgep1501 = getelementptr i8, ptr %i.alm, i64 %i.ali
  %min.iters.check = icmp ult i32 %i.ald, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep1501
  %bound1 = icmp ult ptr %i.ahu, %scevgep1499
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.alb, 0
  %i.aln = or i1 %found.conflict, %stride.check
  %i.alo = or i1 %i.aln, %stride.check1502
  %n.vec = and i64 %wide.trip.count.i.us, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.us
  %xtraiter1535 = and i64 %wide.trip.count.i.us, 3 ; 2 uses
  %lcmp.mod1536.not = icmp eq i64 %xtraiter1535, 0
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %._crit_edge.i.us, %.preheader.preheader.i.us
  %.in.i.us = phi i32 [ %i.aml, %._crit_edge.i.us ], [ %spec.select1262.us, %.preheader.preheader.i.us ]
  %.01116.i.us = phi ptr [ %i.amn, %._crit_edge.i.us ], [ %i.afp, %.preheader.preheader.i.us ] ; 7 uses
  %.01215.i.us = phi ptr [ %i.amm, %._crit_edge.i.us ], [ %i.ahu, %.preheader.preheader.i.us ] ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.alo
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.us ] ; 3 uses
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %index ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 16
  %wide.load = load <4 x i32>, ptr %i.alp, align 4, !tbaa !30, !alias.scope !924
  %wide.load1503 = load <4 x i32>, ptr %i.alq, align 4, !tbaa !30, !alias.scope !924
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %index ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 16
  store <4 x i32> %wide.load, ptr %i.alr, align 4, !tbaa !30, !alias.scope !925, !noalias !924
  store <4 x i32> %wide.load1503, ptr %i.als, align 4, !tbaa !30, !alias.scope !925, !noalias !924
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.alt = icmp eq i64 %index.next, %n.vec
  br i1 %i.alt, label %middle.block, label %vector.body, !llvm.loop !916

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.us, %middle.block
  %indvars.iv.i1098.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.us ] ; 3 uses
  br i1 %lcmp.mod1536.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i1098.us.prol = phi i64 [ %indvars.iv.next.i1099.us.prol, %scalar.ph.prol ], [ %indvars.iv.i1098.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %indvars.iv.i1098.us.prol
  %i.alv = load i32, ptr %i.alu, align 4, !tbaa !30
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %indvars.iv.i1098.us.prol
  store i32 %i.alv, ptr %i.alw, align 4, !tbaa !30
  %indvars.iv.next.i1099.us.prol = add nuw nsw i64 %indvars.iv.i1098.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1535
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !917

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i1098.us.unr = phi i64 [ %indvars.iv.i1098.us.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i1099.us.prol, %scalar.ph.prol ]
  %i.alx = sub nsw i64 %indvars.iv.i1098.us.ph, %wide.trip.count.i.us
  %i.aly = icmp ugt i64 %i.alx, -4
  br i1 %i.aly, label %._crit_edge.i.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i1098.us = phi i64 [ %indvars.iv.next.i1099.us.3, %scalar.ph ], [ %indvars.iv.i1098.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %indvars.iv.i1098.us
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !30
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %indvars.iv.i1098.us
  store i32 %i.ama, ptr %i.amb, align 4, !tbaa !30
  %indvars.iv.next.i1099.us = add nuw nsw i64 %indvars.iv.i1098.us, 1 ; 2 uses
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %indvars.iv.next.i1099.us
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !30
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %indvars.iv.next.i1099.us
  store i32 %i.amd, ptr %i.ame, align 4, !tbaa !30
  %indvars.iv.next.i1099.us.1 = add nuw nsw i64 %indvars.iv.i1098.us, 2 ; 2 uses
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %indvars.iv.next.i1099.us.1
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !30
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %indvars.iv.next.i1099.us.1
  store i32 %i.amg, ptr %i.amh, align 4, !tbaa !30
  %indvars.iv.next.i1099.us.2 = add nuw nsw i64 %indvars.iv.i1098.us, 3 ; 2 uses
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %indvars.iv.next.i1099.us.2
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !30
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %indvars.iv.next.i1099.us.2
  store i32 %i.amj, ptr %i.amk, align 4, !tbaa !30
  %indvars.iv.next.i1099.us.3 = add nuw nsw i64 %indvars.iv.i1098.us, 4 ; 2 uses
  %exitcond.not.i1100.us.3 = icmp eq i64 %indvars.iv.next.i1099.us.3, %wide.trip.count.i.us
  br i1 %exitcond.not.i1100.us.3, label %._crit_edge.i.us, label %scalar.ph, !llvm.loop !918

._crit_edge.i.us:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aml = add nsw i32 %.in.i.us, -1              ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.01215.i.us, i64 %.0918
  %i.amn = getelementptr inbounds nuw i8, ptr %.01116.i.us, i64 %i.alc
  %.not.i1101.us = icmp eq i32 %i.aml, 0
  br i1 %.not.i1101.us, label %_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us, label %.preheader.i.us, !llvm.loop !919

_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us: ; preds = %._crit_edge.i.us, %bb.da, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us
  %.0885.us = phi ptr [ %i.ahu, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us ], [ %i.afp, %bb.da ], [ %i.afp, %._crit_edge.i.us ] ; 2 uses
  %.0884.us = phi i64 [ %.0918, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us ], [ %i.alc, %bb.da ], [ %i.alc, %._crit_edge.i.us ] ; 2 uses
  %.sroa.11.0.insert.ext1122.us = zext i32 %.sroa.11.1.us to i64
  %.sroa.11.0.insert.shift1123.us = shl nuw i64 %.sroa.11.0.insert.ext1122.us, 32
  %.sroa.01115.0.insert.ext1116.us = zext i32 %.sroa.01115.1.us to i64
  %.sroa.01115.0.insert.insert1118.us = or disjoint i64 %.sroa.11.0.insert.shift1123.us, %.sroa.01115.0.insert.ext1116.us ; 2 uses
  br i1 %i.afx, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us
  invoke void %switch.load(ptr noundef %.0887.us, i64 noundef %.0886.us, ptr noundef %.0885.us, i64 noundef %.0884.us, ptr noundef %i.ahb, i64 noundef %i.abi, ptr noundef %i.agy, i64 noundef %i.agt, i64 %.sroa.01115.0.insert.insert1118.us, i64 %.sroa.01110.0.insert.insert.us, double noundef %2, double noundef %4, i32 noundef %.51362.us)
          to label %.thread unwind label %.loopexit.split.us, !callees !923

bb.dc:                                            ; preds = %_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us
  invoke void %switch.load1505(ptr noundef %.0887.us, i64 noundef %.0886.us, ptr noundef %.0885.us, i64 noundef %.0884.us, ptr noundef %i.afo, i64 noundef %i.ahi, i64 %.sroa.01115.0.insert.insert1118.us, i64 %.sroa.01110.0.insert.insert.us, i32 noundef %.51362.us)
          to label %bb.dd unwind label %.loopexit.split.us, !callees !926

bb.dd:                                            ; preds = %bb.dc
  %i.amo = add nsw i32 %.0898.us, %.09011361.us   ; 2 uses
  %i.amp = icmp slt i32 %i.amo, %.01253
  br i1 %i.amp, label %.backedge.backedge, label %._crit_edge.us

.backedge.backedge:                               ; preds = %bb.dd, %.thread
  %.09011361.us.be = phi i32 [ %i.amo, %bb.dd ], [ %i.amq, %.thread ]
  br label %.backedge, !llvm.loop !920

.thread:                                          ; preds = %bb.db
  %i.amq = add nsw i32 %.0898.us, %.09011361.us   ; 2 uses
  %i.amr = icmp slt i32 %i.amq, %.01253
  br i1 %i.amr, label %.backedge.backedge, label %._crit_edge.us.thread

._crit_edge.us.thread:                            ; preds = %.thread, %._crit_edge.us
  %i.ams = add nsw i32 %.0899.us, %.09021364.us   ; 2 uses
  %i.amt = icmp slt i32 %i.ams, %.sroa.01169.0
  br i1 %i.amt, label %.lr.ph1367.split.us, label %._crit_edge1368, !llvm.loop !921

._crit_edge.us:                                   ; preds = %bb.dd
  %i.amu = load ptr, ptr %i.afu, align 8, !tbaa !47
  %i.amv = load i64, ptr %i.afv, align 8, !tbaa !38 ; 2 uses
  %i.amw = mul i64 %i.amv, %i.agk
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amu, i64 %i.amw
  %i.amy = getelementptr inbounds i8, ptr %i.amx, i64 %i.agx
  invoke void %switch.load1507(ptr noundef %i.ahb, i64 noundef %i.abi, ptr noundef %i.afo, i64 noundef %i.ahi, ptr noundef %i.amy, i64 noundef %i.amv, i64 %.sroa.01110.0.insert.insert.us, double noundef %2, double noundef %4, i32 noundef %i.agq)
          to label %._crit_edge.us.thread unwind label %.split1370.us, !callees !927

.loopexit.split.us:                               ; preds = %bb.dc, %bb.db
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.body1095

.split1370.us:                                    ; preds = %._crit_edge.us
  %i.amz = landingpad { ptr, i32 }
          cleanup
  br label %.body1095

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body1095

.split.us:                                        ; preds = %.lr.ph77.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc1094 unwind label %.loopexit.split-lp

.noexc1094:                                       ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm, ptr noundef nonnull @.str.1, i32 noundef 172) #26
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %.noexc1094
  unreachable

bb.df:                                            ; preds = %.noexc1094
  %i.ana = landingpad { ptr, i32 }
          cleanup
  %i.anb = load ptr, ptr %7, align 8, !tbaa !37   ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.and = icmp eq ptr %i.anb, %i.anc
  br i1 %i.and, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1092, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1091

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1091: ; preds = %bb.df
  %i.ane = load i64, ptr %i.anc, align 8, !tbaa !23
  %i.anf = add i64 %i.ane, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.anf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1092

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1092: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1091
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.body1095

._crit_edge1368:                                  ; preds = %._crit_edge.us.thread, %bb.cn
  %.4.lcssa = phi i32 [ %.31382, %bb.cn ], [ %i.agq, %._crit_edge.us.thread ]
  %i.ang = add nsw i32 %.0900, %.121381           ; 2 uses
  %i.anh = icmp slt i32 %i.ang, %.sroa.32.0
  br i1 %i.anh, label %bb.ck, label %.loopexit1280, !llvm.loop !922

.loopexit1280:                                    ; preds = %._crit_edge1368, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit, %bb.bo
  %i.ani = load ptr, ptr %12, align 8, !tbaa !51  ; 3 uses
  %.not.i.i1102 = icmp eq ptr %i.ani, %i.abj
  %i.anj = icmp eq ptr %i.ani, null
  %or.cond.i1103 = or i1 %.not.i.i1102, %i.anj
  br i1 %or.cond.i1103, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %.loopexit1280
  call void @_ZdaPv(ptr noundef nonnull %i.ani) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %.loopexit1280, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.critedge

.critedge:                                        ; preds = %bb.aw, %bb.az, %bb.ar, %bb.au, %bb.am, %bb.ap, %bb.ae, %bb.ah, %bb.z, %bb.ac, %bb.u, %bb.x, %.preheader1295, %bb.ay, %.preheader1292, %bb.at, %.preheader1289, %bb.ao, %.preheader1286, %bb.ag, %.preheader1283, %bb.ab, %.preheader, %bb.w, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit
  %i.ank = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.anl = load i32, ptr %i.ank, align 8, !tbaa !19
  %.not.i1105 = icmp eq i32 %i.anl, 0
  br i1 %.not.i1105, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %.critedge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %11)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.anm = landingpad { ptr, i32 }
          catch ptr null
  %i.ann = extractvalue { ptr, i32 } %i.anm, 0
  call void @__clang_call_terminate(ptr %i.ann) #25
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.critedge, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret void

.body1095:                                        ; preds = %.split1370.us, %.loopexit.split.us, %.loopexit.split-lp, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1092, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1058 = phi { ptr, i32 } [ %i.adc, %bb.bp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.adx, %bb.bw ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ana, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1092 ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %i.amz, %.split1370.us ]
  %i.ano = load ptr, ptr %12, align 8, !tbaa !51  ; 3 uses
  %.not.i.i1106 = icmp eq ptr %i.ano, %i.abj
  %i.anp = icmp eq ptr %i.ano, null
  %or.cond.i1107 = or i1 %.not.i.i1106, %i.anp
  br i1 %or.cond.i1107, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit1109, label %bb.dj

bb.dj:                                            ; preds = %.body1095
  call void @_ZdaPv(ptr noundef nonnull %i.ano) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit1109

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit1109:        ; preds = %.body1095, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.body

.body:                                            ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit1109
  %.pn1058.pn = phi { ptr, i32 } [ %.pn1058, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit1109 ], [ %i.aa, %bb.j ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  resume { ptr, i32 } %.pn1058.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baselineL17GEMMSingleMul_32fEPKfmS2_mS2_mPfmNS_5Size_IiEES5_ddi(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address) %4, i64 noundef %5, ptr nofree noundef writeonly captures(none) %6, i64 noundef %7, i64 %8, i64 %9, double noundef %10, double noundef %11, i32 noundef %12) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"class.cv::AutoBuffer.4", align 8 ; 10 uses
  %14 = alloca %"class.cv::AutoBuffer.4", align 8 ; 12 uses
  %15 = alloca %"class.cv::AutoBuffer", align 8   ; 7 uses
  %.sroa.0344.0.extract.trunc.i = trunc i64 %8 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %8, 32    ; 3 uses
end_hunk_0
