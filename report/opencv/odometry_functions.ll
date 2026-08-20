inline.NumInlined: 1901
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN2cv19RGBDICPOdometryImplERKNS_12_OutputArrayERKNS_3MatERKNS_13OdometryFrameES8_RKNS_4MatxIfLi3ELi3EEEffRKSt6vectorIiSaIiEEdddNS_12OdometryTypeENS_21OdometryTransformTypeENS_16OdometryAlgoTypeE:bb.a

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %45)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @__func__._ZN2cv19RGBDICPOdometryImplERKNS_12_OutputArrayERKNS_3MatERKNS_13OdometryFrameES8_RKNS_4MatxIfLi3ELi3EEEffRKSt6vectorIiSaIiEEdddNS_12OdometryTypeENS_21OdometryTransformTypeENS_16OdometryAlgoTypeE, ptr noundef nonnull @.str.1, i32 noundef 506) #23
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

bb.l:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %44, align 8, !tbaa !50   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %bb.l
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275, %bb.k
  %.pn270 = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275 ], [ %i.ab, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  switch i32 %12, label %bb.o [
    i32 4, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit
    i32 1, label %bb.n
    i32 2, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  br label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %41)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @__func__._ZN2cvL15getTransformDimENS_21OdometryTransformTypeE, ptr noundef nonnull @.str.18, i32 noundef 29) #23
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %40, align 8, !tbaa !50   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !18
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %_ZNSt6vectorIN2cv4MatxIfLi3ELi3EEESaIS2_EED2Ev.exit318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ], [ %.pn253.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv4MatxIfLi3ELi3EEESaIS2_EED2Ev.exit318 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %common.resume

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit: ; preds = %bb.m, %bb.n
  %.04.i = phi i32 [ 3, %bb.n ], [ 6, %bb.m ]     ; 4 uses
  %i.an = mul nuw nsw i32 %.04.i, 20              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN2cvL24buildPyramidCameraMatrixERKNS_4MatxIfLi3ELi3EEEiRSt6vectorIS1_SaIS1_EE(ptr noundef nonnull align 4 dereferenceable(36) %4, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  %i.ao = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.s unwind label %bb.af

bb.s:                                             ; preds = %bb.r
  br i1 %i.ao, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  invoke void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %48, i32 noundef 4, i32 noundef 4, i32 noundef 6)
          to label %bb.u unwind label %bb.ag

bb.u:                                             ; preds = %bb.t
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %47) #22
  %i.ap = load ptr, ptr %48, align 8, !tbaa !68, !noalias !107 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(688) %48, ptr noundef nonnull align 8 dereferenceable(208) %47, i32 noundef -1)
          to label %bb.w unwind label %bb.ah

bb.v:                                             ; preds = %bb.s
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %47, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.x unwind label %bb.ai

bb.w:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %48, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.at) #22
  %i.au = getelementptr inbounds nuw i8, ptr %48, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #22
  %i.av = getelementptr inbounds nuw i8, ptr %48, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.av) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %49) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %50) #22
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.ax = load ptr, ptr %7, align 8, !tbaa !87
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = lshr exact i64 %i.ba, 2                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph453, label %._crit_edge454

.lr.ph453:                                        ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %56, i64 16
  %.not194 = icmp eq i32 %11, 0                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %64, i64 432
  %i.bn = getelementptr inbounds nuw i8, ptr %64, i64 224
  %i.bo = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.bt = icmp ne i32 %11, 1
  %i.bu = icmp eq i32 %13, 0                      ; 2 uses
  %or.cond5 = and i1 %i.bt, %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.bz = icmp ne i32 %13, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %78, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %35, i64 20
  %i.cm = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %36, i64 20
  %i.cp = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %32, i64 20
  %i.cu = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.cx = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.da = icmp eq i32 %13, 1
  %i.db = getelementptr inbounds nuw i8, ptr %100, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %100, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %101, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %101, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %102, i64 16
  %.sroa.7334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %106, i64 4
  %.sroa.12336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %106, i64 12
  %.sroa.14337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %106, i64 16
  %.sroa.24341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %106, i64 32
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %106, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %107, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %107, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %107, i64 72
  %i.dk = getelementptr inbounds nuw i8, ptr %107, i64 128
  %i.dl = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %108, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %108, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %108, i64 72
  %i.dq = getelementptr inbounds nuw i8, ptr %108, i64 128
  %i.dr = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %94, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %95, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %25, i64 20
  %i.dz = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.ec = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 20
  %i.eh = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.ek = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.ep = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 20
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %20, i64 20
  %i.ev = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %113, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %111, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %111, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %115, i64 432
  %i.ff = getelementptr inbounds nuw i8, ptr %115, i64 224
  %i.fg = getelementptr inbounds nuw i8, ptr %115, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %116, i64 4
  %i.fi = getelementptr inbounds nuw i8, ptr %116, i64 12
  %i.fj = getelementptr inbounds nuw i8, ptr %116, i64 16
  %i.fk = and i64 %i.bb, 2147483647
  br label %bb.ak

._crit_edge454:                                   ; preds = %._crit_edge, %bb.x
  %.0107.lcssa = phi i1 [ false, %bb.x ], [ %.4111, %._crit_edge ]
  %i.fl = getelementptr inbounds nuw i8, ptr %47, i64 72
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !47 ; 6 uses
  %i.fn = icmp slt i32 %i.fm, 3
  br i1 %i.fn, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %._crit_edge454
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %.noexc unwind label %bb.fx

.noexc:                                           ; preds = %bb.y
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.21, i32 noundef 109) #23
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %.noexc
  unreachable

bb.aa:                                            ; preds = %.noexc
  %i.fo = landingpad { ptr, i32 }
          cleanup
  %i.fp = load ptr, ptr %38, align 8, !tbaa !50   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i278: ; preds = %bb.aa
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !18
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i279: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %.body281

bb.ab:                                            ; preds = %._crit_edge454
  %i.fu = icmp sgt i32 %i.fm, 0
  br i1 %i.fu, label %bb.ac, label %.thread.i

.thread.i:                                        ; preds = %bb.ab
  %i.fv = icmp eq i32 %i.fm, 0
  %i.fw = zext i1 %i.fv to i32
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fx = getelementptr inbounds nuw i8, ptr %47, i64 84
  %i.fy = icmp eq i32 %i.fm, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %47, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.fx, align 4            ; 2 uses
  %i.fz = select i1 %i.fy, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.fm, 1
  br i1 %.not.i, label %bb.ad, label %bb.fo

bb.ad:                                            ; preds = %bb.ac, %.thread.i
  %i.ga = phi i32 [ %i.fw, %.thread.i ], [ %i.fz, %bb.ac ]
  %i.gb = icmp sgt i32 %i.fm, -1
  %i.gc = zext i1 %i.gb to i32
  br label %bb.fo

bb.ae:                                            ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

bb.af:                                            ; preds = %bb.r
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.ag:                                            ; preds = %bb.t
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ah:                                            ; preds = %bb.u
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %48) #22
  br label %bb.aj

bb.ai:                                            ; preds = %bb.v
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %.pn.ph = phi { ptr, i32 } [ %i.gf, %bb.ag ], [ %i.gg, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %bb.gq

bb.ak:                                            ; preds = %.lr.ph453, %._crit_edge
  %indvars.iv = phi i64 [ %i.fk, %.lr.ph453 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0107450 = phi i1 [ false, %.lr.ph453 ], [ %.4111, %._crit_edge ] ; 2 uses
  %.sroa.0333.0449 = phi float [ 1.000000e+00, %.lr.ph453 ], [ %.sroa.0333.4, %._crit_edge ] ; 2 uses
  %.sroa.12336.0440 = phi float [ 0.000000e+00, %.lr.ph453 ], [ %.sroa.12336.4, %._crit_edge ] ; 2 uses
  %i.gi = phi <8 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, %.lr.ph453 ], [ %i.pb, %._crit_edge ] ; 2 uses
  %i.gj = phi <2 x float> [ zeroinitializer, %.lr.ph453 ], [ %i.pc, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 22 uses
  %i.gk = load ptr, ptr %46, align 8, !tbaa !110
  %i.gl = getelementptr inbounds nuw [36 x i8], ptr %i.gk, i64 %indvars.iv.next ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %51) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %52) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %53) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %54) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  store i64 0, ptr %i.bf, align 8
  store i32 -1040121856, ptr %55, align 8, !tbaa !23
  store ptr %51, ptr %i.be, align 8, !tbaa !26
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %55, i32 noundef 1, i64 noundef %indvars.iv.next)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #22
  store i64 0, ptr %i.bh, align 8
  store i32 -1040121856, ptr %56, align 8, !tbaa !23
  store ptr %52, ptr %i.bg, align 8, !tbaa !26
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %56, i32 noundef 1, i64 noundef %indvars.iv.next)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #22
  br i1 %.not194, label %bb.au, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  store i64 0, ptr %i.bj, align 8
  store i32 -1040121856, ptr %57, align 8, !tbaa !23
  store ptr %53, ptr %i.bi, align 8, !tbaa !26
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %57, i32 noundef 0, i64 noundef %indvars.iv.next)
          to label %bb.ao unwind label %bb.as

end_hunk_0
begin_hunk_1_@_ZN2cv19RGBDICPOdometryImplERKNS_12_OutputArrayERKNS_3MatERKNS_13OdometryFrameES8_RKNS_4MatxIfLi3ELi3EEEffRKSt6vectorIiSaIiEEdddNS_12OdometryTypeENS_21OdometryTransformTypeENS_16OdometryAlgoTypeE:bb.a
bb.ce:                                            ; preds = %bb.br
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  br label %bb.fk

bb.cf:                                            ; preds = %bb.bs
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #22
  br label %bb.fj

bb.cg:                                            ; preds = %bb.bt
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #22
  br label %bb.fi

bb.ch:                                            ; preds = %bb.bv
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #22
  br label %bb.cp

bb.ci:                                            ; preds = %bb.bw
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #22
  br label %bb.cp

bb.cj:                                            ; preds = %bb.bx
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #22
  br label %bb.cp

bb.ck:                                            ; preds = %bb.by
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #22
  br label %bb.cp

bb.cl:                                            ; preds = %bb.bz
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ca
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %91) #22
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.pn222 = phi { ptr, i32 } [ %i.ii, %bb.cm ], [ %i.ih, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #22
  br label %bb.cp

bb.co:                                            ; preds = %.noexc288, %bb.cc, %.noexc286, %bb.cb
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.ck, %bb.cj, %bb.ci, %bb.ch
  %.pn224 = phi { ptr, i32 } [ %i.ij, %bb.co ], [ %.pn222, %bb.cn ], [ %i.ig, %bb.ck ], [ %i.if, %bb.cj ], [ %i.ie, %bb.ci ], [ %i.id, %bb.ch ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %86) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %85) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %83) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #22
  br label %bb.fh

bb.cq:                                            ; preds = %bb.cd, %bb.bu
  %i.ik = load i32, ptr %i.by, align 8, !tbaa !55
  %i.il = icmp sge i32 %i.ik, %i.an
  %or.cond3 = or i1 %i.da, %i.il
  br i1 %or.cond3, label %bb.cr, label %bb.eb

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.bu, label %bb.cs, label %bb.dd

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %92) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %93) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #22
  store i64 0, ptr %i.du, align 8
  store i32 -1040121856, ptr %94, align 8, !tbaa !23
  store ptr %92, ptr %i.dt, align 8, !tbaa !26
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %94, i32 noundef 3, i64 noundef %indvars.iv.next)
          to label %bb.ct unwind label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #22
  store i64 0, ptr %i.dw, align 8
  store i32 -1040121856, ptr %95, align 8, !tbaa !23
  store ptr %93, ptr %i.dv, align 8, !tbaa !26
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %95, i32 noundef 7, i64 noundef %indvars.iv.next)
          to label %bb.cu unwind label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #22
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %96, ptr noundef nonnull align 8 dereferenceable(184) %77, i32 noundef 16777216)
          to label %bb.cv unwind label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN2cv18calcICPLsmMatricesERKNS_3MatES2_S2_S2_S2_RS0_S3_NS_21OdometryTransformTypeE(ptr noundef nonnull align 8 dereferenceable(208) %96, ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(208) %92, ptr noundef nonnull align 8 dereferenceable(208) %93, ptr noundef nonnull align 8 dereferenceable(208) %66, ptr noundef nonnull align 8 dereferenceable(208) %61, ptr noundef nonnull align 8 dereferenceable(208) %62, i32 noundef %12)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %96) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %93) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %92) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #22
  br label %bb.dy

bb.cx:                                            ; preds = %bb.cs
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #22
  br label %bb.dc

bb.cy:                                            ; preds = %bb.ct
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #22
  br label %bb.dc

bb.cz:                                            ; preds = %bb.cu
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.cv
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %96) #22
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.pn242 = phi { ptr, i32 } [ %i.ip, %bb.da ], [ %i.io, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #22
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy, %bb.cx
  %.pn242.pn = phi { ptr, i32 } [ %.pn242, %bb.db ], [ %i.in, %bb.cy ], [ %i.im, %bb.cx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %93) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %92) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #22
  br label %bb.fh

bb.dd:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #22
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %97, i32 noundef 0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #22
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %98, i32 noundef 0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #22
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %99, i32 noundef 0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #22
  store i64 0, ptr %i.dc, align 8
  store i32 -1039532032, ptr %100, align 8, !tbaa !23
  store ptr %97, ptr %i.db, align 8, !tbaa !26
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %100, i32 noundef 3, i64 noundef %indvars.iv.next)
          to label %bb.de unwind label %bb.do

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #22
  store i64 0, ptr %i.de, align 8
  store i32 -1039532032, ptr %101, align 8, !tbaa !23
  store ptr %98, ptr %i.dd, align 8, !tbaa !26
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %101, i32 noundef 7, i64 noundef %indvars.iv.next)
          to label %bb.df unwind label %bb.dp

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #22
  store i64 0, ptr %i.dg, align 8
  store i32 -1039532032, ptr %102, align 8, !tbaa !23
  store ptr %99, ptr %i.df, align 8, !tbaa !26
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %102, i32 noundef 7, i64 noundef %indvars.iv.next)
          to label %bb.dg unwind label %bb.dq

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %103, i8 0, i64 144, i1 false), !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %104, i8 0, i64 24, i1 false), !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %105, ptr noundef nonnull align 4 dereferenceable(36) %4, i64 36, i1 false), !tbaa.struct !117
  store float %.sroa.0333.1408, ptr %106, align 8
  %122 = shufflevector <8 x float> %i.hf, <8 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %122, ptr %.sroa.7334.0..sroa_idx, align 4
  store float %.sroa.12336.1399, ptr %.sroa.12336.0..sroa_idx, align 4
  %i.iq = shufflevector <2 x float> %i.hg, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %123 = shufflevector <8 x float> %i.hf, <8 x float> %i.iq, <4 x i32> <i32 2, i32 7, i32 3, i32 9>
  store <4 x float> %123, ptr %.sroa.14337.0..sroa_idx, align 8
  %124 = shufflevector <8 x float> %i.hf, <8 x float> %i.iq, <4 x i32> <i32 4, i32 5, i32 6, i32 8>
  store <4 x float> %124, ptr %.sroa.24341.0..sroa_idx, align 8
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.34.0..sroa_idx, align 8
  invoke void @_ZN2cv22calcICPLsmMatricesFastENS_4MatxIfLi3ELi3EEERKNS_4UMatES4_S4_S4_NS_7Affine3IfEEiffRNS0_IfLi6ELi6EEERNS_3VecIfLi6EEE(ptr noundef nonnull byval(%"class.cv::Matx.16") align 8 %105, ptr noundef nonnull align 8 dereferenceable(184) %97, ptr noundef nonnull align 8 dereferenceable(184) %98, ptr noundef nonnull align 8 dereferenceable(184) %77, ptr noundef nonnull align 8 dereferenceable(184) %99, ptr noundef nonnull byval(%"class.cv::Affine3") align 8 %106, i32 noundef %i.gz, float noundef %5, float noundef %6, ptr noundef nonnull align 4 dereferenceable(144) %103, ptr noundef nonnull align 4 dereferenceable(24) %104)
          to label %bb.dh unwind label %bb.dr

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #22
  store <4 x i32> <i32 1124024325, i32 2, i32 6, i32 6>, ptr %107, align 16, !tbaa !19
  store i32 153, ptr %i.dh, align 16, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.di, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.dj, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc291 unwind label %bb.ds

.noexc291:                                        ; preds = %bb.dh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.dk, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %30, i32 noundef 6, i32 noundef 6, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(144) %103, i64 noundef 0)
          to label %.noexc292 unwind label %bb.ds

.noexc292:                                        ; preds = %.noexc291
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  store i64 0, ptr %i.dm, align 8
  store i32 33619968, ptr %31, align 8, !tbaa !23
  store ptr %107, ptr %i.dl, align 8, !tbaa !26
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %.noexc292
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %.body293

bb.dj:                                            ; preds = %.noexc292
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  %i.is = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %61, ptr noundef nonnull align 8 dereferenceable(208) %107)
          to label %bb.dk unwind label %bb.dt     ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %107) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #22
  store <4 x i32> <i32 1124024325, i32 1, i32 1, i32 6>, ptr %108, align 16, !tbaa !19
  store i32 153, ptr %i.dn, align 16, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.do, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.dp, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc295 unwind label %bb.du

.noexc295:                                        ; preds = %bb.dk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.dq, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %28, i32 noundef 6, i32 noundef 1, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(24) %104, i64 noundef 0)
          to label %.noexc296 unwind label %bb.du

.noexc296:                                        ; preds = %.noexc295
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  store i64 0, ptr %i.ds, align 8
  store i32 33619968, ptr %29, align 8, !tbaa !23
  store ptr %108, ptr %i.dr, align 8, !tbaa !26
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %28, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.dm unwind label %bb.dl

bb.dl:                                            ; preds = %.noexc296
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %.body297

bb.dm:                                            ; preds = %.noexc296
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.iu = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %62, ptr noundef nonnull align 8 dereferenceable(208) %108)
          to label %bb.dn unwind label %bb.dv     ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %108) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #22
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %99) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #22
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %98) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #22
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %97) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #22
  br label %bb.dy

bb.do:                                            ; preds = %bb.dd
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #22
  br label %bb.dx

bb.dp:                                            ; preds = %bb.de
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #22
  br label %bb.dx

bb.dq:                                            ; preds = %bb.df
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #22
  br label %bb.dx

bb.dr:                                            ; preds = %bb.dg
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.ds:                                            ; preds = %.noexc291, %bb.dh
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body293

bb.dt:                                            ; preds = %bb.dj
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %107) #22
  br label %.body293

.body293:                                         ; preds = %bb.ds, %bb.di, %bb.dt
  %.pn232 = phi { ptr, i32 } [ %i.ja, %bb.dt ], [ %i.iz, %bb.ds ], [ %i.ir, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #22
  br label %bb.dw

bb.du:                                            ; preds = %.noexc295, %bb.dk
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body297

bb.dv:                                            ; preds = %bb.dm
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %108) #22
  br label %.body297

.body297:                                         ; preds = %bb.du, %bb.dl, %bb.dv
  %.pn234 = phi { ptr, i32 } [ %i.jc, %bb.dv ], [ %i.jb, %bb.du ], [ %i.it, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #22
  br label %bb.dw

bb.dw:                                            ; preds = %.body297, %.body293, %bb.dr
  %.pn234.pn = phi { ptr, i32 } [ %.pn234, %.body297 ], [ %.pn232, %.body293 ], [ %i.iy, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #22
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dq, %bb.dp, %bb.do
  %.pn234.pn.pn = phi { ptr, i32 } [ %.pn234.pn, %bb.dw ], [ %i.ix, %bb.dq ], [ %i.iw, %bb.dp ], [ %i.iv, %bb.do ]
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %99) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #22
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %98) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #22
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %97) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #22
  br label %bb.fh

bb.dy:                                            ; preds = %bb.dn, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store i32 0, ptr %i.dx, align 8, !tbaa !44
  store i32 0, ptr %i.dy, align 4, !tbaa !45
  store i32 16842752, ptr %25, align 8, !tbaa !23
  store ptr %79, ptr %i.dz, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  store i32 0, ptr %i.ea, align 8, !tbaa !44
  store i32 0, ptr %i.eb, align 4, !tbaa !45
  store i32 16842752, ptr %26, align 8, !tbaa !23
  store ptr %61, ptr %i.ec, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  store i64 0, ptr %i.ee, align 8
  store i32 -1040121856, ptr %27, align 8, !tbaa !23
  store ptr %79, ptr %i.ed, align 8, !tbaa !26
  %i.jd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc299 unwind label %bb.ea

.noexc299:                                        ; preds = %bb.dy
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %i.jd, i32 noundef -1)
          to label %bb.dz unwind label %bb.ea

bb.dz:                                            ; preds = %.noexc299
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store i32 0, ptr %i.ef, align 8, !tbaa !44
  store i32 0, ptr %i.eg, align 4, !tbaa !45
  store i32 16842752, ptr %22, align 8, !tbaa !23
  store ptr %81, ptr %i.eh, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store i32 0, ptr %i.ei, align 8, !tbaa !44
  store i32 0, ptr %i.ej, align 4, !tbaa !45
  store i32 16842752, ptr %23, align 8, !tbaa !23
  store ptr %62, ptr %i.ek, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
end_hunk_1
begin_hunk_2_@_ZN2cv15computeCorrespsERKNS_4MatxIfLi3ELi3EEERKNS_3MatES6_S6_S6_S6_S6_S6_fRS4_S7_RdNS_12OdometryTypeE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %21, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.af, align 16, !tbaa !83, !alias.scope !145
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %20, i64 %.sroa.0.0.insert.insert.i, i32 noundef 35, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #22
  %i.ag = icmp ne i32 %12, 1                      ; 6 uses
  br i1 %i.ag, label %bb.ad, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !47  ; 6 uses
  %i.ai = icmp slt i32 %i.ah, 3
  br i1 %i.ai, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc275 unwind label %bb.z

.noexc275:                                        ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.21, i32 noundef 109) #23
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc275
  unreachable

bb.o:                                             ; preds = %.noexc275
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %13, align 8, !tbaa !50   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266: ; preds = %bb.o
  %i.an = load i64, ptr %i.al, align 8, !tbaa !18
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body276

bb.p:                                             ; preds = %bb.l
  %i.ap = icmp sgt i32 %i.ah, 0
  br i1 %i.ap, label %bb.q, label %.thread.i269

.thread.i269:                                     ; preds = %bb.p
  %i.aq = icmp eq i32 %i.ah, 0
  %i.ar = zext i1 %i.aq to i32
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 2 uses
  %i.at = icmp eq i32 %i.ah, 2
  %i.au = zext i1 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !19 ; 2 uses
  %.not.i274 = icmp eq i32 %i.ah, 1
  br i1 %.not.i274, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = load i32, ptr %i.as, align 4, !tbaa !19
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %.thread.i269
  %i.ay = phi i32 [ %i.ar, %.thread.i269 ], [ %i.aw, %bb.q ]
  %i.az = icmp sgt i32 %i.ah, -1
  %i.ba = zext i1 %i.az to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bb = phi i32 [ %i.aw, %bb.r ], [ %i.ay, %bb.s ]
  %i.bc = phi i32 [ %i.ax, %bb.r ], [ %i.ba, %bb.s ]
  %.sroa.2.0.insert.ext.i270 = zext i32 %i.bc to i64
  %.sroa.2.0.insert.shift.i271 = shl nuw i64 %.sroa.2.0.insert.ext.i270, 32
  %.sroa.0.0.insert.ext.i272 = zext i32 %i.bb to i64
  %.sroa.0.0.insert.insert.i273 = or disjoint i64 %.sroa.2.0.insert.shift.i271, %.sroa.0.0.insert.ext.i272
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  store <2 x double> splat (double -1.000000e+00), ptr %24, align 16, !tbaa !83, !alias.scope !148
  %i.bd = getelementptr inbounds nuw i8, ptr %24, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.bd, align 16, !tbaa !83, !alias.scope !148
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %23, i64 %.sroa.0.0.insert.insert.i273, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.be = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.v unwind label %bb.ab      ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.ad

bb.w:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.x:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body264

bb.y:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %.body264

bb.z:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body276

bb.aa:                                            ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.ab ], [ %i.bj, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %.body276

.body276:                                         ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.bi, %bb.z ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.bk

bb.ad:                                            ; preds = %bb.k, %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load <4 x float>, ptr %0, align 4, !tbaa !21, !noalias !151 ; 3 uses
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bo = fpext <2 x float> %i.bn to <2 x double> ; 13 uses
  %i.bp = load <2 x float>, ptr %i.bl, align 4, !tbaa !21, !noalias !151 ; 2 uses
  %i.bq = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x float> %i.bm, <4 x float> %i.br, <2 x i32> <i32 1, i32 4>
  %i.bt = fpext <2 x float> %i.bs to <2 x double> ; 13 uses
  %i.bu = shufflevector <2 x float> %i.bq, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3>
  %i.bv = fpext <2 x float> %i.bu to <2 x double> ; 12 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load <2 x float>, ptr %i.bw, align 4, !tbaa !21, !noalias !151
  %i.by = fpext <2 x float> %i.bx to <2 x double> ; 11 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !21, !noalias !151
  %i.cb = fpext float %i.ca to double             ; 6 uses
  %i.cc = extractelement <2 x double> %i.bv, i64 1
  %i.cd = fneg double %i.cc                       ; 2 uses
  %i.ce = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x double> %i.cf, %i.by
  %i.ch = shufflevector <2 x double> %i.bo, <2 x double> %i.bt, <2 x i32> <i32 1, i32 3>
  %i.ci = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cj, <2 x double> %i.cg) ; 2 uses
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> %i.bt, <2 x i32> <i32 0, i32 3>
  %i.cm = fneg <2 x double> %i.cl                 ; 2 uses
  %i.cn = shufflevector <2 x double> %i.bt, <2 x double> %i.by, <2 x i32> <i32 0, i32 2>
  %i.co = fmul <2 x double> %i.cn, %i.cm
  %i.cp = shufflevector <2 x double> %i.ck, <2 x double> %i.by, <2 x i32> <i32 1, i32 3>
  %i.cq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.cp, <2 x double> %i.co) ; 2 uses
  %i.cr = extractelement <2 x double> %i.bv, i64 0
  %i.cs = extractelement <2 x double> %i.cq, i64 0
  %i.ct = extractelement <2 x double> %i.cq, i64 1
  %i.cu = call noundef double @llvm.fmuladd.f64(double %i.cr, double %i.ct, double %i.cs) ; 2 uses
  %i.cv = fcmp une double %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cw = fdiv double 1.000000e+00, %i.cu         ; 2 uses
  %i.cx = extractelement <2 x double> %i.bt, i64 1
  %i.cy = extractelement <2 x double> %i.bt, i64 0
  %i.cz = extractelement <2 x double> %i.bo, i64 1
  %i.da = extractelement <2 x double> %i.by, i64 0
  %i.db = insertelement <2 x double> %i.by, double %i.cb, i64 0
  %i.dc = fneg <2 x double> %i.db                 ; 3 uses
  %i.dd = shufflevector <2 x double> %i.bo, <2 x double> %i.bv, <2 x i32> <i32 1, i32 3>
  %i.de = fmul <2 x double> %i.dd, %i.dc
  %i.df = shufflevector <2 x double> %i.bv, <2 x double> %i.bt, <2 x i32> <i32 1, i32 3>
  %i.dg = insertelement <2 x double> %i.by, double %i.cb, i64 1
  %i.dh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dg, <2 x double> %i.de)
  %i.di = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dk = fmul <2 x double> %i.dh, %i.dj
  %26 = fneg double %i.da                         ; 2 uses
  %i.dl = extractelement <2 x double> %i.bo, i64 0
  %i.dm = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %27 = insertelement <2 x double> %i.dn, double %26, i64 1
  %28 = fmul <2 x double> %i.dm, %27
  %i.do = shufflevector <2 x double> %i.bt, <2 x double> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.dp = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dq = insertelement <2 x double> %i.dp, double %i.cb, i64 1
  %29 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.dq, <2 x double> %28)
  %30 = fmul <2 x double> %29, %i.dj
  %i.dr = insertelement <2 x double> %i.dc, double %26, i64 1
  %i.ds = fmul <2 x double> %i.dr, %i.bt
  %i.dt = shufflevector <2 x double> %i.bv, <2 x double> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.du = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.du, <2 x double> %i.ds)
  %i.dw = fmul <2 x double> %i.dv, %i.dj
  %i.dx = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = insertelement <2 x double> %i.dc, double %i.cd, i64 0
  %i.dz = fmul <2 x double> %i.dx, %i.dy
  %i.ea = shufflevector <2 x double> %i.bv, <2 x double> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.eb = shufflevector <2 x double> %i.bo, <2 x double> %i.by, <2 x i32> <i32 1, i32 2>
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.eb, <2 x double> %i.dz)
  %i.ed = fmul <2 x double> %i.ec, %i.dj
  %i.ee = fneg double %i.cz
  %i.ef = fmul double %i.cy, %i.ee
  %i.eg = call double @llvm.fmuladd.f64(double %i.dl, double %i.cx, double %i.ef)
  %i.eh = fmul double %i.eg, %i.cw
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.13345.0 = phi double [ %i.eh, %bb.ae ], [ 0.000000e+00, %bb.ad ] ; 2 uses
  %i.ei = phi <2 x double> [ %i.dk, %bb.ae ], [ zeroinitializer, %bb.ad ] ; 5 uses
  %i.ej = phi <2 x double> [ %30, %bb.ae ], [ zeroinitializer, %bb.ad ] ; 3 uses
  %i.ek = phi <2 x double> [ %i.ed, %bb.ae ], [ zeroinitializer, %bb.ad ] ; 3 uses
  %i.el = phi <2 x double> [ %i.dw, %bb.ae ], [ zeroinitializer, %bb.ad ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !66 ; 9 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !55 ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.er = load double, ptr %i.eq, align 8, !tbaa !83, !noalias !154 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.eu = load double, ptr %i.et, align 8, !tbaa !83, !noalias !154 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %19, i64 88
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !83, !noalias !154 ; 2 uses
  %i.ey = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.ez, <2 x double> zeroinitializer)
  %i.fb = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.fc, <2 x double> %i.fa)
  %i.fe = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.ff, <2 x double> %i.fd)
  %i.fh = extractelement <2 x double> %i.by, i64 0 ; 3 uses
  %i.fi = call double @llvm.fmuladd.f64(double %i.fh, double %i.er, double 0.000000e+00)
  %i.fj = extractelement <2 x double> %i.by, i64 1 ; 3 uses
  %i.fk = call double @llvm.fmuladd.f64(double %i.fj, double %i.eu, double %i.fi)
  %i.fl = call double @llvm.fmuladd.f64(double %i.cb, double %i.ex, double %i.fk) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.fm = add nsw i32 %i.ep, %i.en                ; 2 uses
  %i.fn = mul nsw i32 %i.fm, 3                    ; 2 uses
  %i.fo = sext i32 %i.fn to i64                   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  store ptr %i.fp, ptr %25, align 8, !tbaa !157
  %i.fq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.not.i.i = icmp ugt i32 %i.fn, 264
  store i64 %i.fo, ptr %i.fq, align 8, !tbaa !159
  br i1 %.not.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fr = icmp slt i32 %i.fm, 0
  %i.fs = shl nuw nsw i64 %i.fo, 2
  %i.ft = select i1 %i.fr, i64 -1, i64 %i.fs
  %i.fu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ft) #24
          to label %.noexc280 unwind label %bb.ai ; 2 uses

.noexc280:                                        ; preds = %bb.ag
  store ptr %i.fu, ptr %25, align 8, !tbaa !157
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %.noexc280
  %i.fv = phi ptr [ %i.fp, %bb.af ], [ %i.fu, %.noexc280 ] ; 6 uses
  %i.fw = sext i32 %i.en to i64                   ; 3 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fw ; 4 uses
  %i.fy = sext i32 %i.ep to i64                   ; 4 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.fy ; 3 uses
  %i.ga = shl i32 %i.en, 1
  %i.gb = sext i32 %i.ga to i64                   ; 3 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.fy ; 3 uses
  %i.ge = shl i32 %i.ep, 1
  %i.gf = sext i32 %i.ge to i64                   ; 4 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gf ; 4 uses
  %i.gh = mul i32 %i.en, 3
  %i.gi = sext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.gi
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.gf ; 4 uses
  %i.gl = load double, ptr %19, align 8, !tbaa !83, !noalias !160 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.go = load double, ptr %i.es, align 8, !tbaa !83, !noalias !160 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !83, !noalias !160 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !83, !noalias !160 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !83, !noalias !160 ; 2 uses
  %i.gv = load <2 x double>, ptr %i.gn, align 8   ; 2 uses
  %i.gw = load double, ptr %i.gm, align 8, !tbaa !83, !noalias !160 ; 2 uses
  %i.gx = call double @llvm.fmuladd.f64(double %i.fh, double %i.gw, double 0.000000e+00)
  %i.gy = insertelement <2 x double> %i.gv, double %i.gq, i64 1
  %i.gz = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.gx, i64 1
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.gy, <2 x double> %i.gz) ; 2 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 0
  %i.hc = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.hd, <2 x double> zeroinitializer)
  %i.hf = insertelement <2 x double> poison, double %i.go, i64 0
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.hg, <2 x double> %i.he)
  %i.hi = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.hj, <2 x double> zeroinitializer)
  %i.hl = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.hm, <2 x double> %i.hk)
  %i.ho = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.ho, <2 x double> zeroinitializer)
  %i.hq = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.hr, <2 x double> %i.hp)
  %i.ht = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.hu, <2 x double> %i.hs) ; 4 uses
  %i.hw = extractelement <2 x double> %i.hv, i64 0
  %i.hx = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hz = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = shufflevector <2 x double> %i.ei, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ic = extractelement <2 x double> %i.ei, i64 0
  %i.id = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ie = insertelement <2 x double> poison, double %.sroa.13345.0, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = shufflevector <2 x double> %i.hv, <2 x double> %i.ei, <2 x i32> <i32 1, i32 3>
  %i.ih = load <2 x double>, ptr %i.ev, align 8, !tbaa !83, !noalias !160 ; 3 uses
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.ii, <2 x double> %i.hh) ; 4 uses
  %i.ik = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.ik, <2 x double> %i.hn) ; 4 uses
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.hx, <2 x double> zeroinitializer)
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.hy, <2 x double> %i.im)
  %i.io = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.hz, <2 x double> zeroinitializer)
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.ia, <2 x double> %i.io)
  %i.iq = insertelement <2 x double> %i.ij, double -0.000000e+00, i64 1
  %i.ir = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> %i.ib, <2 x double> zeroinitializer)
  %i.is = shufflevector <2 x double> %i.il, <2 x double> %i.ij, <2 x i32> <i32 0, i32 3>
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.ei, <2 x double> %i.ir) ; 2 uses
  %i.iu = extractelement <2 x double> %i.it, i64 0
  %i.iv = extractelement <2 x double> %i.el, i64 1 ; 2 uses
  %i.iw = call double @llvm.fmuladd.f64(double %i.hw, double %i.iv, double %i.iu) ; 2 uses
  %i.ix = extractelement <2 x double> %i.il, i64 1
  %i.iy = extractelement <2 x double> %i.it, i64 1
  %i.iz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.id, <2 x double> %i.in) ; 3 uses
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.if, <2 x double> %i.ip) ; 3 uses
  %i.jb = call double @llvm.fmuladd.f64(double %i.fh, double %i.gl, double 0.000000e+00)
  %i.jc = call double @llvm.fmuladd.f64(double %i.fj, double %i.go, double %i.jb)
  %i.jd = insertelement <2 x double> %i.ha, double %i.jc, i64 0
  %i.je = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.ih, <2 x double> %i.jd) ; 4 uses
  %i.jf = call double @llvm.fmuladd.f64(double %i.ix, double %i.ic, double %i.iy)
  %i.jg = shufflevector <2 x double> %i.el, <2 x double> %i.je, <2 x i32> <i32 1, i32 2>
  %i.jh = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.jf, i64 0
  %i.ji = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.jg, <2 x double> %i.jh) ; 3 uses
  %i.jj = shufflevector <2 x double> %i.el, <2 x double> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.jk = insertelement <2 x double> %i.ji, double 0.000000e+00, i64 0
  %i.jl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.je, <2 x double> %i.jj, <2 x double> %i.jk) ; 2 uses
  %i.jm = extractelement <2 x double> %i.jl, i64 1
  %31 = shufflevector <2 x double> %i.jl, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %32 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.je, <2 x double> %i.ej, <2 x double> %31)
  %i.jn = call double @llvm.fmuladd.f64(double %i.fj, double %i.gs, double %i.hb)
  %33 = call double @llvm.fmuladd.f64(double %i.cb, double %i.gu, double %i.jn) ; 3 uses
  %34 = call double @llvm.fmuladd.f64(double %33, double %i.iv, double %i.jm) ; 2 uses
  %i.jo = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jp = insertelement <2 x double> %i.jo, double %33, i64 1
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.ek, <2 x double> %32) ; 3 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 0
  %i.js = call double @llvm.fmuladd.f64(double %33, double %.sroa.13345.0, double %i.jr) ; 2 uses
  %i.jt = icmp sgt i32 %i.en, 0                   ; 2 uses
  br i1 %i.jt, label %.lr.ph.preheader, label %.preheader434

.lr.ph.preheader:                                 ; preds = %bb.ah
  %wide.trip.count = zext nneg i32 %i.en to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.en, 8
  br i1 %min.iters.check, label %.lr.ph.preheader559, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ju = add nsw i64 %i.fw, %i.fy
  %i.jv = shl nsw i64 %i.ju, 2                    ; 2 uses
  %i.jw = add nsw i64 %i.jv, -1
  %diff.check = icmp ult i64 %i.jw, 15
  %i.jx = add nsw i64 %i.gb, %i.gf
  %i.jy = shl nsw i64 %i.jx, 2                    ; 2 uses
  %i.jz = add nsw i64 %i.jy, -1
  %diff.check517 = icmp ult i64 %i.jz, 15
  %conflict.rdx = or i1 %diff.check, %diff.check517
  %i.ka = sub nsw i64 %i.jv, %i.jy
  %diff.check518 = icmp ugt i64 %i.ka, -16
  %conflict.rdx519 = or i1 %conflict.rdx, %diff.check518
  br i1 %conflict.rdx519, label %.lr.ph.preheader559, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.iw, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat521 = shufflevector <2 x double> %i.ji, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert522 = insertelement <4 x double> poison, double %34, i64 0
  %broadcast.splat523 = shufflevector <4 x double> %broadcast.splatinsert522, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.kb = uitofp nneg <4 x i32> %vec.ind to <4 x double> ; 3 uses
  %i.kc = fmul <4 x double> %broadcast.splat, %i.kb
  %i.kd = fptrunc <4 x double> %i.kc to <4 x float>
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %index
  store <4 x float> %i.kd, ptr %i.ke, align 4, !tbaa !21
  %i.kf = fmul <4 x double> %broadcast.splat521, %i.kb
  %i.kg = fptrunc <4 x double> %i.kf to <4 x float>
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index
  store <4 x float> %i.kg, ptr %i.kh, align 4, !tbaa !21
  %i.ki = fmul <4 x double> %broadcast.splat523, %i.kb
  %i.kj = fptrunc <4 x double> %i.ki to <4 x float>
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index
  store <4 x float> %i.kj, ptr %i.kk, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader434, label %.lr.ph.preheader559

.lr.ph.preheader559:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %i.km = extractelement <2 x double> %i.ji, i64 0
  br label %.lr.ph

.preheader434:                                    ; preds = %.lr.ph, %middle.block, %bb.ah
  %i.kn = icmp sgt i32 %i.ep, 0
  br i1 %i.kn, label %.lr.ph437.preheader, label %._crit_edge447

.lr.ph437.preheader:                              ; preds = %.preheader434
  %wide.trip.count471 = zext nneg i32 %i.ep to i64 ; 3 uses
  %min.iters.check531 = icmp ult i32 %i.ep, 8
  br i1 %min.iters.check531, label %.lr.ph437.preheader558, label %vector.memcheck524

vector.memcheck524:                               ; preds = %.lr.ph437.preheader
  %i.ko = add nsw i64 %i.fy, %i.gb
  %i.kp = shl nsw i64 %i.ko, 2                    ; 2 uses
  %i.kq = shl nsw i64 %i.fw, 2                    ; 2 uses
  %i.kr = sub nsw i64 %i.kq, %i.kp
  %diff.check525 = icmp ugt i64 %i.kr, -16
  %i.ks = add nsw i64 %i.gi, %i.gf
  %i.kt = shl nsw i64 %i.ks, 2                    ; 2 uses
  %i.ku = sub nsw i64 %i.kq, %i.kt
  %diff.check526 = icmp ugt i64 %i.ku, -16
  %conflict.rdx527 = or i1 %diff.check525, %diff.check526
  %i.kv = sub nsw i64 %i.kp, %i.kt
  %diff.check528 = icmp ugt i64 %i.kv, -16
  %conflict.rdx529 = or i1 %conflict.rdx527, %diff.check528
  br i1 %conflict.rdx529, label %.lr.ph437.preheader558, label %vector.ph532

vector.ph532:                                     ; preds = %vector.memcheck524
  %n.vec533 = and i64 %wide.trip.count471, 2147483644 ; 3 uses
  %broadcast.splat535 = shufflevector <2 x double> %i.iz, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat537 = shufflevector <2 x double> %i.ja, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat539 = shufflevector <2 x double> %i.iz, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat541 = shufflevector <2 x double> %i.ja, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat543 = shufflevector <2 x double> %i.jq, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert544 = insertelement <4 x double> poison, double %i.js, i64 0
  %broadcast.splat545 = shufflevector <4 x double> %broadcast.splatinsert544, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph532
  %index547 = phi i64 [ 0, %vector.ph532 ], [ %index.next549, %vector.body546 ] ; 4 uses
  %vec.ind548 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph532 ], [ %vec.ind.next550, %vector.body546 ] ; 2 uses
  %i.kw = uitofp nneg <4 x i32> %vec.ind548 to <4 x double> ; 3 uses
  %i.kx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat535, <4 x double> %i.kw, <4 x double> %broadcast.splat537)
  %i.ky = fptrunc <4 x double> %i.kx to <4 x float>
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index547
  store <4 x float> %i.ky, ptr %i.kz, align 4, !tbaa !21
  %i.la = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat539, <4 x double> %i.kw, <4 x double> %broadcast.splat541)
  %i.lb = fptrunc <4 x double> %i.la to <4 x float>
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index547
  store <4 x float> %i.lb, ptr %i.lc, align 4, !tbaa !21
  %i.ld = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat543, <4 x double> %i.kw, <4 x double> %broadcast.splat545)
  %i.le = fptrunc <4 x double> %i.ld to <4 x float>
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index547
  store <4 x float> %i.le, ptr %i.lf, align 4, !tbaa !21
  %index.next549 = add nuw i64 %index547, 4       ; 2 uses
  %vec.ind.next550 = add <4 x i32> %vec.ind548, splat (i32 4)
  %i.lg = icmp eq i64 %index.next549, %n.vec533
  br i1 %i.lg, label %middle.block551, label %vector.body546, !llvm.loop !166

middle.block551:                                  ; preds = %vector.body546
  %cmp.n552 = icmp eq i64 %n.vec533, %wide.trip.count471
  br i1 %cmp.n552, label %.lr.ph446, label %.lr.ph437.preheader558

.lr.ph437.preheader558:                           ; preds = %vector.memcheck524, %.lr.ph437.preheader, %middle.block551
  %indvars.iv468.ph = phi i64 [ 0, %vector.memcheck524 ], [ 0, %.lr.ph437.preheader ], [ %n.vec533, %middle.block551 ]
  %i.lh = extractelement <2 x double> %i.jq, i64 1
  br label %.lr.ph437

bb.ai:                                            ; preds = %bb.ag
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit301

.lr.ph:                                           ; preds = %.lr.ph.preheader559, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader559 ] ; 5 uses
  %i.lj = trunc nuw nsw i64 %indvars.iv to i32
  %i.lk = uitofp nneg i32 %i.lj to double         ; 3 uses
  %i.ll = fmul double %i.iw, %i.lk
  %i.lm = fptrunc double %i.ll to float
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv
  store float %i.lm, ptr %i.ln, align 4, !tbaa !21
  %i.lo = fmul double %i.km, %i.lk
  %i.lp = fptrunc double %i.lo to float
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv
  store float %i.lp, ptr %i.lq, align 4, !tbaa !21
  %i.lr = fmul double %34, %i.lk
  %i.ls = fptrunc double %i.lr to float
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv
  store float %i.ls, ptr %i.lt, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader434, label %.lr.ph, !llvm.loop !167

.lr.ph446:                                        ; preds = %.lr.ph437, %middle.block551
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.lx = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.ly = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.me = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.mf = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.mg = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.mh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.mp = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.mq = getelementptr inbounds nuw i8, ptr %22, i64 128
  br i1 %i.jt, label %.lr.ph446.split, label %._crit_edge447

.lr.ph437:                                        ; preds = %.lr.ph437.preheader558, %.lr.ph437
  %indvars.iv468 = phi i64 [ %indvars.iv.next469, %.lr.ph437 ], [ %indvars.iv468.ph, %.lr.ph437.preheader558 ] ; 5 uses
  %i.mr = trunc nuw nsw i64 %indvars.iv468 to i32
  %i.ms = uitofp nneg i32 %i.mr to double         ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv468
  %i.mu = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.mv = shufflevector <2 x double> %i.mu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %i.mv, <2 x double> %i.ja)
  %i.mx = fptrunc <2 x double> %i.mw to <2 x float> ; 2 uses
  %i.my = extractelement <2 x float> %i.mx, i64 0
  store float %i.my, ptr %i.mt, align 4, !tbaa !21
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv468
  %i.na = extractelement <2 x float> %i.mx, i64 1
  store float %i.na, ptr %i.mz, align 4, !tbaa !21
  %i.nb = call double @llvm.fmuladd.f64(double %i.lh, double %i.ms, double %i.js)
  %i.nc = fptrunc double %i.nb to float
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv468
  store float %i.nc, ptr %i.nd, align 4, !tbaa !21
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %wide.trip.count471
  br i1 %exitcond472.not, label %.lr.ph446, label %.lr.ph437, !llvm.loop !168

._crit_edge447:                                   ; preds = %._crit_edge, %.lr.ph446, %.preheader434
  %.0187.lcssa = phi double [ 0.000000e+00, %.preheader434 ], [ 0.000000e+00, %.lr.ph446 ], [ %.1188.lcssa, %._crit_edge ]
  %.0182.lcssa = phi i32 [ 0, %.preheader434 ], [ 0, %.lr.ph446 ], [ %.1183.lcssa, %._crit_edge ] ; 3 uses
  %i.ne = sitofp i32 %.0182.lcssa to double
  %i.nf = fdiv double %.0187.lcssa, %i.ne
  %i.ng = call double @sqrt(double noundef %i.nf) #22
  store double %i.ng, ptr %11, align 8, !tbaa !83
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %.0182.lcssa, i32 noundef 1, i32 noundef 100)
          to label %bb.ax unwind label %bb.ba

.lr.ph446.split:                                  ; preds = %.lr.ph446, %._crit_edge
  %i.nh = phi i32 [ %i.nw, %._crit_edge ], [ %i.ep, %.lr.ph446 ]
  %i.ni = phi i32 [ %i.nx, %._crit_edge ], [ %i.en, %.lr.ph446 ] ; 2 uses
  %indvars.iv476 = phi i64 [ %indvars.iv.next477, %._crit_edge ], [ 0, %.lr.ph446 ] ; 9 uses
  %.0182444 = phi i32 [ %.1183.lcssa, %._crit_edge ], [ 0, %.lr.ph446 ] ; 2 uses
  %.0187443 = phi double [ %.1188.lcssa, %._crit_edge ], [ 0.000000e+00, %.lr.ph446 ] ; 2 uses
  %i.nj = load ptr, ptr %i.lu, align 8, !tbaa !60
  %i.nk = load i64, ptr %i.lv, align 8, !tbaa !61
  %i.nl = mul i64 %i.nk, %indvars.iv476
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nl
  %i.nn = load ptr, ptr %i.lw, align 8, !tbaa !60
  %i.no = load i64, ptr %i.lx, align 8, !tbaa !61
  %i.np = mul i64 %i.no, %indvars.iv476
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.np
  %i.nr = icmp sgt i32 %i.ni, 0
  br i1 %i.nr, label %.lr.ph441, label %._crit_edge

.lr.ph441:                                        ; preds = %.lr.ph446.split
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv476
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv476
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv476
  %i.nv = trunc nuw nsw i64 %indvars.iv476 to i32
  %.sroa.5303.0.insert.ext = shl i32 %i.nv, 16
  br label %bb.aj

._crit_edge.loopexit:                             ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread
  %.pre = load i32, ptr %i.eo, align 8, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph446.split
  %i.nw = phi i32 [ %i.nh, %.lr.ph446.split ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.nx = phi i32 [ %i.ni, %.lr.ph446.split ], [ %i.tf, %._crit_edge.loopexit ]
  %.1188.lcssa = phi double [ %.0187443, %.lr.ph446.split ], [ %.11198, %._crit_edge.loopexit ] ; 2 uses
  %.1183.lcssa = phi i32 [ %.0182444, %.lr.ph446.split ], [ %.11, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.ny = sext i32 %i.nw to i64
  %i.nz = icmp slt i64 %indvars.iv.next477, %i.ny
  br i1 %i.nz, label %.lr.ph446.split, label %._crit_edge447, !llvm.loop !169

bb.aj:                                            ; preds = %.lr.ph441, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread
  %indvars.iv473 = phi i64 [ 0, %.lr.ph441 ], [ %indvars.iv.next474, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ] ; 9 uses
  %.1183439 = phi i32 [ %.0182444, %.lr.ph441 ], [ %.11, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ] ; 8 uses
  %.1188438 = phi double [ %.0187443, %.lr.ph441 ], [ %.11198, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ] ; 8 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv473
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !21 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nq, i64 %indvars.iv473
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !18
  %.not240 = icmp eq i8 %i.od, 0
  br i1 %.not240, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv473
  %i.of = load float, ptr %i.oe, align 4, !tbaa !21
  %i.og = load float, ptr %i.ns, align 4, !tbaa !21
  %i.oh = fadd float %i.of, %i.og
  %i.oi = fmul float %i.ob, %i.oh
  %i.oj = fpext float %i.oi to double
  %i.ok = fadd double %i.fl, %i.oj                ; 2 uses
  %i.ol = fptrunc double %i.ok to float           ; 3 uses
  %i.om = fcmp ogt double %i.ok, f0x3690000000000000
  br i1 %i.om, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.on = fdiv float 1.000000e+00, %i.ol
  %i.oo = fpext float %i.on to double
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv473
  %i.oq = load float, ptr %i.op, align 4, !tbaa !21
  %i.or = load float, ptr %i.nt, align 4, !tbaa !21
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv473
  %i.ot = load float, ptr %i.os, align 4, !tbaa !21
  %i.ou = load float, ptr %i.nu, align 4, !tbaa !21
  %i.ov = insertelement <2 x float> poison, float %i.oq, i64 0
  %i.ow = insertelement <2 x float> %i.ov, float %i.ot, i64 1
  %i.ox = insertelement <2 x float> poison, float %i.or, i64 0
  %i.oy = insertelement <2 x float> %i.ox, float %i.ou, i64 1
  %i.oz = fadd <2 x float> %i.ow, %i.oy
  %i.pa = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pc = fmul <2 x float> %i.pb, %i.oz
  %i.pd = fpext <2 x float> %i.pc to <2 x double>
  %i.pe = fadd <2 x double> %i.fg, %i.pd
  %i.pf = insertelement <2 x double> poison, double %i.oo, i64 0
  %i.pg = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ph = fmul <2 x double> %i.pe, %i.pg          ; 2 uses
  %i.pi = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ph) ; 3 uses
  %i.pj = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.pk = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.pj) ; 3 uses
  %i.pl = icmp slt i32 %i.pi, %i.en
  %i.pm = or i32 %i.pk, %i.pi
  %i.pn = icmp sgt i32 %i.pm, -1
  %or.cond427.not433 = and i1 %i.pl, %i.pn
  %i.po = icmp slt i32 %i.pk, %i.ep
  %or.cond428 = and i1 %i.po, %or.cond427.not433
  br i1 %or.cond428, label %bb.am, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.pp = zext nneg i32 %i.pk to i64              ; 6 uses
  %i.pq = zext nneg i32 %i.pi to i64              ; 6 uses
  %i.pr = load i32, ptr %i.ly, align 4, !tbaa !170
  %i.ps = icmp slt i32 %i.pr, 2
  %i.pt = load ptr, ptr %i.lz, align 8, !tbaa !60
  %i.pu = load i64, ptr %i.ma, align 8
  %i.pv = mul i64 %i.pu, %i.pp
  %.sink.idx.i282 = select i1 %i.ps, i64 0, i64 %i.pv
  %.sink.i283 = getelementptr inbounds nuw i8, ptr %i.pt, i64 %.sink.idx.i282
  %i.pw = getelementptr inbounds nuw i8, ptr %.sink.i283, i64 %i.pq
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !18
  %.not241 = icmp eq i8 %i.px, 0
  br i1 %.not241, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.py = load ptr, ptr %i.mb, align 8, !tbaa !60
  %i.pz = load i32, ptr %i.mc, align 4, !tbaa !170
  %i.qa = icmp slt i32 %i.pz, 2
  %i.qb = load i64, ptr %i.md, align 8
  %i.qc = mul i64 %i.qb, %i.pp
  %.sink.idx.i = select i1 %i.qa, i64 0, i64 %i.qc
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.py, i64 %.sink.idx.i
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %i.pq
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !21
  %i.qf = fsub float %i.ol, %i.qe
  %i.qg = call noundef float @llvm.fabs.f32(float %i.qf)
  %i.qh = fcmp ugt float %i.qg, %8
  br i1 %i.qh, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.qi = load i32, ptr %i.me, align 4, !tbaa !170
  %i.qj = icmp slt i32 %i.qi, 2
  %i.qk = load ptr, ptr %i.mf, align 8, !tbaa !60
  %i.ql = load i64, ptr %i.mg, align 8
  %i.qm = mul i64 %i.ql, %i.pp
  %.sink.idx.i284 = select i1 %i.qj, i64 0, i64 %i.qm
  %.sink.i285 = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.sink.idx.i284
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.sink.i285, i64 %i.pq ; 3 uses
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !64 ; 2 uses
end_hunk_2
