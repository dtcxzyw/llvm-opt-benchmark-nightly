Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_proto-c1a4d9df8e25a33a.yara_x_proto.468b5e6f95c13067-cgu.0?download=true
inline.NumInlined: 57
inline.NumDeleted: 13
begin_hunk_0_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs63vnYBEjbPn_12yara_x_proto.exit

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtNtCskKLDkoKarTP_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCs5YNYYMCeUDn_8protobuf(ptr nonnull sret([32 x i8]) align 8 %i.i, i64 0, i64 %i.ae, i64 16) #18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8            ; 2 uses
  %.not4.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not4.i.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i
  %i.ds = phi i64 [ %i.dq, %.lr.ph.i.i ], [ %i.ee, %bb.m ]
  %i.dt = load i64, ptr %i.dr, align 8
  %i.du = add nuw i64 %i.dt, 1
  %i.dv = load i64, ptr %i.i, align 8             ; 3 uses
  %i.dw = add i64 %i.du, %i.dv
  store i64 %i.dw, ptr %i.i, align 8
  %i.dx = add i64 %i.ds, -1
  store i64 %i.dx, ptr %i.dp, align 8
  %i.dy = load ptr, ptr %0, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.h, ptr %i.dz) #18
  %i.ea = load <2 x i64>, ptr %i.h, align 16
  store <2 x i64> %i.ea, ptr %i.f, align 16
  call void @_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group44convert_special_to_empty_and_full_to_deletedCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.g, ptr nonnull align 16 %i.f) #18
  %i.eb = load <2 x i64>, ptr %i.g, align 16
  %i.ec = load ptr, ptr %0, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dv
  store <2 x i64> %i.eb, ptr %i.e, align 16
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_store_si128Cs63vnYBEjbPn_12yara_x_proto(ptr %i.ed, ptr nonnull align 16 %i.e) #18
  %i.ee = load i64, ptr %i.dp, align 8            ; 2 uses
  %.not.i.i10 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i10, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.i, label %bb.m

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.i: ; preds = %bb.m, %bb.l
  %i.ef = load i64, ptr %i.ab, align 8
  %i.eg = add i64 %i.ef, 1                        ; 2 uses
  %i.eh = load ptr, ptr %0, align 8               ; 2 uses
  %..i.i = call i64 @llvm.umax.i64(i64 %i.eg, i64 16)
  %.8.i.i = call i64 @llvm.umin.i64(i64 %i.eg, i64 16)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %..i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr align 1 %i.eh, i64 %.8.i.i, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE14reserve_rehashNCINvNtBd_3map11make_hasherBV_BV_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs63vnYBEjbPn_12yara_x_proto, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 48, ptr %i.ek, align 8
  store ptr %0, ptr %i.j, align 8
  %i.el = load i64, ptr %i.ab, align 8            ; 2 uses
  %.not11.i = icmp eq i64 %i.el, -1
  br i1 %.not11.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.thread, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.i, %bb.v
  %.sroa.0.010.i = phi i64 [ %i.em, %bb.v ], [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.i ] ; 9 uses
  %i.em = add nuw i64 %.sroa.0.010.i, 1           ; 2 uses
  %i.en = load ptr, ptr %0, align 8               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sroa.0.010.i
  %i.ep = load i8, ptr %i.eo, align 1
  %.not.i12 = icmp eq i8 %i.ep, -128
  br i1 %.not.i12, label %bb.n, label %bb.v

bb.n:                                             ; preds = %.lr.ph.i11
  %.neg.i = mul i64 %i.em, -48
  %i.eq = getelementptr inbounds i8, ptr %i.en, i64 %.neg.i ; 2 uses
  %i.er = sub nsw i64 0, %.sroa.0.010.i
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %bb.n
  %i.es = load ptr, ptr %0, align 8
  %i.et = getelementptr inbounds [48 x i8], ptr %i.es, i64 %i.er
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -48
  %i.ev = invoke i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherNtNtCsexYYUdYSQU6_5alloc6string6StringBL_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.eu) #18
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs63vnYBEjbPn_12yara_x_proto.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc14.i, %.lr.ph.i10.i, %bb.u, %.noexc12.i, %bb.p, %.noexc.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs63vnYBEjbPn_12yara_x_proto.exit.i, %bb.o
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs5YNYYMCeUDn_8protobuf(ptr nonnull align 8 %i.j) #19
          to label %common.resume unwind label %bb.w

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs63vnYBEjbPn_12yara_x_proto.exit.i: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ew = load i64, ptr %i.ab, align 8
  %i.ex = and i64 %i.ew, %i.ev                    ; 3 uses
  %i.ey = load ptr, ptr %0, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  invoke void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.ez) #18
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs63vnYBEjbPn_12yara_x_proto.exit.i
  %i.fa = load <2 x i64>, ptr %i.d, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i64> %i.fa, ptr %i.c, align 16
  %i.fb = invoke i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.c) #18
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11.i:                                       ; preds = %.noexc.i
  %i.fc = trunc i32 %i.fb to i16                  ; 2 uses
  %.not.i13.i.i = icmp eq i16 %i.fc, 0
  br i1 %.not.i13.i.i, label %.lr.ph.i10.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc15.i, %.noexc11.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.ex, %.noexc11.i ], [ %i.ft, %.noexc15.i ]
  %.lcssa.i.i = phi i16 [ %i.fc, %.noexc11.i ], [ %i.fy, %.noexc15.i ]
  %i.fd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fe = zext nneg i16 %i.fd to i64
  %i.ff = add i64 %.sroa.0.0.lcssa.i.i, %i.fe
  %i.fg = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.fh = and i64 %i.ff, %i.fg                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val3.i.i = load ptr, ptr %0, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fi = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = icmp sgt i8 %i.fj, -1
  br i1 %i.fk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  invoke void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull %.val3.i.i) #18
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12.i:                                       ; preds = %bb.p
  %i.fl = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.fl, ptr %i.a, align 16
  %i.fm = invoke i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.a) #18
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i:                                       ; preds = %.noexc12.i
  %i.fn = trunc i32 %i.fm to i16                  ; 2 uses
  %.not.i5.i.i = icmp eq i16 %i.fn, 0
  %i.fo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fn, i1 true)
  %i.fp = zext nneg i16 %i.fo to i64
  %.sroa.3.0.i6.i.i = select i1 %.not.i5.i.i, i64 undef, i64 %i.fp
  %.pre = load i64, ptr %i.ab, align 8
  br label %bb.q

.lr.ph.i10.i:                                     ; preds = %.noexc11.i, %.noexc15.i
  %.sroa.0.015.i.i = phi i64 [ %i.ft, %.noexc15.i ], [ %i.ex, %.noexc11.i ]
  %.sroa.5.014.i.i = phi i64 [ %i.fr, %.noexc15.i ], [ 0, %.noexc11.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fq = load i64, ptr %i.ab, align 8
  %i.fr = add i64 %.sroa.5.014.i.i, 16            ; 2 uses
  %i.fs = add i64 %i.fr, %.sroa.0.015.i.i
  %i.ft = and i64 %i.fq, %i.fs                    ; 3 uses
  %i.fu = load ptr, ptr %0, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  invoke void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.fv) #18
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14.i:                                       ; preds = %.lr.ph.i10.i
  %i.fw = load <2 x i64>, ptr %i.d, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i64> %i.fw, ptr %i.c, align 16
  %i.fx = invoke i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.c) #18
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15.i:                                       ; preds = %.noexc14.i
  %i.fy = trunc i32 %i.fx to i16                  ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fy, 0
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %._crit_edge.i.i

bb.q:                                             ; preds = %.noexc13.i, %._crit_edge.i.i
  %i.fz = phi i64 [ %.pre, %.noexc13.i ], [ %i.fg, %._crit_edge.i.i ] ; 4 uses
  %.sroa.0.0.i4.i.i = phi i64 [ %.sroa.3.0.i6.i.i, %.noexc13.i ], [ %i.fh, %._crit_edge.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ga = and i64 %i.fz, %i.ev                    ; 2 uses
  %i.gb = sub i64 %.sroa.0.010.i, %i.ga
  %i.gc = sub i64 %.sroa.0.0.i4.i.i, %i.ga
  %i.gd = xor i64 %i.gb, %i.gc
  %.unshifted.i = and i64 %i.gd, %i.fz
  %i.ge = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ge, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gf = load ptr, ptr %0, align 8               ; 2 uses
  %.neg9.i = mul i64 %.sroa.0.0.i4.i.i, -48
  %i.gg = getelementptr i8, ptr %i.gf, i64 %.neg9.i
  %i.gh = getelementptr i8, ptr %i.gg, i64 -48    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sroa.0.0.i4.i.i ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = lshr i64 %i.ev, 57
  %i.gl = trunc nuw nsw i64 %i.gk to i8           ; 2 uses
  %i.gm = add i64 %.sroa.0.0.i4.i.i, -16
  %i.gn = and i64 %i.fz, %i.gm
  store i8 %i.gl, ptr %i.gi, align 1
  %i.go = load ptr, ptr %0, align 8
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gn
  %i.gq = getelementptr i8, ptr %i.gp, i64 16
  store i8 %i.gl, ptr %i.gq, align 1
  %i.gr = icmp eq i8 %i.gj, -1
  br i1 %i.gr, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.gs = lshr i64 %i.ev, 57
  %i.gt = trunc nuw nsw i64 %i.gs to i8           ; 2 uses
  %i.gu = add i64 %.sroa.0.010.i, -16
  %i.gv = and i64 %i.fz, %i.gu
  %i.gw = load ptr, ptr %0, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.sroa.0.010.i
  store i8 %i.gt, ptr %i.gx, align 1
  %i.gy = load ptr, ptr %0, align 8
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.gv
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  store i8 %i.gt, ptr %i.ha, align 1
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.hb = add i64 %.sroa.0.010.i, -16
  %i.hc = load i64, ptr %i.ab, align 8
  %i.hd = and i64 %i.hc, %i.hb
  %i.he = load ptr, ptr %0, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sroa.0.010.i
  store i8 -1, ptr %i.hf, align 1
  %i.hg = load ptr, ptr %0, align 8
  %i.hh = getelementptr i8, ptr %i.hg, i64 %i.hd
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  store i8 -1, ptr %i.hi, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.gh, ptr noundef nonnull align 1 dereferenceable(48) %i.eq, i64 48, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  invoke void @_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytesCs63vnYBEjbPn_12yara_x_proto(ptr %i.eq, ptr %i.gh, i64 48)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.t, %bb.s, %.lr.ph.i11
  %exitcond.not.i = icmp eq i64 %.sroa.0.010.i, %i.el
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit, label %.lr.ph.i11

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit: ; preds = %bb.v
  %.pre.i = load i64, ptr %i.ab, align 8
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre22.i = add i64 %.pre.i.fr, 1
  %i.hk = lshr i64 %.pre22.i, 3
  %i.hl = mul nuw i64 %i.hk, 7
  %i.hm = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.hm, i64 %.pre.i.fr, i64 %i.hl
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.thread

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.thread: ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.i
  %i.hn = phi i64 [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.i ], [ %spec.select, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit ]
  %i.ho = load i64, ptr %i.x, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hq = sub i64 %i.hn, %i.ho
  store i64 %i.hq, ptr %i.hp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs63vnYBEjbPn_12yara_x_proto.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs63vnYBEjbPn_12yara_x_proto.exit: ; preds = %bb.c, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs63vnYBEjbPn_12yara_x_proto.exit.i, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.thread
  %.sroa.4.0.i = phi i64 [ %i.ak, %bb.c ], [ undef, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.thread ], [ %.sroa.3.0.i.i, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs63vnYBEjbPn_12yara_x_proto.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.aj, %bb.c ], [ -1, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs63vnYBEjbPn_12yara_x_proto.exit.thread ], [ %.sroa.0.0.i.i, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs63vnYBEjbPn_12yara_x_proto.exit.i ]
  %i.hr = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hs = insertvalue { i64, i64 } %i.hr, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hs
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0NCINvB23_11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto(ptr align 8 %0, i64 %1, ptr align 8 %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br i1 %i.r, label %bb.b, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto.exit

bb.b:                                             ; preds = %bb.a
  %i.s = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %0, i64 1, ptr align 8 %3, i1 zeroext true) #21 ; 0 uses
  br label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto.exit

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto.exit: ; preds = %bb.a, %bb.b
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
  %i.t = lshr i64 %1, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto.exit
  %.sroa.6.0.i = phi i64 [ 0, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto.exit ], [ %i.be, %bb.i ]
  %.sroa.0.05.i = phi i64 [ %i.x, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto.exit ], [ %i.bg, %bb.i ] ; 4 uses
  %.sroa.4.0.i = phi i64 [ undef, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto.exit ], [ %.sroa.4.18.i, %bb.i ]
  %.sroa.04.0.i = phi i64 [ 0, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto.exit ], [ %.sroa.04.110.i, %bb.i ]
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.05.i
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.n, ptr %i.z) #18
  %i.aa = load <2 x i64>, ptr %i.n, align 16      ; 3 uses
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse213__mm_set1_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.m, i8 %i.u) #18
  %i.ab = load <2 x i64>, ptr %i.m, align 16
  store <2 x i64> %i.aa, ptr %i.k, align 16
  store <2 x i64> %i.ab, ptr %i.j, align 16
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_cmpeq_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.l, ptr nonnull align 16 %i.k, ptr nonnull align 16 %i.j) #18
  %i.ac = load <2 x i64>, ptr %i.l, align 16
  store <2 x i64> %i.ac, ptr %i.i, align 16
  %i.ad = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.i) #18
  %i.ae = trunc i32 %i.ad to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.01.0.i = phi i16 [ %i.ae, %bb.c ], [ %i.ai, %bb.e ] ; 4 uses
  %.not.i = icmp eq i16 %.sroa.01.0.i, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.0.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i16 %.sroa.01.0.i, -1
  %i.ai = and i16 %i.ah, %.sroa.01.0.i
  %i.aj = add i64 %.sroa.0.05.i, %i.ag
  %i.ak = load i64, ptr %i.v, align 8
  %i.al = and i64 %i.ak, %i.aj
  %i.am = load ptr, ptr %0, align 8
  %i.an = sub nsw i64 0, %i.al                    ; 2 uses
  %i.ao = getelementptr inbounds [48 x i8], ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -48
  %i.aq = call zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyNtNtCsexYYUdYSQU6_5alloc6string6StringBO_BO_E0Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.ap) #18
  br i1 %i.aq, label %bb.m, label %bb.d

bb.f:                                             ; preds = %bb.d
  %.not11.i = icmp eq i64 %.sroa.04.0.i, 1
  br i1 %.not11.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i64> %i.aa, ptr %i.c, align 16
  %i.ar = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.c) #18
  %i.as = trunc i32 %i.ar to i16                  ; 2 uses
  %.not.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.i, label %bb.h, label %.thread12.i

.thread12.i:                                      ; preds = %bb.g
  %i.at = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.05.i, %i.au
  %i.aw = load i64, ptr %i.v, align 8
  %i.ax = and i64 %i.aw, %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

.thread.i:                                        ; preds = %.thread12.i, %bb.f
  %.sroa.4.19.i = phi i64 [ %i.ax, %.thread12.i ], [ %.sroa.4.0.i, %bb.f ] ; 3 uses
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse213__mm_set1_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.h, i8 -1) #18
  %i.ay = load <2 x i64>, ptr %i.h, align 16
  store <2 x i64> %i.aa, ptr %i.f, align 16
  store <2 x i64> %i.ay, ptr %i.e, align 16
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_cmpeq_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.g, ptr nonnull align 16 %i.f, ptr nonnull align 16 %i.e) #18
  %i.az = load <2 x i64>, ptr %i.g, align 16
  store <2 x i64> %i.az, ptr %i.d, align 16
  %i.ba = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.d) #18
  %i.bb = and i32 %i.ba, 65535
end_hunk_0
begin_hunk_1_@_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringB1a_EECs63vnYBEjbPn_12yara_x_proto:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.h) #18
  %i.i = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load i64, ptr %i.e, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = trunc i32 %i.j to i16
  %i.o = xor i16 %i.n, -1
  br label %.lr.ph

.loopexit:                                        ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit, %bb.c, %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.05.019 = phi ptr [ %.sroa.05.229, %bb.c ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.sroa.4.018 = phi ptr [ %.sroa.4.228, %bb.c ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.sroa.1.017 = phi i64 [ %i.z, %bb.c ], [ %i.k, %.lr.ph.preheader ]
  %.sroa.76.016 = phi i16 [ %i.ab, %bb.c ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not8.i = icmp eq i16 %.sroa.76.016, 0
  br i1 %.not8.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.sroa.4.1 = phi ptr [ %i.t, %.lr.ph.i ], [ %.sroa.4.018, %.lr.ph ] ; 2 uses
  %.sroa.05.1 = phi ptr [ %i.s, %.lr.ph.i ], [ %.sroa.05.019, %.lr.ph ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %.sroa.4.1) #18
  %i.p = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.p, ptr %i.a, align 16
  %i.q = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.a) #18
  %i.r = trunc i32 %i.q to i16                    ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.05.1, i64 -768 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.1, i64 16 ; 2 uses
  %.not.i = icmp eq i16 %i.r, -1
  br i1 %.not.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread: ; preds = %.lr.ph.i
  %i.u = xor i16 %i.r, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.sroa.05.019, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit
  %.lcssa.i30 = phi i16 [ %i.u, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread ], [ %.sroa.76.016, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit ] ; 3 uses
  %.sroa.05.229 = phi ptr [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread ], [ %.sroa.05.019, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit ] ; 2 uses
  %.sroa.4.228 = phi ptr [ %i.t, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread ], [ %.sroa.4.018, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit ]
  %i.v = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i30, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [48 x i8], ptr %.sroa.05.229, i64 %i.x
  %i.z = add i64 %.sroa.10.sroa.1.017, -1         ; 2 uses
  %i.aa = add i16 %.lcssa.i30, -1
  %i.ab = and i16 %i.aa, %.lcssa.i30
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -48
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringBC_EECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.ac)
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs63vnYBEjbPn_12yara_x_proto(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringB1a_EECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %0)
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  %i.i = add i64 %3, -1
  %i.j = add i64 %i.i, %i.h                       ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %3
  %i.m = and i64 %i.j, %i.l                       ; 3 uses
  %i.n = add i64 %i.d, 17
  %i.o = add i64 %i.n, %i.m                       ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = sub i64 -9223372036854775808, %3
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.o, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.s = load ptr, ptr %0, align 8
  %i.t = sub nsw i64 0, %.sroa.8.0
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs63vnYBEjbPn_12yara_x_proto(ptr %1, ptr %i.u, i64 %.sroa.0.0, i64 %.sroa.6.0) #18
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not8 = icmp eq i16 %i.d, 0
  br i1 %.not8, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre11 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -768
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre11, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n) #18
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.a) #18
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -768
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.024 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.427 = alloca [48 x i8], align 8          ; 2 uses
  %.sroa.528 = alloca [16 x i8], align 8          ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = tail call { i64, ptr } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7w4qHFuqA31_14iana_time_zone(i64 %2, i64 8, i64 96) #18 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 5 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8
  store ptr %i.f, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.d, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.n = icmp eq i64 %i.h, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %i.o = phi i64 [ %.pr, %bb.l ], [ %i.h, %bb.a ]
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %.sroa.2.0..sroa_idx, align 8
  %i.q = invoke { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageEENtNtNtB8_6traits8iterator8Iterator4nextB1B_(ptr nonnull align 8 %i.d)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

._crit_edge:                                      ; preds = %bb.b, %bb.l, %bb.a
  store i64 %2, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %bb.d, %.lr.ph, %bb.j
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %lpad.loopexit.split-lp44, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageNtNtBM_5alloc6GlobalEEB21_(ptr nonnull align 8 %i.e) #19
          to label %bb.n unwind label %bb.m

bb.b:                                             ; preds = %.lr.ph
  %i.r = extractvalue { i64, ptr } %i.q, 0        ; 4 uses
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 5 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.r, ptr %i.l, align 8
  %i.t = icmp ult i64 %i.r, %i.h
  br i1 %i.t, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.v = invoke { i32, i32 } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionlENtNtB7_5clone5Clone5cloneCs2nizDKKJVD2_6chrono(ptr nonnull align 4 %i.u) #18
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs5YNYYMCeUDn_8protobuf(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.s) #18
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB12_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr nonnull align 8 %i.w)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.x, %bb.f ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7w4qHFuqA31_14iana_time_zone(ptr nonnull align 8 %i.c) #19
          to label %.body unwind label %bb.i

bb.f:                                             ; preds = %.noexc12
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %.noexc12
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  invoke void @_RNvXs3_NtCs5YNYYMCeUDn_8protobuf7specialNtB5_13SpecialFieldsNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.y)
          to label %bb.l unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.b) #19
          to label %bb.e unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.j:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.r, i64 %i.h, ptr nonnull align 8 @1) #22
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.ab = extractvalue { i32, i32 } %i.v, 1
  %i.ac = extractvalue { i32, i32 } %i.v, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.024, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.528, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %i.r ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.024, i64 24, i1 false)
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i32 %i.ac, ptr %.sroa.225.0..sroa_idx, align 8
  %.sroa.326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  store i32 %i.ab, ptr %.sroa.326.0..sroa_idx, align 4
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427, i64 48, i1 false)
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.528, i64 16, i1 false)
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.ae = icmp eq i64 %.pr, 0
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.n, %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.n:                                             ; preds = %.body
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageEEB1c_(ptr nonnull align 8 %i.f) #19
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs63vnYBEjbPn_12yara_x_proto(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -48
  %i.f = tail call i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherNtNtCsexYYUdYSQU6_5alloc6string6StringBL_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Cs63vnYBEjbPn_12yara_x_proto(ptr align 8 %i.a, ptr nonnull align 8 %i.e) #18
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs63vnYBEjbPn_12yara_x_proto(ptr nofree readnone captures(none) %0, ptr %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringBC_EECs63vnYBEjbPn_12yara_x_proto(ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB25_11make_hasherBS_BS_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs63vnYBEjbPn_12yara_x_proto(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -48
  %i.h = tail call zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyNtNtCsexYYUdYSQU6_5alloc6string6StringBO_BO_E0Cs63vnYBEjbPn_12yara_x_proto(ptr align 8 %i.a, ptr nonnull align 8 %i.g) #18
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs63vnYBEjbPn_12yara_x_proto(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -48
  %i.h = tail call zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyNtNtCsexYYUdYSQU6_5alloc6string6StringBO_BO_E0Cs63vnYBEjbPn_12yara_x_proto(ptr align 8 %i.a, ptr nonnull align 8 %i.g) #18
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs63vnYBEjbPn_12yara_x_proto(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -48
  %i.h = tail call zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyeNtNtCsexYYUdYSQU6_5alloc6string6StringBP_E0Cs63vnYBEjbPn_12yara_x_proto(ptr align 8 %i.a, ptr nonnull align 8 %i.g) #18
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNCNvNtCs63vnYBEjbPn_12yara_x_proto9test_json15file_descriptor00B7_(ptr sret([352 x i8]) align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 16 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [24 x i8], align 8                ; 2 uses
  %i.z = alloca [48 x i8], align 8                ; 2 uses
  %i.aa = alloca [48 x i8], align 8               ; 2 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [80 x i8], align 8               ; 2 uses
  %i.ad = alloca [80 x i8], align 8               ; 2 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  call void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect4file14FileDescriptorE13with_capacityBI_(ptr nonnull sret([24 x i8]) align 8 %i.af, i64 1) #18
  %i.ag = invoke align 8 ptr @_RNvNtCs63vnYBEjbPn_12yara_x_proto4yara15file_descriptor()
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.c:                                             ; preds = %bb.a
  %i.ai = invoke { i64, ptr } @_RNvXs4_NtNtCs5YNYYMCeUDn_8protobuf7reflect4fileNtB5_14FileDescriptorNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr align 8 %i.ag)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect4file14FileDescriptorE4pushBL_(ptr nonnull align 8 %i.af, i64 %i.aj, ptr %i.ak)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generated30GeneratedMessageDescriptorDataE13with_capacityBK_(ptr nonnull sret([24 x i8]) align 8 %i.ae, i64 2)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE13with_capacityBI_(ptr nonnull sret([24 x i8]) align 8 %i.v, i64 3) #18
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.f
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5oneof9generated28GeneratedOneofDescriptorDataE13with_capacityBK_(ptr nonnull sret([24 x i8]) align 8 %i.u, i64 0)
          to label %bb.h unwind label %bb.g, !noalias !8

bb.g:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.h:                                             ; preds = %.noexc
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular20make_option_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessagelEB1l_(ptr nonnull sret([40 x i8]) align 8 %i.t, ptr nonnull @15, i64 3, ptr nonnull @_RNvYNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB9_10SubMessage33generated_message_descriptor_data0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBN_EE9call_onceBb_, ptr nonnull @_RNvYNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB9_10SubMessage33generated_message_descriptor_datas_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBN_EE9call_onceBb_)
          to label %bb.i unwind label %bb.o, !noalias !8

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.t)
          to label %bb.j unwind label %bb.o, !noalias !8

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular20make_option_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageNtNtCsexYYUdYSQU6_5alloc6string6StringEB1l_(ptr nonnull sret([40 x i8]) align 8 %i.s, ptr nonnull @17, i64 3, ptr nonnull @_RNvYNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB9_10SubMessage33generated_message_descriptor_datas0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBN_EE9call_onceBb_, ptr nonnull @_RNvYNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB9_10SubMessage33generated_message_descriptor_datas1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBN_EE9call_onceBb_)
          to label %bb.k unwind label %bb.o, !noalias !8

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.s)
          to label %bb.l unwind label %bb.o, !noalias !8

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v23map29make_map_simpler_accessor_newNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB37_EEB1p_(ptr nonnull sret([40 x i8]) align 8 %i.r, ptr nonnull @29, i64 17, ptr nonnull @_RNvYNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB9_10SubMessage33generated_message_descriptor_datas2_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBN_EE9call_onceBb_, ptr nonnull @_RNvYNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB9_10SubMessage33generated_message_descriptor_datas3_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBN_EE9call_onceBb_)
          to label %bb.m unwind label %bb.o, !noalias !8

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.r)
          to label %bb.n unwind label %bb.o, !noalias !8

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !8
  invoke void @_RINvMs0_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generatedNtB6_30GeneratedMessageDescriptorData5new_2NtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageEB1K_(ptr nonnull sret([80 x i8]) align 8 %i.ad, ptr nonnull @4, i64 10, ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.p)
          to label %bb.s unwind label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5oneof9generated28GeneratedOneofDescriptorDataEEB1g_(ptr nonnull align 8 %i.u) #19
          to label %bb.q unwind label %bb.p, !noalias !8

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !8
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.g
  %.pn.ph.i = phi { ptr, i32 } [ %i.al, %bb.g ], [ %lpad.thr_comm.i, %bb.o ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorEEB1e_(ptr nonnull align 8 %i.v) #19
          to label %bb.bc unwind label %bb.p, !noalias !8

bb.r:                                             ; preds = %bb.ar, %bb.t, %bb.n, %bb.f, %bb.aw, %bb.av, %bb.s
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generated30GeneratedMessageDescriptorDataE4pushBN_(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ad)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE13with_capacityBI_(ptr nonnull sret([24 x i8]) align 8 %i.o, i64 11) #18
          to label %.noexc9 unwind label %bb.r

.noexc9:                                          ; preds = %bb.t
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5oneof9generated28GeneratedOneofDescriptorDataE13with_capacityBK_(ptr nonnull sret([24 x i8]) align 8 %i.n, i64 0)
          to label %bb.v unwind label %bb.u, !noalias !9

bb.u:                                             ; preds = %.noexc9
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.v:                                             ; preds = %.noexc9
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular20make_option_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessagelEB1l_(ptr nonnull sret([40 x i8]) align 8 %i.m, ptr nonnull @15, i64 3, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_data0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_)
          to label %bb.w unwind label %bb.as, !noalias !9

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.m)
          to label %bb.x unwind label %bb.as, !noalias !9

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular20make_option_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessagexEB1l_(ptr nonnull sret([40 x i8]) align 8 %i.l, ptr nonnull @16, i64 3, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_)
          to label %bb.y unwind label %bb.as, !noalias !9

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.l)
          to label %bb.z unwind label %bb.as, !noalias !9

bb.z:                                             ; preds = %bb.y
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular20make_option_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessageNtNtCsexYYUdYSQU6_5alloc6string6StringEB1l_(ptr nonnull sret([40 x i8]) align 8 %i.k, ptr nonnull @17, i64 3, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas2_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas3_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_)
          to label %bb.aa unwind label %bb.as, !noalias !9

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.k)
          to label %bb.ab unwind label %bb.as, !noalias !9

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular20make_option_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessageINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB1l_(ptr nonnull sret([40 x i8]) align 8 %i.j, ptr nonnull @18, i64 5, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas4_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas5_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_)
          to label %bb.ac unwind label %bb.as, !noalias !9

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.j)
          to label %bb.ad unwind label %bb.as, !noalias !9

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular20make_option_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessagefEB1l_(ptr nonnull sret([40 x i8]) align 8 %i.i, ptr nonnull @19, i64 5, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas6_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas7_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_)
          to label %bb.ae unwind label %bb.as, !noalias !9

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.i)
          to label %bb.af unwind label %bb.as, !noalias !9

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular20make_option_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessagebEB1l_(ptr nonnull sret([40 x i8]) align 8 %i.h, ptr nonnull @20, i64 4, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas8_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas9_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_)
          to label %bb.ag unwind label %bb.as, !noalias !9

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.h)
          to label %bb.ah unwind label %bb.as, !noalias !9

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28repeated25make_vec_simpler_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessageNtB1o_10SubMessageEB1q_(ptr nonnull sret([40 x i8]) align 8 %i.g, ptr nonnull @21, i64 12, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datasa_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datasb_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_)
          to label %bb.ai unwind label %bb.as, !noalias !9

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.g)
          to label %bb.aj unwind label %bb.as, !noalias !9

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular27make_message_field_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessageNtB1q_10SubMessageEB1s_(ptr nonnull sret([40 x i8]) align 8 %i.f, ptr nonnull @22, i64 10, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datasc_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datasd_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_)
          to label %bb.ak unwind label %bb.as, !noalias !9

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.f)
          to label %bb.al unwind label %bb.as, !noalias !9

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular20make_option_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessagelEB1l_(ptr nonnull sret([40 x i8]) align 8 %i.e, ptr nonnull @23, i64 9, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datase_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datasf_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_)
          to label %bb.am unwind label %bb.as, !noalias !9

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.e)
          to label %bb.an unwind label %bb.as, !noalias !9

bb.an:                                            ; preds = %bb.am
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular20make_option_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessageINtNtBa_15enum_or_unknown13EnumOrUnknownNtB1j_4EnumEEB1l_(ptr nonnull sret([40 x i8]) align 8 %i.d, ptr nonnull @24, i64 4, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datasg_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datash_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_)
          to label %bb.ao unwind label %bb.as, !noalias !9

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.d)
          to label %bb.ap unwind label %bb.as, !noalias !9

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RINvNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular20make_option_accessorNtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessagemEB1l_(ptr nonnull sret([40 x i8]) align 8 %i.c, ptr nonnull @25, i64 5, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datasi_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_, ptr nonnull @_RNvYNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datasj_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_)
          to label %bb.aq unwind label %bb.as, !noalias !9

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorE4pushBL_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.c)
          to label %bb.ar unwind label %bb.as, !noalias !9

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !9
  invoke void @_RINvMs0_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generatedNtB6_30GeneratedMessageDescriptorData5new_2NtNtCs63vnYBEjbPn_12yara_x_proto9test_json7MessageEB1K_(ptr nonnull sret([80 x i8]) align 8 %i.ac, ptr nonnull @6, i64 7, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.av unwind label %bb.r

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %lpad.thr_comm.i8 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5oneof9generated28GeneratedOneofDescriptorDataEEB1g_(ptr nonnull align 8 %i.n) #19
          to label %bb.au unwind label %bb.at, !noalias !9

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !9
  unreachable

bb.au:                                            ; preds = %bb.as, %bb.u
  %.pn.ph.i7 = phi { ptr, i32 } [ %i.ao, %bb.u ], [ %lpad.thr_comm.i8, %bb.as ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc13FieldAccessorEEB1e_(ptr nonnull align 8 %i.o) #19
          to label %bb.bc unwind label %bb.at, !noalias !9

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generated30GeneratedMessageDescriptorDataE4pushBN_(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac)
          to label %bb.aw unwind label %bb.r

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums9generated27GeneratedEnumDescriptorDataE13with_capacityBK_(ptr nonnull sret([24 x i8]) align 8 %i.ab, i64 2)
          to label %bb.ax unwind label %bb.r

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RINvMNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums9generatedNtB3_27GeneratedEnumDescriptorData3newNtNtCs63vnYBEjbPn_12yara_x_proto9test_json4EnumEB1A_(ptr nonnull sret([48 x i8]) align 8 %i.aa, ptr nonnull @8, i64 4)
          to label %_RNvMsd_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_4Enum30generated_enum_descriptor_data.exit unwind label %bb.ba

_RNvMsd_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_4Enum30generated_enum_descriptor_data.exit: ; preds = %bb.ax
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums9generated27GeneratedEnumDescriptorDataE4pushBN_(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %_RNvMsd_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_4Enum30generated_enum_descriptor_data.exit
  invoke void @_RINvMNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums9generatedNtB3_27GeneratedEnumDescriptorData3newNtNtCs63vnYBEjbPn_12yara_x_proto9test_json5FlagsEB1A_(ptr nonnull sret([48 x i8]) align 8 %i.z, ptr nonnull @10, i64 5)
          to label %_RNvMsh_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_5Flags30generated_enum_descriptor_data.exit unwind label %bb.ba

_RNvMsh_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_5Flags30generated_enum_descriptor_data.exit: ; preds = %bb.ay
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums9generated27GeneratedEnumDescriptorDataE4pushBN_(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.z)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %_RNvMsh_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_5Flags30generated_enum_descriptor_data.exit
  %i.aq = invoke align 8 ptr @_RINvMNtCs5YNYYMCeUDn_8protobuf4lazyINtB3_4LazyNtNtB5_10descriptor19FileDescriptorProtoE3getNCNvNtCs63vnYBEjbPn_12yara_x_proto9test_json21file_descriptor_proto0EB1x_(ptr nonnull align 8 @_RNvNvNtCs63vnYBEjbPn_12yara_x_proto9test_json21file_descriptor_proto26file_descriptor_proto_lazy)
          to label %_RNvNtCs63vnYBEjbPn_12yara_x_proto9test_json21file_descriptor_proto.exit unwind label %bb.ba

_RNvNtCs63vnYBEjbPn_12yara_x_proto9test_json21file_descriptor_proto.exit: ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @_RNvMs_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect4file9generatedNtB4_23GeneratedFileDescriptor13new_generated(ptr sret([352 x i8]) align 8 %0, ptr align 8 %i.aq, ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.w)
  ret void

bb.ba:                                            ; preds = %bb.az, %_RNvMsh_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_5Flags30generated_enum_descriptor_data.exit, %bb.ay, %_RNvMsd_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_4Enum30generated_enum_descriptor_data.exit, %bb.ax
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums9generated27GeneratedEnumDescriptorDataEEB1g_(ptr nonnull align 8 %i.ab) #19
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.be, %bb.bc, %bb.ba
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bc:                                            ; preds = %bb.ba, %bb.r, %bb.q, %bb.au
  %.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ba ], [ %.pn.ph.i, %bb.q ], [ %i.an, %bb.r ], [ %.pn.ph.i7, %bb.au ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generated30GeneratedMessageDescriptorDataEEB1g_(ptr nonnull align 8 %i.ae) #19
          to label %bb.be unwind label %bb.bb

bb.bd:                                            ; preds = %bb.be
  resume { ptr, i32 } %.pn.pn.ph

bb.be:                                            ; preds = %bb.bc, %bb.b
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ah, %bb.b ], [ %.pn.ph, %bb.bc ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5YNYYMCeUDn_8protobuf7reflect4file14FileDescriptorEEB1e_(ptr nonnull align 8 %i.af) #19
          to label %bb.bd unwind label %bb.bb
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB7_7Message10take_bytes0B9_(ptr sret([24 x i8]) align 8 %0) unnamed_addr #1 {
bb.a:
end_hunk_1
