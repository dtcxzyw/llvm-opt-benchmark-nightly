inline.NumInlined: 3741
inline.NumDeleted: 859
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp15ColladaExporter9WriteNodeEPK6aiNode:bb.a
  %i.nn = load i64, ptr %i.bb, align 8
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.nm, i64 noundef %i.nn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250 unwind label %bb.ad ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250: ; preds = %bb.ab
  %i.np = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.no, ptr noundef nonnull @.str.323, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252 unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN6Assimp15ColladaExporter17GetObjectUniqueIdB5cxx11ENS0_12AiObjectTypeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1248) %0, i32 noundef 4, i64 noundef %.067574)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252
  %i.nq = load ptr, ptr %8, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ns = load i64, ptr %i.nr, align 8
  %i.nt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.no, ptr noundef %i.nq, i64 noundef %i.ns)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254 unwind label %bb.af ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254: ; preds = %bb.ac
  %i.nu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nt, ptr noundef nonnull @.str.304, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254
  %i.nv = load ptr, ptr %i.dt, align 8
  %i.nw = load i64, ptr %i.dv, align 8
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nt, ptr noundef %i.nv, i64 noundef %i.nw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258 unwind label %bb.af ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256
  %i.ny = load ptr, ptr %8, align 8               ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.oa = icmp eq ptr %i.ny, %i.nz
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258
  %i.ob = load i64, ptr %i.nz, align 8
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.oc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.pre628 = load ptr, ptr %i.ef, align 8
  br label %.loopexit525

bb.ad:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250, %bb.ab
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254, %bb.ac
  %i.of = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.og = load ptr, ptr %8, align 8               ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.oi = icmp eq ptr %i.og, %i.oh
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %bb.af
  %i.oj = load i64, ptr %i.oh, align 8
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.ok) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262, %bb.ae
  %.pn112 = phi { ptr, i32 } [ %i.oe, %bb.ae ], [ %i.of, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262 ], [ %i.of, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.cp

_ZNK8aiStringeqERKS_.exit248.thread:              ; preds = %bb.aa, %_ZNK8aiStringeqERKS_.exit248
  %i.ol = add nuw nsw i64 %.067574, 1             ; 2 uses
  %exitcond617.not = icmp eq i64 %i.ol, %i.mz
  br i1 %exitcond617.not, label %.loopexit525, label %bb.aa, !llvm.loop !324

.loopexit525:                                     ; preds = %_ZNK8aiStringeqERKS_.exit248.thread, %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.om = phi ptr [ %.pre628, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261 ], [ %i.mw, %.preheader ], [ %i.mw, %_ZNK8aiStringeqERKS_.exit248.thread ] ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 80
  %i.oo = load i32, ptr %i.on, align 8            ; 2 uses
  %i.op = zext i32 %i.oo to i64
  %.not583 = icmp eq i32 %i.oo, 0
  br i1 %.not583, label %.loopexit, label %.lr.ph577

.lr.ph577:                                        ; preds = %.loopexit525
  %i.oq = getelementptr inbounds nuw i8, ptr %i.om, i64 88
  %i.or = load ptr, ptr %i.oq, align 8
  %i.os = load i32, ptr %1, align 8               ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ou = zext i32 %i.os to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph577, %_ZNK8aiStringeqERKS_.exit267.thread
  %.066576 = phi i64 [ 0, %.lr.ph577 ], [ %i.qa, %_ZNK8aiStringeqERKS_.exit267.thread ] ; 3 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %.066576
  %i.ow = load ptr, ptr %i.ov, align 8            ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4
  %i.oy = icmp eq i32 %i.ox, %i.os
  br i1 %i.oy, label %_ZNK8aiStringeqERKS_.exit267, label %_ZNK8aiStringeqERKS_.exit267.thread

_ZNK8aiStringeqERKS_.exit267:                     ; preds = %bb.ag
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %bcmp.i266 = call i32 @bcmp(ptr nonnull %i.oz, ptr nonnull %i.ot, i64 %i.ou)
  %i.pa = icmp eq i32 %bcmp.i266, 0
  br i1 %i.pa, label %bb.ah, label %_ZNK8aiStringeqERKS_.exit267.thread

bb.ah:                                            ; preds = %_ZNK8aiStringeqERKS_.exit267
  %i.pb = load ptr, ptr %i.az, align 8
  %i.pc = load i64, ptr %i.bb, align 8
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.pb, i64 noundef %i.pc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit269 unwind label %bb.aj ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit269: ; preds = %bb.ah
  %i.pe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef nonnull @.str.324, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit269
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN6Assimp15ColladaExporter17GetObjectUniqueIdB5cxx11ENS0_12AiObjectTypeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1248) %0, i32 noundef 3, i64 noundef %.066576)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271
  %i.pf = load ptr, ptr %9, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ph = load i64, ptr %i.pg, align 8
  %i.pi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef %i.pf, i64 noundef %i.ph)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273 unwind label %bb.al ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273: ; preds = %bb.ai
  %i.pj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pi, ptr noundef nonnull @.str.304, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273
  %i.pk = load ptr, ptr %i.dt, align 8
  %i.pl = load i64, ptr %i.dv, align 8
  %i.pm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pi, ptr noundef %i.pk, i64 noundef %i.pl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277 unwind label %bb.al ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275
  %i.pn = load ptr, ptr %9, align 8               ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277
  %i.pq = load i64, ptr %i.po, align 8
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.loopexit

bb.aj:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit269, %bb.ah
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273, %bb.ai
  %i.pu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pv = load ptr, ptr %9, align 8               ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.px = icmp eq ptr %i.pv, %i.pw
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %bb.al
  %i.py = load i64, ptr %i.pw, align 8
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.pz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %bb.ak
  %.pn115 = phi { ptr, i32 } [ %i.pt, %bb.ak ], [ %i.pu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ], [ %i.pu, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cp

_ZNK8aiStringeqERKS_.exit267.thread:              ; preds = %bb.ag, %_ZNK8aiStringeqERKS_.exit267
  %i.qa = add nuw nsw i64 %.066576, 1             ; 2 uses
  %exitcond618.not = icmp eq i64 %i.qa, %i.op
  br i1 %exitcond618.not, label %.loopexit, label %bb.ag, !llvm.loop !325

bb.am:                                            ; preds = %.lr.ph573, %bb.cj
  %i.qb = phi i32 [ %i.mf, %.lr.ph573 ], [ %i.afb, %bb.cj ] ; 2 uses
  %.065572 = phi i64 [ 0, %.lr.ph573 ], [ %i.afc, %bb.cj ] ; 2 uses
  %i.qc = load ptr, ptr %i.ef, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8
  %i.qf = load ptr, ptr %i.mh, align 8
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %.065572
  %i.qh = load i32, ptr %i.qg, align 4
  %i.qi = zext i32 %i.qh to i64                   ; 2 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qi
  %i.qk = load ptr, ptr %i.qj, align 8            ; 13 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load i32, ptr %i.ql, align 8
  %i.qn = icmp eq i32 %i.qm, 0
  br i1 %i.qn, label %bb.cj, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 4 ; 9 uses
  %i.qp = load i32, ptr %i.qo, align 4
  %i.qq = icmp eq i32 %i.qp, 0
  br i1 %i.qq, label %bb.cj, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN6Assimp15ColladaExporter17GetObjectUniqueIdB5cxx11ENS0_12AiObjectTypeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1248) %0, i32 noundef 0, i64 noundef %i.qi)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qk, i64 216 ; 4 uses
  %i.qs = load i32, ptr %i.qr, align 8
  %i.qt = icmp eq i32 %i.qs, 0
  %i.qu = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.qv = load i64, ptr %i.bb, align 8            ; 2 uses
  br i1 %i.qt, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.qw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.qu, i64 noundef %i.qv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit285 unwind label %.loopexit529 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit285: ; preds = %bb.aq
  %i.qx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qw, ptr noundef nonnull @.str.325, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287 unwind label %.loopexit529 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit285
  %i.qy = load ptr, ptr %10, align 8
  %i.qz = load i64, ptr %i.mi, align 8
  %i.ra = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qw, ptr noundef %i.qy, i64 noundef %i.qz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit289 unwind label %.loopexit529 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit289: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ra, ptr noundef nonnull @.str.116, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291 unwind label %.loopexit529 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit289
  %i.rc = load ptr, ptr %i.dt, align 8
  %i.rd = load i64, ptr %i.dv, align 8
  %i.re = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ra, ptr noundef %i.rc, i64 noundef %i.rd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit293 unwind label %.loopexit529 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit293: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291
  %i.rf = load i64, ptr %i.bb, align 8
  %i.rg = and i64 %i.rf, -2
  %i.rh = icmp eq i64 %i.rg, 4611686018427387902
  br i1 %i.rh, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i294

.invoke:                                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit293, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit349, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit307
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i294: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit293
  %i.ri = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %_ZN6Assimp15ColladaExporter7PushTagEv.exit297 unwind label %.loopexit529 ; 0 uses

bb.ar:                                            ; preds = %bb.ao
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

.loopexit529:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit417.invoke, %bb.aq, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit285, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit289, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i294, %bb.as, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i308, %_ZN6Assimp15ColladaExporter7PushTagEv.exit297, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit335, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i340, %_ZN6Assimp15ColladaExporter7PushTagEv.exit343, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit345, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350, %_ZN6Assimp15ColladaExporter7PushTagEv.exit353, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367, %bb.cd, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit391, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit393, %bb.ce, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit399, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit401, %bb.cf, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit407, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit409, %bb.ch, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit415, %bb.ci, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit421
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body316

.loopexit.split-lp:                               ; preds = %.invoke745, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body316

bb.as:                                            ; preds = %bb.ap
  %i.rk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.qu, i64 noundef %i.qv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299 unwind label %.loopexit529 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299: ; preds = %bb.as
  %i.rl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rk, ptr noundef nonnull @.str.326, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301 unwind label %.loopexit529 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299
  %i.rm = load ptr, ptr %10, align 8
  %i.rn = load i64, ptr %i.mi, align 8
  %i.ro = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rk, ptr noundef %i.rm, i64 noundef %i.rn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303 unwind label %.loopexit529 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301
  %i.rp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ro, ptr noundef nonnull @.str.327, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305 unwind label %.loopexit529 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303
  %i.rq = load ptr, ptr %i.dt, align 8
  %i.rr = load i64, ptr %i.dv, align 8
  %i.rs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ro, ptr noundef %i.rq, i64 noundef %i.rr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit307 unwind label %.loopexit529 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit307: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305
  %i.rt = load i64, ptr %i.bb, align 8
  %i.ru = and i64 %i.rt, -2
  %i.rv = icmp eq i64 %i.ru, 4611686018427387902
  br i1 %i.rv, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i308: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit307
  %i.rw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %bb.at unwind label %.loopexit529 ; 0 uses

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i308
  %i.rx = load ptr, ptr %i.ef, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 0, ptr %i.mj, align 8
  store ptr null, ptr %i.mk, align 8
  store ptr %i.mj, ptr %i.ml, align 8
  store ptr %i.mj, ptr %i.mm, align 8
  store i64 0, ptr %i.mn, align 8
  %i.ry = load i32, ptr %i.qr, align 8
  %.not27.i = icmp eq i32 %i.ry, 0
  br i1 %.not27.i, label %.thread.i, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %bb.at
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qk, i64 224
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i, %.lr.ph50.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph50.i ], [ %indvars.iv.next.i, %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i ] ; 2 uses
  %i.sd = load ptr, ptr %i.rz, align 8
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %indvars.iv.i
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = load ptr, ptr %i.sa, align 8
  %i.sh = invoke noundef ptr @_ZNK6aiNode12findBoneNodeEPK6aiBone(ptr noundef nonnull align 8 dereferenceable(1144) %i.sg, ptr noundef %i.sf)
          to label %bb.av unwind label %bb.az     ; 5 uses

bb.av:                                            ; preds = %bb.au
  %.not29.i = icmp eq ptr %i.sh, null
  br i1 %.not29.i, label %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i, label %_ZNK7aiScene8findBoneERK8aiString.exit.preheader.i

_ZNK7aiScene8findBoneERK8aiString.exit.preheader.i: ; preds = %bb.av
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 1096
  %i.sj = load ptr, ptr %i.si, align 8            ; 2 uses
  %.not3046.i = icmp eq ptr %i.sj, null
  br i1 %.not3046.i, label %.critedge.i, label %.lr.ph.i313

.lr.ph.i313:                                      ; preds = %_ZNK7aiScene8findBoneERK8aiString.exit.preheader.i
  %i.sk = load i32, ptr %i.sb, align 8            ; 2 uses
  %i.sl = zext i32 %i.sk to i64
  %.not.i.i = icmp eq i32 %i.sk, 0
  br i1 %.not.i.i, label %.critedge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i313
  %i.sm = load ptr, ptr %i.sc, align 8
  br label %.lr.ph59.i.i

_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i: ; preds = %_ZNK8aiStringeqERKS_.exit.i.i
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sp, i64 1096
  %i.so = load ptr, ptr %i.sn, align 8            ; 2 uses
  %.not30.i = icmp eq ptr %i.so, null
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph59.i.i, !llvm.loop !326

.lr.ph59.i.i:                                     ; preds = %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i, %.lr.ph.split.i
  %i.sp = phi ptr [ %i.sj, %.lr.ph.split.i ], [ %i.so, %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i ] ; 5 uses
  %.03847.i = phi ptr [ %i.sh, %.lr.ph.split.i ], [ %i.sp, %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i ]
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i.i, %.lr.ph59.i.i
  %.01958.i.i = phi i64 [ 0, %.lr.ph59.i.i ], [ %i.tj, %.loopexit.i.i ] ; 2 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %.01958.i.i
  %i.ss = load ptr, ptr %i.sr, align 8            ; 3 uses
  %i.st = icmp eq ptr %i.ss, null
  br i1 %i.st, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aw
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 216
  %i.sv = load i32, ptr %i.su, align 8            ; 2 uses
  %i.sw = zext i32 %i.sv to i64
  %.not60.i.i = icmp eq i32 %i.sv, 0
  br i1 %.not60.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ss, i64 224
  %i.sy = load ptr, ptr %i.sx, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.thread33.i.i, %.lr.ph.i.i
  %.01857.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ti, %.thread33.i.i ] ; 2 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %.01857.i.i
  %i.ta = load ptr, ptr %i.sz, align 8            ; 3 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %.thread33.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.tc = load i32, ptr %i.sp, align 4            ; 2 uses
  %i.td = load i32, ptr %i.ta, align 4
  %i.te = icmp eq i32 %i.tc, %i.td
  br i1 %i.te, label %_ZNK8aiStringeqERKS_.exit.i.i, label %.thread33.i.i

_ZNK8aiStringeqERKS_.exit.i.i:                    ; preds = %bb.ay
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %i.tg = zext i32 %i.tc to i64
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.sq, ptr nonnull %i.tf, i64 %i.tg)
  %bcmp.i.fr.i.i = freeze i32 %bcmp.i.i.i
  %i.th = icmp eq i32 %bcmp.i.fr.i.i, 0
  br i1 %i.th, label %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i, label %.thread33.i.i

end_hunk_0
