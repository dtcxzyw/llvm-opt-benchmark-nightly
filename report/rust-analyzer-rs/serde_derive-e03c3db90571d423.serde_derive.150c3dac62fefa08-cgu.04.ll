inline.NumInlined: 114
inline.NumDeleted: 49
begin_hunk_0_@_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECs1O2ilwARLXE_12serde_derive:bb.a
  %i.cl = load ptr, ptr %0, align 8
  %i.cm = sub nsw i64 0, %i.cj
  %i.cn = getelementptr inbounds [24 x i8], ptr %i.cl, i64 %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -24
  %i.cp = invoke i64 @_RNCINvNtCsfjX3T6UU9IB_9hashbrown3map11make_hasherNtCs1K5DUQUZc67_11proc_macro25IdentuNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.co) #25
          to label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0Cs1O2ilwARLXE_12serde_derive.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0Cs1O2ilwARLXE_12serde_derive.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cq = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %i.cr = and i64 %i.cq, %i.cp                    ; 3 uses
  %i.cs = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  invoke void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.n, ptr %i.ct) #25
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc4:                                          ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0Cs1O2ilwARLXE_12serde_derive.exit
  %i.cu = load <2 x i64>, ptr %i.n, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store <2 x i64> %i.cu, ptr %i.m, align 16
  %i.cv = invoke i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 16 %i.m) #25
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc5:                                          ; preds = %.noexc4
  %i.cw = trunc i32 %i.cv to i16                  ; 2 uses
  %.not.i13.i = icmp eq i16 %i.cw, 0
  br i1 %.not.i13.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc9, %.noexc5
  %.sroa.0.0.lcssa.i = phi i64 [ %i.cr, %.noexc5 ], [ %i.dn, %.noexc9 ]
  %.lcssa.i = phi i16 [ %i.cw, %.noexc5 ], [ %i.ds, %.noexc9 ]
  %i.cx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = add i64 %.sroa.0.0.lcssa.i, %i.cy
  %i.da = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8 ; 2 uses
  %i.db = and i64 %i.cz, %i.da                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dc = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = icmp sgt i8 %i.dd, -1
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i
  invoke void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_load_si128Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.l, ptr nonnull %.val3.i) #25
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc6:                                          ; preds = %bb.q
  %i.df = load <2 x i64>, ptr %i.l, align 16
  store <2 x i64> %i.df, ptr %i.k, align 16
  %i.dg = invoke i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 16 %i.k) #25
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc7:                                          ; preds = %.noexc6
  %i.dh = trunc i32 %i.dg to i16                  ; 2 uses
  %.not.i5.i = icmp eq i16 %i.dh, 0
  %i.di = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dh, i1 true)
  %i.dj = zext nneg i16 %i.di to i64
  %.sroa.3.0.i6.i = select i1 %.not.i5.i, i64 undef, i64 %i.dj
  %.pre75 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.pre76 = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %bb.r

.lr.ph.i:                                         ; preds = %.noexc5, %.noexc9
  %.sroa.0.015.i = phi i64 [ %i.dn, %.noexc9 ], [ %i.cr, %.noexc5 ]
  %.sroa.5.014.i = phi i64 [ %i.dl, %.noexc9 ], [ 0, %.noexc5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dk = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %i.dl = add i64 %.sroa.5.014.i, 16              ; 2 uses
  %i.dm = add i64 %i.dl, %.sroa.0.015.i
  %i.dn = and i64 %i.dk, %i.dm                    ; 3 uses
  %i.do = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  invoke void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.n, ptr %i.dp) #25
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %.lr.ph.i
  %i.dq = load <2 x i64>, ptr %i.n, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store <2 x i64> %i.dq, ptr %i.m, align 16
  %i.dr = invoke i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 16 %i.m) #25
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %.noexc8
  %i.ds = trunc i32 %i.dr to i16                  ; 2 uses
  %.not.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

bb.r:                                             ; preds = %.noexc7, %._crit_edge.i
  %i.dt = phi i64 [ %.pre76, %.noexc7 ], [ %i.da, %._crit_edge.i ]
  %i.du = phi ptr [ %.pre75, %.noexc7 ], [ %.val3.i, %._crit_edge.i ]
  %.sroa.0.0.i4.i = phi i64 [ %.sroa.3.0.i6.i, %.noexc7 ], [ %i.db, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.0.0.i4.i
  %i.dw = lshr i64 %i.cp, 57
  %i.dx = trunc nuw nsw i64 %i.dw to i8           ; 2 uses
  %i.dy = add i64 %.sroa.0.0.i4.i, -16
  %i.dz = and i64 %i.dt, %i.dy
  store i8 %i.dx, ptr %i.dv, align 1
  %i.ea = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dz
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  store i8 %i.dx, ptr %i.ec, align 1
  %i.ed = load ptr, ptr %0, align 8
  %.neg.i.i = mul i64 %i.cj, -24
  %i.ee = getelementptr i8, ptr %i.ed, i64 %.neg.i.i
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.neg63.i.i = mul i64 %.sroa.0.0.i4.i, -24
  %i.eh = getelementptr i8, ptr %i.eg, i64 %.neg63.i.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ei, ptr noundef nonnull align 1 dereferenceable(24) %i.ef, i64 24, i1 false)
  %i.ej = icmp eq i64 %i.ck, 0
  br i1 %i.ej, label %._crit_edge62.loopexit, label %bb.p

bb.s:                                             ; preds = %.loopexit.split-lp
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.x, %.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi.i, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs1O2ilwARLXE_12serde_derive.exit.i: ; preds = %bb.k, %bb.l, %bb.m, %._crit_edge62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs1O2ilwARLXE_12serde_derive.exit

bb.t:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtNtCshzWfHUSfYae_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCs1O2ilwARLXE_12serde_derive(ptr nonnull sret([32 x i8]) align 8 %i.i, i64 0, i64 %i.ad, i64 16) #25
  %i.el = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.em = load i64, ptr %i.el, align 8            ; 2 uses
  %.not4.i.i = icmp eq i64 %i.em, 0
  br i1 %.not4.i.i, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.en = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i
  %i.eo = phi i64 [ %i.em, %.lr.ph.i.i ], [ %i.fa, %bb.u ]
  %i.ep = load i64, ptr %i.en, align 8
  %i.eq = add nuw i64 %i.ep, 1
  %i.er = load i64, ptr %i.i, align 8             ; 3 uses
  %i.es = add i64 %i.eq, %i.er
  store i64 %i.es, ptr %i.i, align 8
  %i.et = add i64 %i.eo, -1
  store i64 %i.et, ptr %i.el, align 8
  %i.eu = load ptr, ptr %0, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.er
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_load_si128Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.h, ptr %i.ev) #25
  %i.ew = load <2 x i64>, ptr %i.h, align 16
  store <2 x i64> %i.ew, ptr %i.f, align 16
  call void @_RNvMNtNtNtCsfjX3T6UU9IB_9hashbrown7control5group4sse2NtB2_5Group44convert_special_to_empty_and_full_to_deletedCs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.g, ptr nonnull align 16 %i.f) #25
  %i.ex = load <2 x i64>, ptr %i.g, align 16
  %i.ey = load ptr, ptr %0, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.er
  store <2 x i64> %i.ex, ptr %i.e, align 16
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_store_si128Cs1O2ilwARLXE_12serde_derive(ptr %i.ez, ptr nonnull align 16 %i.e) #25
  %i.fa = load i64, ptr %i.el, align 8            ; 2 uses
  %.not.i.i10 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i10, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit.i, label %bb.u

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit.i: ; preds = %bb.u, %bb.t
  %i.fb = load i64, ptr %i.aa, align 8
  %i.fc = add i64 %i.fb, 1                        ; 2 uses
  %i.fd = load ptr, ptr %0, align 8               ; 2 uses
  %..i.i11 = call i64 @llvm.umax.i64(i64 %i.fc, i64 16)
  %.8.i.i = call i64 @llvm.umin.i64(i64 %i.fc, i64 16)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %..i.i11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fe, ptr align 1 %i.fd, i64 %.8.i.i, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceCs1O2ilwARLXE_12serde_derive, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 24, ptr %i.fg, align 8
  store ptr %0, ptr %i.j, align 8
  %i.fh = load i64, ptr %i.aa, align 8            ; 2 uses
  %.not11.i = icmp eq i64 %i.fh, -1
  br i1 %.not11.i, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit.thread, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit.i, %bb.ae
  %.sroa.0.010.i = phi i64 [ %i.fi, %bb.ae ], [ 0, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit.i ] ; 8 uses
  %i.fi = add nuw i64 %.sroa.0.010.i, 1           ; 2 uses
  %i.fj = load ptr, ptr %0, align 8               ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.0.010.i
  %i.fl = load i8, ptr %i.fk, align 1
  %.not.i13 = icmp eq i8 %i.fl, -128
  br i1 %.not.i13, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %.lr.ph.i12
  %.neg.i = mul i64 %i.fi, -24
  %i.fm = getelementptr inbounds i8, ptr %i.fj, i64 %.neg.i ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ad, %bb.v
  %i.fn = load ptr, ptr %0, align 8
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -24
  %i.fp = invoke i64 @_RNCINvNtCsfjX3T6UU9IB_9hashbrown3map11make_hasherNtCs1K5DUQUZc67_11proc_macro25IdentuNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.fo) #25
          to label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0Cs1O2ilwARLXE_12serde_derive.exit.i unwind label %.loopexit.split-lp.i ; 4 uses

.loopexit.i:                                      ; preds = %.noexc14.i, %.lr.ph.i10.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp.i:                             ; preds = %bb.ad, %.noexc12.i, %bb.y, %.noexc.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0Cs1O2ilwARLXE_12serde_derive.exit.i, %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs1O2ilwARLXE_12serde_derive(ptr nonnull align 8 %i.j) #27
          to label %common.resume unwind label %bb.af

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0Cs1O2ilwARLXE_12serde_derive.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.fq = load i64, ptr %i.aa, align 8
  %i.fr = and i64 %i.fq, %i.fp                    ; 3 uses
  %i.fs = load ptr, ptr %0, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  invoke void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.ft) #25
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0Cs1O2ilwARLXE_12serde_derive.exit.i
  %i.fu = load <2 x i64>, ptr %i.d, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i64> %i.fu, ptr %i.c, align 16
  %i.fv = invoke i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 16 %i.c) #25
          to label %.noexc11.i unwind label %.loopexit.split-lp.i

.noexc11.i:                                       ; preds = %.noexc.i
  %i.fw = trunc i32 %i.fv to i16                  ; 2 uses
  %.not.i13.i.i = icmp eq i16 %i.fw, 0
  br i1 %.not.i13.i.i, label %.lr.ph.i10.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc15.i, %.noexc11.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.fr, %.noexc11.i ], [ %i.gn, %.noexc15.i ]
  %.lcssa.i.i = phi i16 [ %i.fw, %.noexc11.i ], [ %i.gs, %.noexc15.i ]
  %i.fx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fy = zext nneg i16 %i.fx to i64
  %i.fz = add i64 %.sroa.0.0.lcssa.i.i, %i.fy
  %i.ga = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.gb = and i64 %i.fz, %i.ga                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val3.i.i = load ptr, ptr %0, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.gc = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = icmp sgt i8 %i.gd, -1
  br i1 %i.ge, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i
  invoke void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_load_si128Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull %.val3.i.i) #25
          to label %.noexc12.i unwind label %.loopexit.split-lp.i

.noexc12.i:                                       ; preds = %bb.y
  %i.gf = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.gf, ptr %i.a, align 16
  %i.gg = invoke i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 16 %i.a) #25
          to label %.noexc13.i unwind label %.loopexit.split-lp.i

.noexc13.i:                                       ; preds = %.noexc12.i
  %i.gh = trunc i32 %i.gg to i16                  ; 2 uses
  %.not.i5.i.i = icmp eq i16 %i.gh, 0
  %i.gi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gh, i1 true)
  %i.gj = zext nneg i16 %i.gi to i64
  %.sroa.3.0.i6.i.i = select i1 %.not.i5.i.i, i64 undef, i64 %i.gj
  %.pre = load i64, ptr %i.aa, align 8
  br label %bb.z

.lr.ph.i10.i:                                     ; preds = %.noexc11.i, %.noexc15.i
  %.sroa.0.015.i.i = phi i64 [ %i.gn, %.noexc15.i ], [ %i.fr, %.noexc11.i ]
  %.sroa.5.014.i.i = phi i64 [ %i.gl, %.noexc15.i ], [ 0, %.noexc11.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gk = load i64, ptr %i.aa, align 8
  %i.gl = add i64 %.sroa.5.014.i.i, 16            ; 2 uses
  %i.gm = add i64 %i.gl, %.sroa.0.015.i.i
  %i.gn = and i64 %i.gk, %i.gm                    ; 3 uses
  %i.go = load ptr, ptr %0, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gn
  invoke void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.gp) #25
          to label %.noexc14.i unwind label %.loopexit.i

.noexc14.i:                                       ; preds = %.lr.ph.i10.i
  %i.gq = load <2 x i64>, ptr %i.d, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i64> %i.gq, ptr %i.c, align 16
  %i.gr = invoke i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 16 %i.c) #25
          to label %.noexc15.i unwind label %.loopexit.i

.noexc15.i:                                       ; preds = %.noexc14.i
  %i.gs = trunc i32 %i.gr to i16                  ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.gs, 0
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %._crit_edge.i.i

bb.z:                                             ; preds = %.noexc13.i, %._crit_edge.i.i
  %i.gt = phi i64 [ %.pre, %.noexc13.i ], [ %i.ga, %._crit_edge.i.i ] ; 4 uses
  %.sroa.0.0.i4.i.i = phi i64 [ %.sroa.3.0.i6.i.i, %.noexc13.i ], [ %i.gb, %._crit_edge.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gu = and i64 %i.gt, %i.fp                    ; 2 uses
  %i.gv = sub i64 %.sroa.0.010.i, %i.gu
  %i.gw = sub i64 %.sroa.0.0.i4.i.i, %i.gu
  %i.gx = xor i64 %i.gv, %i.gw
  %.unshifted.i = and i64 %i.gx, %i.gt
  %i.gy = icmp ult i64 %.unshifted.i, 16
  br i1 %i.gy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gz = load ptr, ptr %0, align 8               ; 2 uses
  %.neg9.i = mul i64 %.sroa.0.0.i4.i.i, -24
  %i.ha = getelementptr i8, ptr %i.gz, i64 %.neg9.i
  %i.hb = getelementptr i8, ptr %i.ha, i64 -24    ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sroa.0.0.i4.i.i ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1
  %i.he = lshr i64 %i.fp, 57
  %i.hf = trunc nuw nsw i64 %i.he to i8           ; 2 uses
  %i.hg = add i64 %.sroa.0.0.i4.i.i, -16
  %i.hh = and i64 %i.gt, %i.hg
  store i8 %i.hf, ptr %i.hc, align 1
  %i.hi = load ptr, ptr %0, align 8
  %i.hj = getelementptr i8, ptr %i.hi, i64 %i.hh
  %i.hk = getelementptr i8, ptr %i.hj, i64 16
  store i8 %i.hf, ptr %i.hk, align 1
  %i.hl = icmp eq i8 %i.hd, -1
  br i1 %i.hl, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.hm = lshr i64 %i.fp, 57
  %i.hn = trunc nuw nsw i64 %i.hm to i8           ; 2 uses
  %i.ho = add nuw i64 %.sroa.0.010.i, -16
  %i.hp = and i64 %i.gt, %i.ho
  %i.hq = load ptr, ptr %0, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.sroa.0.010.i
  store i8 %i.hn, ptr %i.hr, align 1
  %i.hs = load ptr, ptr %0, align 8
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.hp
  %i.hu = getelementptr i8, ptr %i.ht, i64 16
  store i8 %i.hn, ptr %i.hu, align 1
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.hv = add nuw i64 %.sroa.0.010.i, -16
  %i.hw = load i64, ptr %i.aa, align 8
  %i.hx = and i64 %i.hw, %i.hv
  %i.hy = load ptr, ptr %0, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sroa.0.010.i
  store i8 -1, ptr %i.hz, align 1
  %i.ia = load ptr, ptr %0, align 8
  %i.ib = getelementptr i8, ptr %i.ia, i64 %i.hx
  %i.ic = getelementptr i8, ptr %i.ib, i64 16
  store i8 -1, ptr %i.ic, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hb, ptr noundef nonnull align 1 dereferenceable(24) %i.fm, i64 24, i1 false)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  invoke void @_RNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytesCs1O2ilwARLXE_12serde_derive(ptr %i.fm, ptr %i.hb, i64 24)
          to label %bb.w unwind label %.loopexit.split-lp.i

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %.lr.ph.i12
  %exitcond.not.i = icmp eq i64 %.sroa.0.010.i, %i.fh
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit, label %.lr.ph.i12

bb.af:                                            ; preds = %bb.x
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit: ; preds = %bb.ae
  %.pre.i = load i64, ptr %i.aa, align 8
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre21.i = add i64 %.pre.i.fr, 1
  %i.ie = lshr i64 %.pre21.i, 3
  %i.if = mul nuw i64 %i.ie, 7
  %i.ig = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.ig, i64 %.pre.i.fr, i64 %i.if
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit.thread

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit.thread: ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit.i
  %i.ih = phi i64 [ 0, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit.i ], [ %spec.select, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit ]
  %i.ii = load i64, ptr %i.w, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ik = sub i64 %i.ih, %i.ii
  store i64 %i.ik, ptr %i.ij, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs1O2ilwARLXE_12serde_derive.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs1O2ilwARLXE_12serde_derive.exit: ; preds = %bb.c, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs1O2ilwARLXE_12serde_derive.exit.i, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs1O2ilwARLXE_12serde_derive.exit.thread
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB1Y_11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECs1O2ilwARLXE_12serde_derive(ptr align 8 %0, i64 %1, ptr align 8 %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 5 uses
  %i.h = alloca [16 x i8], align 16               ; 5 uses
  %i.i = alloca [16 x i8], align 16               ; 5 uses
  %i.j = alloca [16 x i8], align 16               ; 5 uses
  %i.k = alloca [16 x i8], align 16               ; 5 uses
  %i.l = alloca [16 x i8], align 16               ; 5 uses
  %i.m = alloca [16 x i8], align 16               ; 5 uses
  %i.n = alloca [16 x i8], align 16               ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.b, label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECs1O2ilwARLXE_12serde_derive.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECs1O2ilwARLXE_12serde_derive(ptr nonnull align 8 %0, i64 1, ptr align 8 %3) #29
  br label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECs1O2ilwARLXE_12serde_derive.exit

_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECs1O2ilwARLXE_12serde_derive.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.s = lshr i64 %1, 57
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECs1O2ilwARLXE_12serde_derive.exit
  %.sroa.6.0.i = phi i64 [ 0, %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECs1O2ilwARLXE_12serde_derive.exit ], [ %i.bd, %bb.i ]
  %.sroa.0.05.i = phi i64 [ %i.w, %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECs1O2ilwARLXE_12serde_derive.exit ], [ %i.bf, %bb.i ] ; 4 uses
  %.sroa.4.0.i = phi i64 [ undef, %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECs1O2ilwARLXE_12serde_derive.exit ], [ %.sroa.4.18.i, %bb.i ]
  %.sroa.04.0.i = phi i64 [ 0, %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECs1O2ilwARLXE_12serde_derive.exit ], [ %.sroa.04.110.i, %bb.i ]
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.0.05.i
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.n, ptr %i.y) #25
  %i.z = load <2 x i64>, ptr %i.n, align 16       ; 3 uses
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse213__mm_set1_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.m, i8 %i.t) #25
  %i.aa = load <2 x i64>, ptr %i.m, align 16
  store <2 x i64> %i.z, ptr %i.k, align 16
  store <2 x i64> %i.aa, ptr %i.j, align 16
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_cmpeq_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.l, ptr nonnull align 16 %i.k, ptr nonnull align 16 %i.j) #25
  %i.ab = load <2 x i64>, ptr %i.l, align 16
  store <2 x i64> %i.ab, ptr %i.i, align 16
  %i.ac = call i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 16 %i.i) #25
  %i.ad = trunc i32 %i.ac to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.01.0.i = phi i16 [ %i.ad, %bb.c ], [ %i.ah, %bb.e ] ; 4 uses
  %.not.i = icmp eq i16 %.sroa.01.0.i, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.0.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i16 %.sroa.01.0.i, -1
  %i.ah = and i16 %i.ag, %.sroa.01.0.i
  %i.ai = add i64 %.sroa.0.05.i, %i.af
  %i.aj = load i64, ptr %i.u, align 8
  %i.ak = and i64 %i.aj, %i.ai
  %i.al = load ptr, ptr %0, align 8
  %i.am = sub nsw i64 0, %i.ak                    ; 2 uses
  %i.an = getelementptr inbounds [24 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -24
  %i.ap = call zeroext i1 @_RNCINvNtCsfjX3T6UU9IB_9hashbrown3map14equivalent_keyNtCs1K5DUQUZc67_11proc_macro25IdentBO_uE0Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.ao) #25
  br i1 %i.ap, label %bb.m, label %bb.d

bb.f:                                             ; preds = %bb.d
  %.not11.i = icmp eq i64 %.sroa.04.0.i, 1
  br i1 %.not11.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i64> %i.z, ptr %i.c, align 16
  %i.aq = call i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 16 %i.c) #25
  %i.ar = trunc i32 %i.aq to i16                  ; 2 uses
  %.not.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i, label %bb.h, label %.thread12.i

.thread12.i:                                      ; preds = %bb.g
  %i.as = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.0.05.i, %i.at
  %i.av = load i64, ptr %i.u, align 8
  %i.aw = and i64 %i.av, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

.thread.i:                                        ; preds = %.thread12.i, %bb.f
  %.sroa.4.19.i = phi i64 [ %i.aw, %.thread12.i ], [ %.sroa.4.0.i, %bb.f ] ; 3 uses
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse213__mm_set1_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.h, i8 -1) #25
  %i.ax = load <2 x i64>, ptr %i.h, align 16
  store <2 x i64> %i.z, ptr %i.f, align 16
  store <2 x i64> %i.ax, ptr %i.e, align 16
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_cmpeq_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.g, ptr nonnull align 16 %i.f, ptr nonnull align 16 %i.e) #25
  %i.ay = load <2 x i64>, ptr %i.g, align 16
  store <2 x i64> %i.ay, ptr %i.d, align 16
  %i.az = call i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 16 %i.d) #25
  %i.ba = and i32 %i.az, 65535
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread.i, %bb.h
  %.sroa.04.110.i = phi i64 [ 1, %.thread.i ], [ 0, %bb.h ]
  %.sroa.4.18.i = phi i64 [ %.sroa.4.19.i, %.thread.i ], [ undef, %bb.h ]
  %i.bc = load i64, ptr %i.u, align 8
  %i.bd = add i64 %.sroa.6.0.i, 16                ; 2 uses
  %i.be = add i64 %.sroa.0.05.i, %i.bd
  %i.bf = and i64 %i.bc, %i.be
  br label %bb.c

bb.j:                                             ; preds = %.thread.i
  %.val13.i = load ptr, ptr %0, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.4.19.i
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_load_si128Cs1O2ilwARLXE_12serde_derive(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull %.val13.i) #25
  %i.bj = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.bj, ptr %i.a, align 16
  %i.bk = call i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs1O2ilwARLXE_12serde_derive(ptr nonnull align 16 %i.a) #25
  %i.bl = trunc i32 %i.bk to i16                  ; 2 uses
  %.not.i7 = icmp eq i16 %i.bl, 0
end_hunk_0
begin_hunk_1_@_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast5FielduINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3E_QNCNvNtB2c_3ser23serialize_tuple_variant0E0E0B2c_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } @_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast5FieldEQNCNvNtB1l_3ser23serialize_tuple_variant0E0B1l_(ptr align 8 %0, i64 %i.c, ptr align 8 %1) #25
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  ret { i64, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast5FielduINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3E_QNCNvNtB2c_3ser30serialize_tuple_struct_visitor0E0E0B2c_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } @_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast5FieldEQNCNvNtB1l_3ser30serialize_tuple_struct_visitor0E0B1l_(ptr align 8 %0, i64 %i.c, ptr align 8 %1) #25
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  ret { i64, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast5FielduINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3E_QNCNvNtNtB2c_2de7struct_11deserialize0E0E0B2c_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } @_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast5FieldEQNCNvNtNtB1l_2de7struct_11deserialize0E0B1l_(ptr align 8 %0, i64 %i.c, ptr align 8 %1) #25
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  ret { i64, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantuINtNtNtBf_3ops12control_flow11ControlFlowNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvNtBb_6filter15filter_try_foldTjB25_EuB31_NCNvNtNtB2c_2de15enum_adjacently11deserializes0_0NCINvNvB1e_8find_map5checkB4V_B3G_QNCB59_s1_0E0E0E0B2c_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.c, align 8
  call void @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTjRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantEuINtNtNtBa_3ops12control_flow11ControlFlowNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCNvNtNtB1e_2de15enum_adjacently11deserializes0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2J_QNCB3s_s1_0E0E0B1e_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %1, i64 %i.d, ptr align 8 %2) #25
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNtBb_6filter15filter_try_foldB3G_uB31_NCNvNtNtB2c_2de5enum_25prepare_enum_variant_enum0NCINvNvB1e_4find5checkB3G_NCB4x_s_0E0E0E0B2c_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTjRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvNtNtB1e_2de5enum_25prepare_enum_variant_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2Q_s_0E0E0B1e_(ptr align 8 %0, i64 %i.c, ptr align 8 %1) #25
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  ret { i64, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3G_QNCNvNtNtB2c_2de15enum_adjacently11deserialize0E0E0B2c_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } @_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantEQNCNvNtNtB1l_2de15enum_adjacently11deserialize0E0B1l_(ptr align 8 %0, i64 %i.c, ptr align 8 %1) #25
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  ret { i64, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3G_QNCNvNtNtB2c_2de15enum_externally11deserialize0E0E0B2c_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } @_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantEQNCNvNtNtB1l_2de15enum_externally11deserialize0E0B1l_(ptr align 8 %0, i64 %i.c, ptr align 8 %1) #25
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  ret { i64, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3G_QNCNvNtNtB2c_2de15enum_internally11deserialize0E0E0B2c_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } @_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantEQNCNvNtNtB1l_2de15enum_internally11deserialize0E0B1l_(ptr align 8 %0, i64 %i.c, ptr align 8 %1) #25
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  ret { i64, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3G_QNCNvNtNtB2c_2de5enum_25prepare_enum_variant_enum0E0E0B2c_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } @_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtCs1O2ilwARLXE_12serde_derive9internals3ast7VariantEQNCNvNtNtB1l_2de5enum_25prepare_enum_variant_enum0E0B1l_(ptr align 8 %0, i64 %i.c, ptr align 8 %1) #25
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  ret { i64, ptr } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB8_7HashSetNtCs1K5DUQUZc67_11proc_macro25IdentNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBQ_E6extendINtNtNtB2k_8adapters3map3MapNtNtCsgFSQ9XOTBNe_3syn8generics10TypeParamsNCNvNtCs1O2ilwARLXE_12serde_derive5bound10with_bound0EE0B4w_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvXsl_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3setINtB8_8BTreeSetNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendB1a_E6extendINtNtNtB1W_8adapters6cloned6ClonedINtB8_4IterB1a_EEE0Cs1O2ilwARLXE_12serde_derive(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call fastcc zeroext i1 @_RNvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeNtNtB7_7set_val9SetValZSTE6insertCs1O2ilwARLXE_12serde_derive(ptr align 8 %i.a, ptr align 8 %1) ; 0 uses
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvXsl_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3setINtB8_8BTreeSetNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendB1a_E6extendINtNtNtB1W_8adapters6cloned6ClonedINtNtB1Y_6option4IterB1a_EEE0Cs1O2ilwARLXE_12serde_derive(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call fastcc zeroext i1 @_RNvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeNtNtB7_7set_val9SetValZSTE6insertCs1O2ilwARLXE_12serde_derive(ptr align 8 %i.a, ptr align 8 %1) ; 0 uses
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0Cs1O2ilwARLXE_12serde_derive(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not8 = icmp eq i64 %i.c, -1
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre9 = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre10 = add i64 %.pre9, 1
  %i.e = lshr i64 %.pre10, 3
  %i.f = mul nuw i64 %i.e, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %i.f, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.g = phi i64 [ %.pre9, %._crit_edge.loopexit ], [ -1, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.i = icmp ult i64 %i.g, 8
  %.sroa.03.0 = select i1 %i.i, i64 %i.g, i64 %.pre-phi
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = sub i64 %.sroa.03.0, %i.k
  store i64 %i.m, ptr %i.l, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.07 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.c ] ; 5 uses
  %.neg = xor i64 %.sroa.0.07, -1
  %i.n = add nuw i64 %.sroa.0.07, 1
  %i.o = load ptr, ptr %1, align 8                ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.07 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, -128
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %exitcond.not = icmp eq i64 %.sroa.0.07, %i.c
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.0.07, -16
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, %i.t
  store i8 -1, ptr %i.q, align 1
  %i.x = load ptr, ptr %i.o, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.w
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store i8 -1, ptr %i.z, align 1
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = load i64, ptr %i.d, align 8
  %i.ad = load ptr, ptr %i.ab, align 8
  %.neg6 = mul i64 %i.ac, %.neg
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg6
  tail call void %i.aa(ptr %i.ae)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8
  br label %bb.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE22insert_tagged_at_indexCs1O2ilwARLXE_12serde_derive(ptr nofree align 8 captures(none) %0, i8 %1, i64 %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = sub i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8
  %i.i = add i64 %2, -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, %i.i
  store i8 %1, ptr %i.b, align 1
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store i8 %1, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8
  %i.s = load ptr, ptr %0, align 8
  %i.t = sub nsw i64 0, %2
  %i.u = getelementptr inbounds [24 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  ret ptr %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs1O2ilwARLXE_12serde_derive() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 464, i64 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 8, i64 464) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCs1O2ilwARLXE_12serde_derive9internals4name4NameNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1A_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 464, i64 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 8, i64 464) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs1O2ilwARLXE_12serde_derive() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 368, i64 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 8, i64 368) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCs1O2ilwARLXE_12serde_derive9internals4name4NameNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1v_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 368, i64 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 8, i64 368) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3setINtB5_8BTreeSetNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeE3newCs1O2ilwARLXE_12serde_derive(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8), (16, 24)) %0) unnamed_addr #8 {
bb.a:
  store ptr null, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3setINtB5_8BTreeSetNtNtNtCs1O2ilwARLXE_12serde_derive9internals4name4NameE3newB1d_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8), (16, 24)) %0) unnamed_addr #8 {
bb.a:
  store ptr null, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsc_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3setINtB5_8BTreeSetNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeE4iterCs1O2ilwARLXE_12serde_derive(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x i64>, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.d = phi <2 x i64> [ %i.c, %bb.b ], [ <i64 undef, i64 0>, %bb.a ] ; 2 uses
  store i64 %.sroa.0.sroa.0.0, ptr %0, align 8
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8
  %.sroa.01.sroa.2.sroa.2.0..sroa.01.sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.01.sroa.2.sroa.2.0..sroa.01.sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.2.sroa.3.0..sroa.01.sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = extractelement <2 x i64> %i.d, i64 0
  store i64 %i.e, ptr %.sroa.01.sroa.2.sroa.3.0..sroa.01.sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.sroa.0.0, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.4.sroa.2.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %.sroa.01.sroa.4.sroa.2.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.4.sroa.3.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.d, ptr %.sroa.01.sroa.4.sroa.3.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsc_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3setINtB5_8BTreeSetNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeE6insertCs1O2ilwARLXE_12serde_derive(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @_RNvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeNtNtB7_7set_val9SetValZSTE6insertCs1O2ilwARLXE_12serde_derive(ptr align 8 %0, ptr align 8 %1)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMsc_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3setINtB5_8BTreeSetNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeE8is_emptyCs1O2ilwARLXE_12serde_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsc_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3setINtB5_8BTreeSetNtNtNtCs1O2ilwARLXE_12serde_derive9internals4name4NameE4iterB1d_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
end_hunk_1
