inline.NumInlined: 9031
inline.NumDeleted: 2243
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a

.noexc401:                                        ; preds = %bb.h
  %i.cm = load ptr, ptr %i.bn, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr %i.cn, ptr %i.bn, align 8
  br label %_ZN6Assimp3FBX4Node11AddPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvOT_.exit

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN6Assimp3FBX4Node11AddPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvOT_.exit unwind label %bb.q

_ZN6Assimp3FBX4Node11AddPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvOT_.exit: ; preds = %.noexc401, %bb.i
  %i.co = load ptr, ptr %5, align 8               ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bw
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %_ZN6Assimp3FBX4Node11AddPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvOT_.exit
  %i.cq = load i64, ptr %i.bw, align 8
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %_ZN6Assimp3FBX4Node11AddPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.cs = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.ct = load ptr, ptr %i.bp, align 8
  %.not.i.i406 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i.i406, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  invoke void @_ZN6Assimp3FBX17FBXExportPropertyC1EPKcb(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 1 dereferenceable(5) @.str.382, i1 noundef zeroext false)
          to label %.noexc407 unwind label %bb.p

.noexc407:                                        ; preds = %bb.j
  %i.cu = load ptr, ptr %i.bn, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %i.cv, ptr %i.bn, align 8
  br label %_ZN6Assimp3FBX4Node11AddPropertyIRA5_KcEEvOT_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  invoke void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRA5_KcEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr %i.cs, ptr noundef nonnull align 1 dereferenceable(5) @.str.382)
          to label %_ZN6Assimp3FBX4Node11AddPropertyIRA5_KcEEvOT_.exit unwind label %bb.p

_ZN6Assimp3FBX4Node11AddPropertyIRA5_KcEEvOT_.exit: ; preds = %.noexc407, %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 42 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !28, !align !698
  %i.cy = load i8, ptr %i.ak, align 8, !range !27, !noundef !28
  %i.cz = trunc nuw i8 %i.cy to i1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 50 uses
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !28, !align !707
  %i.dc = load i32, ptr %i.db, align 4
  invoke void @_ZN6Assimp3FBX4Node5BeginERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.cx, i1 noundef zeroext %i.cz, i32 noundef %i.dc)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZN6Assimp3FBX4Node11AddPropertyIRA5_KcEEvOT_.exit
  %i.dd = load ptr, ptr %i.cw, align 8, !nonnull !28, !align !698
  %i.de = load i8, ptr %i.ak, align 8, !range !27, !noundef !28
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = load ptr, ptr %i.da, align 8, !nonnull !28, !align !707
  %i.dh = load i32, ptr %i.dg, align 4
  invoke void @_ZN6Assimp3FBX4Node14DumpPropertiesERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.dd, i1 noundef zeroext %i.df, i32 noundef %i.dh)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.di = load ptr, ptr %i.cw, align 8, !nonnull !28, !align !698
  %i.dj = load i8, ptr %i.ak, align 8, !range !27, !noundef !28
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = load ptr, ptr %i.da, align 8, !nonnull !28, !align !707
  %i.dm = load i32, ptr %i.dl, align 4
  invoke void @_ZN6Assimp3FBX4Node13EndPropertiesERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.di, i1 noundef zeroext %i.dk, i32 noundef %i.dm)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dn = load ptr, ptr %i.cw, align 8, !nonnull !28, !align !698
  %i.do = load i8, ptr %i.ak, align 8, !range !27, !noundef !28
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = load ptr, ptr %i.da, align 8, !nonnull !28, !align !707
  %i.dr = load i32, ptr %i.dq, align 4
  invoke void @_ZN6Assimp3FBX4Node13BeginChildrenERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.dn, i1 noundef zeroext %i.dp, i32 noundef %i.dr)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ds = load ptr, ptr %i.da, align 8, !nonnull !28, !align !707
  store i32 2, ptr %i.ds, align 4
  %i.dt = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1120
  %i.dv = load i32, ptr %i.du, align 8
  %.not2458 = icmp eq i32 %i.dv, 0
  br i1 %.not2458, label %._crit_edge.i.i409, label %.lr.ph2433

.lr.ph2433:                                       ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 10 uses
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 13 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %i.fe = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.fg = getelementptr i8, ptr %i.fe, i64 -24
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fn = getelementptr i8, ptr %i.fl, i64 -24
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 128
  br label %bb.r

._crit_edge.i.i409:                               ; preds = %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit, %bb.o
  %.sroa.23.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.23.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 8 uses
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.15.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 9 uses
  %.sroa.01347.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.01347.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 13 uses
  %.sroa.27.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.27.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 8 uses
  %.sroa.17.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.17.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 10 uses
  %.sroa.01362.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.01362.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 13 uses
  %.sroa.34.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.34.6, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 8 uses
  %.sroa.01381.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.01381.6, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.fq, ptr %15, align 8
  store i64 8315161591585858902, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 8, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i8 0, ptr %i.fs, align 8
  %i.ft = load ptr, ptr %i.cw, align 8, !nonnull !28, !align !698
  %i.fu = load i8, ptr %i.ak, align 8, !range !27, !noundef !28
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = load ptr, ptr %i.da, align 8, !nonnull !28, !align !707
  %i.fx = load i32, ptr %i.fw, align 4
  invoke void @_ZN6Assimp3FBX4Node17WritePropertyNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.ft, i1 noundef zeroext %i.fv, i32 noundef %i.fx)
          to label %bb.gj unwind label %bb.gw

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.e, %bb.d, %bb.n, %bb.m, %bb.l, %_ZN6Assimp3FBX4Node11AddPropertyIRA5_KcEEvOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.nr

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %5, align 8               ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.bw
  br i1 %i.gb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.g
  %.sink = phi ptr [ %i.ci, %bb.g ], [ %i.ga, %bb.q ]
  %.pn253.ph = phi { ptr, i32 } [ %i.ch, %bb.g ], [ %i.fz, %bb.q ]
  %i.gc = load i64, ptr %i.bw, align 8
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.gd) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.g
  %.pn253 = phi { ptr, i32 } [ %i.ch, %bb.g ], [ %i.fz, %bb.q ], [ %.pn253.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.nr

bb.r:                                             ; preds = %.lr.ph2433, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit
  %indvars.iv2974 = phi i64 [ 0, %.lr.ph2433 ], [ %indvars.iv.next2975, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 2 uses
  %i.ge = phi ptr [ %i.dt, %.lr.ph2433 ], [ %i.abp, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ]
  %.sroa.01381.02430 = phi ptr [ null, %.lr.ph2433 ], [ %.sroa.01381.6, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 14 uses
  %.sroa.18.02429 = phi ptr [ null, %.lr.ph2433 ], [ %.sroa.18.3, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 9 uses
  %.sroa.34.02428 = phi ptr [ null, %.lr.ph2433 ], [ %.sroa.34.6, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 10 uses
  %.sroa.01362.02424 = phi ptr [ null, %.lr.ph2433 ], [ %.sroa.01362.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 26 uses
  %.sroa.17.02420 = phi ptr [ null, %.lr.ph2433 ], [ %.sroa.17.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 25 uses
  %.sroa.27.02416 = phi ptr [ null, %.lr.ph2433 ], [ %.sroa.27.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 22 uses
  %.sroa.01347.02412 = phi ptr [ null, %.lr.ph2433 ], [ %.sroa.01347.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 25 uses
  %.sroa.15.02408 = phi ptr [ null, %.lr.ph2433 ], [ %.sroa.15.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 24 uses
  %.sroa.23.02404 = phi ptr [ null, %.lr.ph2433 ], [ %.sroa.23.4, %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit ] ; 21 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1128
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv2974
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = load ptr, ptr %i.dw, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = zext i32 %i.gi to i64                   ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8            ; 15 uses
  %i.gp = ptrtoint ptr %.sroa.18.02429 to i64     ; 3 uses
  %i.gq = ptrtoint ptr %.sroa.01381.02430 to i64  ; 3 uses
  %i.gr = sub i64 %i.gp, %i.gq                    ; 6 uses
  %i.gs = ashr exact i64 %i.gr, 2                 ; 7 uses
  %i.gt = load ptr, ptr %i.dx, align 8
  %i.gu = load ptr, ptr %6, align 8
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = ashr exact i64 %i.gx, 3
  %i.gz = udiv i64 %i.gy, 3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  store i32 0, ptr %i.dy, align 8
  store ptr null, ptr %i.dz, align 8
  store ptr %i.dy, ptr %i.ea, align 8
  store ptr %i.dy, ptr %i.eb, align 8
  store i64 0, ptr %i.ec, align 8
  %i.ha = load ptr, ptr %i.ed, align 8, !nonnull !28
  %i.hb = load i8, ptr %i.ha, align 1, !range !27, !noundef !28
  %i.hc = trunc nuw i8 %i.hb to i1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.go, i64 4 ; 4 uses
  %i.he = load i32, ptr %i.hd, align 4            ; 3 uses
  br i1 %i.hc, label %.preheader1464, label %bb.bc

.preheader1464:                                   ; preds = %bb.r
  %.not2460 = icmp eq i32 %i.he, 0
  br i1 %.not2460, label %.loopexit1465, label %.lr.ph2369

.lr.ph2369:                                       ; preds = %.preheader1464
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph2369, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.02402368 = phi i64 [ 0, %.lr.ph2369 ], [ %i.lk, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.01381.12367 = phi ptr [ %.sroa.01381.02430, %.lr.ph2369 ], [ %.sroa.01381.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 14 uses
  %.sroa.18.12366 = phi ptr [ %.sroa.18.02429, %.lr.ph2369 ], [ %.sroa.18.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 12 uses
  %.sroa.34.12365 = phi ptr [ %.sroa.34.02428, %.lr.ph2369 ], [ %.sroa.34.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.014072364 = phi i32 [ 0, %.lr.ph2369 ], [ %.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %i.hg, i64 %.02402368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.hh, i64 12, i1 false)
  %i.hi = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEE4findERS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s
  %i.hj = load float, ptr %11, align 8            ; 4 uses
  %i.hk = load float, ptr %i.eg, align 4          ; 4 uses
  %i.hl = load float, ptr %i.eh, align 8          ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.y ] ; 7 uses
  %.0811.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.y ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.hn = load float, ptr %i.hm, align 4          ; 2 uses
  %i.ho = fcmp une float %i.hn, %i.hj
  br i1 %i.ho, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hp = fcmp olt float %i.hn, %i.hj
  br i1 %i.hp, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.hq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 36
  %i.hr = load float, ptr %i.hq, align 4          ; 2 uses
  %i.hs = fcmp une float %i.hr, %i.hk
  br i1 %i.hs, label %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ht = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.hu = load float, ptr %i.ht, align 4
  %i.hv = fcmp olt float %i.hu, %i.hl
  br i1 %i.hv, label %bb.x, label %bb.y

_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i: ; preds = %bb.v
  %i.hw = fcmp olt float %i.hr, %i.hk
  br i1 %i.hw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i, %bb.w, %bb.u
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i, %bb.w, %bb.u
  %.sink.i.i.i = phi i64 [ 24, %bb.x ], [ 16, %bb.w ], [ 16, %bb.u ], [ 16, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0811.i.i.i, %bb.x ], [ %.012.i.i.i, %bb.w ], [ %.012.i.i.i, %bb.u ], [ %.012.i.i.i, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i ] ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.hx, align 8        ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %bb.t, !llvm.loop !708

_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %bb.y
  %i.hy = icmp eq ptr %.19.i.i.i, %i.dy
  br i1 %i.hy, label %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEE4findERS5_.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ia = load float, ptr %i.hz, align 4          ; 2 uses
  %i.ib = fcmp une float %i.hj, %i.ia
  br i1 %i.ib, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ic = fcmp olt float %i.hj, %i.ia
  br i1 %i.ic, label %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEE4findERS5_.exit.thread, label %bb.av

bb.ab:                                            ; preds = %bb.z
  %i.id = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.ie = load float, ptr %i.id, align 4          ; 2 uses
  %i.if = fcmp une float %i.hk, %i.ie
  br i1 %i.if, label %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ig = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ih = load float, ptr %i.ig, align 4
  %i.ii = fcmp olt float %i.hl, %i.ih
  br i1 %i.ii, label %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEE4findERS5_.exit.thread, label %bb.av

_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i: ; preds = %bb.ab
  %i.ij = fcmp olt float %i.hk, %i.ie
  br i1 %i.ij, label %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEE4findERS5_.exit.thread, label %bb.av

_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEE4findERS5_.exit.thread: ; preds = %bb.s, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i, %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.aa, %bb.ac
  %.not.i = icmp eq ptr %.sroa.18.12366, %.sroa.34.12365
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEE4findERS5_.exit.thread
  store i32 %.014072364, ptr %.sroa.18.12366, align 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ae:                                            ; preds = %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEE4findERS5_.exit.thread
  %i.ik = ptrtoint ptr %.sroa.18.12366 to i64
  %i.il = ptrtoint ptr %.sroa.01381.12367 to i64
  %i.im = sub i64 %i.ik, %i.il                    ; 6 uses
  %i.in = icmp eq i64 %i.im, 9223372036854775804
  br i1 %i.in, label %bb.af, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc420 unwind label %.loopexit.split-lp1472

.noexc420:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.io = ashr exact i64 %i.im, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.io, i64 1)
  %i.ip = add nsw i64 %.sroa.speculated.i.i.i, %i.io ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.io
  %i.ir = call i64 @llvm.umin.i64(i64 %i.ip, i64 2305843009213693951)
  %i.is = select i1 %i.iq, i64 2305843009213693951, i64 %i.ir ; 3 uses
  %.not.i.i.i419 = icmp ne i64 %i.is, 0
  call void @llvm.assume(i1 %.not.i.i.i419)
  %i.it = shl nuw nsw i64 %i.is, 2
  %i.iu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.it) #34
          to label %.noexc421 unwind label %.loopexit1471 ; 4 uses

.noexc421:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 %i.im ; 2 uses
  store i32 %.014072364, ptr %i.iv, align 4
  %i.iw = icmp sgt i64 %i.im, 0
  br i1 %i.iw, label %bb.ag, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ag:                                            ; preds = %.noexc421
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iu, ptr align 4 %.sroa.01381.12367, i64 %i.im, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ag, %.noexc421
  %.not.i17.i.i = icmp eq ptr %.sroa.01381.12367, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01381.12367, i64 noundef %i.im) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.is
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ad
  %.sroa.34.9 = phi ptr [ %i.ix, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.34.12365, %bb.ad ] ; 3 uses
  %.pn1421 = phi ptr [ %i.iv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.18.12366, %bb.ad ]
  %.sroa.01381.9 = phi ptr [ %i.iu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.01381.12367, %bb.ad ] ; 3 uses
  %.sroa.18.4 = getelementptr inbounds nuw i8, ptr %.pn1421, i64 4
  %i.iy = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.iz = load <2 x float>, ptr %11, align 8      ; 5 uses
  %i.ja = load float, ptr %i.eh, align 8          ; 5 uses
  %i.jb = extractelement <2 x float> %i.iz, i64 0 ; 4 uses
  %i.jc = extractelement <2 x float> %i.iz, i64 1 ; 4 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.an, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.iy, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.an ] ; 7 uses
  %.0811.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.an ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.je = load float, ptr %i.jd, align 4          ; 2 uses
  %i.jf = fcmp une float %i.je, %i.jb
  br i1 %i.jf, label %bb.aj, label %bb.ak

end_hunk_0
begin_hunk_1_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a

bb.av:                                            ; preds = %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i, %bb.ac, %bb.aa
  %i.kr = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = trunc i64 %i.ks to i32                  ; 2 uses
  %.not.i.i424 = icmp eq ptr %.sroa.18.12366, %.sroa.34.12365
  br i1 %.not.i.i424, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 %i.kt, ptr %.sroa.18.12366, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.18.12366, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ax:                                            ; preds = %bb.av
  %i.kv = ptrtoint ptr %.sroa.18.12366 to i64
  %i.kw = ptrtoint ptr %.sroa.01381.12367 to i64
  %i.kx = sub i64 %i.kv, %i.kw                    ; 6 uses
  %i.ky = icmp eq i64 %i.kx, 9223372036854775804
  br i1 %i.ky, label %bb.ay, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc426 unwind label %.loopexit.split-lp1467

.noexc426:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ax
  %i.kz = ashr exact i64 %i.kx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kz, i64 1)
  %i.la = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kz ; 2 uses
  %i.lb = icmp ult i64 %i.la, %i.kz
  %i.lc = call i64 @llvm.umin.i64(i64 %i.la, i64 2305843009213693951)
  %i.ld = select i1 %i.lb, i64 2305843009213693951, i64 %i.lc ; 3 uses
  %.not.i.i.i.i425 = icmp ne i64 %i.ld, 0
  call void @llvm.assume(i1 %.not.i.i.i.i425)
  %i.le = shl nuw nsw i64 %i.ld, 2
  %i.lf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.le) #34
          to label %.noexc427 unwind label %.loopexit1466 ; 4 uses

.noexc427:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 %i.kx ; 2 uses
  store i32 %i.kt, ptr %i.lg, align 4
  %i.lh = icmp sgt i64 %i.kx, 0
  br i1 %i.lh, label %bb.az, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.az:                                            ; preds = %.noexc427
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lf, ptr align 4 %.sroa.01381.12367, i64 %i.kx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.az, %.noexc427
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.01381.12367, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01381.12367, i64 noundef %i.kx) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ba, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.ld
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

.loopexit1466:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1468 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp1467:                           ; preds = %bb.ay
  %lpad.loopexit.split-lp1469 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.at
  %.1 = phi i32 [ %i.kp, %bb.at ], [ %.014072364, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.014072364, %bb.aw ]
  %.sroa.34.3 = phi ptr [ %.sroa.34.9, %bb.at ], [ %i.lj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.34.12365, %bb.aw ] ; 2 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.4, %bb.at ], [ %i.li, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ku, %bb.aw ] ; 2 uses
  %.sroa.01381.3 = phi ptr [ %.sroa.01381.9, %bb.at ], [ %i.lf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.01381.12367, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.lk = add nuw nsw i64 %.02402368, 1           ; 2 uses
  %i.ll = load i32, ptr %i.hd, align 4
  %i.lm = zext i32 %i.ll to i64
  %i.ln = icmp samesign ult i64 %i.lk, %i.lm
  br i1 %i.ln, label %bb.s, label %.loopexit1465, !llvm.loop !709

bb.bb:                                            ; preds = %.loopexit1466, %.loopexit.split-lp1467, %.loopexit1471, %.loopexit.split-lp1472, %bb.au
  %.sroa.34.4 = phi ptr [ %.sroa.18.12366, %.loopexit.split-lp1472 ], [ %.sroa.34.9, %bb.au ], [ %.sroa.34.2.ph, %.loopexit1471 ], [ %.sroa.18.12366, %.loopexit1466 ], [ %.sroa.18.12366, %.loopexit.split-lp1467 ]
  %.sroa.01381.4 = phi ptr [ %.sroa.01381.12367, %.loopexit.split-lp1472 ], [ %.sroa.01381.9, %bb.au ], [ %.sroa.01381.2.ph, %.loopexit1471 ], [ %.sroa.01381.12367, %.loopexit1466 ], [ %.sroa.01381.12367, %.loopexit.split-lp1467 ]
  %.pn390 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1474, %.loopexit.split-lp1472 ], [ %i.kq, %bb.au ], [ %lpad.loopexit1473, %.loopexit1471 ], [ %lpad.loopexit1468, %.loopexit1466 ], [ %lpad.loopexit.split-lp1469, %.loopexit.split-lp1467 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.gh

bb.bc:                                            ; preds = %bb.r
  %i.lo = zext i32 %i.he to i64                   ; 7 uses
  %i.lp = add nsw i64 %i.gs, %i.lo                ; 3 uses
  %i.lq = icmp ugt i64 %i.lp, %i.gs
  br i1 %i.lq, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %.not.i1195 = icmp eq i32 %i.he, 0
  br i1 %.not.i1195, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lr = ptrtoint ptr %.sroa.34.02428 to i64     ; 2 uses
  %i.ls = sub i64 %i.lr, %i.gp
  %i.lt = ashr exact i64 %i.ls, 2                 ; 2 uses
  %i.lu = icmp ult i64 %i.gs, 2305843009213693952
  call void @llvm.assume(i1 %i.lu)
  %i.lv = xor i64 %i.gs, 2305843009213693951      ; 2 uses
  %i.lw = icmp ule i64 %i.lt, %i.lv
  call void @llvm.assume(i1 %i.lw)
  %.not28.i = icmp ult i64 %i.lt, %i.lo
  br i1 %.not28.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %.sroa.18.02429, align 4
  %i.lx = getelementptr i8, ptr %.sroa.18.02429, i64 4 ; 3 uses
  %i.ly = add nsw i64 %i.lo, -1                   ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.bf
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ly, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.lx, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bg:                                            ; preds = %bb.be
  %i.mb = icmp samesign ult i64 %i.lv, %i.lo
  br i1 %i.mb, label %bb.bh, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.436) #30
          to label %.noexc1196 unwind label %.loopexit.split-lp1478

.noexc1196:                                       ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.bg
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.gs, i64 %i.lo)
  %i.mc = add nuw nsw i64 %.sroa.speculated.i.i, %i.gs
  %i.md = call i64 @llvm.umin.i64(i64 %i.mc, i64 2305843009213693951) ; 2 uses
  %i.me = shl nuw nsw i64 %i.md, 2
  %i.mf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.me) #34
          to label %.noexc1197 unwind label %.loopexit1477 ; 4 uses

.noexc1197:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.gr ; 3 uses
  store i32 0, ptr %i.mg, align 4
  %i.mh = add nsw i64 %i.lo, -1                   ; 2 uses
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc1197
  %i.mj = getelementptr i8, ptr %i.mg, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.mh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.mj, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc1197
  %i.mk = icmp sgt i64 %i.gr, 0
  br i1 %i.mk, label %bb.bi, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.bi:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mf, ptr align 4 %.sroa.01381.02430, i64 %i.gr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.bi, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.01381.02430, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.ml = sub i64 %i.lr, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01381.02430, i64 noundef %i.ml) #32
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.lo
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.md
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bk:                                            ; preds = %bb.bc
  %i.mo = icmp ult i64 %i.lp, %i.gs
  br i1 %i.mo, label %bb.bl, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bl:                                            ; preds = %bb.bk
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01381.02430, i64 %i.lp ; 2 uses
  %.not.i.i428 = icmp eq ptr %.sroa.18.02429, %i.mp
  %spec.select = select i1 %.not.i.i428, ptr %.sroa.18.02429, ptr %i.mp
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.bl, %bb.bk, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %bb.bd, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.bf
  %.sroa.34.11 = phi ptr [ %.sroa.34.02428, %bb.bk ], [ %.sroa.34.02428, %bb.bl ], [ %.sroa.34.02428, %bb.bf ], [ %.sroa.34.02428, %bb.bd ], [ %i.mn, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %.sroa.34.02428, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.18.6 = phi ptr [ %.sroa.18.02429, %bb.bk ], [ %spec.select, %bb.bl ], [ %i.lx, %bb.bf ], [ %.sroa.18.02429, %bb.bd ], [ %i.mm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %i.ma, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.01381.11 = phi ptr [ %.sroa.01381.02430, %bb.bk ], [ %.sroa.01381.02430, %bb.bl ], [ %.sroa.01381.02430, %bb.bf ], [ %.sroa.01381.02430, %bb.bd ], [ %i.mf, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %.sroa.01381.02430, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ] ; 5 uses
  %i.mq = getelementptr inbounds i8, ptr %.sroa.01381.11, i64 %i.gr ; 4 uses
  %.not5.i = icmp eq ptr %i.mq, %.sroa.18.6
  br i1 %.not5.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %78 = ptrtoint ptr %.sroa.18.6 to i64
  %79 = ptrtoint ptr %.sroa.01381.11 to i64
  %i.mr = add i64 %78, %i.gq
  %i.ms = add i64 %79, %i.gp
  %i.mt = sub i64 %i.mr, %i.ms
  %i.mu = add i64 %i.mt, -4                       ; 2 uses
  %i.mv = lshr i64 %i.mu, 2
  %i.mw = add nuw nsw i64 %i.mv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.mu, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader4378, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.mw, 9223372036854775800     ; 4 uses
  %i.mx = trunc i64 %n.vec to i32
  %i.my = shl i64 %n.vec, 2
  %i.mz = getelementptr i8, ptr %i.mq, i64 %i.my
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.na = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.mq, i64 %i.na ; 2 uses
  %i.nb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4
  store <4 x i32> %step.add, ptr %i.nb, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.nc = icmp eq i64 %index.next, %n.vec
  br i1 %i.nc, label %middle.block, label %vector.body, !llvm.loop !710

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mw, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader4378

.lr.ph.i.preheader4378:                           ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.mx, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.mq, %.lr.ph.i.preheader ], [ %i.mz, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader4378, %.lr.ph.i
  %.07.i = phi i32 [ %i.nd, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader4378 ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.ne, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader4378 ] ; 2 uses
  store i32 %.07.i, ptr %.sroa.02.06.i, align 4
  %i.nd = add nuw nsw i32 %.07.i, 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i430 = icmp eq ptr %i.ne, %.sroa.18.6
  br i1 %.not.i430, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !711

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.nf = load i32, ptr %i.hd, align 4
  %.not2459 = icmp eq i32 %i.nf, 0
  br i1 %.not2459, label %.loopexit1465, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  %i.ng = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  br label %bb.bm

.loopexit1477:                                    ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %.sroa.34.5.ph = phi ptr [ %.sroa.34.02428, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i ], [ %.sroa.34.6, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i ]
  %.sroa.01381.5.ph = phi ptr [ %.sroa.01381.02430, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i ], [ %.sroa.01381.6, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i ]
  %lpad.loopexit1481 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit.split-lp1478:                           ; preds = %bb.ci, %bb.bh
  %.sroa.34.5.ph1479 = phi ptr [ %.sroa.34.02428, %bb.bh ], [ %.sroa.34.6, %bb.ci ]
  %.sroa.01381.5.ph1480 = phi ptr [ %.sroa.01381.02430, %bb.bh ], [ %.sroa.01381.6, %bb.ci ]
  %lpad.loopexit.split-lp1482 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.bm:                                            ; preds = %.lr.ph, %bb.bn
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bn ] ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = getelementptr inbounds nuw [12 x i8], ptr %i.nh, i64 %indvars.iv ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %i.nj = load ptr, ptr %i.dx, align 8
  %i.nk = load <2 x float>, ptr %i.ni, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #31
  %i.nl = fpext <2 x float> %i.nk to <2 x double>
  store <2 x double> %i.nl, ptr %i.t, align 16
  %i.nm = fpext float %.sroa.6.0.copyload to double
  store double %i.nm, ptr %i.ee, align 16
  %i.nn = load ptr, ptr %6, align 8               ; 2 uses
  %i.no = ptrtoint ptr %i.nj to i64
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = getelementptr inbounds i8, ptr %i.nn, i64 %i.nq
  invoke void @_ZNSt6vectorIdSaIdEE15_M_range_insertIPKdEEvN9__gnu_cxx17__normal_iteratorIPdS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.nr, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ef)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ns = load i32, ptr %i.hd, align 4
  %i.nt = zext i32 %i.ns to i64
  %i.nu = icmp samesign ult i64 %indvars.iv.next, %i.nt
  br i1 %i.nu, label %bb.bm, label %.loopexit1465, !llvm.loop !712

bb.bo:                                            ; preds = %bb.bm
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #31
  br label %bb.gh

.loopexit1465:                                    ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, %.preheader1464
  %.sroa.34.6 = phi ptr [ %.sroa.34.11, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ], [ %.sroa.34.02428, %.preheader1464 ], [ %.sroa.34.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.34.11, %bb.bn ] ; 20 uses
  %.sroa.18.3 = phi ptr [ %.sroa.18.6, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ], [ %.sroa.18.02429, %.preheader1464 ], [ %.sroa.18.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.18.6, %bb.bn ] ; 2 uses
  %.sroa.01381.6 = phi ptr [ %.sroa.01381.11, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ], [ %.sroa.01381.02430, %.preheader1464 ], [ %.sroa.01381.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.01381.11, %bb.bn ] ; 21 uses
  %i.nw = load ptr, ptr %i.ek, align 8, !nonnull !28, !align !698
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.gm ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8
  %i.ob = getelementptr i8, ptr %.sroa.01381.6, i64 %i.gr ; 3 uses
  %i.oc = load ptr, ptr %i.ny, align 8            ; 2 uses
  %i.od = ptrtoint ptr %i.oa to i64
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = sub i64 %i.od, %i.oe
  %i.og = getelementptr inbounds i8, ptr %i.oc, i64 %i.of
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ny, ptr %i.og, ptr %i.ob, ptr %.sroa.18.3)
          to label %.preheader1458 unwind label %bb.bu

.preheader1458:                                   ; preds = %.loopexit1465
  %i.oh = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 8 uses
  %i.oi = load i32, ptr %i.oh, align 8
  %.not2461 = icmp eq i32 %i.oi, 0
  br i1 %.not2461, label %.preheader1458.._crit_edge2377_crit_edge, label %.lr.ph2376

.preheader1458.._crit_edge2377_crit_edge:         ; preds = %.preheader1458
  %.pre3039 = trunc i64 %i.gz to i32
  br label %._crit_edge2377

.lr.ph2376:                                       ; preds = %.preheader1458
  %i.oj = getelementptr inbounds nuw i8, ptr %i.go, i64 208
  %i.ok = trunc i64 %i.gz to i32                  ; 3 uses
  br label %bb.bv

._crit_edge2377:                                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit459, %.preheader1458.._crit_edge2377_crit_edge
  %.pre-phi = phi i32 [ %.pre3039, %.preheader1458.._crit_edge2377_crit_edge ], [ %i.ok, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit459 ] ; 2 uses
  %i.ol = load ptr, ptr %i.en, align 8, !nonnull !28, !align !698 ; 4 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 4 uses
  %i.on = load ptr, ptr %i.om, align 8            ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 16 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8
  %.not.i.i434 = icmp eq ptr %i.on, %i.op
  br i1 %.not.i.i434, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge2377
  store i32 %.pre-phi, ptr %i.on, align 4
  %i.oq = load ptr, ptr %i.om, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  store ptr %i.or, ptr %i.om, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.bq:                                            ; preds = %._crit_edge2377
  %i.os = load ptr, ptr %i.ol, align 8            ; 4 uses
  %i.ot = ptrtoint ptr %i.on to i64
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = sub i64 %i.ot, %i.ou                    ; 6 uses
  %i.ow = icmp eq i64 %i.ov, 9223372036854775804
  br i1 %i.ow, label %bb.br, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc438 unwind label %.loopexit.split-lp1485

.noexc438:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bq
  %i.ox = ashr exact i64 %i.ov, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i435 = call i64 @llvm.umax.i64(i64 %i.ox, i64 1)
  %i.oy = add nsw i64 %.sroa.speculated.i.i.i.i435, %i.ox ; 2 uses
  %i.oz = icmp ult i64 %i.oy, %i.ox
  %i.pa = call i64 @llvm.umin.i64(i64 %i.oy, i64 2305843009213693951)
  %i.pb = select i1 %i.oz, i64 2305843009213693951, i64 %i.pa ; 3 uses
  %.not.i.i.i.i436 = icmp ne i64 %i.pb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i436)
  %i.pc = shl nuw nsw i64 %i.pb, 2
  %i.pd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pc) #34
          to label %.noexc439 unwind label %.loopexit1484 ; 4 uses

.noexc439:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.pe = getelementptr inbounds i8, ptr %i.pd, i64 %i.ov ; 2 uses
  store i32 %.pre-phi, ptr %i.pe, align 4
  %i.pf = icmp sgt i64 %i.ov, 0
  br i1 %i.pf, label %bb.bs, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.bs:                                            ; preds = %.noexc439
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pd, ptr align 4 %i.os, i64 %i.ov, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bs, %.noexc439
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %.not.i17.i.i.i437 = icmp eq ptr %i.os, null
  br i1 %.not.i17.i.i.i437, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef %i.ov) #32
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
end_hunk_1
