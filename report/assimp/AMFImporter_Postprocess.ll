Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AMFImporter_Postprocess?download=true
inline.NumInlined: 1393
inline.NumDeleted: 732
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
  br i1 %.not594, label %._crit_edge, label %.lr.ph1192

._crit_edge1304.loopexit:                         ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit355
  %.pre1785 = load ptr, ptr %9, align 8
  br label %._crit_edge1304

._crit_edge1304:                                  ; preds = %._crit_edge1304.loopexit, %.preheader634
  %i.bj = phi ptr [ %.pre1785, %._crit_edge1304.loopexit ], [ %.sroa.0553.01300, %.preheader634 ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bj, %9
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge1304, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.bk, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i ], [ %i.bj, %._crit_edge1304 ] ; 3 uses
  %i.bk = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.bm, %i.bl
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bn, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i ], [ %i.bm, %.lr.ph.i.i ] ; 3 uses
  %i.bn = load ptr, ptr %.09.i.i.i.i, align 8     ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #23
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 48) #23
  %.not.i.i.i.i = icmp eq ptr %i.bn, %i.bl
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i: ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i, %.lr.ph.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #23
  %.not.i.i = icmp eq ptr %i.bk, %9
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i, %._crit_edge1304
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.br = load ptr, ptr %8, align 8               ; 2 uses
  %.not8.i.i166 = icmp eq ptr %i.br, %8
  br i1 %.not8.i.i166, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i167

.lr.ph.i.i167:                                    ; preds = %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i
  %.09.i.i168 = phi ptr [ %i.bs, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i ], [ %i.br, %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit ] ; 3 uses
  %i.bs = load ptr, ptr %.09.i.i168, align 8      ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.09.i.i168, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i167
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #23
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i: ; preds = %bb.s, %.lr.ph.i.i167
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i168, i64 noundef 48) #23
  %.not.i.i169 = icmp eq ptr %i.bs, %8
  br i1 %.not.i.i169, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i167, !llvm.loop !1

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit: ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i, %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.dp

.lr.ph1303:                                       ; preds = %.preheader634, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit355
  %.sroa.0553.01302 = phi ptr [ %.sroa.0553.0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit355 ], [ %.sroa.0553.01300, %.preheader634 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0553.01302, i64 16 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %3, ptr %10, align 8
  store ptr %i.b, ptr %i.k, align 8
  store ptr %i.a, ptr %i.l, align 8
  store ptr %i.c, ptr %i.m, align 8
  store ptr %2, ptr %i.n, align 8
  %i.bx = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #24
          to label %bb.t unwind label %bb.ai      ; 14 uses

bb.t:                                             ; preds = %.lr.ph1303
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 7 uses
  store i32 0, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  store i32 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 224
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 1272
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 1312
  store ptr null, ptr %i.cd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.ca, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.cb, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cc, i8 0, i64 36, i1 false)
  store i32 4, ptr %i.bx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0553.01302, i64 32
  %i.cf = load i64, ptr %i.ce, align 8            ; 3 uses
  %i.cg = trunc i64 %i.cf to i32
  store i32 %i.cg, ptr %i.bz, align 8
  %i.ch = and i64 %i.cf, 4294967295               ; 5 uses
  %i.ci = shl nuw nsw i64 %i.ch, 4
  %i.cj = or disjoint i64 %i.ci, 8
  %i.ck = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #24
          to label %bb.u unwind label %bb.ai      ; 2 uses

bb.u:                                             ; preds = %bb.t
  store i64 %i.ch, ptr %i.ck, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = icmp eq i64 %i.ch, 0
  br i1 %i.cm, label %.loopexit631, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch
  %i.co = add nuw nsw i64 %i.ch, 1152921504606846975
  %i.cp = and i64 %i.co, 1152921504606846975
  %xtraiter = and i64 %i.cf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.v, %.prol.preheader
  %i.cq = phi ptr [ %i.cs, %.prol.preheader ], [ %i.cl, %bb.v ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.v ]
  store i32 0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr null, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.v
  %.unr = phi ptr [ %i.cl, %bb.v ], [ %i.cs, %.prol.preheader ]
  %i.ct = icmp samesign ult i64 %i.cp, 7
  br i1 %i.ct, label %.loopexit631, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.cu = phi ptr [ %i.dk, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr null, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i32 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr null, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store i32 0, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store ptr null, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store i32 0, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store ptr null, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  store i32 0, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  store ptr null, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  store i32 0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  store ptr null, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  store i32 0, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 104
  store ptr null, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  store i32 0, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 120
  store ptr null, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 128 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cn
  br i1 %i.dl, label %.loopexit631, label %.new

.loopexit631:                                     ; preds = %.prol.loopexit, %.new, %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bx, i64 208 ; 2 uses
  store ptr %i.cl, ptr %i.dm, align 8
  %i.dn = load i32, ptr %i.bz, align 8
  %.fr2320 = freeze i32 %i.dn                     ; 2 uses
  %i.do = mul i32 %.fr2320, 3
  %i.dp = zext i32 %i.do to i64                   ; 4 uses
  %i.dq = shl nuw nsw i64 %i.dp, 1                ; 5 uses
  %.not596 = icmp eq i32 %.fr2320, 0              ; 3 uses
  br i1 %.not596, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %.loopexit631
  %i.dr = mul nuw nsw i64 %i.dp, 24
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #24
          to label %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i unwind label %.loopexit635 ; 3 uses

_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %i.dq ; 2 uses
  %i.du = shl nuw nsw i64 %i.dp, 5
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #24
          to label %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.loopexit635 ; 2 uses

_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dq
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %.loopexit631
  %.sroa.47.15590 = phi ptr [ %i.dt, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %.loopexit631 ] ; 5 uses
  %.sroa.23.8588 = phi ptr [ %i.ds, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %.loopexit631 ] ; 6 uses
  %.sroa.0442.15 = phi ptr [ %i.dv, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %.loopexit631 ] ; 9 uses
  %.sroa.39.15 = phi ptr [ %i.dw, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %.loopexit631 ] ; 5 uses
  %i.dx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %.not183155.i = icmp eq ptr %i.dx, %i.bw
  br i1 %.not183155.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit", label %.lr.ph34.split.us.i

.lr.ph34.split.us.i:                              ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit, %.loopexit.us.i
  %.sroa.01.033.us.i = phi ptr [ %.sroa.01.0.us.i, %.loopexit.us.i ], [ %i.dx, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit ] ; 3 uses
  %.432.us.i = phi i64 [ %.5.lcssa.us.i, %.loopexit.us.i ], [ %i.eb, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.01.033.us.i, i64 16
  %i.ed = load i32, ptr %i.ec, align 8            ; 3 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %.not40.i = icmp eq i32 %i.ed, 0
  br i1 %.not40.i, label %.loopexit.us.i, label %.lr.ph29.us.i

.lr.ph29.us.i:                                    ; preds = %.lr.ph34.split.us.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.01.033.us.i, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8            ; 5 uses
  %xtraiter3196 = and i64 %i.ee, 3                ; 3 uses
  %i.eh = icmp ult i32 %i.ed, 4
  br i1 %i.eh, label %.epil.preheader, label %.lr.ph29.us.i.new

.lr.ph29.us.i.new:                                ; preds = %.lr.ph29.us.i
  %unroll_iter = and i64 %i.ee, 4294967292
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph29.us.i.new
  %.028.us.us.i = phi i64 [ 0, %.lr.ph29.us.i.new ], [ %i.ex, %bb.w ] ; 5 uses
  %.527.us.us.i = phi i64 [ %.432.us.i, %.lr.ph29.us.i.new ], [ %.5.mux.us.us.i.3, %bb.w ]
  %niter = phi i64 [ 0, %.lr.ph29.us.i.new ], [ %niter.next.3, %bb.w ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.028.us.us.i
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = zext i32 %i.ej to i64
  %.5.mux.us.us.i = call i64 @llvm.umin.i64(i64 %.527.us.us.i, i64 %i.ek)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.028.us.us.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = zext i32 %i.en to i64
  %.5.mux.us.us.i.1 = call i64 @llvm.umin.i64(i64 %.5.mux.us.us.i, i64 %i.eo)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.028.us.us.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = zext i32 %i.er to i64
  %.5.mux.us.us.i.2 = call i64 @llvm.umin.i64(i64 %.5.mux.us.us.i.1, i64 %i.es)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.028.us.us.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = zext i32 %i.ev to i64
  %.5.mux.us.us.i.3 = call i64 @llvm.umin.i64(i64 %.5.mux.us.us.i.2, i64 %i.ew) ; 3 uses
  %i.ex = add nuw nsw i64 %.028.us.us.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.us.i.loopexit.unr-lcssa, label %bb.w, !llvm.loop !48

.loopexit.us.i.loopexit.unr-lcssa:                ; preds = %bb.w
  %lcmp.mod3197.not = icmp eq i64 %xtraiter3196, 0
  br i1 %lcmp.mod3197.not, label %.loopexit.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.us.i.loopexit.unr-lcssa, %.lr.ph29.us.i
  %.028.us.us.i.epil.init = phi i64 [ 0, %.lr.ph29.us.i ], [ %i.ex, %.loopexit.us.i.loopexit.unr-lcssa ]
  %.527.us.us.i.epil.init = phi i64 [ %.432.us.i, %.lr.ph29.us.i ], [ %.5.mux.us.us.i.3, %.loopexit.us.i.loopexit.unr-lcssa ]
  %lcmp.mod3199 = icmp ne i64 %xtraiter3196, 0
  call void @llvm.assume(i1 %lcmp.mod3199)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader
  %.028.us.us.i.epil = phi i64 [ %.028.us.us.i.epil.init, %.epil.preheader ], [ %i.fb, %bb.x ] ; 2 uses
  %.527.us.us.i.epil = phi i64 [ %.527.us.us.i.epil.init, %.epil.preheader ], [ %.5.mux.us.us.i.epil, %bb.x ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.x ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.028.us.us.i.epil
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = zext i32 %i.ez to i64
  %.5.mux.us.us.i.epil = call i64 @llvm.umin.i64(i64 %.527.us.us.i.epil, i64 %i.fa) ; 2 uses
  %i.fb = add nuw nsw i64 %.028.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3196
  br i1 %epil.iter.cmp.not, label %.loopexit.us.i, label %bb.x, !llvm.loop !49

.loopexit.us.i:                                   ; preds = %.loopexit.us.i.loopexit.unr-lcssa, %bb.x, %.lr.ph34.split.us.i
  %.5.lcssa.us.i = phi i64 [ %.432.us.i, %.lr.ph34.split.us.i ], [ %.5.mux.us.us.i.3, %.loopexit.us.i.loopexit.unr-lcssa ], [ %.5.mux.us.us.i.epil, %bb.x ] ; 2 uses
  %.sroa.01.0.us.i = load ptr, ptr %.sroa.01.033.us.i, align 8 ; 2 uses
  %.not18.us.i = icmp eq ptr %.sroa.01.0.us.i, %i.bw
  br i1 %.not18.us.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit", label %.lr.ph34.split.us.i

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit": ; preds = %.loopexit.us.i, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit
  %.146.i = phi i64 [ %i.eb, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE7reserveEm.exit ], [ %.5.lcssa.us.i, %.loopexit.us.i ] ; 6 uses
  %i.fc = load ptr, ptr %i.o, align 8
  %i.fd = load ptr, ptr %2, align 8               ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sdiv exact i64 %i.fg, 12                ; 2 uses
  %.not.i.i182 = icmp ult i64 %.146.i, %i.fh
  br i1 %.not.i.i182, label %bb.z, label %bb.y

bb.y:                                             ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit"
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, i64 noundef %.146.i, i64 noundef %i.fh) #22
          to label %.noexc183 unwind label %.loopexit.split-lp622.loopexit.split-lp

.noexc183:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit"
  %i.fi = getelementptr inbounds nuw [12 x i8], ptr %i.fd, i64 %.146.i ; 2 uses
  %.not.i = icmp eq ptr %.sroa.23.8588, %.sroa.47.15590
  br i1 %.not.i, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.23.8588, ptr noundef nonnull align 4 dereferenceable(12) %i.fi, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.fj = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #24
          to label %.noexc185 unwind label %.loopexit.split-lp622.loopexit ; 3 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fj, ptr noundef nonnull align 4 dereferenceable(12) %i.fi, i64 12, i1 false)
  %.not.i23.i.i = icmp eq ptr %.sroa.47.15590, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc185
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.23.8588, i64 noundef 0) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ab, %.noexc185
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.aa
  %.sroa.0496.16 = phi ptr [ %i.fj, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.23.8588, %bb.aa ] ; 5 uses
  %.sroa.47.16 = phi ptr [ %i.fk, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.47.15590, %bb.aa ] ; 3 uses
  %i.fl = invoke fastcc { <2 x float>, <2 x float> } @"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(40) %10, i64 noundef %.146.i)
          to label %bb.ac unwind label %bb.aj     ; 2 uses

bb.ac:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.fm = extractvalue { <2 x float>, <2 x float> } %i.fl, 0 ; 2 uses
  %i.fn = extractvalue { <2 x float>, <2 x float> } %i.fl, 1 ; 2 uses
  %.not.i.i186 = icmp eq ptr %.sroa.0442.15, %.sroa.39.15
  br i1 %.not.i.i186, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %11 = shufflevector <2 x float> %i.fm, <2 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %11, ptr %.sroa.0442.15, align 4
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.fo = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24
          to label %.noexc190 unwind label %bb.aj ; 3 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %12 = shufflevector <2 x float> %i.fm, <2 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %12, ptr %i.fo, align 4
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0442.15, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc190
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0442.15, i64 noundef 0) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ae, %.noexc190
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ad
  %.sroa.0442.16 = phi ptr [ %i.fo, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0442.15, %bb.ad ] ; 4 uses
  %.sroa.39.16 = phi ptr [ %i.fp, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.39.15, %bb.ad ] ; 2 uses
  %.not = icmp eq i64 %.146.i, 0
  %.sroa.05.023.i1195.pre1781 = load ptr, ptr %i.bw, align 8 ; 3 uses
  %.not6.i = icmp eq ptr %.sroa.05.023.i1195.pre1781, %i.bw
  %or.cond = select i1 %.not, i1 true, i1 %.not6.i
  br i1 %or.cond, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit", label %.lr.ph8.i

.loopexit.i:                                      ; preds = %bb.ah, %.lr.ph8.i
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.07.i, align 8 ; 2 uses
  %.not.i191 = icmp eq ptr %.sroa.01.0.i, %i.bw
  br i1 %.not.i191, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit", label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit, %.loopexit.i
  %.sroa.01.07.i = phi ptr [ %.sroa.01.0.i, %.loopexit.i ], [ %.sroa.05.023.i1195.pre1781, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 16 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8            ; 2 uses
  %.not9.i = icmp eq i32 %i.fr, 0
  br i1 %.not9.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph8.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 24 ; 2 uses
  %.pre10.i = load ptr, ptr %i.fs, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i
  %i.ft = phi i32 [ %i.fr, %.lr.ph.i ], [ %i.fz, %bb.ah ]
  %i.fu = phi ptr [ %.pre10.i, %.lr.ph.i ], [ %i.ga, %bb.ah ] ; 2 uses
  %.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.gb, %bb.ah ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.04.i ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = zext i32 %i.fw to i64
  %i.fy = icmp eq i64 %.146.i, %i.fx
  br i1 %i.fy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.fv, align 4
  %.pre.i = load ptr, ptr %i.fs, align 8
  %.pre11.i = load i32, ptr %i.fq, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fz = phi i32 [ %i.ft, %bb.af ], [ %.pre11.i, %bb.ag ] ; 2 uses
  %i.ga = phi ptr [ %i.fu, %bb.af ], [ %.pre.i, %bb.ag ]
  %i.gb = add nuw nsw i64 %.04.i, 1               ; 2 uses
  %i.gc = zext i32 %i.fz to i64
  %i.gd = icmp samesign ult i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.af, label %.loopexit.i, !llvm.loop !50

bb.ai:                                            ; preds = %bb.t, %.lr.ph1303
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit361

.loopexit621:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217
  %lpad.loopexit623 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp622

.loopexit.split-lp622.loopexit:                   ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit646 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp622

.loopexit.split-lp622.loopexit.split-lp:          ; preds = %bb.as, %bb.ao, %bb.y
  %.sroa.0496.0.ph.ph = phi ptr [ %.sroa.0496.11197, %bb.as ], [ %.sroa.23.8588, %bb.y ], [ %.sroa.0496.11197, %bb.ao ]
  %.sroa.47.0.ph.ph = phi ptr [ %.sroa.23.01205, %bb.as ], [ %.sroa.47.15590, %bb.y ], [ %.sroa.47.11199, %bb.ao ]
  %.sroa.0442.0.ph.ph = phi ptr [ %.sroa.0442.11200, %bb.as ], [ %.sroa.0442.15, %bb.y ], [ %.sroa.0442.11200, %bb.ao ]
  %.sroa.39.0.ph.ph = phi ptr [ %.sroa.39.11202, %bb.as ], [ %.sroa.39.15, %bb.y ], [ %.sroa.39.11202, %bb.ao ]
  %lpad.loopexit.split-lp647 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp622

bb.aj:                                            ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %.sroa.39.15.lcssa1535 = phi ptr [ %.sroa.0442.15, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.39.15, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ]
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp622

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit": ; preds = %.loopexit.i
  %.sroa.05.023.i1195.pre = load ptr, ptr %i.bw, align 8
  br label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit"

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit": ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit", %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit
  %.sroa.05.023.i1195 = phi ptr [ %.sroa.05.023.i1195.pre, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit" ], [ %.sroa.05.023.i1195.pre1781, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.19.01193 = getelementptr inbounds nuw i8, ptr %.sroa.0442.16, i64 16 ; 2 uses
  %.sroa.23.01194 = getelementptr inbounds nuw i8, ptr %.sroa.0496.16, i64 12 ; 2 uses
  %.not1724.i1196 = icmp eq ptr %.sroa.05.023.i1195, %i.bw
  br i1 %.not1724.i1196, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %.lr.ph26.i.preheader

.lr.ph26.i.preheader:                             ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit", %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261"
  %.sroa.05.023.i1206 = phi ptr [ %.sroa.05.023.i, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.05.023.i1195, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 4 uses
  %.sroa.23.01205 = phi ptr [ %.sroa.23.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.23.01194, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 9 uses
  %.sroa.19.01204 = phi ptr [ %.sroa.19.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.19.01193, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 9 uses
  %.05751203 = phi i64 [ %i.jl, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ 0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 6 uses
  %.sroa.39.11202 = phi ptr [ %.sroa.39.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.39.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 8 uses
  %.sroa.0442.16.pn1201 = phi ptr [ %.0.lcssa.i.i.i.i.i.i242.pn, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.0442.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 3 uses
  %.sroa.0442.11200 = phi ptr [ %.sroa.0442.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.0442.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 14 uses
  %.sroa.47.11199 = phi ptr [ %.sroa.47.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.47.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 5 uses
  %.sroa.0496.16.pn1198 = phi ptr [ %.0.lcssa.i.i.i.i.i226.pn, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.0496.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ]
  %.sroa.0496.11197 = phi ptr [ %.sroa.0496.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ], [ %.sroa.0496.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 11 uses
  %.sroa.0442.16.pn12013208 = ptrtoaddr ptr %.sroa.0442.16.pn1201 to i64
  br label %.lr.ph26.i

.loopexit20.i:                                    ; preds = %bb.ak, %.lr.ph26.i
  %.sroa.05.0.i = load ptr, ptr %.sroa.05.025.i, align 8 ; 2 uses
  %.not17.i = icmp eq ptr %.sroa.05.0.i, %i.bw
  br i1 %.not17.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader, %.loopexit20.i
  %.sroa.05.025.i = phi ptr [ %.sroa.05.0.i, %.loopexit20.i ], [ %.sroa.05.023.i1206, %.lr.ph26.i.preheader ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.05.025.i, i64 16
  %i.gh = load i32, ptr %i.gg, align 8            ; 2 uses
  %i.gi = zext i32 %i.gh to i64
  %.not37.i = icmp eq i32 %i.gh, 0
  br i1 %.not37.i, label %.loopexit20.i, label %.lr.ph.i193

.lr.ph.i193:                                      ; preds = %.lr.ph26.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.05.025.i, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %i.gl = add nuw nsw i64 %.03822.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gl, %i.gi
  br i1 %exitcond.not.i, label %.loopexit20.i, label %bb.al, !llvm.loop !51

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i193
  %.03822.i = phi i64 [ 0, %.lr.ph.i193 ], [ %i.gl, %bb.ak ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.03822.i
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = zext i32 %i.gn to i64                   ; 2 uses
  %i.gp = icmp samesign ult i64 %.05751203, %i.go
  br i1 %i.gp, label %.lr.ph34.split.i, label %bb.ak

.loopexit.i195.loopexit.unr-lcssa:                ; preds = %bb.am
  %lcmp.mod3203.not = icmp eq i64 %xtraiter3201, 0
  br i1 %lcmp.mod3203.not, label %.loopexit.i195, label %.epil.preheader3200

.epil.preheader3200:                              ; preds = %.loopexit.i195.loopexit.unr-lcssa, %.lr.ph29.i
  %.028.i.epil.init = phi i64 [ 0, %.lr.ph29.i ], [ %i.hj, %.loopexit.i195.loopexit.unr-lcssa ]
  %.527.i.epil.init = phi i64 [ %.432.i, %.lr.ph29.i ], [ %.6.i.1, %.loopexit.i195.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod3205 = trunc i32 %i.gv to i1
  call void @llvm.assume(i1 %lcmp.mod3205)
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.028.i.epil.init
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = zext i32 %i.gr to i64                   ; 4 uses
  %.not39.i.epil = icmp ugt i64 %.527.i.epil.init, %i.gs
  %.5.mux.i.epil = call i64 @llvm.umin.i64(i64 %.527.i.epil.init, i64 %i.gs)
  %i.gt = icmp samesign ult i64 %.05751203, %i.gs
  %spec.select.i.epil = select i1 %i.gt, i64 %i.gs, i64 %.527.i.epil.init
  %.6.i.epil = select i1 %.not39.i.epil, i64 %spec.select.i.epil, i64 %.5.mux.i.epil
  br label %.loopexit.i195

.loopexit.i195:                                   ; preds = %.epil.preheader3200, %.loopexit.i195.loopexit.unr-lcssa, %.lr.ph34.split.i
  %.5.lcssa.i = phi i64 [ %.432.i, %.lr.ph34.split.i ], [ %.6.i.1, %.loopexit.i195.loopexit.unr-lcssa ], [ %.6.i.epil, %.epil.preheader3200 ] ; 8 uses
  %.sroa.01.0.i196 = load ptr, ptr %.sroa.01.033.i, align 8 ; 2 uses
  %.not18.i = icmp eq ptr %.sroa.01.0.i196, %i.bw
  br i1 %.not18.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212", label %.lr.ph34.split.i

.lr.ph34.split.i:                                 ; preds = %bb.al, %.loopexit.i195
  %.sroa.01.033.i = phi ptr [ %.sroa.01.0.i196, %.loopexit.i195 ], [ %.sroa.05.023.i1206, %bb.al ] ; 3 uses
  %.432.i = phi i64 [ %.5.lcssa.i, %.loopexit.i195 ], [ %i.go, %bb.al ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 16
  %i.gv = load i32, ptr %i.gu, align 8            ; 4 uses
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %.not38.i = icmp eq i32 %i.gv, 0
  br i1 %.not38.i, label %.loopexit.i195, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph34.split.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8            ; 3 uses
  %xtraiter3201 = and i64 %i.gw, 1
  %i.gz = icmp eq i32 %i.gv, 1
  br i1 %i.gz, label %.epil.preheader3200, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.lr.ph29.i
  %unroll_iter3206 = and i64 %i.gw, 4294967294
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph29.i.new
  %.028.i = phi i64 [ 0, %.lr.ph29.i.new ], [ %i.hj, %bb.am ] ; 3 uses
  %.527.i = phi i64 [ %.432.i, %.lr.ph29.i.new ], [ %.6.i.1, %bb.am ] ; 3 uses
  %niter3207 = phi i64 [ 0, %.lr.ph29.i.new ], [ %niter3207.next.1, %bb.am ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.028.i
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = zext i32 %i.hb to i64                   ; 4 uses
  %.not39.i = icmp ugt i64 %.527.i, %i.hc
  %.5.mux.i = call i64 @llvm.umin.i64(i64 %.527.i, i64 %i.hc)
  %i.hd = icmp samesign ult i64 %.05751203, %i.hc
  %spec.select.i = select i1 %i.hd, i64 %i.hc, i64 %.527.i
  %.6.i = select i1 %.not39.i, i64 %spec.select.i, i64 %.5.mux.i ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.028.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = zext i32 %i.hg to i64                   ; 4 uses
  %.not39.i.1 = icmp ugt i64 %.6.i, %i.hh
  %.5.mux.i.1 = call i64 @llvm.umin.i64(i64 %.6.i, i64 %i.hh)
  %i.hi = icmp samesign ult i64 %.05751203, %i.hh
  %spec.select.i.1 = select i1 %i.hi, i64 %i.hh, i64 %.6.i
  %.6.i.1 = select i1 %.not39.i.1, i64 %spec.select.i.1, i64 %.5.mux.i.1 ; 3 uses
  %i.hj = add nuw nsw i64 %.028.i, 2              ; 2 uses
  %niter3207.next.1 = add i64 %niter3207, 2       ; 2 uses
  %niter3207.ncmp.1 = icmp eq i64 %niter3207.next.1, %unroll_iter3206
  br i1 %niter3207.ncmp.1, label %.loopexit.i195.loopexit.unr-lcssa, label %bb.am, !llvm.loop !48

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212": ; preds = %.loopexit.i195
  %i.hk = icmp eq i64 %.5.lcssa.i, %.05751203
  br i1 %i.hk, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %bb.an

bb.an:                                            ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212"
  %i.hl = load ptr, ptr %i.o, align 8
  %i.hm = load ptr, ptr %2, align 8               ; 2 uses
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = sdiv exact i64 %i.hp, 12                ; 2 uses
  %.not.i.i213 = icmp ult i64 %.5.lcssa.i, %i.hq
  br i1 %.not.i.i213, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, i64 noundef %.5.lcssa.i, i64 noundef %i.hq) #22
          to label %.noexc214 unwind label %.loopexit.split-lp622.loopexit.split-lp

.noexc214:                                        ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %i.hm, i64 %.5.lcssa.i ; 2 uses
  %.not.i216 = icmp eq ptr %.sroa.23.01205, %.sroa.47.11199
  br i1 %.not.i216, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.23.01205, ptr noundef nonnull align 4 dereferenceable(12) %i.hr, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231

bb.ar:                                            ; preds = %bb.ap
  %i.hs = ptrtoint ptr %.sroa.23.01205 to i64
  %i.ht = ptrtoint ptr %.sroa.0496.11197 to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 4 uses
  %i.hv = icmp eq i64 %i.hu, 9223372036854775800
  br i1 %i.hv, label %bb.as, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc229 unwind label %.loopexit.split-lp622.loopexit.split-lp

.noexc229:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217: ; preds = %bb.ar
  %i.hw = sdiv exact i64 %i.hu, 12                ; 3 uses
  %.sroa.speculated.i.i.i218 = call i64 @llvm.umax.i64(i64 %i.hw, i64 1)
  %i.hx = add nsw i64 %.sroa.speculated.i.i.i218, %i.hw ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.hw
  %i.hz = call i64 @llvm.umin.i64(i64 %i.hx, i64 768614336404564650)
  %i.ia = select i1 %i.hy, i64 768614336404564650, i64 %i.hz ; 3 uses
  %.not.i.i.i219 = icmp ne i64 %i.ia, 0
  call void @llvm.assume(i1 %.not.i.i.i219)
  %i.ib = mul nuw nsw i64 %i.ia, 12
  %i.ic = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #24
          to label %.noexc230 unwind label %.loopexit621 ; 5 uses

.noexc230:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.id, ptr noundef nonnull align 4 dereferenceable(12) %i.hr, i64 12, i1 false)
  %.not10.i.i.i.i.i220 = icmp eq ptr %.sroa.0496.11197, %.sroa.23.01205
  br i1 %.not10.i.i.i.i.i220, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225, label %.lr.ph.i.i.i.i.i221

.lr.ph.i.i.i.i.i221:                              ; preds = %.noexc230, %.lr.ph.i.i.i.i.i221
  %.012.i.i.i.i.i222 = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i221 ], [ %i.ic, %.noexc230 ] ; 2 uses
  %.0911.i.i.i.i.i223 = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i221 ], [ %.sroa.0496.11197, %.noexc230 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i222, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i223, i64 12, i1 false), !alias.scope !80
  %i.ie = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i223, i64 12
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i222, i64 12 ; 2 uses
  %.not.i.i.i.i.i224 = icmp eq ptr %.0911.i.i.i.i.i223, %.sroa.0496.16.pn1198
  br i1 %.not.i.i.i.i.i224, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225, label %.lr.ph.i.i.i.i.i221, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225: ; preds = %.lr.ph.i.i.i.i.i221, %.noexc230
  %.0.lcssa.i.i.i.i.i226 = phi ptr [ %i.ic, %.noexc230 ], [ %i.if, %.lr.ph.i.i.i.i.i221 ]
  %.not.i23.i.i227 = icmp eq ptr %.sroa.0496.11197, null
  br i1 %.not.i23.i.i227, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0496.11197, i64 noundef %i.hu) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228: ; preds = %bb.at, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225
  %i.ig = getelementptr inbounds nuw [12 x i8], ptr %i.ic, i64 %i.ia
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228, %bb.aq
  %.sroa.0496.17 = phi ptr [ %i.ic, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228 ], [ %.sroa.0496.11197, %bb.aq ] ; 4 uses
  %.0.lcssa.i.i.i.i.i226.pn = phi ptr [ %.0.lcssa.i.i.i.i.i226, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228 ], [ %.sroa.23.01205, %bb.aq ] ; 2 uses
  %.sroa.47.17 = phi ptr [ %i.ig, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228 ], [ %.sroa.47.11199, %bb.aq ] ; 4 uses
  %i.ih = invoke fastcc { <2 x float>, <2 x float> } @"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(40) %10, i64 noundef %.5.lcssa.i)
          to label %bb.au unwind label %.loopexit626 ; 2 uses

bb.au:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231
  %i.ii = extractvalue { <2 x float>, <2 x float> } %i.ih, 0 ; 2 uses
  %i.ij = extractvalue { <2 x float>, <2 x float> } %i.ih, 1 ; 2 uses
  %.not.i.i232 = icmp eq ptr %.sroa.19.01204, %.sroa.39.11202
  br i1 %.not.i.i232, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store <2 x float> %i.ii, ptr %.sroa.19.01204, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0442.16.pn1201, i64 24
  store <2 x float> %i.ij, ptr %.sroa.6.0..sroa_idx, align 4
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247

bb.aw:                                            ; preds = %bb.au
  %i.ik = ptrtoint ptr %.sroa.19.01204 to i64
  %i.il = ptrtoint ptr %.sroa.0442.11200 to i64   ; 2 uses
  %i.im = sub i64 %i.ik, %i.il                    ; 4 uses
  %i.in = icmp eq i64 %i.im, 9223372036854775792
  br i1 %i.in, label %bb.ax, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc245 unwind label %.loopexit.split-lp627

.noexc245:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233: ; preds = %bb.aw
  %i.io = ashr exact i64 %i.im, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i234 = call i64 @llvm.umax.i64(i64 %i.io, i64 1)
  %i.ip = add nsw i64 %.sroa.speculated.i.i.i.i234, %i.io ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.io
  %i.ir = call i64 @llvm.umin.i64(i64 %i.ip, i64 576460752303423487)
  %i.is = select i1 %i.iq, i64 576460752303423487, i64 %i.ir ; 3 uses
  %.not.i.i.i.i235 = icmp ne i64 %i.is, 0
  call void @llvm.assume(i1 %.not.i.i.i.i235)
  %i.it = shl nuw nsw i64 %i.is, 4
  %i.iu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.it) #24
          to label %.noexc246 unwind label %.loopexit626 ; 6 uses

.noexc246:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.im
  %13 = shufflevector <2 x float> %i.ii, <2 x float> %i.ij, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %13, ptr %i.iv, align 4
  %.not10.i.i.i.i.i.i236 = icmp eq ptr %.sroa.0442.11200, %.sroa.19.01204
  br i1 %.not10.i.i.i.i.i.i236, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241, label %.lr.ph.i.i.i.i.i.i237.preheader

.lr.ph.i.i.i.i.i.i237.preheader:                  ; preds = %.noexc246
  %i.iw = sub i64 %.sroa.0442.16.pn12013208, %i.il ; 2 uses
  %i.ix = lshr i64 %i.iw, 4
  %i.iy = add nuw nsw i64 %i.ix, 1
  %xtraiter3209 = and i64 %i.iy, 3                ; 2 uses
  %lcmp.mod3210.not = icmp eq i64 %xtraiter3209, 0
  br i1 %lcmp.mod3210.not, label %.lr.ph.i.i.i.i.i.i237.prol.loopexit, label %.lr.ph.i.i.i.i.i.i237.prol

.lr.ph.i.i.i.i.i.i237.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i237.preheader, %.lr.ph.i.i.i.i.i.i237.prol
  %.012.i.i.i.i.i.i238.prol = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i.i237.prol ], [ %i.iu, %.lr.ph.i.i.i.i.i.i237.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i239.prol = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i.i237.prol ], [ %.sroa.0442.11200, %.lr.ph.i.i.i.i.i.i237.preheader ] ; 2 uses
  %prol.iter3211 = phi i64 [ %prol.iter3211.next, %.lr.ph.i.i.i.i.i.i237.prol ], [ 0, %.lr.ph.i.i.i.i.i.i237.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i238.prol, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i239.prol, i64 16, i1 false), !alias.scope !81
  %i.iz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239.prol, i64 16 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238.prol, i64 16 ; 3 uses
  %prol.iter3211.next = add i64 %prol.iter3211, 1 ; 2 uses
  %prol.iter3211.cmp.not = icmp eq i64 %prol.iter3211.next, %xtraiter3209
  br i1 %prol.iter3211.cmp.not, label %.lr.ph.i.i.i.i.i.i237.prol.loopexit, label %.lr.ph.i.i.i.i.i.i237.prol, !llvm.loop !58

.lr.ph.i.i.i.i.i.i237.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i237.prol, %.lr.ph.i.i.i.i.i.i237.preheader
  %.lcssa2794.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i237.preheader ], [ %i.ja, %.lr.ph.i.i.i.i.i.i237.prol ]
  %.012.i.i.i.i.i.i238.unr = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i237.preheader ], [ %i.ja, %.lr.ph.i.i.i.i.i.i237.prol ]
  %.0911.i.i.i.i.i.i239.unr = phi ptr [ %.sroa.0442.11200, %.lr.ph.i.i.i.i.i.i237.preheader ], [ %i.iz, %.lr.ph.i.i.i.i.i.i237.prol ]
  %i.jb = icmp ult i64 %i.iw, 48
  br i1 %i.jb, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241, label %.lr.ph.i.i.i.i.i.i237

.lr.ph.i.i.i.i.i.i237:                            ; preds = %.lr.ph.i.i.i.i.i.i237.prol.loopexit, %.lr.ph.i.i.i.i.i.i237
  %.012.i.i.i.i.i.i238 = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i237 ], [ %.012.i.i.i.i.i.i238.unr, %.lr.ph.i.i.i.i.i.i237.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i239 = phi ptr [ %i.ji, %.lr.ph.i.i.i.i.i.i237 ], [ %.0911.i.i.i.i.i.i239.unr, %.lr.ph.i.i.i.i.i.i237.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i238, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i239, i64 16, i1 false), !alias.scope !81
  %i.jc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jd, ptr noundef nonnull align 4 dereferenceable(16) %i.jc, i64 16, i1 false), !alias.scope !81
  %i.je = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jf, ptr noundef nonnull align 4 dereferenceable(16) %i.je, i64 16, i1 false), !alias.scope !81
  %i.jg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 48 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jh, ptr noundef nonnull align 4 dereferenceable(16) %i.jg, i64 16, i1 false), !alias.scope !81
  %i.ji = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 64
  %i.jj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i240.3 = icmp eq ptr %i.jg, %.sroa.0442.16.pn1201
  br i1 %.not.i.i.i.i.i.i240.3, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241, label %.lr.ph.i.i.i.i.i.i237, !llvm.loop !59

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241: ; preds = %.lr.ph.i.i.i.i.i.i237.prol.loopexit, %.lr.ph.i.i.i.i.i.i237, %.noexc246
  %.0.lcssa.i.i.i.i.i.i242 = phi ptr [ %i.iu, %.noexc246 ], [ %.lcssa2794.unr, %.lr.ph.i.i.i.i.i.i237.prol.loopexit ], [ %i.jj, %.lr.ph.i.i.i.i.i.i237 ]
  %.not.i23.i.i.i243 = icmp eq ptr %.sroa.0442.11200, null
  br i1 %.not.i23.i.i.i243, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0442.11200, i64 noundef %i.im) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244: ; preds = %bb.ay, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %i.is
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244, %bb.av
  %.sroa.0442.17 = phi ptr [ %i.iu, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244 ], [ %.sroa.0442.11200, %bb.av ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i242.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i242, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244 ], [ %.sroa.19.01204, %bb.av ] ; 2 uses
  %.sroa.39.17 = phi ptr [ %i.jk, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244 ], [ %.sroa.39.11202, %bb.av ] ; 2 uses
  %i.jl = add nuw nsw i64 %.05751203, 1           ; 3 uses
  %.not149 = icmp eq i64 %.5.lcssa.i, %i.jl
  %.sroa.05.023.i.pre1783 = load ptr, ptr %i.bw, align 8 ; 3 uses
  %.not6.i249 = icmp eq ptr %.sroa.05.023.i.pre1783, %i.bw
  %or.cond2318 = select i1 %.not149, i1 true, i1 %.not6.i249
  br i1 %or.cond2318, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261", label %.lr.ph8.i250

.lr.ph8.i250:                                     ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247
  %i.jm = trunc nuw i64 %i.jl to i32
  br label %bb.az

.loopexit.i256:                                   ; preds = %bb.bc, %bb.az
  %.sroa.01.0.i257 = load ptr, ptr %.sroa.01.07.i251, align 8 ; 2 uses
  %.not.i258 = icmp eq ptr %.sroa.01.0.i257, %i.bw
  br i1 %.not.i258, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261.loopexit", label %bb.az

bb.az:                                            ; preds = %.loopexit.i256, %.lr.ph8.i250
  %.sroa.01.07.i251 = phi ptr [ %.sroa.05.023.i.pre1783, %.lr.ph8.i250 ], [ %.sroa.01.0.i257, %.loopexit.i256 ] ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i251, i64 16 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 8            ; 2 uses
  %.not9.i252 = icmp eq i32 %i.jo, 0
  br i1 %.not9.i252, label %.loopexit.i256, label %.lr.ph.i253

.lr.ph.i253:                                      ; preds = %bb.az
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i251, i64 24 ; 2 uses
  %.pre10.i254 = load ptr, ptr %i.jp, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %.lr.ph.i253
  %i.jq = phi i32 [ %i.jo, %.lr.ph.i253 ], [ %i.jw, %bb.bc ]
  %i.jr = phi ptr [ %.pre10.i254, %.lr.ph.i253 ], [ %i.jx, %bb.bc ] ; 2 uses
  %.04.i255 = phi i64 [ 0, %.lr.ph.i253 ], [ %i.jy, %bb.bc ] ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.04.i255 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = zext i32 %i.jt to i64
  %i.jv = icmp eq i64 %.5.lcssa.i, %i.ju
  br i1 %i.jv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.jm, ptr %i.js, align 4
  %.pre.i259 = load ptr, ptr %i.jp, align 8
  %.pre11.i260 = load i32, ptr %i.jn, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.jw = phi i32 [ %i.jq, %bb.ba ], [ %.pre11.i260, %bb.bb ] ; 2 uses
  %i.jx = phi ptr [ %i.jr, %bb.ba ], [ %.pre.i259, %bb.bb ]
  %i.jy = add nuw nsw i64 %.04.i255, 1            ; 2 uses
  %i.jz = zext i32 %i.jw to i64
  %i.ka = icmp samesign ult i64 %i.jy, %i.jz
  br i1 %i.ka, label %bb.ba, label %.loopexit.i256, !llvm.loop !50

.loopexit626:                                     ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233
  %.sroa.39.11202.lcssa1365 = phi ptr [ %.sroa.39.11202, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231 ], [ %.sroa.19.01204, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233 ]
  %lpad.loopexit628 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp622

.loopexit.split-lp627:                            ; preds = %bb.ax
  %lpad.loopexit.split-lp629 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp622

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261.loopexit": ; preds = %.loopexit.i256
  %.sroa.05.023.i.pre = load ptr, ptr %i.bw, align 8
  br label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261"

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261": ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261.loopexit", %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247
  %.sroa.05.023.i = phi ptr [ %.sroa.05.023.i.pre, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261.loopexit" ], [ %.sroa.05.023.i.pre1783, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247 ] ; 3 uses
  %.sroa.19.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i242.pn, i64 16 ; 2 uses
  %.sroa.23.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i226.pn, i64 12 ; 2 uses
  %.not1724.i = icmp eq ptr %.sroa.05.023.i, %i.bw
  br i1 %.not1724.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %.lr.ph26.i.preheader, !llvm.loop !60

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread": ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212", %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261", %.loopexit20.i, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit"
  %.sroa.0496.1715 = phi ptr [ %.sroa.0496.11197, %.loopexit20.i ], [ %.sroa.0496.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.0496.11197, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.0496.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.47.1708 = phi ptr [ %.sroa.47.11199, %.loopexit20.i ], [ %.sroa.47.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.47.11199, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.47.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.0442.1701 = phi ptr [ %.sroa.0442.11200, %.loopexit20.i ], [ %.sroa.0442.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.0442.11200, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.0442.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.39.1693 = phi ptr [ %.sroa.39.11202, %.loopexit20.i ], [ %.sroa.39.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.39.11202, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.39.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.19.0685 = phi ptr [ %.sroa.19.01204, %.loopexit20.i ], [ %.sroa.19.01193, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.19.01204, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.19.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.23.0678 = phi ptr [ %.sroa.23.01205, %.loopexit20.i ], [ %.sroa.23.01194, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.23.01205, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.23.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 2 uses
  %.sroa.05.023.i671 = phi ptr [ %.sroa.05.023.i1206, %.loopexit20.i ], [ %.sroa.05.023.i1195, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.05.023.i1206, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.05.023.i, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit261" ] ; 3 uses
  %.not5971238 = icmp eq ptr %.sroa.05.023.i671, %i.bw
  br i1 %.not5971238, label %._crit_edge1248, label %.lr.ph1247

._crit_edge1248.loopexit:                         ; preds = %._crit_edge1231
  %.pre = load ptr, ptr %i.bw, align 8
  br label %._crit_edge1248

._crit_edge1248:                                  ; preds = %._crit_edge1248.loopexit, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread"
  %i.kb = phi ptr [ %.sroa.05.023.i671, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.pre, %._crit_edge1248.loopexit ]
  %.sroa.0496.2.lcssa = phi ptr [ %.sroa.0496.1715, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.0496.7, %._crit_edge1248.loopexit ] ; 7 uses
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.0678, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.23.3, %._crit_edge1248.loopexit ] ; 4 uses
  %.sroa.47.2.lcssa = phi ptr [ %.sroa.47.1708, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.47.7, %._crit_edge1248.loopexit ] ; 6 uses
  %.sroa.0442.2.lcssa = phi ptr [ %.sroa.0442.1701, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.0442.7, %._crit_edge1248.loopexit ] ; 6 uses
  %.sroa.19.1.lcssa = phi ptr [ %.sroa.19.0685, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.19.3, %._crit_edge1248.loopexit ]
  %.sroa.39.2.lcssa = phi ptr [ %.sroa.39.1693, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.39.7, %._crit_edge1248.loopexit ] ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  %i.kd = load ptr, ptr %i.kc, align 8
  %.not150 = icmp eq ptr %i.kd, null
  br i1 %.not150, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit297, label %bb.bs

.lr.ph1247:                                       ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", %._crit_edge1231
  %.sroa.0425.01245 = phi ptr [ %i.mm, %._crit_edge1231 ], [ %.sroa.05.023.i671, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 4 uses
  %.sroa.39.21244 = phi ptr [ %.sroa.39.7, %._crit_edge1231 ], [ %.sroa.39.1693, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.19.11243 = phi ptr [ %.sroa.19.3, %._crit_edge1231 ], [ %.sroa.19.0685, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 3 uses
  %.sroa.0442.21242 = phi ptr [ %.sroa.0442.7, %._crit_edge1231 ], [ %.sroa.0442.1701, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.47.21241 = phi ptr [ %.sroa.47.7, %._crit_edge1231 ], [ %.sroa.47.1708, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.23.11240 = phi ptr [ %.sroa.23.3, %._crit_edge1231 ], [ %.sroa.23.0678, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 4 uses
  %.sroa.0496.21239 = phi ptr [ %.sroa.0496.7, %._crit_edge1231 ], [ %.sroa.0496.1715, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0425.01245, i64 16 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0425.01245, i64 32
  %i.kg = load ptr, ptr %i.kf, align 8            ; 3 uses
  %.not156 = icmp eq ptr %i.kg, null
  br i1 %.not156, label %._crit_edge1231, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph1247
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 80
  %i.ki = load i8, ptr %i.kh, align 8, !range !8, !noundef !9
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.kk = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, ptr noundef nonnull @.str.6)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.kk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.du unwind label %.loopexit.split-lp606

bb.bg:                                            ; preds = %bb.be
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kk) #21
  br label %.loopexit.split-lp622
end_hunk_0
