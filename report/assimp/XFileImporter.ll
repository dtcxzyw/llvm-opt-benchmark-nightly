inline.NumInlined: 969
inline.NumDeleted: 533
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp13XFileImporter16ConvertMaterialsEP7aiSceneRSt6vectorINS_5XFile8MaterialESaIS5_EE:bb.a
  %i.ai = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  %i.aj = insertelement <4 x i8> %i.ai, i8 %i.af, i64 1
  %i.ak = insertelement <4 x i8> %i.aj, i8 %i.ag, i64 2
  %i.al = insertelement <4 x i8> %i.ak, i8 %i.ah, i64 3
  %i.am = load i8, ptr %i.aa, align 8, !range !5, !noundef !6
  %i.an = load i8, ptr %i.ab, align 8, !range !5, !noundef !6
  %i.ao = load i8, ptr %i.ac, align 8, !range !5, !noundef !6
  %i.ap = load i8, ptr %i.ad, align 8, !range !5, !noundef !6
  %i.aq = insertelement <4 x i8> poison, i8 %i.am, i64 0
  %i.ar = insertelement <4 x i8> %i.aq, i8 %i.an, i64 1
  %i.as = insertelement <4 x i8> %i.ar, i8 %i.ao, i64 2
  %i.at = insertelement <4 x i8> %i.as, i8 %i.ap, i64 3
  %i.au = xor <4 x i8> %i.al, splat (i8 1)
  %i.av = xor <4 x i8> %i.at, splat (i8 1)
  %i.aw = zext nneg <4 x i8> %i.au to <4 x i32>
  %i.ax = zext nneg <4 x i8> %i.av to <4 x i32>
  %i.ay = add <4 x i32> %vec.phi, %i.aw           ; 2 uses
  %i.az = add <4 x i32> %vec.phi203, %i.ax        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.az, %i.ay
  %i.bb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader206

.lr.ph.preheader206:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.098158.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.bb, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader206, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader206 ] ; 2 uses
  %.098158 = phi i32 [ %spec.select, %.lr.ph ], [ %.098158.ph, %.lr.ph.preheader206 ]
  %i.bc = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i8, ptr %i.bd, align 8, !range !5, !noundef !6
  %i.bf = xor i8 %i.be, 1
  %i.bg = zext nneg i8 %i.bf to i32
  %spec.select = add i32 %.098158, %i.bg          ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.bh = and i64 %indvars.iv.next, 4294967295
  %i.bi = icmp ugt i64 %i.i, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !11

bb.b:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.bn = add i32 %i.bm, %spec.select.lcssa
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #21 ; 2 uses
  store ptr %i.bq, ptr %i.bj, align 8
  %.not129 = icmp eq ptr %i.bk, null
  br i1 %.not129, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.br = zext i32 %i.bm to i64
  %i.bs = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bk, i64 %i.bs, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.bk) #19
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge
  %i.bt = load ptr, ptr %i.c, align 8
  %i.bu = load ptr, ptr %2, align 8               ; 2 uses
  %.not178 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not178, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %._crit_edge.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.d

._crit_edge176:                                   ; preds = %bb.ak, %._crit_edge.thread
  ret void

bb.d:                                             ; preds = %.lr.ph175, %bb.ak
  %i.cd = phi ptr [ %i.bu, %.lr.ph175 ], [ %i.ih, %bb.ak ]
  %i.ce = phi i64 [ 0, %.lr.ph175 ], [ %i.if, %bb.ak ]
  %.0118173 = phi i32 [ 0, %.lr.ph175 ], [ %i.ie, %bb.ak ]
  %i.cf = getelementptr inbounds nuw [112 x i8], ptr %i.cd, i64 %i.ce ; 14 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i8, ptr %i.cg, align 8, !range !5, !noundef !6
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.d
  %i.cj = load i32, ptr %i.cb, align 8
  %.not181 = icmp eq i32 %i.cj, 0
  br i1 %.not181, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader, %.critedge
  %.0122171 = phi i64 [ %i.cr, %.critedge ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.ck = load ptr, ptr %i.ca, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.0122171
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef i32 @aiGetMaterialString(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(1028) %3) ; 0 uses
  %i.co = load ptr, ptr %i.cf, align 8
  %i.cp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cc, ptr noundef nonnull dereferenceable(1) %i.co) #22
  %.not144 = icmp eq i32 %i.cp, 0
  br i1 %.not144, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph172
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  store i64 %.0122171, ptr %i.cq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph172
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.cr = add nuw nsw i64 %.0122171, 1            ; 2 uses
  %i.cs = load i32, ptr %i.cb, align 8
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign ult i64 %i.cr, %i.ct
  br i1 %i.cu, label %.lr.ph172, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.e
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 104 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %bb.f, label %bb.ak

bb.f:                                             ; preds = %.loopexit
  %i.cy = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA46_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cy, ptr noundef nonnull align 1 dereferenceable(46) @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 1 dereferenceable(2) @.str.14)
  store i64 0, ptr %i.cv, align 8
  br label %bb.ak

bb.g:                                             ; preds = %bb.d
  %i.cz = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 16 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.cz)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %4, i8 0, i64 1028, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.db = load i64, ptr %i.da, align 8            ; 4 uses
  %i.dc = icmp ugt i64 %i.db, 1023
  br i1 %i.dc, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dd = trunc nuw nsw i64 %i.db to i32
  store i32 %i.dd, ptr %4, align 4
  %i.de = load ptr, ptr %i.cf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 1 %i.de, i64 %i.db, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.db
  store i8 0, ptr %i.df, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.h, %bb.i
  %i.dg = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %4, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 52 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = fptosi float %i.di to i32
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = select i1 %i.dk, i32 2, i32 3
  store i32 %i.dl, ptr %i.b, align 4
  %i.dm = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cf, i64 68
  %i.do = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %i.dn, i32 noundef 12, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cf, i64 36
  %i.dq = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %i.dp, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ds = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %i.dr, i32 noundef 12, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dt = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %i.dh, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 80 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cf, i64 88 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 5 uses
  %i.dx = load ptr, ptr %i.du, align 8            ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = icmp eq i64 %i.ea, 40
  br i1 %i.eb, label %bb.j, label %.preheader150

.preheader150:                                    ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.not179 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not179, label %.loopexit151, label %.lr.ph170

bb.j:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ec = getelementptr inbounds i8, ptr %i.dw, i64 -32
  %i.ed = load i64, ptr %i.ec, align 8            ; 3 uses
  %.not143 = icmp eq i64 %i.ed, 0
  br i1 %.not143, label %.loopexit151, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ee = getelementptr inbounds i8, ptr %i.dw, i64 -40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ef = trunc i64 %i.ed to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bz, i8 0, i64 1024, i1 false)
  %i.eg = and i64 %i.ed, 4294966272
  %.not.i = icmp eq i64 %i.eg, 0
  %spec.select.i = select i1 %.not.i, i32 %i.ef, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %5, align 4
  %i.eh = load ptr, ptr %i.ee, align 8
  %i.ei = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 1 %i.eh, i64 %i.ei, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ei
  store i8 0, ptr %i.ej, align 1
  %i.ek = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %i.el = load i8, ptr %i.ek, align 8, !range !5, !noundef !6
  %i.em = trunc nuw i8 %i.el to i1
  %. = select i1 %i.em, i32 6, i32 1
  %i.en = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %5, ptr noundef nonnull @.str.15, i32 noundef %., i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit151

bb.l:                                             ; preds = %bb.g
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 16) #19
  br label %bb.al

.lr.ph170:                                        ; preds = %.preheader150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.ep = phi ptr [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.dx, %.preheader150 ]
  %i.eq = phi i64 [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 2 uses
  %.0100169 = phi i32 [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ]
  %.0101168 = phi i32 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0103167 = phi i32 [ %.2105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0106166 = phi i32 [ %.2108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0109165 = phi i32 [ %.2111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0112164 = phi i32 [ %.2114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0115163 = phi i32 [ %.2117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %i.er = getelementptr inbounds nuw [40 x i8], ptr %i.ep, i64 %i.eq ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.bw, ptr %6, align 8
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.eu = load i64, ptr %i.et, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.eu, ptr %i.a, align 8
  %i.ev = icmp ugt i64 %i.eu, 15
  br i1 %i.ev, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.lr.ph170
  %i.ew = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ew, ptr %6, align 8
  %i.ex = load i64, ptr %i.a, align 8
  store i64 %i.ex, ptr %i.bw, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.lr.ph170
  %i.ey = phi ptr [ %i.ew, %.noexc.i ], [ %i.bw, %.lr.ph170 ] ; 2 uses
  switch i64 %i.eu, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ez = load i8, ptr %i.es, align 1
  store i8 %i.ez, ptr %i.ey, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %i.es, i64 %i.eu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.n
  %i.fa = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.fa, ptr %i.bx, align 8
  %i.fb = load ptr, ptr %6, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fa
  store i8 0, ptr %i.fc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.fd = load i64, ptr %i.bx, align 8
  %.not130 = icmp eq i64 %i.fd, 0
  br i1 %.not130, label %bb.aj, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.fe = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.16, i64 noundef -1, i64 noundef 2) #18 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, -1
  %spec.store.select = select i1 %i.ff, i64 0, i64 %i.fe ; 10 uses
  %i.fg = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 46, i64 noundef -1) #18 ; 2 uses
  %.not131 = icmp eq i64 %i.fg, -1
  br i1 %.not131, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fh = load ptr, ptr %6, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  store i8 0, ptr %i.fi, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fj = load i64, ptr %i.bx, align 8
  %.not180 = icmp eq i64 %i.fj, 0
  br i1 %.not180, label %._crit_edge162, label %.lr.ph161

._crit_edge162:                                   ; preds = %.lr.ph161, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.fk = load ptr, ptr %i.du, align 8
  %i.fl = getelementptr inbounds nuw [40 x i8], ptr %i.fk, i64 %i.eq ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i64, ptr %i.fm, align 8            ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.by, i8 0, i64 1024, i1 false)
  %i.fp = and i64 %i.fn, 4294966272
  %.not.i145 = icmp eq i64 %i.fp, 0
  %spec.select.i146 = select i1 %.not.i145, i32 %i.fo, i32 1023 ; 2 uses
  store i32 %spec.select.i146, ptr %7, align 4
  %i.fq = load ptr, ptr %i.fl, align 8
  %i.fr = zext i32 %spec.select.i146 to i64       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.by, ptr align 1 %i.fq, i64 %i.fr, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fr
  store i8 0, ptr %i.fs, align 1
  %i.ft = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.17, i64 noundef %spec.store.select, i64 noundef 4) #18
  %.not132 = icmp eq i64 %i.ft, -1
  br i1 %.not132, label %bb.r, label %bb.s

.lr.ph161:                                        ; preds = %bb.q, %.lr.ph161
  %i.fu = phi i64 [ %i.gc, %.lr.ph161 ], [ 0, %bb.q ]
  %.0159 = phi i32 [ %i.gb, %.lr.ph161 ], [ 0, %bb.q ]
  %i.fv = load ptr, ptr %6, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fu ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = zext i8 %i.fx to i32
  %i.fz = call i32 @tolower(i32 noundef %i.fy) #22
  %i.ga = trunc i32 %i.fz to i8
  store i8 %i.ga, ptr %i.fw, align 1
  %i.gb = add i32 %.0159, 1                       ; 2 uses
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = load i64, ptr %i.bx, align 8
  %i.ge = icmp ugt i64 %i.gd, %i.gc
  br i1 %i.ge, label %.lr.ph161, label %._crit_edge162, !llvm.loop !13

bb.r:                                             ; preds = %._crit_edge162
  %i.gf = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.18, i64 noundef %spec.store.select, i64 noundef 6) #18
  %.not133 = icmp eq i64 %i.gf, -1
  br i1 %.not133, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge162
  %i.gg = add i32 %.0115163, 1
  %i.gh = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 5, i32 noundef %.0115163)
          to label %bb.ai unwind label %bb.t      ; 0 uses

bb.t:                                             ; preds = %bb.ah, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.s
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.gj = load ptr, ptr %6, align 8               ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.bw
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.gl = load i64, ptr %i.bw, align 8
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.al

bb.u:                                             ; preds = %bb.r
  %i.gn = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.go = load i8, ptr %i.gn, align 8, !range !5, !noundef !6
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gq = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.19, i64 noundef %spec.store.select, i64 noundef 6) #18
  %.not134 = icmp eq i64 %i.gq, -1
  br i1 %.not134, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gr = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.20, i64 noundef %spec.store.select, i64 noundef 2) #18
  %.not135 = icmp eq i64 %i.gr, -1
  br i1 %.not135, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.gs = add i32 %.0112164, 1
  %i.gt = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 6, i32 noundef %.0112164)
          to label %bb.ai unwind label %bb.t      ; 0 uses

bb.y:                                             ; preds = %bb.w
  %i.gu = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.21, i64 noundef %spec.store.select, i64 noundef 4) #18
  %.not136 = icmp eq i64 %i.gu, -1
  br i1 %.not136, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gv = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.22, i64 noundef %spec.store.select, i64 noundef 5) #18
  %.not137 = icmp eq i64 %i.gv, -1
  br i1 %.not137, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gw = add i32 %.0106166, 1
  %i.gx = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef %.0106166)
          to label %bb.ai unwind label %bb.t      ; 0 uses

bb.ab:                                            ; preds = %bb.z
end_hunk_0
