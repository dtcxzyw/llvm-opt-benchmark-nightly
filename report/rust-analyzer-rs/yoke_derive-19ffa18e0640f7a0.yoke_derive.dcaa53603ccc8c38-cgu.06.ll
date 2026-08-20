inline.NumInlined: 106
inline.NumDeleted: 58
begin_hunk_0_@_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECsiWAYywJt434_11yoke_derive:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  %.sroa.0.0.copyload.i14.i = load <2 x i64>, ptr %i.bv, align 1, !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store <2 x i64> %.sroa.0.0.copyload.i14.i, ptr %i.p, align 16
  invoke void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsiWAYywJt434_11yoke_derive(ptr nonnull sret([16 x i8]) align 16 %i.q, ptr nonnull align 16 %i.p) #17
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CsiWAYywJt434_11yoke_derive.exit
  %i.bw = load <16 x i8>, ptr %i.q, align 16
  %i.bx = icmp slt <16 x i8> %i.bw, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not.i15.i = icmp eq i16 %i.by, 0
  br i1 %.not.i15.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc13, %.noexc11
  %.sroa.0.0.lcssa.i = phi i64 [ %i.bt, %.noexc11 ], [ %i.cp, %.noexc13 ]
  %.lcssa.i = phi i16 [ %i.by, %.noexc11 ], [ %i.cu, %.noexc13 ]
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = add i64 %.sroa.0.0.lcssa.i, %i.ca
  %i.cc = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8 ; 2 uses
  %i.cd = and i64 %i.cb, %i.cc                    ; 2 uses
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %bb.g, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCsiWAYywJt434_11yoke_derive.exit

bb.g:                                             ; preds = %._crit_edge.i
  %.val6.i.i = load <2 x i64>, ptr %.val3.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store <2 x i64> %.val6.i.i, ptr %i.n, align 16
  invoke void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsiWAYywJt434_11yoke_derive(ptr nonnull sret([16 x i8]) align 16 %i.o, ptr nonnull align 16 %i.n) #17
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.g
  %i.ch = load <16 x i8>, ptr %i.o, align 16
  %i.ci = icmp slt <16 x i8> %i.ch, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not.i5.i = icmp eq i16 %i.cj, 0
  %i.ck = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cj, i1 true)
  %i.cl = zext nneg i16 %i.ck to i64
  %.sroa.3.0.i6.i = select i1 %.not.i5.i, i64 undef, i64 %i.cl
  %.pre66 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.pre67 = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCsiWAYywJt434_11yoke_derive.exit

.lr.ph.i:                                         ; preds = %.noexc11, %.noexc13
  %.sroa.0.017.i = phi i64 [ %i.cp, %.noexc13 ], [ %i.bt, %.noexc11 ]
  %.sroa.5.016.i = phi i64 [ %i.cn, %.noexc13 ], [ 0, %.noexc11 ]
  %i.cm = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %i.cn = add i64 %.sroa.5.016.i, 16              ; 2 uses
  %i.co = add i64 %i.cn, %.sroa.0.017.i
  %i.cp = and i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %i.cr, align 1, !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store <2 x i64> %.sroa.0.0.copyload.i.i, ptr %i.p, align 16
  invoke void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsiWAYywJt434_11yoke_derive(ptr nonnull sret([16 x i8]) align 16 %i.q, ptr nonnull align 16 %i.p) #17
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %.lr.ph.i
  %i.cs = load <16 x i8>, ptr %i.q, align 16
  %i.ct = icmp slt <16 x i8> %i.cs, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not.i.i = icmp eq i16 %i.cu, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCsiWAYywJt434_11yoke_derive.exit: ; preds = %.noexc12, %._crit_edge.i
  %i.cv = phi i64 [ %.pre67, %.noexc12 ], [ %i.cc, %._crit_edge.i ]
  %i.cw = phi ptr [ %.pre66, %.noexc12 ], [ %.val3.i, %._crit_edge.i ]
  %.sroa.0.0.i4.i = phi i64 [ %.sroa.3.0.i6.i, %.noexc12 ], [ %i.cd, %._crit_edge.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.0.0.i4.i
  %i.cy = lshr i64 %i.br, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 2 uses
  %i.da = add i64 %.sroa.0.0.i4.i, -16
  %i.db = and i64 %i.cv, %i.da
  store i8 %i.cz, ptr %i.cx, align 1
  %i.dc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.db
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 %i.cz, ptr %i.de, align 1
  %i.df = load ptr, ptr %0, align 8
  %.neg.i.i = mul i64 %i.bl, -24
  %i.dg = getelementptr i8, ptr %i.df, i64 %.neg.i.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 -24
  %i.di = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.neg63.i.i = mul i64 %.sroa.0.0.i4.i, -24
  %i.dj = getelementptr i8, ptr %i.di, i64 %.neg63.i.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dk, ptr noundef nonnull align 1 dereferenceable(24) %i.dh, i64 24, i1 false)
  %i.dl = icmp eq i64 %i.bm, 0
  br i1 %i.dl, label %._crit_edge53.loopexit, label %.preheader

bb.h:                                             ; preds = %.loopexit.split-lp
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.m, %.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi.i, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsiWAYywJt434_11yoke_derive.exit.i: ; preds = %bb.d, %._crit_edge53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsiWAYywJt434_11yoke_derive.exit

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMNtNtNtCshzWfHUSfYae_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCs2RXd34xq0RM_12synstructure(ptr nonnull sret([32 x i8]) align 8 %i.l, i64 0, i64 %i.ag, i64 16) #17
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8            ; 2 uses
  %.not9.i.i = icmp eq i64 %i.do, 0
  br i1 %.not9.i.i, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsiWAYywJt434_11yoke_derive.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.dq = phi i64 [ %i.do, %.lr.ph.i.i ], [ %i.ei, %bb.j ]
  %i.dr = load i64, ptr %i.dp, align 8
  %i.ds = add nuw i64 %i.dr, 1
  %i.dt = load i64, ptr %i.l, align 8             ; 3 uses
  %i.du = add i64 %i.ds, %i.dt
  store i64 %i.du, ptr %i.l, align 8
  %i.dv = add i64 %i.dq, -1
  store i64 %i.dv, ptr %i.dn, align 8
  %i.dw = load ptr, ptr %0, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dt
  %.val.i.i = load <2 x i64>, ptr %i.dx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !22
  store <2 x i64> zeroinitializer, ptr %i.i, align 16, !noalias !25
  call void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsiWAYywJt434_11yoke_derive(ptr nonnull sret([16 x i8]) align 16 %i.j, ptr nonnull align 16 %i.i) #17, !noalias !25
  %i.dy = load <16 x i8>, ptr %i.j, align 16, !noalias !25
  store <2 x i64> %.val.i.i, ptr %i.g, align 16, !noalias !25
  call void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsiWAYywJt434_11yoke_derive(ptr nonnull sret([16 x i8]) align 16 %i.h, ptr nonnull align 16 %i.g) #17, !noalias !25
  %i.dz = load <16 x i8>, ptr %i.h, align 16, !noalias !25
  %i.ea = icmp sgt <16 x i8> %i.dy, %i.dz
  %i.eb = sext <16 x i1> %i.ea to <16 x i8>
  %i.ec = bitcast <16 x i8> %i.eb to <2 x i64>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22
  call void @_RNvMsb_NtNtCshzWfHUSfYae_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCs2RXd34xq0RM_12synstructure(ptr nonnull sret([16 x i8]) align 16 %i.f, i8 -128) #17, !noalias !28
  %i.ed = load <16 x i8>, ptr %i.f, align 16, !noalias !28
  store <16 x i8> %i.ed, ptr %i.e, align 16, !noalias !28
  call void @_RNvMs1P_NtNtCshzWfHUSfYae_4core9core_arch3x86INtNtB8_4simd4SimdaKj10_E8as_m128iCsiWAYywJt434_11yoke_derive(ptr nonnull sret([16 x i8]) align 16 %i.k, ptr nonnull align 16 %i.e) #17, !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22
  %i.ee = load <2 x i64>, ptr %i.k, align 16, !noalias !22
  %i.ef = or <2 x i64> %i.ee, %i.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.eg = load ptr, ptr %0, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dt
  store <2 x i64> %i.ef, ptr %i.eh, align 16
  %i.ei = load i64, ptr %i.dn, align 8            ; 2 uses
  %.not.i.i14 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i14, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsiWAYywJt434_11yoke_derive.exit.i, label %bb.j

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsiWAYywJt434_11yoke_derive.exit.i: ; preds = %bb.j, %bb.i
  %i.ej = load i64, ptr %i.ad, align 8
  %i.ek = add i64 %i.ej, 1                        ; 2 uses
  %i.el = load ptr, ptr %0, align 8               ; 2 uses
  %..i.i = call i64 @llvm.umax.i64(i64 %i.ek, i64 16)
  %.13.i.i = call i64 @llvm.umin.i64(i64 %i.ek, i64 16)
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %..i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %i.el, i64 %.13.i.i, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceCsiWAYywJt434_11yoke_derive, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 24, ptr %i.eo, align 8
  store ptr %0, ptr %i.m, align 8
  %i.ep = load i64, ptr %i.ad, align 8            ; 2 uses
  %.not11.i = icmp eq i64 %i.ep, -1
  br i1 %.not11.i, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsiWAYywJt434_11yoke_derive.exit.thread, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsiWAYywJt434_11yoke_derive.exit.i, %bb.s
  %.sroa.0.010.i = phi i64 [ %i.eq, %bb.s ], [ 0, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsiWAYywJt434_11yoke_derive.exit.i ] ; 8 uses
  %i.eq = add nuw i64 %.sroa.0.010.i, 1           ; 2 uses
  %i.er = load ptr, ptr %0, align 8               ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.0.010.i
  %i.et = load i8, ptr %i.es, align 1
  %.not.i16 = icmp eq i8 %i.et, -128
  br i1 %.not.i16, label %bb.k, label %bb.s

bb.k:                                             ; preds = %.lr.ph.i15
  %.neg.i = mul i64 %i.eq, -24
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 %.neg.i ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.r, %bb.k
  %i.ev = load ptr, ptr %0, align 8
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -24
  %i.ex = invoke i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCs1K5DUQUZc67_11proc_macro25IdentECsiWAYywJt434_11yoke_derive(ptr align 8 %2, ptr nonnull align 8 %i.ew)
          to label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CsiWAYywJt434_11yoke_derive.exit.i unwind label %.loopexit.split-lp.i ; 4 uses

.loopexit.i:                                      ; preds = %.lr.ph.i11.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp.i:                             ; preds = %bb.r, %bb.n, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CsiWAYywJt434_11yoke_derive.exit.i, %bb.l
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.m) #18
          to label %common.resume unwind label %bb.t

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CsiWAYywJt434_11yoke_derive.exit.i: ; preds = %bb.l
  %i.ey = load i64, ptr %i.ad, align 8
  %i.ez = and i64 %i.ey, %i.ex                    ; 3 uses
  %i.fa = load ptr, ptr %0, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ez
  %.sroa.0.0.copyload.i14.i.i = load <2 x i64>, ptr %i.fb, align 1, !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <2 x i64> %.sroa.0.0.copyload.i14.i.i, ptr %i.c, align 16
  invoke void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsiWAYywJt434_11yoke_derive(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c) #17
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CsiWAYywJt434_11yoke_derive.exit.i
  %i.fc = load <16 x i8>, ptr %i.d, align 16
  %i.fd = icmp slt <16 x i8> %i.fc, zeroinitializer
  %i.fe = bitcast <16 x i1> %i.fd to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i15.i.i = icmp eq i16 %i.fe, 0
  br i1 %.not.i15.i.i, label %.lr.ph.i11.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc13.i, %.noexc.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.ez, %.noexc.i ], [ %i.fv, %.noexc13.i ]
  %.lcssa.i.i = phi i16 [ %i.fe, %.noexc.i ], [ %i.ga, %.noexc13.i ]
  %i.ff = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fg = zext nneg i16 %i.ff to i64
  %i.fh = add i64 %.sroa.0.0.lcssa.i.i, %i.fg
  %i.fi = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.fj = and i64 %i.fh, %i.fi                    ; 2 uses
  %.val3.i.i = load ptr, ptr %0, align 8          ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = icmp sgt i8 %i.fl, -1
  br i1 %i.fm, label %bb.n, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCsiWAYywJt434_11yoke_derive.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i
  %.val6.i.i.i = load <2 x i64>, ptr %.val3.i.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x i64> %.val6.i.i.i, ptr %i.a, align 16
  invoke void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsiWAYywJt434_11yoke_derive(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a) #17
          to label %.noexc12.i unwind label %.loopexit.split-lp.i

.noexc12.i:                                       ; preds = %bb.n
  %i.fn = load <16 x i8>, ptr %i.b, align 16
  %i.fo = icmp slt <16 x i8> %i.fn, zeroinitializer
  %i.fp = bitcast <16 x i1> %i.fo to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i5.i.i = icmp eq i16 %i.fp, 0
  %i.fq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fp, i1 true)
  %i.fr = zext nneg i16 %i.fq to i64
  %.sroa.3.0.i6.i.i = select i1 %.not.i5.i.i, i64 undef, i64 %i.fr
  %.pre = load i64, ptr %i.ad, align 8
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCsiWAYywJt434_11yoke_derive.exit.i

.lr.ph.i11.i:                                     ; preds = %.noexc.i, %.noexc13.i
  %.sroa.0.017.i.i = phi i64 [ %i.fv, %.noexc13.i ], [ %i.ez, %.noexc.i ]
  %.sroa.5.016.i.i = phi i64 [ %i.ft, %.noexc13.i ], [ 0, %.noexc.i ]
  %i.fs = load i64, ptr %i.ad, align 8
  %i.ft = add i64 %.sroa.5.016.i.i, 16            ; 2 uses
  %i.fu = add i64 %i.ft, %.sroa.0.017.i.i
  %i.fv = and i64 %i.fu, %i.fs                    ; 3 uses
  %i.fw = load ptr, ptr %0, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %i.fx, align 1, !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.c, align 16
  invoke void @_RNvMs1K_NtNtCshzWfHUSfYae_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsiWAYywJt434_11yoke_derive(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c) #17
          to label %.noexc13.i unwind label %.loopexit.i

.noexc13.i:                                       ; preds = %.lr.ph.i11.i
  %i.fy = load <16 x i8>, ptr %i.d, align 16
  %i.fz = icmp slt <16 x i8> %i.fy, zeroinitializer
  %i.ga = bitcast <16 x i1> %i.fz to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i.i = icmp eq i16 %i.ga, 0
  br i1 %.not.i.i.i, label %.lr.ph.i11.i, label %._crit_edge.i.i

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCsiWAYywJt434_11yoke_derive.exit.i: ; preds = %.noexc12.i, %._crit_edge.i.i
  %i.gb = phi i64 [ %.pre, %.noexc12.i ], [ %i.fi, %._crit_edge.i.i ] ; 4 uses
  %.sroa.0.0.i4.i.i = phi i64 [ %.sroa.3.0.i6.i.i, %.noexc12.i ], [ %i.fj, %._crit_edge.i.i ] ; 4 uses
  %i.gc = and i64 %i.gb, %i.ex                    ; 2 uses
  %i.gd = sub i64 %.sroa.0.010.i, %i.gc
  %i.ge = sub i64 %.sroa.0.0.i4.i.i, %i.gc
  %i.gf = xor i64 %i.gd, %i.ge
  %.unshifted.i = and i64 %i.gf, %i.gb
  %i.gg = icmp ult i64 %.unshifted.i, 16
  br i1 %i.gg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCsiWAYywJt434_11yoke_derive.exit.i
  %i.gh = load ptr, ptr %0, align 8               ; 2 uses
  %.neg9.i = mul i64 %.sroa.0.0.i4.i.i, -24
  %i.gi = getelementptr i8, ptr %i.gh, i64 %.neg9.i
  %i.gj = getelementptr i8, ptr %i.gi, i64 -24    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.sroa.0.0.i4.i.i ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = lshr i64 %i.ex, 57
  %i.gn = trunc nuw nsw i64 %i.gm to i8           ; 2 uses
  %i.go = add i64 %.sroa.0.0.i4.i.i, -16
  %i.gp = and i64 %i.gb, %i.go
  store i8 %i.gn, ptr %i.gk, align 1
  %i.gq = load ptr, ptr %0, align 8
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.gp
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store i8 %i.gn, ptr %i.gs, align 1
  %i.gt = icmp eq i8 %i.gl, -1
  br i1 %i.gt, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCsiWAYywJt434_11yoke_derive.exit.i
  %i.gu = lshr i64 %i.ex, 57
  %i.gv = trunc nuw nsw i64 %i.gu to i8           ; 2 uses
  %i.gw = add nuw i64 %.sroa.0.010.i, -16
  %i.gx = and i64 %i.gb, %i.gw
  %i.gy = load ptr, ptr %0, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.sroa.0.010.i
  store i8 %i.gv, ptr %i.gz, align 1
  %i.ha = load ptr, ptr %0, align 8
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gx
  %i.hc = getelementptr i8, ptr %i.hb, i64 16
  store i8 %i.gv, ptr %i.hc, align 1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.hd = add nuw i64 %.sroa.0.010.i, -16
  %i.he = load i64, ptr %i.ad, align 8
  %i.hf = and i64 %i.he, %i.hd
  %i.hg = load ptr, ptr %0, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.0.010.i
  store i8 -1, ptr %i.hh, align 1
  %i.hi = load ptr, ptr %0, align 8
  %i.hj = getelementptr i8, ptr %i.hi, i64 %i.hf
  %i.hk = getelementptr i8, ptr %i.hj, i64 16
  store i8 -1, ptr %i.hk, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gj, ptr noundef nonnull align 1 dereferenceable(24) %i.eu, i64 24, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  invoke void @_RNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytesCsiWAYywJt434_11yoke_derive(ptr %i.eu, ptr %i.gj, i64 24)
          to label %bb.l unwind label %.loopexit.split-lp.i

bb.s:                                             ; preds = %bb.q, %bb.p, %.lr.ph.i15
  %exitcond.not.i = icmp eq i64 %.sroa.0.010.i, %i.ep
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsiWAYywJt434_11yoke_derive.exit, label %.lr.ph.i15

bb.t:                                             ; preds = %bb.m
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsiWAYywJt434_11yoke_derive.exit: ; preds = %bb.s
  %.pre.i = load i64, ptr %i.ad, align 8
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre21.i = add i64 %.pre.i.fr, 1
  %i.hm = lshr i64 %.pre21.i, 3
  %i.hn = mul nuw i64 %i.hm, 7
  %i.ho = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.ho, i64 %.pre.i.fr, i64 %i.hn
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsiWAYywJt434_11yoke_derive.exit.thread

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsiWAYywJt434_11yoke_derive.exit.thread: ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsiWAYywJt434_11yoke_derive.exit, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsiWAYywJt434_11yoke_derive.exit.i
  %i.hp = phi i64 [ 0, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsiWAYywJt434_11yoke_derive.exit.i ], [ %spec.select, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsiWAYywJt434_11yoke_derive.exit ]
  %i.hq = load i64, ptr %i.z, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hs = sub i64 %i.hp, %i.hq
  store i64 %i.hs, ptr %i.hr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsiWAYywJt434_11yoke_derive.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsiWAYywJt434_11yoke_derive.exit: ; preds = %bb.c, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsiWAYywJt434_11yoke_derive.exit.i, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsiWAYywJt434_11yoke_derive.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgFSQ9XOTBNe_3syn11parse_quote5parseNtNtB4_8generics14WherePredicateECsiWAYywJt434_11yoke_derive(ptr nofree writeonly sret([312 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 4 uses
  %i.h = alloca [312 x i8], align 8               ; 6 uses
  %i.i = alloca [312 x i8], align 8               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [312 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = call { ptr, i64 } @_RNvMNtCsgFSQ9XOTBNe_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c), !noalias !34 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  store ptr %i.o, ptr %i.k, align 8, !noalias !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.p, ptr %i.q, align 8, !noalias !34
  invoke void @_RNvNtCsgFSQ9XOTBNe_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.d unwind label %bb.c, !noalias !34

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn8.i = phi { ptr, i32 } [ %i.r, %bb.c ], [ %.pn.i, %bb.e ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #18
          to label %common.resume unwind label %bb.s

bb.c:                                             ; preds = %.invoke.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXNtCsgFSQ9XOTBNe_3syn11parse_quoteNtNtB4_8generics14WherePredicateNtB2_10ParseQuote5parseCsiWAYywJt434_11yoke_derive(ptr nonnull sret([312 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %_RNvYNvYNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateNtNtB9_11parse_quote10ParseQuote5parseINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCsiWAYywJt434_11yoke_derive.exit.i unwind label %bb.f, !noalias !34

bb.e:                                             ; preds = %bb.j, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.w, %bb.j ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #18
          to label %bb.b unwind label %bb.s

bb.f:                                             ; preds = %.invoke10.i, %bb.h, %_RNvYNvYNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateNtNtB9_11parse_quote10ParseQuote5parseINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCsiWAYywJt434_11yoke_derive.exit.i, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_RNvYNvYNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateNtNtB9_11parse_quote10ParseQuote5parseINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCsiWAYywJt434_11yoke_derive.exit.i: ; preds = %bb.d
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([312 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.g unwind label %bb.f, !noalias !34

bb.g:                                             ; preds = %_RNvYNvYNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateNtNtB9_11parse_quote10ParseQuote5parseINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCsiWAYywJt434_11yoke_derive.exit.i
  %i.t = load i64, ptr %i.h, align 8, !noalias !34
  %i.u = icmp eq i64 %i.t, -2
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !34
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1v_EE13from_residualBO_(ptr nonnull sret([312 x i8]) align 8 %i.m, ptr nonnull align 8 %i.a, ptr nonnull align 8 @2)
          to label %.invoke.i unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.i, ptr noundef nonnull align 8 dereferenceable(312) %i.h, i64 312, i1 false), !noalias !34
  invoke void @_RNvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.k unwind label %bb.j, !noalias !34

bb.j:                                             ; preds = %bb.q, %bb.o, %bb.n, %bb.m, %bb.k, %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateEBF_(ptr nonnull align 8 %i.i) #18
          to label %bb.e unwind label %bb.s

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.l unwind label %bb.j, !noalias !34

bb.l:                                             ; preds = %bb.k
  %i.x = load i64, ptr %i.f, align 8, !noalias !34
  %.not.i = icmp eq i64 %i.x, -1
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !34
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1v_EE13from_residualBO_(ptr nonnull sret([312 x i8]) align 8 %i.m, ptr nonnull align 8 %i.b, ptr nonnull align 8 @1)
          to label %.invoke10.i unwind label %bb.j

bb.n:                                             ; preds = %bb.l
  %i.y = invoke { ptr, ptr } @_RNvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.o unwind label %bb.j, !noalias !34 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  %i.ab = invoke { i32, i8 } @_RNvNtCsgFSQ9XOTBNe_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.z, ptr %i.aa)
          to label %bb.p unwind label %bb.j, !noalias !34 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ac = extractvalue { i32, i8 } %i.ab, 1       ; 2 uses
  %.not6.not.i = icmp eq i8 %i.ac, -1
  br i1 %.not6.not.i, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = extractvalue { i32, i8 } %i.ab, 0
  invoke void @_RNvNtCsgFSQ9XOTBNe_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ad, i8 %i.ac)
          to label %bb.r unwind label %bb.j, !noalias !34

.thread.i:                                        ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.m, ptr noundef nonnull align 8 dereferenceable(312) %i.i, i64 312, i1 false)
  br label %.invoke.i

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -2, ptr %i.m, align 8, !alias.scope !34
  br label %.invoke10.i

.invoke10.i:                                      ; preds = %bb.r, %bb.m
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateEBF_(ptr nonnull align 8 %i.i)
          to label %.invoke.i unwind label %bb.f

.invoke.i:                                        ; preds = %.invoke10.i, %.thread.i, %bb.h
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %_RNvXsh_NtCsgFSQ9XOTBNe_3syn5parseNvYNtNtB7_8generics14WherePredicateNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CsiWAYywJt434_11yoke_derive.exit unwind label %bb.c

bb.s:                                             ; preds = %bb.j, %bb.e, %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.v, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %.pn8.i, %bb.b ], [ %i.aj, %bb.v ]
  resume { ptr, i32 } %common.resume.op

_RNvXsh_NtCsgFSQ9XOTBNe_3syn5parseNvYNtNtB7_8generics14WherePredicateNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CsiWAYywJt434_11yoke_derive.exit: ; preds = %.invoke.i
end_hunk_0
begin_hunk_1_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs2RXd34xq0RM_12synstructure9StructureECsiWAYywJt434_11yoke_derive:bb.a
bb.a:
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs2RXd34xq0RM_12synstructure11VariantInfoEEB1a_(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn8generics12GenericParamEECs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.b) #18
          to label %bb.d unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn8generics12GenericParamEECs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.c)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateEECsiWAYywJt434_11yoke_derive(ptr nonnull align 8 %i.d) #18
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiWAYywJt434_11yoke_derive(ptr nonnull align 8 %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateEECsiWAYywJt434_11yoke_derive.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiWAYywJt434_11yoke_derive(ptr nonnull align 8 %i.f)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.g ], [ %.pn, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateEECsiWAYywJt434_11yoke_derive.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiWAYywJt434_11yoke_derive(ptr nonnull align 8 %i.f)
  ret void

bb.i:                                             ; preds = %bb.d, %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn6derive11DeriveInputECsiWAYywJt434_11yoke_derive(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.c) #18
          to label %bb.d unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.d)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.e) #18
          to label %bb.g unwind label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.g)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.d
  %.pn2 = phi { ptr, i32 } [ %i.i, %bb.h ], [ %.pn, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.h) #18
          to label %bb.j unwind label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.g
  %.pn4 = phi { ptr, i32 } [ %i.k, %bb.k ], [ %.pn2, %bb.g ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn6derive4DataEBF_(ptr align 8 %0) #18
          to label %bb.n unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn6derive4DataEBF_(ptr align 8 %0)
  ret void

bb.m:                                             ; preds = %bb.j, %bb.g, %bb.d, %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.n:                                             ; preds = %bb.j
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics9LifetimesECsiWAYywJt434_11yoke_derive(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtBG_8generics12GenericParamEECs2RXd34xq0RM_12synstructure(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsiwvLk4GMN8X_10proc_macro6bridge12BridgeConfigECsiWAYywJt434_11yoke_derive(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs3_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiWAYywJt434_11yoke_derive(ptr align 8 %0) #17
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge13panic_message12PanicMessageECsiWAYywJt434_11yoke_derive(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = icmp sgt i64 %i.a, -1
  %i.c = icmp eq i64 %i.a, -9223372036854775807
  %i.d = or i1 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6buffer6BufferECsiWAYywJt434_11yoke_derive(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs3_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiWAYywJt434_11yoke_derive(ptr align 8 %0) #17
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtCsiWAYywJt434_11yoke_derive9lifetimes16replace_lifetime15ReplaceLifetimeEBH_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECsiWAYywJt434_11yoke_derive(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtCs1K5DUQUZc67_11proc_macro25IdentECsiWAYywJt434_11yoke_derive(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.07 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.07
  %i.d = add nuw i64 %.sroa.0.07, 1               ; 4 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr align 8 %i.c)
          to label %bb.b unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.18, 1                   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.18
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr align 8 %i.i) #18
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateECsiWAYywJt434_11yoke_derive(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.07 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [312 x i8], ptr %0, i64 %.sroa.0.07
  %i.d = add nuw i64 %.sroa.0.07, 1               ; 4 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateEBF_(ptr align 8 %i.c)
          to label %bb.b unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.18, 1                   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [312 x i8], ptr %0, i64 %.sroa.0.18
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics14WherePredicateEBF_(ptr align 8 %i.i) #18
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtCs1K5DUQUZc67_11proc_macro25IdentuNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2k_8adapters3map3MapINtNtB3p_10filter_map9FilterMapINtNtNtB2m_5slice4iter4IterNtNtCsgFSQ9XOTBNe_3syn8generics12GenericParamENCNvCsiWAYywJt434_11yoke_derive20yokeable_derive_impls4_0ENCINvXs8_NtB9_3setINtB6x_7HashSetBP_B1p_EIB2e_BP_E6extendB3M_E0EEB5w_(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = tail call { ptr, ptr } @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterNtNtCsgFSQ9XOTBNe_3syn8generics12GenericParamENCNvCsiWAYywJt434_11yoke_derive20yokeable_derive_impls4_0ENCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB3V_7HashSetNtCs1K5DUQUZc67_11proc_macro25IdentNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtB2_6ExtendB4E_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB2U_(ptr %1, ptr %2) #17 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  store ptr %i.e, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCsgFSQ9XOTBNe_3syn8generics12GenericParamENCNvCsiWAYywJt434_11yoke_derive20yokeable_derive_impls4_0ENCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB3F_7HashSetNtCs1K5DUQUZc67_11proc_macro25IdentNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtNtB9_6traits7collect6ExtendB4o_E6extendBW_E0ENtNtB5Q_8iterator8Iterator9size_hintB2E_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c) #17
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = and i64 %i.k, 1
  %spec.select = add nuw i64 %i.l, %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCsgFSQ9XOTBNe_3syn8generics12GenericParamENCNvCsiWAYywJt434_11yoke_derive20yokeable_derive_impls4_0ENCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB3F_7HashSetNtCs1K5DUQUZc67_11proc_macro25IdentNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtNtB9_6traits7collect6ExtendB4o_E6extendBW_E0ENtNtB5Q_8iterator8Iterator9size_hintB2E_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c) #17
  %i.n = load i64, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi i64 [ %i.n, %bb.c ], [ %spec.select, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp ugt i64 %.sroa.0.0, %i.p
  br i1 %i.q, label %bb.e, label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECsiWAYywJt434_11yoke_derive.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  call fastcc void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECsiWAYywJt434_11yoke_derive(ptr nonnull align 8 %0, i64 %.sroa.0.0, ptr nonnull align 8 %i.r) #22
  br label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECsiWAYywJt434_11yoke_derive.exit

_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECsiWAYywJt434_11yoke_derive.exit: ; preds = %bb.d, %bb.e
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = load ptr, ptr %i.g, align 8
  call void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsgFSQ9XOTBNe_3syn8generics12GenericParamENCNvCsiWAYywJt434_11yoke_derive20yokeable_derive_impls4_0ENCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB3A_7HashSetNtCs1K5DUQUZc67_11proc_macro25IdentNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB4j_E6extendBR_E0ENtNtB5L_8iterator8Iterator8for_eachNCINvXs1i_NtB3C_3mapINtB7d_7HashMapB4j_uB4S_EIB5H_TB4j_uEE6extendB3_E0EB2z_(ptr %i.s, ptr %i.t, ptr nonnull align 8 %0) #17
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtCs1K5DUQUZc67_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECsiWAYywJt434_11yoke_derive(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = invoke align 8 ptr @_RNvMNtCs1K5DUQUZc67_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE8make_mutCslCbDOIcU2Dw_5quote(ptr align 8 %0)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXs0_NtCs1K5DUQUZc67_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iter(ptr nonnull sret([40 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  invoke void @_RNvXNtCs1K5DUQUZc67_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.e)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1K5DUQUZc67_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.e) #18
          to label %.body.thread unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.b, align 8
  %.not.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i, label %_RINvYNtNtCs1K5DUQUZc67_11proc_macro212token_stream8IntoIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvBV_8for_each4callNtB7_9TokenTreeNCINvXsa_NtB7_8fallbackNtB2I_11TokenStreamINtNtBZ_7collect6ExtendB2k_E6extendNtB7_11TokenStreamE0E0ECsiWAYywJt434_11yoke_derive.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtCs1K5DUQUZc67_11proc_macro29TokenTreeNCINvXsa_NtB1h_8fallbackNtB21_11TokenStreamINtNtBa_7collect6ExtendB1f_E6extendNtB1h_11TokenStreamE0E0CsiWAYywJt434_11yoke_derive(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.d

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvYNtNtCs1K5DUQUZc67_11proc_macro212token_stream8IntoIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvBV_8for_each4callNtB7_9TokenTreeNCINvXsa_NtB7_8fallbackNtB2I_11TokenStreamINtNtBZ_7collect6ExtendB2k_E6extendNtB7_11TokenStreamE0E0ECsiWAYywJt434_11yoke_derive.exit.i: ; preds = %bb.e
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1K5DUQUZc67_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.body.thread:                                     ; preds = %bb.d, %bb.h
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %lpad.thr_comm.split-lp, %bb.h ]
  resume { ptr, i32 } %eh.lpad-body4

bb.h:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr align 8 %1) #18
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB9_7HashMapNtCs1K5DUQUZc67_11proc_macro25IdentuNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2m_8adapters3map3MapINtNtB3r_10filter_map9FilterMapINtNtNtB2o_5slice4iter4IterNtNtCsgFSQ9XOTBNe_3syn8generics12GenericParamENCNvCsiWAYywJt434_11yoke_derive20yokeable_derive_impls4_0ENCINvXs8_NtBb_3setINtB6z_7HashSetBR_B1r_EIB2g_BR_E6extendB3O_E0EE0B5y_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [16 x i8], align 16               ; 4 uses
  %i.o = alloca [16 x i8], align 16               ; 4 uses
  %i.p = alloca [16 x i8], align 16               ; 4 uses
  %i.q = alloca [16 x i8], align 16               ; 4 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [16 x i8], align 16               ; 4 uses
  %i.t = alloca [16 x i8], align 16               ; 4 uses
  %i.u = alloca [16 x i8], align 16               ; 5 uses
  %i.v = alloca [16 x i8], align 16               ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.y = load ptr, ptr %0, align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.aa = invoke i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCs1K5DUQUZc67_11proc_macro25IdentECsiWAYywJt434_11yoke_derive(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.x)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECsiWAYywJt434_11yoke_derive.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECsiWAYywJt434_11yoke_derive(ptr nonnull align 8 %i.y, i64 1, ptr nonnull align 8 %i.z) #22
          to label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECsiWAYywJt434_11yoke_derive.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECsiWAYywJt434_11yoke_derive.exit.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
end_hunk_1
