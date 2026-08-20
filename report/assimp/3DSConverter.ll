inline.NumInlined: 961
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter15ConvertMaterialERNS_4D3DS8MaterialER10aiMaterial:bb.a

bb.n:                                             ; preds = %bb.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.i
  %.0 = phi i32 [ 9, %bb.i ], [ %i.bq, %bb.j ], [ 2, %bb.l ], [ 4, %bb.n ], [ 8, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 %.0, ptr %i.c, align 4
  %i.bs = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bu = load i64, ptr %i.bt, align 8
  %.not = icmp eq i64 %i.bu, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.bv, i32 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bx = load i64, ptr %i.bw, align 8
  %.not58 = icmp eq i64 %i.bx, 0
  br i1 %.not58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.by, i32 noundef 2)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ca = load i64, ptr %i.bz, align 8
  %.not59 = icmp eq i64 %i.ca, 0
  br i1 %.not59, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.cb, i32 noundef 8)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.cd = load i64, ptr %i.cc, align 8
  %.not60 = icmp eq i64 %i.cd, 0
  br i1 %.not60, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ce, i32 noundef 4)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.cg = load i64, ptr %i.cf, align 8
  %.not61 = icmp eq i64 %i.cg, 0
  br i1 %.not61, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ch, i32 noundef 5)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.cj = load i64, ptr %i.ci, align 8
  %.not62 = icmp eq i64 %i.cj, 0
  br i1 %.not62, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 528
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ck, i32 noundef 7)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.cm = load i64, ptr %i.cl, align 8
  %.not63 = icmp eq i64 %i.cm, 0
  br i1 %.not63, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.cn, i32 noundef 11)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.co = load i64, ptr %i.ai, align 8            ; 5 uses
  %.not64 = icmp eq i64 %i.co, 0
  br i1 %.not64, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %6, i8 0, i64 1028, i1 false)
  %i.cp = icmp ugt i64 %i.co, 1023
  br i1 %i.cp, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = trunc nuw nsw i64 %i.co to i32
  store i32 %i.cq, ptr %6, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.cs = load ptr, ptr %i.ah, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr align 1 %i.cs, i64 %i.co, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  store i8 0, ptr %i.ct, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ad, %bb.ae
  %i.cu = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.af

bb.af:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter13ConvertMeshesEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.aiString, align 4           ; 10 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %i.k = shl nsw i64 %i.j, 1                      ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.l, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #27
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not138 = icmp eq ptr %i.e, %i.f
  br i1 %.not138, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %2, i8 0, i64 1028, i1 false)
  br label %._crit_edge215

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %bb.b
  %i.m = shl nsw i64 %i.j, 4
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  %.pre247 = load ptr, ptr %i.d, align 8
  %i.p = icmp eq ptr %.pre, %.pre247
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %2, i8 0, i64 1028, i1 false)
  br i1 %i.p, label %._crit_edge215, label %.lr.ph214

.lr.ph214:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 5
  br label %bb.c

._crit_edge215.loopexit:                          ; preds = %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit
  %i.s = icmp eq i32 %.148.lcssa, 0
  br label %._crit_edge215

._crit_edge215:                                   ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread, %._crit_edge215.loopexit, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %.sroa.19.0.lcssa = phi ptr [ %i.o, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ], [ %.sroa.19.1.lcssa, %._crit_edge215.loopexit ], [ null, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread ] ; 3 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.n, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ], [ %.sroa.12.1.lcssa, %._crit_edge215.loopexit ], [ null, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread ]
  %.sroa.0120.0.lcssa = phi ptr [ %i.n, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ], [ %.sroa.0120.1.lcssa, %._crit_edge215.loopexit ], [ null, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread ] ; 6 uses
  %.047.lcssa = phi i1 [ true, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ], [ %i.s, %._crit_edge215.loopexit ], [ true, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread ]
  %i.t = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.u = ptrtoint ptr %.sroa.0120.0.lcssa to i64  ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 %i.x, ptr %i.y, align 8
  %i.z = and i64 %i.v, 34359738360                ; 2 uses
  %i.aa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #28
          to label %bb.aq unwind label %bb.ar     ; 2 uses

bb.c:                                             ; preds = %.lr.ph214, %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit
  %i.ab = phi ptr [ %i.b, %.lr.ph214 ], [ %i.do, %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  %.046213 = phi i32 [ 0, %.lr.ph214 ], [ %i.bi, %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit ] ; 4 uses
  %.047212 = phi i32 [ 0, %.lr.ph214 ], [ %.148.lcssa, %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  %.sroa.0120.0211 = phi ptr [ %i.n, %.lr.ph214 ], [ %.sroa.0120.1.lcssa, %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit ] ; 5 uses
  %.sroa.12.0210 = phi ptr [ %i.n, %.lr.ph214 ], [ %.sroa.12.1.lcssa, %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  %.sroa.19.0209 = phi ptr [ %i.o, %.lr.ph214 ], [ %.sroa.19.1.lcssa, %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit ] ; 5 uses
  %.sroa.0109.0208 = phi ptr [ %.pre, %.lr.ph214 ], [ %i.dp, %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %.fr273 = freeze i64 %i.ah
  %i.ai = sdiv i64 %.fr273, 696                   ; 3 uses
  %i.aj = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 24) ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  %i.al = extractvalue { i64, i1 } %i.aj, 0
  %i.am = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.al, i64 8) ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1
  %i.ao = or i1 %i.ak, %i.an
  %i.ap = extractvalue { i64, i1 } %i.am, 0
  %i.aq = select i1 %i.ao, i64 -1, i64 %i.ap
  %i.ar = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #28
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %bb.c
  store i64 %i.ai, ptr %i.ar, align 16
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 2 uses
  %i.at = icmp eq ptr %i.ad, %i.ae
  br i1 %i.at, label %.loopexit151, label %.loopexit151.loopexit

.loopexit151.loopexit:                            ; preds = %bb.d
  %4 = mul nsw i64 %i.ai, 24
  %5 = add nsw i64 %4, -24                        ; 2 uses
  %6 = urem i64 %5, 24
  %7 = sub nuw nsw i64 %5, %6
  %8 = add nsw i64 %7, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %8, i1 false)
  br label %.loopexit151

.loopexit151:                                     ; preds = %.loopexit151.loopexit, %bb.d
  store ptr %i.as, ptr %3, align 8
  %i.au = icmp slt i32 %.046213, 0
  br i1 %i.au, label %bb.e, label %.lr.ph.i.i.preheader

bb.e:                                             ; preds = %.loopexit151
  store i8 45, ptr %i.q, align 4
  %i.av = sub nsw i32 0, %.046213
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e, %.loopexit151
  %.13051.i.i.ph = phi i32 [ 1, %.loopexit151 ], [ 2, %bb.e ]
  %.13350.i.i.ph = phi i32 [ %.046213, %.loopexit151 ], [ %i.av, %bb.e ]
  %.13749.i.i.ph = phi ptr [ %i.q, %.loopexit151 ], [ %i.r, %bb.e ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.g
  %.02653.i.i = phi i1 [ %or.cond3.i.i, %bb.g ], [ false, %.lr.ph.i.i.preheader ]
  %.02752.i.i = phi i32 [ %i.bf, %bb.g ], [ 1000000000, %.lr.ph.i.i.preheader ] ; 5 uses
  %.13051.i.i = phi i32 [ %.231.i.i, %bb.g ], [ %.13051.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.13350.i.i = phi i32 [ %.234.i.i, %bb.g ], [ %.13350.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.13749.i.i = phi ptr [ %.238.i.i, %bb.g ], [ %.13749.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.aw = sdiv i32 %.13350.i.i, %.02752.i.i       ; 3 uses
  %.recomposed = srem i32 %.13350.i.i, %.02752.i.i
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = icmp eq i32 %.02752.i.i, 1              ; 2 uses
  %i.az = or i1 %i.ay, %i.ax
  %or.cond3.i.i = select i1 %.02653.i.i, i1 true, i1 %i.az ; 2 uses
  br i1 %or.cond3.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ba = trunc i32 %i.aw to i8
  %i.bb = add i8 %i.ba, 48
  %i.bc = getelementptr inbounds nuw i8, ptr %.13749.i.i, i64 1 ; 2 uses
  store i8 %i.bb, ptr %.13749.i.i, align 1
  %i.bd = add nuw nsw i32 %.13051.i.i, 1          ; 2 uses
  %i.be = mul i32 %i.aw, %.02752.i.i              ; 0 uses
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.238.i.i = phi ptr [ %i.bc, %bb.f ], [ %.13749.i.i, %.lr.ph.i.i ] ; 2 uses
  %.234.i.i = phi i32 [ %.recomposed, %bb.f ], [ %.13350.i.i, %.lr.ph.i.i ]
  %.231.i.i = phi i32 [ %i.bd, %bb.f ], [ %.13051.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bf = sdiv i32 %.02752.i.i, 10
  %i.bg = icmp ult i32 %.231.i.i, 1024
  br i1 %i.bg, label %.lr.ph.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.440.i.i = phi ptr [ %.238.i.i, %bb.g ], [ %i.bc, %bb.f ]
  %.4.i.i = phi i32 [ %.231.i.i, %bb.g ], [ %i.bd, %bb.f ]
  store i8 0, ptr %.440.i.i, align 1
  %i.bh = add i32 %.4.i.i, -1
  store i32 %i.bh, ptr %2, align 4
  %i.bi = add i32 %.046213, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0109.0208, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0109.0208, i64 136 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %.not140190 = icmp eq ptr %i.bk, %i.bm
  %.pre251.pre = load ptr, ptr %3, align 8        ; 5 uses
  br i1 %.not140190, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.h
  %i.bn = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.bn, align 8
  %.not224 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not224, label %._crit_edge, label %.lr.ph203

.lr.ph203:                                        ; preds = %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0109.0208, i64 104 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0109.0208, i64 112 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0109.0208, i64 24 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0109.0208, i64 48 ; 3 uses
  br label %bb.q

bb.i:                                             ; preds = %bb.c
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.lr.ph:                                           ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.sroa.0103.0192 = phi ptr [ %i.cv, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.bk, %bb.h ] ; 2 uses
  %.0132191 = phi i32 [ %i.cw, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ 0, %bb.h ] ; 3 uses
  %i.bw = load i32, ptr %.sroa.0103.0192, align 4
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %.pre251.pre, i64 %i.bx ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %.not.i = icmp eq ptr %i.ca, %i.cc
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  store i32 %.0132191, ptr %i.ca, align 4
  %i.cd = load ptr, ptr %i.bz, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store ptr %i.ce, ptr %i.bz, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.k:                                             ; preds = %.lr.ph
  %i.cf = load ptr, ptr %i.by, align 8            ; 4 uses
  %i.cg = ptrtoint ptr %i.ca to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 6 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775804
  br i1 %i.cj, label %bb.l, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #27
          to label %.noexc75 unwind label %.loopexit.split-lp147

.noexc75:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ck = ashr exact i64 %i.ci, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 2305843009213693951)
  %i.co = select i1 %i.cm, i64 2305843009213693951, i64 %i.cn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cp = shl nuw nsw i64 %i.co, 2
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #28
          to label %.noexc76 unwind label %.loopexit146 ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.ci ; 2 uses
  store i32 %.0132191, ptr %i.cr, align 4
  %i.cs = icmp sgt i64 %i.ci, 0
  br i1 %i.cs, label %bb.m, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc76
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 4 %i.cf, i64 %i.ci, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc76
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %.not.i17.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ci) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.cq, ptr %i.by, align 8
  store ptr %i.ct, ptr %i.bz, align 8
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.cu, ptr %i.cb, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0103.0192, i64 4 ; 2 uses
  %i.cw = add i32 %.0132191, 1
  %i.cx = load ptr, ptr %i.bl, align 8
  %.not140 = icmp eq ptr %i.cv, %i.cx
  br i1 %.not140, label %.preheader, label %.lr.ph, !llvm.loop !14

.loopexit146:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit148 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp147:                            ; preds = %bb.l
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.cy = phi ptr [ %i.bn, %.preheader ], [ %i.lk, %.loopexit ]
  %i.cz = phi ptr [ %.pre251.pre, %.preheader ], [ %i.lf, %.loopexit ] ; 4 uses
  %.sroa.19.1.lcssa = phi ptr [ %.sroa.19.0209, %.preheader ], [ %.sroa.19.3, %.loopexit ] ; 2 uses
  %.sroa.12.1.lcssa = phi ptr [ %.sroa.12.0210, %.preheader ], [ %.sroa.12.2, %.loopexit ] ; 2 uses
  %.sroa.0120.1.lcssa = phi ptr [ %.sroa.0120.0211, %.preheader ], [ %.sroa.0120.3, %.loopexit ] ; 2 uses
  %.148.lcssa = phi i32 [ %.047212, %.preheader ], [ %.2, %.loopexit ] ; 2 uses
  %.not.i77 = icmp eq ptr %i.cz, null
  br i1 %.not.i77, label %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  %.idx.i.i = mul i64 %i.db, 24                   ; 2 uses
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %_ZNKSt14default_deleteIA_St6vectorIjSaIjEEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.o
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.de = phi ptr [ %i.df, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i ], [ %i.dd, %.preheader.preheader.i.i ] ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -24 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dg, null
end_hunk_0
