Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AMFImporter_Postprocess?download=true
inline.NumInlined: 1393
inline.NumDeleted: 732
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
  br i1 %.not594, label %._crit_edge, label %.lr.ph1213

._crit_edge1325.loopexit:                         ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit355
  %.pre1827 = load ptr, ptr %9, align 8
  br label %._crit_edge1325

._crit_edge1325:                                  ; preds = %._crit_edge1325.loopexit, %.preheader629
  %i.bk = phi ptr [ %.pre1827, %._crit_edge1325.loopexit ], [ %.sroa.0553.01321, %.preheader629 ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bk, %9
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge1325, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.bl, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i ], [ %i.bk, %._crit_edge1325 ] ; 3 uses
  %i.bl = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.bn, %i.bm
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bo, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i ], [ %i.bn, %.lr.ph.i.i ] ; 3 uses
  %i.bo = load ptr, ptr %.09.i.i.i.i, align 8     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #23
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 48) #23
  %.not.i.i.i.i = icmp eq ptr %i.bo, %i.bm
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i: ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i, %.lr.ph.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #23
  %.not.i.i = icmp eq ptr %i.bl, %9
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i, %._crit_edge1325
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.bs = load ptr, ptr %8, align 8               ; 2 uses
  %.not8.i.i166 = icmp eq ptr %i.bs, %8
  br i1 %.not8.i.i166, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i167

.lr.ph.i.i167:                                    ; preds = %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i
  %.09.i.i168 = phi ptr [ %i.bt, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i ], [ %i.bs, %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit ] ; 3 uses
  %i.bt = load ptr, ptr %.09.i.i168, align 8      ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.09.i.i168, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i167
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #23
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i: ; preds = %bb.s, %.lr.ph.i.i167
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i168, i64 noundef 48) #23
  %.not.i.i169 = icmp eq ptr %i.bt, %8
  br i1 %.not.i.i169, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i167, !llvm.loop !1

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit: ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i, %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.dt

.lr.ph1324:                                       ; preds = %.preheader629, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit355
  %.sroa.0553.01323 = phi ptr [ %.sroa.0553.0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit355 ], [ %.sroa.0553.01321, %.preheader629 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0553.01323, i64 16 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %3, ptr %10, align 8
  store ptr %i.b, ptr %i.k, align 8
  store ptr %i.a, ptr %i.l, align 8
  store ptr %i.c, ptr %i.m, align 8
  store ptr %2, ptr %i.n, align 8
  %i.by = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #24
          to label %bb.t unwind label %bb.ai      ; 14 uses

bb.t:                                             ; preds = %.lr.ph1324
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 7 uses
  store i32 0, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  store i32 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 224
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1272
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 1312
  store ptr null, ptr %i.ce, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.cb, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.cc, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cd, i8 0, i64 36, i1 false)
  store i32 4, ptr %i.by, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0553.01323, i64 32
  %i.cg = load i64, ptr %i.cf, align 8            ; 3 uses
  %i.ch = trunc i64 %i.cg to i32
  store i32 %i.ch, ptr %i.ca, align 8
  %i.ci = and i64 %i.cg, 4294967295               ; 5 uses
  %i.cj = shl nuw nsw i64 %i.ci, 4
  %i.ck = or disjoint i64 %i.cj, 8
  %i.cl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #24
          to label %bb.u unwind label %bb.ai      ; 2 uses

bb.u:                                             ; preds = %bb.t
  store i64 %i.ci, ptr %i.cl, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = icmp eq i64 %i.ci, 0
  br i1 %i.cn, label %.loopexit626, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.ci
  %i.cp = add nuw nsw i64 %i.ci, 1152921504606846975
  %i.cq = and i64 %i.cp, 1152921504606846975
  %xtraiter = and i64 %i.cg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.v, %.prol.preheader
  %i.cr = phi ptr [ %i.ct, %.prol.preheader ], [ %i.cm, %bb.v ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.v ]
  store i32 0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr null, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.v
  %.unr = phi ptr [ %i.cm, %bb.v ], [ %i.ct, %.prol.preheader ]
  %i.cu = icmp samesign ult i64 %i.cq, 7
  br i1 %i.cu, label %.loopexit626, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.cv = phi ptr [ %i.dl, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr null, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 0, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr null, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store i32 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  store ptr null, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  store i32 0, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  store ptr null, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  store i32 0, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  store ptr null, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  store i32 0, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  store ptr null, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  store i32 0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 104
  store ptr null, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 112
  store i32 0, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 120
  store ptr null, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 128 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.co
  br i1 %i.dm, label %.loopexit626, label %.new

.loopexit626:                                     ; preds = %.prol.loopexit, %.new, %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %i.by, i64 208 ; 2 uses
  store ptr %i.cm, ptr %i.dn, align 8
  %i.do = load i32, ptr %i.ca, align 8
  %.fr2388 = freeze i32 %i.do                     ; 2 uses
  %i.dp = mul i32 %.fr2388, 3
  %i.dq = zext i32 %i.dp to i64                   ; 4 uses
  %i.dr = shl nuw nsw i64 %i.dq, 1                ; 5 uses
  %.not596 = icmp eq i32 %.fr2388, 0              ; 3 uses
  br i1 %.not596, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %.loopexit626
  %i.ds = mul nuw nsw i64 %i.dq, 24
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #24
          to label %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i unwind label %bb.aj ; 3 uses

_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.dr ; 2 uses
  %i.dv = shl nuw nsw i64 %i.dq, 5
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #24
          to label %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.aj ; 2 uses

_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.dr
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %.loopexit626
  %.sroa.47.16590 = phi ptr [ %i.du, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %.loopexit626 ] ; 5 uses
  %.sroa.23.8588 = phi ptr [ %i.dt, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %.loopexit626 ] ; 6 uses
  %.sroa.0442.15 = phi ptr [ %i.dw, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %.loopexit626 ] ; 9 uses
  %.sroa.39.15 = phi ptr [ %i.dx, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %.loopexit626 ] ; 5 uses
  %i.dy = load ptr, ptr %i.bx, align 8            ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %.not183155.i = icmp eq ptr %i.dy, %i.bx
  br i1 %.not183155.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit", label %.lr.ph34.split.us.i

.lr.ph34.split.us.i:                              ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit, %.loopexit.us.i
  %.sroa.01.033.us.i = phi ptr [ %.sroa.01.0.us.i, %.loopexit.us.i ], [ %i.dy, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit ] ; 3 uses
  %.432.us.i = phi i64 [ %.5.lcssa.us.i, %.loopexit.us.i ], [ %i.ec, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.01.033.us.i, i64 16
  %i.ee = load i32, ptr %i.ed, align 8            ; 3 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %.not40.i = icmp eq i32 %i.ee, 0
  br i1 %.not40.i, label %.loopexit.us.i, label %.lr.ph29.us.i

.lr.ph29.us.i:                                    ; preds = %.lr.ph34.split.us.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.01.033.us.i, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8            ; 5 uses
  %xtraiter3297 = and i64 %i.ef, 3                ; 3 uses
  %i.ei = icmp ult i32 %i.ee, 4
  br i1 %i.ei, label %.epil.preheader, label %.lr.ph29.us.i.new

.lr.ph29.us.i.new:                                ; preds = %.lr.ph29.us.i
  %unroll_iter = and i64 %i.ef, 4294967292
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph29.us.i.new
  %.028.us.us.i = phi i64 [ 0, %.lr.ph29.us.i.new ], [ %i.ey, %bb.w ] ; 5 uses
  %.527.us.us.i = phi i64 [ %.432.us.i, %.lr.ph29.us.i.new ], [ %.5.mux.us.us.i.3, %bb.w ]
  %niter = phi i64 [ 0, %.lr.ph29.us.i.new ], [ %niter.next.3, %bb.w ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.028.us.us.i
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = zext i32 %i.ek to i64
  %.5.mux.us.us.i = call i64 @llvm.umin.i64(i64 %.527.us.us.i, i64 %i.el)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.028.us.us.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = zext i32 %i.eo to i64
  %.5.mux.us.us.i.1 = call i64 @llvm.umin.i64(i64 %.5.mux.us.us.i, i64 %i.ep)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.028.us.us.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i32, ptr %i.er, align 4
  %i.et = zext i32 %i.es to i64
  %.5.mux.us.us.i.2 = call i64 @llvm.umin.i64(i64 %.5.mux.us.us.i.1, i64 %i.et)
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.028.us.us.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = zext i32 %i.ew to i64
  %.5.mux.us.us.i.3 = call i64 @llvm.umin.i64(i64 %.5.mux.us.us.i.2, i64 %i.ex) ; 3 uses
  %i.ey = add nuw nsw i64 %.028.us.us.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.us.i.loopexit.unr-lcssa, label %bb.w, !llvm.loop !48

.loopexit.us.i.loopexit.unr-lcssa:                ; preds = %bb.w
  %lcmp.mod3298.not = icmp eq i64 %xtraiter3297, 0
  br i1 %lcmp.mod3298.not, label %.loopexit.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.us.i.loopexit.unr-lcssa, %.lr.ph29.us.i
  %.028.us.us.i.epil.init = phi i64 [ 0, %.lr.ph29.us.i ], [ %i.ey, %.loopexit.us.i.loopexit.unr-lcssa ]
  %.527.us.us.i.epil.init = phi i64 [ %.432.us.i, %.lr.ph29.us.i ], [ %.5.mux.us.us.i.3, %.loopexit.us.i.loopexit.unr-lcssa ]
  %lcmp.mod3300 = icmp ne i64 %xtraiter3297, 0
  call void @llvm.assume(i1 %lcmp.mod3300)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader
  %.028.us.us.i.epil = phi i64 [ %.028.us.us.i.epil.init, %.epil.preheader ], [ %i.fc, %bb.x ] ; 2 uses
  %.527.us.us.i.epil = phi i64 [ %.527.us.us.i.epil.init, %.epil.preheader ], [ %.5.mux.us.us.i.epil, %bb.x ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.x ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.028.us.us.i.epil
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = zext i32 %i.fa to i64
  %.5.mux.us.us.i.epil = call i64 @llvm.umin.i64(i64 %.527.us.us.i.epil, i64 %i.fb) ; 2 uses
  %i.fc = add nuw nsw i64 %.028.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3297
  br i1 %epil.iter.cmp.not, label %.loopexit.us.i, label %bb.x, !llvm.loop !49

.loopexit.us.i:                                   ; preds = %.loopexit.us.i.loopexit.unr-lcssa, %bb.x, %.lr.ph34.split.us.i
  %.5.lcssa.us.i = phi i64 [ %.432.us.i, %.lr.ph34.split.us.i ], [ %.5.mux.us.us.i.3, %.loopexit.us.i.loopexit.unr-lcssa ], [ %.5.mux.us.us.i.epil, %bb.x ] ; 2 uses
  %.sroa.01.0.us.i = load ptr, ptr %.sroa.01.033.us.i, align 8 ; 2 uses
  %.not18.us.i = icmp eq ptr %.sroa.01.0.us.i, %i.bx
  br i1 %.not18.us.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit", label %.lr.ph34.split.us.i

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit": ; preds = %.loopexit.us.i, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit
  %.146.i = phi i64 [ %i.ec, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit ], [ %.5.lcssa.us.i, %.loopexit.us.i ] ; 6 uses
  %i.fd = load ptr, ptr %i.o, align 8
  %i.fe = load ptr, ptr %2, align 8               ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = sdiv exact i64 %i.fh, 12                ; 2 uses
  %.not.i.i182 = icmp ult i64 %.146.i, %i.fi
  br i1 %.not.i.i182, label %bb.z, label %bb.y

bb.y:                                             ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit"
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, i64 noundef %.146.i, i64 noundef %i.fi) #22
          to label %.noexc183 unwind label %.loopexit.split-lp617.loopexit.split-lp

.noexc183:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit"
  %i.fj = getelementptr inbounds nuw [12 x i8], ptr %i.fe, i64 %.146.i ; 2 uses
  %.not.i = icmp eq ptr %.sroa.23.8588, %.sroa.47.16590
  br i1 %.not.i, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.23.8588, ptr noundef nonnull align 4 dereferenceable(12) %i.fj, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.fk = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #24
          to label %.noexc185 unwind label %.loopexit.split-lp617.loopexit ; 3 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fk, ptr noundef nonnull align 4 dereferenceable(12) %i.fj, i64 12, i1 false)
  %.not.i23.i.i = icmp eq ptr %.sroa.47.16590, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc185
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.23.8588, i64 noundef 0) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ab, %.noexc185
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.aa
  %.sroa.0496.17 = phi ptr [ %i.fk, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.23.8588, %bb.aa ] ; 5 uses
  %.sroa.47.17 = phi ptr [ %i.fl, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.47.16590, %bb.aa ] ; 3 uses
  %i.fm = invoke fastcc { <2 x float>, <2 x float> } @"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(40) %10, i64 noundef %.146.i)
          to label %bb.ac unwind label %bb.ak     ; 2 uses

bb.ac:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.fn = extractvalue { <2 x float>, <2 x float> } %i.fm, 0 ; 2 uses
  %i.fo = extractvalue { <2 x float>, <2 x float> } %i.fm, 1 ; 2 uses
  %.not.i.i186 = icmp eq ptr %.sroa.0442.15, %.sroa.39.15
  br i1 %.not.i.i186, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %11 = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %11, ptr %.sroa.0442.15, align 4
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.fp = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24
          to label %.noexc190 unwind label %bb.ak ; 3 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %12 = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %12, ptr %i.fp, align 4
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0442.15, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc190
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0442.15, i64 noundef 0) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ae, %.noexc190
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ad
  %.sroa.0442.16 = phi ptr [ %i.fp, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0442.15, %bb.ad ] ; 4 uses
  %.sroa.39.16 = phi ptr [ %i.fq, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.39.15, %bb.ad ] ; 2 uses
  %.not = icmp eq i64 %.146.i, 0
  %.sroa.05.023.i1216.pre1823 = load ptr, ptr %i.bx, align 8 ; 3 uses
  %.not6.i = icmp eq ptr %.sroa.05.023.i1216.pre1823, %i.bx
  %or.cond = select i1 %.not, i1 true, i1 %.not6.i
  br i1 %or.cond, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit", label %.lr.ph8.i

.loopexit.i:                                      ; preds = %bb.ah, %.lr.ph8.i
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.07.i, align 8 ; 2 uses
  %.not.i191 = icmp eq ptr %.sroa.01.0.i, %i.bx
  br i1 %.not.i191, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit", label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit, %.loopexit.i
  %.sroa.01.07.i = phi ptr [ %.sroa.01.0.i, %.loopexit.i ], [ %.sroa.05.023.i1216.pre1823, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 16 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  %.not9.i = icmp eq i32 %i.fs, 0
  br i1 %.not9.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph8.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 24 ; 2 uses
  %.pre10.i = load ptr, ptr %i.ft, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i
  %i.fu = phi i32 [ %i.fs, %.lr.ph.i ], [ %i.ga, %bb.ah ]
  %i.fv = phi ptr [ %.pre10.i, %.lr.ph.i ], [ %i.gb, %bb.ah ] ; 2 uses
  %.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.gc, %bb.ah ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.04.i ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = zext i32 %i.fx to i64
  %i.fz = icmp eq i64 %.146.i, %i.fy
  br i1 %i.fz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.fw, align 4
  %.pre.i = load ptr, ptr %i.ft, align 8
  %.pre11.i = load i32, ptr %i.fr, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ga = phi i32 [ %i.fu, %bb.af ], [ %.pre11.i, %bb.ag ] ; 2 uses
  %i.gb = phi ptr [ %i.fv, %bb.af ], [ %.pre.i, %bb.ag ]
  %i.gc = add nuw nsw i64 %.04.i, 1               ; 2 uses
  %i.gd = zext i32 %i.ga to i64
  %i.ge = icmp samesign ult i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.af, label %.loopexit.i, !llvm.loop !50

bb.ai:                                            ; preds = %bb.t, %.lr.ph1324
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit361

bb.aj:                                            ; preds = %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %bb.cv, %.loopexit614, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit297
  %.sroa.0496.0 = phi ptr [ %i.dt, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0496.14, %bb.cv ], [ %.sroa.0496.14, %.loopexit614 ], [ %.sroa.0496.14, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit297 ]
  %.sroa.47.0 = phi ptr [ %i.du, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.47.14, %bb.cv ], [ %.sroa.47.14, %.loopexit614 ], [ %.sroa.47.14, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit297 ]
  %.sroa.0473.0 = phi ptr [ null, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0473.2, %bb.cv ], [ %.sroa.0473.2, %.loopexit614 ], [ %.sroa.0473.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit297 ]
  %.sroa.31.0 = phi ptr [ null, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.31.2, %bb.cv ], [ %.sroa.31.2, %.loopexit614 ], [ %.sroa.31.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit297 ]
  %.sroa.0442.0 = phi ptr [ null, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0442.13, %bb.cv ], [ %.sroa.0442.13, %.loopexit614 ], [ %.sroa.0442.13, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit297 ]
  %.sroa.39.0 = phi ptr [ null, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.39.13, %bb.cv ], [ %.sroa.39.13, %.loopexit614 ], [ %.sroa.39.13, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit297 ]
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp617

.loopexit616:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217
  %lpad.loopexit618 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp617

.loopexit.split-lp617.loopexit:                   ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit630 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp617

.loopexit.split-lp617.loopexit.split-lp:          ; preds = %bb.at, %bb.ap, %bb.y
  %.sroa.0496.1.ph.ph = phi ptr [ %.sroa.0496.21218, %bb.at ], [ %.sroa.23.8588, %bb.y ], [ %.sroa.0496.21218, %bb.ap ]
  %.sroa.47.1.ph.ph = phi ptr [ %.sroa.23.01226, %bb.at ], [ %.sroa.47.16590, %bb.y ], [ %.sroa.47.21220, %bb.ap ]
  %.sroa.0442.1.ph.ph = phi ptr [ %.sroa.0442.21221, %bb.at ], [ %.sroa.0442.15, %bb.y ], [ %.sroa.0442.21221, %bb.ap ]
  %.sroa.39.1.ph.ph = phi ptr [ %.sroa.39.21223, %bb.at ], [ %.sroa.39.15, %bb.y ], [ %.sroa.39.21223, %bb.ap ]
  %lpad.loopexit.split-lp631 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp617

bb.ak:                                            ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %.sroa.39.15.lcssa1553 = phi ptr [ %.sroa.0442.15, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.39.15, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ]
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp617

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit": ; preds = %.loopexit.i
  %.sroa.05.023.i1216.pre = load ptr, ptr %i.bx, align 8
  br label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit"

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit": ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit", %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit
  %.sroa.05.023.i1216 = phi ptr [ %.sroa.05.023.i1216.pre, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit" ], [ %.sroa.05.023.i1216.pre1823, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.19.01214 = getelementptr inbounds nuw i8, ptr %.sroa.0442.16, i64 16 ; 2 uses
  %.sroa.23.01215 = getelementptr inbounds nuw i8, ptr %.sroa.0496.17, i64 12 ; 2 uses
  %.not1724.i1217 = icmp eq ptr %.sroa.05.023.i1216, %i.bx
  br i1 %.not1724.i1217, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %.lr.ph26.i.preheader

.lr.ph26.i.preheader:                             ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit", %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261"
  %.sroa.05.023.i1227 = phi ptr [ %.sroa.05.023.i, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.05.023.i1216, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 4 uses
  %.sroa.23.01226 = phi ptr [ %.sroa.23.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.23.01215, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 9 uses
  %.sroa.19.01225 = phi ptr [ %.sroa.19.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.19.01214, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 9 uses
  %.05751224 = phi i64 [ %i.jn, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ 0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 6 uses
  %.sroa.39.21223 = phi ptr [ %.sroa.39.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.39.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 8 uses
  %.sroa.0442.16.pn1222 = phi ptr [ %.0.lcssa.i.i.i.i.i.i242.pn, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.0442.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 3 uses
  %.sroa.0442.21221 = phi ptr [ %.sroa.0442.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.0442.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 14 uses
  %.sroa.47.21220 = phi ptr [ %.sroa.47.18, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.47.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 5 uses
  %.sroa.0496.17.pn1219 = phi ptr [ %.0.lcssa.i.i.i.i.i226.pn, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.0496.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ]
  %.sroa.0496.21218 = phi ptr [ %.sroa.0496.18, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.0496.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 11 uses
  %.sroa.0442.16.pn12223309 = ptrtoaddr ptr %.sroa.0442.16.pn1222 to i64
  br label %.lr.ph26.i

.loopexit20.i:                                    ; preds = %bb.al, %.lr.ph26.i
  %.sroa.05.0.i = load ptr, ptr %.sroa.05.025.i, align 8 ; 2 uses
  %.not17.i = icmp eq ptr %.sroa.05.0.i, %i.bx
  br i1 %.not17.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader, %.loopexit20.i
  %.sroa.05.025.i = phi ptr [ %.sroa.05.0.i, %.loopexit20.i ], [ %.sroa.05.023.i1227, %.lr.ph26.i.preheader ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.05.025.i, i64 16
  %i.gj = load i32, ptr %i.gi, align 8            ; 2 uses
  %i.gk = zext i32 %i.gj to i64
  %.not37.i = icmp eq i32 %i.gj, 0
  br i1 %.not37.i, label %.loopexit20.i, label %.lr.ph.i193

.lr.ph.i193:                                      ; preds = %.lr.ph26.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.05.025.i, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %i.gn = add nuw nsw i64 %.03822.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gn, %i.gk
  br i1 %exitcond.not.i, label %.loopexit20.i, label %bb.am, !llvm.loop !51

bb.am:                                            ; preds = %bb.al, %.lr.ph.i193
  %.03822.i = phi i64 [ 0, %.lr.ph.i193 ], [ %i.gn, %bb.al ] ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.03822.i
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = icmp samesign ult i64 %.05751224, %i.gq
  br i1 %i.gr, label %.lr.ph34.split.i, label %bb.al

.loopexit.i195.loopexit.unr-lcssa:                ; preds = %bb.an
  %lcmp.mod3304.not = icmp eq i64 %xtraiter3302, 0
  br i1 %lcmp.mod3304.not, label %.loopexit.i195, label %.epil.preheader3301

.epil.preheader3301:                              ; preds = %.loopexit.i195.loopexit.unr-lcssa, %.lr.ph29.i
  %.028.i.epil.init = phi i64 [ 0, %.lr.ph29.i ], [ %i.hl, %.loopexit.i195.loopexit.unr-lcssa ]
  %.527.i.epil.init = phi i64 [ %.432.i, %.lr.ph29.i ], [ %.6.i.1, %.loopexit.i195.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod3306 = trunc i32 %i.gx to i1
  call void @llvm.assume(i1 %lcmp.mod3306)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.028.i.epil.init
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = zext i32 %i.gt to i64                   ; 4 uses
  %.not39.i.epil = icmp ugt i64 %.527.i.epil.init, %i.gu
  %.5.mux.i.epil = call i64 @llvm.umin.i64(i64 %.527.i.epil.init, i64 %i.gu)
  %i.gv = icmp samesign ult i64 %.05751224, %i.gu
  %spec.select.i.epil = select i1 %i.gv, i64 %i.gu, i64 %.527.i.epil.init
  %.6.i.epil = select i1 %.not39.i.epil, i64 %spec.select.i.epil, i64 %.5.mux.i.epil
  br label %.loopexit.i195

.loopexit.i195:                                   ; preds = %.epil.preheader3301, %.loopexit.i195.loopexit.unr-lcssa, %.lr.ph34.split.i
  %.5.lcssa.i = phi i64 [ %.432.i, %.lr.ph34.split.i ], [ %.6.i.1, %.loopexit.i195.loopexit.unr-lcssa ], [ %.6.i.epil, %.epil.preheader3301 ] ; 8 uses
  %.sroa.01.0.i196 = load ptr, ptr %.sroa.01.033.i, align 8 ; 2 uses
  %.not18.i = icmp eq ptr %.sroa.01.0.i196, %i.bx
  br i1 %.not18.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212", label %.lr.ph34.split.i

.lr.ph34.split.i:                                 ; preds = %bb.am, %.loopexit.i195
  %.sroa.01.033.i = phi ptr [ %.sroa.01.0.i196, %.loopexit.i195 ], [ %.sroa.05.023.i1227, %bb.am ] ; 3 uses
  %.432.i = phi i64 [ %.5.lcssa.i, %.loopexit.i195 ], [ %i.gq, %bb.am ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 16
  %i.gx = load i32, ptr %i.gw, align 8            ; 4 uses
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  %.not38.i = icmp eq i32 %i.gx, 0
  br i1 %.not38.i, label %.loopexit.i195, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph34.split.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8            ; 3 uses
  %xtraiter3302 = and i64 %i.gy, 1
  %i.hb = icmp eq i32 %i.gx, 1
  br i1 %i.hb, label %.epil.preheader3301, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.lr.ph29.i
  %unroll_iter3307 = and i64 %i.gy, 4294967294
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph29.i.new
  %.028.i = phi i64 [ 0, %.lr.ph29.i.new ], [ %i.hl, %bb.an ] ; 3 uses
  %.527.i = phi i64 [ %.432.i, %.lr.ph29.i.new ], [ %.6.i.1, %bb.an ] ; 3 uses
  %niter3308 = phi i64 [ 0, %.lr.ph29.i.new ], [ %niter3308.next.1, %bb.an ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.028.i
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = zext i32 %i.hd to i64                   ; 4 uses
  %.not39.i = icmp ugt i64 %.527.i, %i.he
  %.5.mux.i = call i64 @llvm.umin.i64(i64 %.527.i, i64 %i.he)
  %i.hf = icmp samesign ult i64 %.05751224, %i.he
  %spec.select.i = select i1 %i.hf, i64 %i.he, i64 %.527.i
  %.6.i = select i1 %.not39.i, i64 %spec.select.i, i64 %.5.mux.i ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.028.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = zext i32 %i.hi to i64                   ; 4 uses
  %.not39.i.1 = icmp ugt i64 %.6.i, %i.hj
  %.5.mux.i.1 = call i64 @llvm.umin.i64(i64 %.6.i, i64 %i.hj)
  %i.hk = icmp samesign ult i64 %.05751224, %i.hj
  %spec.select.i.1 = select i1 %i.hk, i64 %i.hj, i64 %.6.i
  %.6.i.1 = select i1 %.not39.i.1, i64 %spec.select.i.1, i64 %.5.mux.i.1 ; 3 uses
  %i.hl = add nuw nsw i64 %.028.i, 2              ; 2 uses
  %niter3308.next.1 = add i64 %niter3308, 2       ; 2 uses
  %niter3308.ncmp.1 = icmp eq i64 %niter3308.next.1, %unroll_iter3307
  br i1 %niter3308.ncmp.1, label %.loopexit.i195.loopexit.unr-lcssa, label %bb.an, !llvm.loop !48

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212": ; preds = %.loopexit.i195
  %i.hm = icmp eq i64 %.5.lcssa.i, %.05751224
  br i1 %i.hm, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %bb.ao

bb.ao:                                            ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212"
  %i.hn = load ptr, ptr %i.o, align 8
  %i.ho = load ptr, ptr %2, align 8               ; 2 uses
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = sdiv exact i64 %i.hr, 12                ; 2 uses
  %.not.i.i213 = icmp ult i64 %.5.lcssa.i, %i.hs
  br i1 %.not.i.i213, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, i64 noundef %.5.lcssa.i, i64 noundef %i.hs) #22
          to label %.noexc214 unwind label %.loopexit.split-lp617.loopexit.split-lp

.noexc214:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %i.ho, i64 %.5.lcssa.i ; 2 uses
  %.not.i216 = icmp eq ptr %.sroa.23.01226, %.sroa.47.21220
  br i1 %.not.i216, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.23.01226, ptr noundef nonnull align 4 dereferenceable(12) %i.ht, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231

bb.as:                                            ; preds = %bb.aq
  %i.hu = ptrtoint ptr %.sroa.23.01226 to i64
  %i.hv = ptrtoint ptr %.sroa.0496.21218 to i64
  %i.hw = sub i64 %i.hu, %i.hv                    ; 4 uses
  %i.hx = icmp eq i64 %i.hw, 9223372036854775800
  br i1 %i.hx, label %bb.at, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc229 unwind label %.loopexit.split-lp617.loopexit.split-lp

.noexc229:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217: ; preds = %bb.as
  %i.hy = sdiv exact i64 %i.hw, 12                ; 3 uses
  %.sroa.speculated.i.i.i218 = call i64 @llvm.umax.i64(i64 %i.hy, i64 1)
  %i.hz = add nsw i64 %.sroa.speculated.i.i.i218, %i.hy ; 2 uses
  %i.ia = icmp ult i64 %i.hz, %i.hy
  %i.ib = call i64 @llvm.umin.i64(i64 %i.hz, i64 768614336404564650)
  %i.ic = select i1 %i.ia, i64 768614336404564650, i64 %i.ib ; 3 uses
  %.not.i.i.i219 = icmp ne i64 %i.ic, 0
  call void @llvm.assume(i1 %.not.i.i.i219)
  %i.id = mul nuw nsw i64 %i.ic, 12
  %i.ie = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #24
          to label %.noexc230 unwind label %.loopexit616 ; 5 uses

.noexc230:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.if, ptr noundef nonnull align 4 dereferenceable(12) %i.ht, i64 12, i1 false)
  %.not10.i.i.i.i.i220 = icmp eq ptr %.sroa.0496.21218, %.sroa.23.01226
  br i1 %.not10.i.i.i.i.i220, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225, label %.lr.ph.i.i.i.i.i221

.lr.ph.i.i.i.i.i221:                              ; preds = %.noexc230, %.lr.ph.i.i.i.i.i221
  %.012.i.i.i.i.i222 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i221 ], [ %i.ie, %.noexc230 ] ; 2 uses
  %.0911.i.i.i.i.i223 = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i221 ], [ %.sroa.0496.21218, %.noexc230 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i222, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i223, i64 12, i1 false), !alias.scope !80
  %i.ig = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i223, i64 12
  %i.ih = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i222, i64 12 ; 2 uses
  %.not.i.i.i.i.i224 = icmp eq ptr %.0911.i.i.i.i.i223, %.sroa.0496.17.pn1219
  br i1 %.not.i.i.i.i.i224, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225, label %.lr.ph.i.i.i.i.i221, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225: ; preds = %.lr.ph.i.i.i.i.i221, %.noexc230
  %.0.lcssa.i.i.i.i.i226 = phi ptr [ %i.ie, %.noexc230 ], [ %i.ih, %.lr.ph.i.i.i.i.i221 ]
  %.not.i23.i.i227 = icmp eq ptr %.sroa.0496.21218, null
  br i1 %.not.i23.i.i227, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0496.21218, i64 noundef %i.hw) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228: ; preds = %bb.au, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225
  %i.ii = getelementptr inbounds nuw [12 x i8], ptr %i.ie, i64 %i.ic
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228, %bb.ar
  %.sroa.0496.18 = phi ptr [ %i.ie, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228 ], [ %.sroa.0496.21218, %bb.ar ] ; 4 uses
  %.0.lcssa.i.i.i.i.i226.pn = phi ptr [ %.0.lcssa.i.i.i.i.i226, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228 ], [ %.sroa.23.01226, %bb.ar ] ; 2 uses
  %.sroa.47.18 = phi ptr [ %i.ii, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228 ], [ %.sroa.47.21220, %bb.ar ] ; 4 uses
  %i.ij = invoke fastcc { <2 x float>, <2 x float> } @"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(40) %10, i64 noundef %.5.lcssa.i)
          to label %bb.av unwind label %.loopexit621 ; 2 uses

bb.av:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231
  %i.ik = extractvalue { <2 x float>, <2 x float> } %i.ij, 0 ; 2 uses
  %i.il = extractvalue { <2 x float>, <2 x float> } %i.ij, 1 ; 2 uses
  %.not.i.i232 = icmp eq ptr %.sroa.19.01225, %.sroa.39.21223
  br i1 %.not.i.i232, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store <2 x float> %i.ik, ptr %.sroa.19.01225, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0442.16.pn1222, i64 24
  store <2 x float> %i.il, ptr %.sroa.6.0..sroa_idx, align 4
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247

bb.ax:                                            ; preds = %bb.av
  %i.im = ptrtoint ptr %.sroa.19.01225 to i64
  %i.in = ptrtoint ptr %.sroa.0442.21221 to i64   ; 2 uses
  %i.io = sub i64 %i.im, %i.in                    ; 4 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775792
  br i1 %i.ip, label %bb.ay, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc245 unwind label %.loopexit.split-lp622

.noexc245:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233: ; preds = %bb.ax
  %i.iq = ashr exact i64 %i.io, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i234 = call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.ir = add nsw i64 %.sroa.speculated.i.i.i.i234, %i.iq ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.iq
  %i.it = call i64 @llvm.umin.i64(i64 %i.ir, i64 576460752303423487)
  %i.iu = select i1 %i.is, i64 576460752303423487, i64 %i.it ; 3 uses
  %.not.i.i.i.i235 = icmp ne i64 %i.iu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i235)
  %i.iv = shl nuw nsw i64 %i.iu, 4
  %i.iw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #24
          to label %.noexc246 unwind label %.loopexit621 ; 6 uses

.noexc246:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.io
  %13 = shufflevector <2 x float> %i.ik, <2 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %13, ptr %i.ix, align 4
  %.not10.i.i.i.i.i.i236 = icmp eq ptr %.sroa.0442.21221, %.sroa.19.01225
  br i1 %.not10.i.i.i.i.i.i236, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241, label %.lr.ph.i.i.i.i.i.i237.preheader

.lr.ph.i.i.i.i.i.i237.preheader:                  ; preds = %.noexc246
  %i.iy = sub i64 %.sroa.0442.16.pn12223309, %i.in ; 2 uses
  %i.iz = lshr i64 %i.iy, 4
  %i.ja = add nuw nsw i64 %i.iz, 1
  %xtraiter3310 = and i64 %i.ja, 3                ; 2 uses
  %lcmp.mod3311.not = icmp eq i64 %xtraiter3310, 0
  br i1 %lcmp.mod3311.not, label %.lr.ph.i.i.i.i.i.i237.prol.loopexit, label %.lr.ph.i.i.i.i.i.i237.prol

.lr.ph.i.i.i.i.i.i237.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i237.preheader, %.lr.ph.i.i.i.i.i.i237.prol
  %.012.i.i.i.i.i.i238.prol = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i237.prol ], [ %i.iw, %.lr.ph.i.i.i.i.i.i237.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i239.prol = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i.i237.prol ], [ %.sroa.0442.21221, %.lr.ph.i.i.i.i.i.i237.preheader ] ; 2 uses
  %prol.iter3312 = phi i64 [ %prol.iter3312.next, %.lr.ph.i.i.i.i.i.i237.prol ], [ 0, %.lr.ph.i.i.i.i.i.i237.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i238.prol, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i239.prol, i64 16, i1 false), !alias.scope !81
  %i.jb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239.prol, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238.prol, i64 16 ; 3 uses
  %prol.iter3312.next = add i64 %prol.iter3312, 1 ; 2 uses
  %prol.iter3312.cmp.not = icmp eq i64 %prol.iter3312.next, %xtraiter3310
  br i1 %prol.iter3312.cmp.not, label %.lr.ph.i.i.i.i.i.i237.prol.loopexit, label %.lr.ph.i.i.i.i.i.i237.prol, !llvm.loop !58

.lr.ph.i.i.i.i.i.i237.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i237.prol, %.lr.ph.i.i.i.i.i.i237.preheader
  %.lcssa2875.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i237.preheader ], [ %i.jc, %.lr.ph.i.i.i.i.i.i237.prol ]
  %.012.i.i.i.i.i.i238.unr = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i.i237.preheader ], [ %i.jc, %.lr.ph.i.i.i.i.i.i237.prol ]
  %.0911.i.i.i.i.i.i239.unr = phi ptr [ %.sroa.0442.21221, %.lr.ph.i.i.i.i.i.i237.preheader ], [ %i.jb, %.lr.ph.i.i.i.i.i.i237.prol ]
  %i.jd = icmp ult i64 %i.iy, 48
  br i1 %i.jd, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241, label %.lr.ph.i.i.i.i.i.i237

.lr.ph.i.i.i.i.i.i237:                            ; preds = %.lr.ph.i.i.i.i.i.i237.prol.loopexit, %.lr.ph.i.i.i.i.i.i237
  %.012.i.i.i.i.i.i238 = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i237 ], [ %.012.i.i.i.i.i.i238.unr, %.lr.ph.i.i.i.i.i.i237.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i239 = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.i237 ], [ %.0911.i.i.i.i.i.i239.unr, %.lr.ph.i.i.i.i.i.i237.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i238, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i239, i64 16, i1 false), !alias.scope !81
  %i.je = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jf, ptr noundef nonnull align 4 dereferenceable(16) %i.je, i64 16, i1 false), !alias.scope !81
  %i.jg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jh, ptr noundef nonnull align 4 dereferenceable(16) %i.jg, i64 16, i1 false), !alias.scope !81
  %i.ji = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 48 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jj, ptr noundef nonnull align 4 dereferenceable(16) %i.ji, i64 16, i1 false), !alias.scope !81
  %i.jk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 64
  %i.jl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i240.3 = icmp eq ptr %i.ji, %.sroa.0442.16.pn1222
  br i1 %.not.i.i.i.i.i.i240.3, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241, label %.lr.ph.i.i.i.i.i.i237, !llvm.loop !59

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241: ; preds = %.lr.ph.i.i.i.i.i.i237.prol.loopexit, %.lr.ph.i.i.i.i.i.i237, %.noexc246
  %.0.lcssa.i.i.i.i.i.i242 = phi ptr [ %i.iw, %.noexc246 ], [ %.lcssa2875.unr, %.lr.ph.i.i.i.i.i.i237.prol.loopexit ], [ %i.jl, %.lr.ph.i.i.i.i.i.i237 ]
  %.not.i23.i.i.i243 = icmp eq ptr %.sroa.0442.21221, null
  br i1 %.not.i23.i.i.i243, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0442.21221, i64 noundef %i.io) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244: ; preds = %bb.az, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %i.iu
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244, %bb.aw
  %.sroa.0442.17 = phi ptr [ %i.iw, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244 ], [ %.sroa.0442.21221, %bb.aw ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i242.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i242, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244 ], [ %.sroa.19.01225, %bb.aw ] ; 2 uses
  %.sroa.39.17 = phi ptr [ %i.jm, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244 ], [ %.sroa.39.21223, %bb.aw ] ; 2 uses
  %i.jn = add nuw nsw i64 %.05751224, 1           ; 3 uses
  %.not149 = icmp eq i64 %.5.lcssa.i, %i.jn
  %.sroa.05.023.i.pre1825 = load ptr, ptr %i.bx, align 8 ; 3 uses
  %.not6.i249 = icmp eq ptr %.sroa.05.023.i.pre1825, %i.bx
  %or.cond2386 = select i1 %.not149, i1 true, i1 %.not6.i249
  br i1 %or.cond2386, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261", label %.lr.ph8.i250

.lr.ph8.i250:                                     ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247
  %i.jo = trunc nuw i64 %i.jn to i32
  br label %bb.ba

.loopexit.i256:                                   ; preds = %bb.bd, %bb.ba
  %.sroa.01.0.i257 = load ptr, ptr %.sroa.01.07.i251, align 8 ; 2 uses
  %.not.i258 = icmp eq ptr %.sroa.01.0.i257, %i.bx
  br i1 %.not.i258, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261.loopexit", label %bb.ba

bb.ba:                                            ; preds = %.loopexit.i256, %.lr.ph8.i250
  %.sroa.01.07.i251 = phi ptr [ %.sroa.05.023.i.pre1825, %.lr.ph8.i250 ], [ %.sroa.01.0.i257, %.loopexit.i256 ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i251, i64 16 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 8            ; 2 uses
  %.not9.i252 = icmp eq i32 %i.jq, 0
  br i1 %.not9.i252, label %.loopexit.i256, label %.lr.ph.i253

.lr.ph.i253:                                      ; preds = %bb.ba
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i251, i64 24 ; 2 uses
  %.pre10.i254 = load ptr, ptr %i.jr, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %.lr.ph.i253
  %i.js = phi i32 [ %i.jq, %.lr.ph.i253 ], [ %i.jy, %bb.bd ]
  %i.jt = phi ptr [ %.pre10.i254, %.lr.ph.i253 ], [ %i.jz, %bb.bd ] ; 2 uses
  %.04.i255 = phi i64 [ 0, %.lr.ph.i253 ], [ %i.ka, %bb.bd ] ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %.04.i255 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = zext i32 %i.jv to i64
  %i.jx = icmp eq i64 %.5.lcssa.i, %i.jw
  br i1 %i.jx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.jo, ptr %i.ju, align 4
  %.pre.i259 = load ptr, ptr %i.jr, align 8
  %.pre11.i260 = load i32, ptr %i.jp, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jy = phi i32 [ %i.js, %bb.bb ], [ %.pre11.i260, %bb.bc ] ; 2 uses
  %i.jz = phi ptr [ %i.jt, %bb.bb ], [ %.pre.i259, %bb.bc ]
  %i.ka = add nuw nsw i64 %.04.i255, 1            ; 2 uses
  %i.kb = zext i32 %i.jy to i64
  %i.kc = icmp samesign ult i64 %i.ka, %i.kb
  br i1 %i.kc, label %bb.bb, label %.loopexit.i256, !llvm.loop !50

.loopexit621:                                     ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233
  %.sroa.39.21223.lcssa1381 = phi ptr [ %.sroa.39.21223, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231 ], [ %.sroa.19.01225, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233 ]
  %lpad.loopexit623 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp617

.loopexit.split-lp622:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp624 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp617

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261.loopexit": ; preds = %.loopexit.i256
  %.sroa.05.023.i.pre = load ptr, ptr %i.bx, align 8
  br label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261"

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261": ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261.loopexit", %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247
  %.sroa.05.023.i = phi ptr [ %.sroa.05.023.i.pre, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261.loopexit" ], [ %.sroa.05.023.i.pre1825, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247 ] ; 3 uses
  %.sroa.19.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i242.pn, i64 16 ; 2 uses
  %.sroa.23.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i226.pn, i64 12 ; 2 uses
  %.not1724.i = icmp eq ptr %.sroa.05.023.i, %i.bx
  br i1 %.not1724.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %.lr.ph26.i.preheader, !llvm.loop !60

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread": ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212", %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261", %.loopexit20.i, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit"
  %.sroa.0496.2708 = phi ptr [ %.sroa.0496.21218, %.loopexit20.i ], [ %.sroa.0496.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.0496.21218, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.0496.18, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.47.2701 = phi ptr [ %.sroa.47.21220, %.loopexit20.i ], [ %.sroa.47.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.47.21220, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.47.18, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.0442.2694 = phi ptr [ %.sroa.0442.21221, %.loopexit20.i ], [ %.sroa.0442.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.0442.21221, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.0442.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.39.2686 = phi ptr [ %.sroa.39.21223, %.loopexit20.i ], [ %.sroa.39.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.39.21223, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.39.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.19.0678 = phi ptr [ %.sroa.19.01225, %.loopexit20.i ], [ %.sroa.19.01214, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.19.01225, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.19.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.23.0671 = phi ptr [ %.sroa.23.01226, %.loopexit20.i ], [ %.sroa.23.01215, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.23.01226, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.23.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.05.023.i664 = phi ptr [ %.sroa.05.023.i1227, %.loopexit20.i ], [ %.sroa.05.023.i1216, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.05.023.i1227, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.05.023.i, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 3 uses
  %.not5971259 = icmp eq ptr %.sroa.05.023.i664, %i.bx
  br i1 %.not5971259, label %._crit_edge1269, label %.lr.ph1268

._crit_edge1269.loopexit:                         ; preds = %._crit_edge1252
  %.pre = load ptr, ptr %i.bx, align 8
  br label %._crit_edge1269

._crit_edge1269:                                  ; preds = %._crit_edge1269.loopexit, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread"
  %i.kd = phi ptr [ %.sroa.05.023.i664, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.pre, %._crit_edge1269.loopexit ]
  %.sroa.0496.3.lcssa = phi ptr [ %.sroa.0496.2708, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.0496.8, %._crit_edge1269.loopexit ] ; 7 uses
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.0671, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.23.3, %._crit_edge1269.loopexit ] ; 4 uses
  %.sroa.47.3.lcssa = phi ptr [ %.sroa.47.2701, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.47.8, %._crit_edge1269.loopexit ] ; 6 uses
  %.sroa.0442.3.lcssa = phi ptr [ %.sroa.0442.2694, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.0442.7, %._crit_edge1269.loopexit ] ; 6 uses
  %.sroa.19.1.lcssa = phi ptr [ %.sroa.19.0678, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.19.3, %._crit_edge1269.loopexit ]
  %.sroa.39.3.lcssa = phi ptr [ %.sroa.39.2686, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.39.7, %._crit_edge1269.loopexit ] ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8
  %.not150 = icmp eq ptr %i.kf, null
  br i1 %.not150, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit297, label %bb.bu

.lr.ph1268:                                       ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", %._crit_edge1252
  %.sroa.0425.01266 = phi ptr [ %i.mp, %._crit_edge1252 ], [ %.sroa.05.023.i664, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 4 uses
  %.sroa.39.31265 = phi ptr [ %.sroa.39.7, %._crit_edge1252 ], [ %.sroa.39.2686, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.19.11264 = phi ptr [ %.sroa.19.3, %._crit_edge1252 ], [ %.sroa.19.0678, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 3 uses
  %.sroa.0442.31263 = phi ptr [ %.sroa.0442.7, %._crit_edge1252 ], [ %.sroa.0442.2694, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.47.31262 = phi ptr [ %.sroa.47.8, %._crit_edge1252 ], [ %.sroa.47.2701, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.23.11261 = phi ptr [ %.sroa.23.3, %._crit_edge1252 ], [ %.sroa.23.0671, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 4 uses
  %.sroa.0496.31260 = phi ptr [ %.sroa.0496.8, %._crit_edge1252 ], [ %.sroa.0496.2708, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 6 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0425.01266, i64 16 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0425.01266, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8            ; 3 uses
  %.not156 = icmp eq ptr %i.ki, null
  br i1 %.not156, label %._crit_edge1252, label %bb.be

bb.be:                                            ; preds = %.lr.ph1268
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 80
  %i.kk = load i8, ptr %i.kj, align 8, !range !8, !noundef !9
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.km = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr noundef nonnull @.str.6)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  invoke void @__cxa_throw(ptr nonnull %i.km, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.dy unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.km) #21
  br label %.loopexit.split-lp617
end_hunk_0
