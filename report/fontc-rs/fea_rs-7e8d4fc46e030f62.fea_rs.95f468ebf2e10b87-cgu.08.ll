Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.08?download=true
inline.NumInlined: 1325
inline.NumDeleted: 760
begin_hunk_0_@_RINvMNtNtCs6WnK4nVnpEz_11write_fonts6tables4postNtB3_4Post6new_v2INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEENvYB2g_INtNtB1a_7convert5AsRefeE6as_refEECscScJTt9VrQp_6fea_rs:bb.a
  %i.ag = lshr i64 %i.af, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = load i64, ptr %i.u, align 8, !alias.scope !80, !noundef !5 ; 2 uses
  %i.aj = load ptr, ptr %i.i, align 8, !alias.scope !80, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.noexc43
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc43 ], [ %i.bc, %bb.j ]
  %.pn.i.i = phi i64 [ %i.af, %.noexc43 ], [ %i.bd, %bb.j ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.ai     ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.am, align 1, !noalias !81 ; 2 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.al
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.sroa.06.0.i31.i.i = phi i16 [ %i.bb, %bb.i ], [ %i.ao, %bb.h ] ; 3 uses
  %i.ap = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = add i64 %.sroa.01.0.i.i.i, %i.aq
  %i.as = and i64 %i.ar, %i.ai
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds [24 x i8], ptr %i.aj, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -24
  %i.aw = invoke noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentReE10equivalentCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %.lr.ph.i.i
  br i1 %i.aw, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRetNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECscScJTt9VrQp_6fea_rs.exit, label %bb.i, !prof !6

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %bb.j, label %select.unfold, !prof !7

bb.i:                                             ; preds = %.noexc44
  %i.ba = add i16 %.sroa.06.0.i31.i.i, -1
  %i.bb = and i16 %i.ba, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bc = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.bd = add i64 %.sroa.01.0.i.i.i, %i.bc
  br label %bb.h

.thread:                                          ; preds = %bb.e, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectE8push_mutCscScJTt9VrQp_6fea_rs.exit, %bb.c
  %i.be = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.bf = icmp ult i64 %i.be, 4611686018427387904
  call void @llvm.assume(i1 %i.bf)
  %i.bg = trunc i64 %i.be to i16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 65536, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i16 0, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bj, i8 0, i64 28, i1 false)
  store i64 -1, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 -1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 131072, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bn, i8 0, i64 28, i1 false)
  store i16 1, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i16 %i.bg, ptr %i.bp, align 2
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRetEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit46 unwind label %bb.k

bb.k:                                             ; preds = %.thread
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRetEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit48 unwind label %bb.m

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit46: ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRetEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit50 unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit48: ; preds = %bb.k, %bb.l
  %.pn = phi { ptr, i32 } [ %i.br, %bb.l ], [ %i.bq, %bb.k ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post4PostECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit71 unwind label %bb.m

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit46
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit48

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit50: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post4PostECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.ai, %bb.k, %.body, %bb.ah, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit48, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRetNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECscScJTt9VrQp_6fea_rs.exit: ; preds = %.noexc44
  %i.bt = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.bu = load i16, ptr %i.bt, align 2, !noundef !5 ; 2 uses
  %i.bv = load i64, ptr %i.k, align 8, !alias.scope !82, !noundef !5 ; 3 uses
  %i.bw = load i64, ptr %i.g, align 8, !range !4, !alias.scope !82, !noundef !5
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectE8push_mutCscScJTt9VrQp_6fea_rs.exit

bb.n:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRetNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECscScJTt9VrQp_6fea_rs.exit
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs6WnK4nVnpEz_11write_fonts(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #25
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectE8push_mutCscScJTt9VrQp_6fea_rs.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.f
  %i.by = load i64, ptr %i.v, align 8, !alias.scope !83, !noundef !5
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %select.unfold80, label %bb.o

bb.o:                                             ; preds = %select.unfold
  %i.ca = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneReECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.415.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc65:                                         ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.cb = lshr i64 %i.ca, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i8
  %i.cd = load i64, ptr %i.w, align 8, !alias.scope !86, !noundef !5 ; 2 uses
  %i.ce = load ptr, ptr %i.e, align 8, !alias.scope !86, !nonnull !5, !noundef !5 ; 2 uses
  %i.cf = insertelement <16 x i8> poison, i8 %i.cc, i64 0
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.noexc65
  %.sroa.9.0.i.i.i52 = phi i64 [ 0, %.noexc65 ], [ %i.cx, %bb.r ]
  %.pn.i.i53 = phi i64 [ %i.ca, %.noexc65 ], [ %i.cy, %bb.r ]
  %.sroa.01.0.i.i.i54 = and i64 %.pn.i.i53, %i.cd ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.01.0.i.i.i54
  %.sroa.0.0.copyload.i24.i.i55 = load <16 x i8>, ptr %i.ch, align 1, !noalias !87 ; 2 uses
  %i.ci = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i55, %i.cg
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  %.not.i.not30.i.i56 = icmp eq i16 %i.cj, 0
  br i1 %.not.i.not30.i.i56, label %._crit_edge.i.i60, label %.lr.ph.i.i57

.lr.ph.i.i57:                                     ; preds = %bb.p, %bb.q
  %.sroa.06.0.i31.i.i58 = phi i16 [ %i.cw, %bb.q ], [ %i.cj, %bb.p ] ; 3 uses
  %i.ck = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i58, i1 true)
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = add i64 %.sroa.01.0.i.i.i54, %i.cl
  %i.cn = and i64 %i.cm, %i.cd
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds [24 x i8], ptr %i.ce, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -24
  %i.cr = invoke noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentReE10equivalentCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %.lr.ph.i.i57
  br i1 %i.cr, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRetNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECscScJTt9VrQp_6fea_rs.exit67, label %bb.q, !prof !6

._crit_edge.i.i60:                                ; preds = %bb.q, %bb.p
  %i.cs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i55, splat (i8 -1)
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = icmp eq i16 %i.ct, 0
  br i1 %i.cu, label %bb.r, label %select.unfold80, !prof !7

bb.q:                                             ; preds = %.noexc66
  %i.cv = add i16 %.sroa.06.0.i31.i.i58, -1
  %i.cw = and i16 %i.cv, %.sroa.06.0.i31.i.i58    ; 2 uses
  %.not.i.not.i.i59 = icmp eq i16 %i.cw, 0
  br i1 %.not.i.not.i.i59, label %._crit_edge.i.i60, label %.lr.ph.i.i57

bb.r:                                             ; preds = %._crit_edge.i.i60
  %i.cx = add i64 %.sroa.9.0.i.i.i52, 16          ; 2 uses
  %i.cy = add i64 %.sroa.01.0.i.i.i54, %i.cx
  br label %bb.p

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRetNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECscScJTt9VrQp_6fea_rs.exit67: ; preds = %.noexc66
  %i.cz = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %i.da = load i16, ptr %i.cz, align 2, !noundef !5
  br label %bb.ae

select.unfold80:                                  ; preds = %._crit_edge.i.i60, %select.unfold
  %i.db = load i64, ptr %i.m, align 8, !noundef !5 ; 3 uses
  %i.dc = icmp ult i64 %i.db, 384307168202282326
  call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp samesign ugt i64 %i.db, 65277
  %i.de = trunc nuw nsw i64 %i.db to i32
  %i.df = shl nuw i32 %i.de, 16
  %i.dg = add i32 %i.df, 16908800
  %.sroa.028.0.insert.insert = select i1 %i.dd, i32 513, i32 %i.dg ; 2 uses
  %i.dh = trunc i32 %.sroa.028.0.insert.insert to i1
  br i1 %i.dh, label %bb.s, label %bb.t, !prof !7

bb.s:                                             ; preds = %select.unfold80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88
  store i8 2, ptr %i.a, align 1, !noalias !88
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %select.unfold80
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.028.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16 ; 2 uses
  %i.di = invoke { i16, i16 } @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapRetNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac, i16 noundef %.sroa.5.0.extract.trunc.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.dj = load i64, ptr %i.b, align 8, !range !8, !noundef !5
  %i.dk = trunc nuw i64 %i.dj to i1
  %i.dl = load i64, ptr %i.x, align 8, !range !9, !noundef !5 ; 3 uses
  br i1 %i.dk, label %bb.w, label %bb.x, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.dm = load i64, ptr %i.y, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dl, i64 %i.dm) #29
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %i.dn = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.do = icmp ule i64 %i.ac, %i.dl
  call void @llvm.assume(i1 %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not35 = icmp eq i64 %i.ac, 0
  br i1 %.not35, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.ac, %bb.x
  store i64 %i.dl, ptr %i.d, align 8
  store ptr %i.dn, ptr %.sroa.421.0..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.522.0..sroa_idx, align 8
  %i.dp = load i64, ptr %i.m, align 8, !alias.scope !89, !noundef !5 ; 3 uses
  %i.dq = load i64, ptr %i.f, align 8, !range !4, !alias.scope !89, !noundef !5
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringE8grow_oneCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ad unwind label %bb.aa, !noalias !90

bb.aa:                                            ; preds = %bb.z
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #26
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ac:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull align 1 %i.ab, i64 %i.ac, i1 false)
  br label %bb.y

bb.ad:                                            ; preds = %bb.z, %bb.y
  %i.du = load ptr, ptr %i.l, align 8, !alias.scope !89, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.dw = add i64 %i.dp, 1
  store i64 %i.dw, ptr %i.m, align 8, !alias.scope !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRetNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECscScJTt9VrQp_6fea_rs.exit67
  %.sroa.08.0 = phi i16 [ %i.da, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRetNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECscScJTt9VrQp_6fea_rs.exit67 ], [ %.sroa.5.0.extract.trunc.i, %bb.ad ] ; 2 uses
  %i.dx = load i64, ptr %i.k, align 8, !alias.scope !91, !noundef !5 ; 3 uses
  %i.dy = load i64, ptr %i.g, align 8, !range !4, !alias.scope !91, !noundef !5
  %i.dz = icmp eq i64 %i.dx, %i.dy
  br i1 %i.dz, label %bb.af, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectE8push_mutCscScJTt9VrQp_6fea_rs.exit

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs6WnK4nVnpEz_11write_fonts(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #25
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectE8push_mutCscScJTt9VrQp_6fea_rs.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.w
  unreachable

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectE8push_mutCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.ae, %bb.af, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRetNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECscScJTt9VrQp_6fea_rs.exit, %bb.n
  %.sink123 = phi i64 [ %i.bv, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRetNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECscScJTt9VrQp_6fea_rs.exit ], [ %i.bv, %bb.n ], [ %i.dx, %bb.af ], [ %i.dx, %bb.ae ] ; 2 uses
  %.sroa.08.0.sink = phi i16 [ %i.bu, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRetNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECscScJTt9VrQp_6fea_rs.exit ], [ %i.bu, %bb.n ], [ %.sroa.08.0, %bb.af ], [ %.sroa.08.0, %bb.ae ]
  %i.ea = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %.sink123
  store i16 %.sroa.08.0.sink, ptr %i.eb, align 2
  %storemerge = add i64 %.sink123, 1
  store i64 %storemerge, ptr %i.k, align 8
  %i.ec = icmp eq ptr %i.z, %2
  br i1 %i.ec, label %.thread, label %bb.d

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VectEECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #26
          to label %bb.ai unwind label %bb.m

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRetEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit71 unwind label %bb.m

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit71: ; preds = %bb.ai, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit48
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRetEECscScJTt9VrQp_6fea_rs.exit48 ], [ %.pn36.pn, %bb.ai ]
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs7_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB6_10AllLookups11splice_gposINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1o_5slice4iter4IterTNtB6_8LookupIdNtB6_14PositionLookupEENCNvMs1_NtB8_14feature_writerNtB3e_8MergeCtx13finalize_gposs0_0EEBa_(ptr noalias nofree noundef align 8 dereferenceable(320) %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [88 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 20 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2o_5slice4iter4IterTNtBW_8LookupIdBU_EENCNvMs1_NtBY_14feature_writerNtB3W_8MergeCtx13finalize_gposs0_0EE9from_iterB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull %2, ptr noundef %3)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 3 uses
  %i.m = icmp ult i64 %i.l, 230584300921369396
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !114
  invoke void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEEBL_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %1, i64 noundef %1)
          to label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupE6spliceINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEBw_EBM_.exit unwind label %bb.c, !noalias !115

bb.b:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !112
  unreachable

common.resume:                                    ; preds = %bb.r, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupEEB1o_.exit.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupEEB1o_.exit.i ], [ %i.p, %bb.c ], [ %i.av, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #26
          to label %common.resume unwind label %bb.b, !noalias !112

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupE6spliceINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEBw_EBM_.exit: ; preds = %bb.a
  %.sroa.03.0.copyload.i = load i64, ptr %i.j, align 8, !alias.scope !113
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !113, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %.sroa.44.0.copyload.i, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !116
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 7 uses
  store ptr %.sroa.44.0.copyload.i, ptr %i.r, align 8, !alias.scope !112
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !112
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !112
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !114
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !120, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !120 ; 2 uses
  %i.u = icmp eq ptr %.promoted.i.i.i, %i.t
  br i1 %i.u, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1Q_3ops9try_traitINtB2T_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1I_8for_each4callBK_INvNtB1Q_3mem4dropBK_EE0E0B3f_EBQ_.exit.i.i, label %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBV_.exit.lr.ph.i.i.i

_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBV_.exit.lr.ph.i.i.i: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupE6spliceINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEBw_EBM_.exit
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i

_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i: ; preds = %.noexc.i, %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBV_.exit.lr.ph.i.i.i
  %i.v = phi ptr [ %.promoted.i.i.i, %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBV_.exit.lr.ph.i.i.i ], [ %i.w, %.noexc.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 3 uses
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.v, align 8, !noalias !120 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -1
  br i1 %.not.i.i.i, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1Q_3ops9try_traitINtB2T_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1I_8for_each4callBK_INvNtB1Q_3mem4dropBK_EE0E0B3f_EBQ_.exit.i.i, label %bb.d
end_hunk_0
