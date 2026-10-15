Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/wobble_suppression?download=true
inline.NumInlined: 237
inline.NumDeleted: 127
begin_hunk_0_@_ZN2cv9videostab34MoreAccurateMotionWobbleSuppressor8suppressEiRKNS_3MatERS2_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !90 ; 6 uses
  %i.ce = icmp slt i32 %i.cd, 3
  br i1 %i.ce, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.bu

.noexc:                                           ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.3, i32 noundef 109) #19
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.noexc
  unreachable

bb.ag:                                            ; preds = %.noexc
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %8, align 8, !tbaa !35    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ag
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !22
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %.body136

bb.ah:                                            ; preds = %bb.ad
  %i.cl = icmp sgt i32 %i.cd, 0
  br i1 %i.cl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.cn = icmp eq i32 %i.cd, 2
  %i.co = zext i1 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !23
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.cr = icmp eq i32 %i.cd, 0
  %i.cs = zext i1 %i.cr to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ct = phi i32 [ %i.cq, %bb.ai ], [ %i.cs, %bb.aj ]
  %i.cu = icmp eq i32 %i.cd, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 5 uses
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = icmp sgt i32 %i.cd, -1
  %i.cy = zext i1 %i.cx to i32
  %i.cz = select i1 %i.cu, i32 %i.cw, i32 %i.cy
  %.sroa.2.0.insert.ext.i = zext i32 %i.cz to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ct to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.cb, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5)
          to label %_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit unwind label %bb.bu

_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit:         ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.db = load i32, ptr %i.cc, align 8, !tbaa !90 ; 6 uses
  %i.dc = icmp slt i32 %i.db, 3
  br i1 %i.dc, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc146 unwind label %bb.bu

.noexc146:                                        ; preds = %bb.al
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.3, i32 noundef 109) #19
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %.noexc146
  unreachable

bb.an:                                            ; preds = %.noexc146
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139: ; preds = %bb.an
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !22
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.body136

bb.ao:                                            ; preds = %_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit
  %i.dj = icmp sgt i32 %i.db, 0
  br i1 %i.dj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dk = icmp eq i32 %i.db, 2
  %i.dl = zext i1 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !23
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.do = icmp eq i32 %i.db, 0
  %i.dp = zext i1 %i.do to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dq = phi i32 [ %i.dn, %bb.ap ], [ %i.dp, %bb.aq ]
  %i.dr = icmp eq i32 %i.db, 2
  %i.ds = load i32, ptr %i.cv, align 4
  %i.dt = icmp sgt i32 %i.db, -1
  %i.du = zext i1 %i.dt to i32
  %i.dv = select i1 %i.dr, i32 %i.ds, i32 %i.du
  %.sroa.2.0.insert.ext.i142 = zext i32 %i.dv to i64
  %.sroa.2.0.insert.shift.i143 = shl nuw i64 %.sroa.2.0.insert.ext.i142, 32
  %.sroa.0.0.insert.ext.i144 = zext i32 %i.dq to i64
  %.sroa.0.0.insert.insert.i145 = or disjoint i64 %.sroa.2.0.insert.shift.i143, %.sroa.0.0.insert.ext.i144
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.da, i64 %.sroa.0.0.insert.insert.i145, i32 noundef 5)
          to label %_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit151.preheader unwind label %bb.bu

_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit151.preheader: ; preds = %bb.ar
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !91 ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.preheader.lr.ph, label %_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit151._crit_edge.split

.preheader.lr.ph:                                 ; preds = %_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit151.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !92 ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8            ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = icmp slt i32 %i.ed, 2                   ; 2 uses
  %i.ej = sitofp i32 %i.n to float                ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.en = load ptr, ptr %i.em, align 8            ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = icmp slt i32 %i.el, 2                   ; 2 uses
  %i.er = sub nsw i32 %.sroa.speculated, %1
  %i.es = sitofp i32 %i.er to float               ; 2 uses
  %i.et = fadd float %i.ej, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 400
  br i1 %i.eb, label %.preheader.lr.ph.split, label %_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit151._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !47
  %i.fb = icmp slt i32 %i.fa, 2
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !93
  %i.fd = load i32, ptr %i.ex, align 4, !tbaa !47
  %i.fe = icmp slt i32 %i.fd, 2
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !93
  %wide.trip.count204 = zext nneg i32 %i.dx to i64
  %wide.trip.count = zext nneg i32 %i.ea to i64
  %i.fg = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv201 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next202, %._crit_edge ] ; 4 uses
  %i.fm = trunc nuw nsw i64 %indvars.iv201 to i32
  %i.fn = uitofp nneg i32 %i.fm to float
  %37 = insertelement <4 x float> poison, float %i.fn, i64 0 ; 2 uses
  %38 = shufflevector <4 x float> %37, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fo = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> zeroinitializer
  br label %bb.bv

_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit151._crit_edge.split: ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit151.preheader
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !93
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !93
  %i.ft = icmp eq ptr %i.fq, %i.fs
  br i1 %i.ft, label %bb.bw, label %bb.ci

bb.as:                                            ; preds = %bb.j
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.at:                                            ; preds = %bb.k
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.au:                                            ; preds = %bb.l
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.av:                                            ; preds = %bb.m
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.aw:                                            ; preds = %bb.n
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ax:                                            ; preds = %bb.o
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ay:                                            ; preds = %bb.p
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.body.i, %bb.ay
  %.pn102 = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.ga, %bb.ay ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %22) #16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.pn102.pn = phi { ptr, i32 } [ %.pn102, %bb.az ], [ %i.fz, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %17) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.aw
  %.pn102.pn.pn = phi { ptr, i32 } [ %.pn102.pn, %bb.ba ], [ %i.fy, %bb.aw ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %20) #16
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.av
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn, %bb.bb ], [ %i.fx, %bb.av ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.au
  %.pn102.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn, %bb.bc ], [ %i.fw, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %18) #16
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.at
  %.pn102.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn.pn, %bb.bd ], [ %i.fv, %bb.at ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.as
  %.pn102.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn.pn.pn, %bb.be ], [ %i.fu, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.cn

bb.bg:                                            ; preds = %bb.t
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bh:                                            ; preds = %bb.u
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bi:                                            ; preds = %bb.v
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bj:                                            ; preds = %bb.w
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bk:                                            ; preds = %bb.x
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bl:                                            ; preds = %bb.y
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bm:                                            ; preds = %bb.z
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bn:                                            ; preds = %.body.i130, %bb.bm
  %.pn110 = phi { ptr, i32 } [ %.pn.i131, %.body.i130 ], [ %i.gh, %bb.bm ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %30) #16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %.pn110.pn = phi { ptr, i32 } [ %.pn110, %bb.bn ], [ %i.gg, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %25) #16
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bk
  %.pn110.pn.pn = phi { ptr, i32 } [ %.pn110.pn, %bb.bo ], [ %i.gf, %bb.bk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #16
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bj
  %.pn110.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn, %bb.bp ], [ %i.ge, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %26) #16
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bi
  %.pn110.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn, %bb.bq ], [ %i.gd, %bb.bi ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %27) #16
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bh
  %.pn110.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn, %bb.br ], [ %i.gc, %bb.bh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #16
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bg
  %.pn110.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn, %bb.bs ], [ %i.gb, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %bb.cm

bb.bu:                                            ; preds = %bb.ar, %bb.al, %bb.ak, %bb.ae
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body136

._crit_edge:                                      ; preds = %bb.bv
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count204
  br i1 %exitcond205.not, label %_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit151._crit_edge.split, label %.preheader, !llvm.loop !76

bb.bv:                                            ; preds = %.preheader, %bb.bv
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.bv ] ; 4 uses
  %i.gj = trunc nuw nsw i64 %indvars.iv to i32
  %i.gk = uitofp nneg i32 %i.gj to float
  %i.gl = load float, ptr %i.eh, align 4, !tbaa !96
  %i.gm = load i64, ptr %i.eg, align 8            ; 2 uses
  %.sink.idx.i = select i1 %i.ei, i64 0, i64 %i.gm
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink.idx.i ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.go = load float, ptr %i.gn, align 4, !tbaa !96
  %i.gp = shl i64 %i.gm, 1
  %.sink.idx.i156 = select i1 %i.ei, i64 0, i64 %i.gp
  %.sink.i157 = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink.idx.i156 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sink.i157, i64 8
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !96
  %39 = load float, ptr %i.ep, align 4, !tbaa !96
  %40 = load i64, ptr %i.eo, align 8              ; 2 uses
  %.sink.idx.i168 = select i1 %i.eq, i64 0, i64 %40
  %.sink.i169 = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sink.idx.i168 ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %.sink.i169, i64 8
  %42 = load float, ptr %41, align 4, !tbaa !96
  %43 = shl i64 %40, 1
  %.sink.idx.i174 = select i1 %i.eq, i64 0, i64 %43
  %.sink.i175 = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sink.idx.i174 ; 2 uses
  %44 = getelementptr inbounds nuw i8, ptr %.sink.i175, i64 8
  %45 = load float, ptr %44, align 4, !tbaa !96
  %46 = load <2 x float>, ptr %i.ef, align 4, !tbaa !96 ; 2 uses
  %47 = load <2 x float>, ptr %.sink.i, align 4, !tbaa !96
  %48 = load <2 x float>, ptr %.sink.i157, align 4, !tbaa !96 ; 2 uses
  %49 = load <2 x float>, ptr %i.en, align 4, !tbaa !96 ; 2 uses
  %i.gs = load <2 x float>, ptr %.sink.i169, align 4, !tbaa !96
  %50 = shufflevector <2 x float> %46, <2 x float> %49, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %51 = shufflevector <2 x float> %47, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %52 = shufflevector <4 x float> %50, <4 x float> %51, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %53 = shufflevector <2 x float> %i.gs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %54 = shufflevector <4 x float> %52, <4 x float> %53, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %55 = fmul <4 x float> %54, %38
  %56 = shufflevector <2 x float> %46, <2 x float> %49, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %57 = shufflevector <4 x float> %56, <4 x float> %51, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %58 = shufflevector <4 x float> %57, <4 x float> %53, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %59 = insertelement <4 x float> poison, float %i.gk, i64 0 ; 2 uses
  %60 = shufflevector <4 x float> %59, <4 x float> poison, <4 x i32> zeroinitializer
  %61 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %58, <4 x float> %60, <4 x float> %55)
  %62 = insertelement <4 x float> poison, float %i.gl, i64 0
  %63 = insertelement <4 x float> %62, float %39, i64 1
  %64 = insertelement <4 x float> %63, float %i.go, i64 2
  %65 = insertelement <4 x float> %64, float %42, i64 3
  %66 = fadd <4 x float> %65, %61
  %i.gt = load <2 x float>, ptr %.sink.i175, align 4, !tbaa !96 ; 2 uses
  %i.gu = shufflevector <2 x float> %48, <2 x float> %i.gt, <2 x i32> <i32 1, i32 3>
  %i.gv = fmul <2 x float> %i.gu, %i.fo
  %i.gw = shufflevector <2 x float> %48, <2 x float> %i.gt, <2 x i32> <i32 0, i32 2>
  %67 = shufflevector <4 x float> %59, <4 x float> poison, <2 x i32> zeroinitializer
  %i.gx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %67, <2 x float> %i.gv)
  %i.gy = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gz = insertelement <2 x float> %i.gy, float %45, i64 1
  %i.ha = fadd <2 x float> %i.gz, %i.gx
  %68 = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hb = fdiv <4 x float> %66, %68               ; 2 uses
  %i.hc = load i64, ptr %i.eu, align 8
  %i.hd = mul i64 %i.hc, %indvars.iv201
  %.sink.idx.i180 = select i1 %i.fb, i64 0, i64 %i.hd
  %.sink.i181 = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.sink.idx.i180
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.sink.i181, i64 %indvars.iv
  %69 = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.hf = fmul <2 x float> %69, %i.fj
  %70 = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.hg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %70, <2 x float> %i.hf)
  %i.hh = fdiv <2 x float> %i.hg, %i.fl           ; 2 uses
  %i.hi = extractelement <2 x float> %i.hh, i64 0
  store float %i.hi, ptr %i.he, align 4, !tbaa !96
  %i.hj = load i64, ptr %i.ev, align 8
  %i.hk = mul i64 %i.hj, %indvars.iv201
  %.sink.idx.i182 = select i1 %i.fe, i64 0, i64 %i.hk
  %.sink.i183 = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.sink.idx.i182
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sink.i183, i64 %indvars.iv
  %i.hm = extractelement <2 x float> %i.hh, i64 1
  store float %i.hm, ptr %i.hl, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bv, !llvm.loop !77

bb.bw:                                            ; preds = %_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit151._crit_edge.split
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #16
  %i.hn = load i32, ptr %i.cc, align 8, !tbaa !90 ; 6 uses
  %i.ho = icmp slt i32 %i.hn, 3
  br i1 %i.ho, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc191 unwind label %bb.cg

.noexc191:                                        ; preds = %bb.bx
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.3, i32 noundef 109) #19
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %.noexc191
  unreachable

bb.bz:                                            ; preds = %.noexc191
  %i.hp = landingpad { ptr, i32 }
          cleanup
  %i.hq = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184: ; preds = %bb.bz
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !22
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.body192

bb.ca:                                            ; preds = %bb.bw
  %i.hv = icmp sgt i32 %i.hn, 0
  br i1 %i.hv, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.hw = icmp eq i32 %i.hn, 2
  %i.hx = zext i1 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !23
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.ia = icmp eq i32 %i.hn, 0
  %i.ib = zext i1 %i.ia to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.ic = phi i32 [ %i.hz, %bb.cb ], [ %i.ib, %bb.cc ]
  %i.id = icmp eq i32 %i.hn, 2
  %i.ie = load i32, ptr %i.cv, align 4
  %i.if = icmp sgt i32 %i.hn, -1
  %i.ig = zext i1 %i.if to i32
  %i.ih = select i1 %i.id, i32 %i.ie, i32 %i.ig
  %.sroa.2.0.insert.ext.i187 = zext i32 %i.ih to i64
  %.sroa.2.0.insert.shift.i188 = shl nuw i64 %.sroa.2.0.insert.ext.i187, 32
  %.sroa.0.0.insert.ext.i189 = zext i32 %i.ic to i64
  %.sroa.0.0.insert.insert.i190 = or disjoint i64 %.sroa.2.0.insert.shift.i188, %.sroa.0.0.insert.ext.i189
  %i.ii = load i32, ptr %2, align 8, !tbaa !46
  %i.ij = and i32 %i.ii, 4095
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %31, i64 %.sroa.0.0.insert.insert.i190, i32 noundef %i.ij)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.ik = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %31)
          to label %bb.cf unwind label %bb.ch     ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  br label %bb.ci

bb.cg:                                            ; preds = %bb.bx, %bb.cd
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body192

bb.ch:                                            ; preds = %bb.ce
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #16
  br label %.body192

.body192:                                         ; preds = %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185, %bb.ch
  %.pn118 = phi { ptr, i32 } [ %i.im, %bb.ch ], [ %i.il, %bb.cg ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  br label %.body136

bb.ci:                                            ; preds = %_ZN2cv4Mat_IfE6createENS_5Size_IiEE.exit151._crit_edge.split, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #16
  %i.in = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i32 0, ptr %i.in, align 8, !tbaa !97
  %i.io = getelementptr inbounds nuw i8, ptr %32, i64 20
  store i32 0, ptr %i.io, align 4, !tbaa !98
  store i32 16842752, ptr %32, align 8, !tbaa !50
  %i.ip = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %2, ptr %i.ip, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #16
  %i.iq = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 0, ptr %i.ir, align 8
  store i32 33619968, ptr %33, align 8, !tbaa !50
  store ptr %3, ptr %i.iq, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #16
  %i.is = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i32 0, ptr %i.is, align 8, !tbaa !97
  %i.it = getelementptr inbounds nuw i8, ptr %34, i64 20
  store i32 0, ptr %i.it, align 4, !tbaa !98
  store i32 -2130640891, ptr %34, align 8, !tbaa !50
  %i.iu = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %i.cb, ptr %i.iu, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #16
  %i.iv = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i32 0, ptr %i.iv, align 8, !tbaa !97
  %i.iw = getelementptr inbounds nuw i8, ptr %35, i64 20
  store i32 0, ptr %i.iw, align 4, !tbaa !98
  store i32 -2130640891, ptr %35, align 8, !tbaa !50
  %i.ix = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %i.da, ptr %i.ix, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %36, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 0)
          to label %bb.cj unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.i
  ret void

bb.cl:                                            ; preds = %bb.ci
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  br label %.body136

.body136:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140, %bb.bu, %.body192, %bb.cl
  %.pn120.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn118, %.body192 ], [ %i.iy, %bb.cl ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gi, %bb.bu ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140 ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #16
  br label %bb.cm

bb.cm:                                            ; preds = %.body136, %bb.bt
  %.pn120.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn120.pn.pn.pn.pn.pn, %.body136 ], [ %.pn110.pn.pn.pn.pn.pn.pn, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #16
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.bf
  %.pn120.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn120.pn.pn.pn.pn.pn.pn, %bb.cm ], [ %.pn102.pn.pn.pn.pn.pn.pn, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn120.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn120.pn.pn.pn.pn.pn.pn.pn, %bb.cn ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn120.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN2cv9videostab28KeypointBasedMotionEstimatorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv9videostab28KeypointBasedMotionEstimatorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.a) #16, !inline_history !109
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv9videostab28KeypointBasedMotionEstimatorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv9videostab28KeypointBasedMotionEstimatorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 448) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv9videostab28KeypointBasedMotionEstimatorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #16
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN2cv9videostab28KeypointBasedMotionEstimatorC1ENS_3PtrINS0_19MotionEstimatorBaseEEE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef align 8) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv9videostab19MotionEstimatorBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !15
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !1
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !46
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !46
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863675, ptr %3, align 8, !tbaa !50
  store ptr %0, ptr %i.o, align 8, !tbaa !51
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv9videostab24ImageMotionEstimatorBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{null, null}
!2 = distinct !{ptr @_ZN2cv9videostab20WobbleSuppressorBaseD2Ev, ptr @_ZNSt12__shared_ptrIN2cv9videostab24ImageMotionEstimatorBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!14 = !{!13, !8, i64 8}
!15 = !{!13, !8, i64 12}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"p1 _ZTSN2cv9videostab24ImageMotionEstimatorBaseE", !16, i64 0}
!21 = !{!"_ZTSSt12__shared_ptrIN2cv9videostab24ImageMotionEstimatorBaseELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !18, i64 8}
!22 = !{!7, !7, i64 0}
!23 = !{!8, !8, i64 0}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!"_ZTSSt10shared_ptrIN2cv9videostab24ImageMotionEstimatorBaseEE", !21, i64 0}
!26 = !{!"_ZTSN2cv3PtrINS_9videostab24ImageMotionEstimatorBaseEEE", !25, i64 0}
!27 = !{!"p1 _ZTSSt6vectorIN2cv3MatESaIS1_EE", !16, i64 0}
!28 = !{!"_ZTSN2cv9videostab20WobbleSuppressorBaseE", !26, i64 8, !8, i64 24, !27, i64 32, !27, i64 40, !27, i64 48}
!29 = !{!28, !27, i64 32}
!30 = !{!28, !27, i64 48}
!31 = !{!"p1 omnipotent char", !16, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!33 = !{!"long", !7, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !33, i64 8, !7, i64 16}
!35 = !{!34, !31, i64 0}
!36 = !{!"_ZTSN2cv9videostab38MoreAccurateMotionWobbleSuppressorBaseE", !28, i64 0, !8, i64 56}
!37 = !{!36, !8, i64 56}
!38 = !{!28, !8, i64 24}
!39 = !{!28, !27, i64 40}
!40 = !{!"p1 _ZTSN2cv12MatAllocatorE", !16, i64 0}
!41 = !{!"p1 _ZTSN2cv8UMatDataE", !16, i64 0}
!42 = !{!"_ZTSN2cv10DataLayoutE", !7, i64 0}
!43 = !{!"_ZTSN2cv8MatShapeE", !8, i64 0, !42, i64 4, !8, i64 8, !7, i64 12}
!44 = !{!"_ZTSN2cv7MatStepE", !7, i64 0}
!45 = !{!"_ZTSN2cv3MatE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !40, i64 56, !41, i64 64, !43, i64 72, !44, i64 128}
!46 = !{!45, !8, i64 0}
!47 = !{!45, !8, i64 4}
!48 = !{!"_ZTSN2cv5Size_IiEE", !8, i64 0, !8, i64 4}
!49 = !{!"_ZTSN2cv11_InputArrayE", !8, i64 0, !16, i64 8, !48, i64 16}
!50 = !{!49, !8, i64 0}
!51 = !{!49, !16, i64 8}
!52 = !{ptr @_ZN2cv9videostab20WobbleSuppressorBaseD2Ev}
!53 = !{!"_ZTSSt9type_info", !31, i64 8}
!54 = !{!53, !31, i64 8}
!55 = distinct !{!55, i1 false, !"_ZN2cvL7makePtrINS_9videostab23MotionEstimatorRansacL2EJNS1_11MotionModelEEEENS_3PtrIT_EEDpRKT0_"}
!56 = distinct !{!56, !55, !"_ZN2cvL7makePtrINS_9videostab23MotionEstimatorRansacL2EJNS1_11MotionModelEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!57 = distinct !{!57, i1 false, !"_ZSt11make_sharedIN2cv9videostab23MotionEstimatorRansacL2EJRKNS1_11MotionModelEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_"}
!58 = distinct !{!58, !57, !"_ZSt11make_sharedIN2cv9videostab23MotionEstimatorRansacL2EJRKNS1_11MotionModelEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
!59 = distinct !{!59, i1 false, !"_ZN2cvL7makePtrINS_9videostab28KeypointBasedMotionEstimatorEJNS_3PtrINS1_23MotionEstimatorRansacL2EEEEEENS3_IT_EEDpRKT0_"}
!60 = distinct !{!60, !59, !"_ZN2cvL7makePtrINS_9videostab28KeypointBasedMotionEstimatorEJNS_3PtrINS1_23MotionEstimatorRansacL2EEEEEENS3_IT_EEDpRKT0_: argument 0"}
!61 = distinct !{!61, i1 false, !"_ZSt11make_sharedIN2cv9videostab28KeypointBasedMotionEstimatorEJRKNS0_3PtrINS1_23MotionEstimatorRansacL2EEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!62 = distinct !{!62, !61, !"_ZSt11make_sharedIN2cv9videostab28KeypointBasedMotionEstimatorEJRKNS0_3PtrINS1_23MotionEstimatorRansacL2EEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!63 = distinct !{null, null, null, null, null, null}
!64 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv9videostab23MotionEstimatorRansacL2ELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!65 = !{!56}
!66 = !{!58, !56}
!67 = !{!"p1 _ZTSN2cv9videostab23MotionEstimatorRansacL2E", !16, i64 0}
!68 = !{!"_ZTSSt12__shared_ptrIN2cv9videostab23MotionEstimatorRansacL2ELN9__gnu_cxx12_Lock_policyE2EE", !67, i64 0, !18, i64 8}
!69 = !{!68, !67, i64 0}
!70 = !{!62, !60}
!71 = !{!21, !20, i64 0}
!72 = distinct !{!72, i1 false, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!73 = distinct !{!73, !72, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!74 = distinct !{!74, i1 false, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!75 = distinct !{!75, !74, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!76 = distinct !{!76, !94}
!77 = distinct !{!77, !94}
!78 = !{!"p1 _ZTSN2cv3MatE", !16, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!79, !78, i64 0}
!81 = !{!"p1 _ZTSN2cv5MatOpE", !16, i64 0}
!82 = !{!"double", !7, i64 0}
!83 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !7, i64 0}
!84 = !{!"_ZTSN2cv3VecIdLi4EEE", !83, i64 0}
!85 = !{!"_ZTSN2cv7Scalar_IdEE", !84, i64 0}
!86 = !{!"_ZTSN2cv7MatExprE", !81, i64 0, !8, i64 8, !45, i64 16, !45, i64 224, !45, i64 432, !82, i64 640, !82, i64 648, !85, i64 656}
!87 = !{!86, !81, i64 0}
!88 = !{!73}
!89 = !{!75}
!90 = !{!43, !8, i64 0}
!91 = !{!45, !8, i64 8}
!92 = !{!45, !8, i64 12}
!93 = !{!45, !31, i64 24}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"float", !7, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!48, !8, i64 0}
!98 = !{!48, !8, i64 4}
!99 = !{!32, !31, i64 0}
!100 = !{!33, !33, i64 0}
!101 = !{!34, !33, i64 8}
!102 = distinct !{ptr @_ZN2cv9videostab34MoreAccurateMotionWobbleSuppressorD2Ev, ptr @_ZN2cv9videostab20WobbleSuppressorBaseD2Ev, ptr @_ZNSt12__shared_ptrIN2cv9videostab24ImageMotionEstimatorBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!103 = !{ptr @_ZN2cv9videostab34MoreAccurateMotionWobbleSuppressorD2Ev}
!104 = !{ptr @_ZN2cv9videostab34MoreAccurateMotionWobbleSuppressorD2Ev, ptr @_ZN2cv9videostab20WobbleSuppressorBaseD2Ev}
!105 = distinct !{null}
!106 = distinct !{null}
!107 = distinct !{null, ptr @_ZNSt12__shared_ptrIN2cv9videostab19MotionEstimatorBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!108 = !{!16, !16, i64 0}
!109 = distinct !{null}
end_hunk_1
