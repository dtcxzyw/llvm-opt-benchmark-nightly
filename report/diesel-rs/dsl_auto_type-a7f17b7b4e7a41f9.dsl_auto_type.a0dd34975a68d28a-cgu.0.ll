inline.NumInlined: 58
inline.NumDeleted: 10
begin_hunk_0_@_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1w_:bb.a
  %i.br = getelementptr inbounds [256 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -256
  %i.bt = invoke i64 @_RNCINvNtCsfKiFC1ztrmh_9hashbrown3map11make_hasherRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0B1r_(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.bs)
          to label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1y_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1y_.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bu = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.0.013.i = and i64 %i.bu, %i.bt           ; 3 uses
  %i.bv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.0.013.i
  invoke void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.n, ptr %i.bw)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc6:                                          ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1y_.exit
  %i.bx = load <2 x i64>, ptr %i.n, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store <2 x i64> %i.bx, ptr %i.m, align 16
  %i.by = invoke i32 @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse217__mm_movemask_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 16 %i.m)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc7:                                          ; preds = %.noexc6
  %i.bz = trunc i32 %i.by to i16                  ; 2 uses
  %.not.i14.i = icmp eq i16 %i.bz, 0
  br i1 %.not.i14.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc11, %.noexc7
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.013.i, %.noexc7 ], [ %.sroa.0.0.i5, %.noexc11 ]
  %.lcssa.i = phi i16 [ %i.bz, %.noexc7 ], [ %i.ct, %.noexc11 ]
  %i.ca = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = add i64 %.sroa.0.0.lcssa.i, %i.cb
  %i.cd = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8 ; 2 uses
  %i.ce = and i64 %i.cc, %i.cd                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cf = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = icmp sgt i8 %i.cg, -1
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  invoke void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse214__mm_load_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.l, ptr nonnull %.val3.i)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc8:                                          ; preds = %bb.i
  %i.ci = load <2 x i64>, ptr %i.l, align 16
  store <2 x i64> %i.ci, ptr %i.k, align 16
  %i.cj = invoke i32 @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse217__mm_movemask_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 16 %i.k)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc9:                                          ; preds = %.noexc8
  %i.ck = trunc i32 %i.cj to i16                  ; 2 uses
  %.not.i5.i = icmp eq i16 %i.ck, 0
  %i.cl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ck, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %.sroa.3.0.i6.i = select i1 %.not.i5.i, i64 undef, i64 %i.cm
  %.pre63 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.pre64 = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %bb.j

.lr.ph.i:                                         ; preds = %.noexc7, %.noexc11
  %.sroa.0.016.i = phi i64 [ %.sroa.0.0.i5, %.noexc11 ], [ %.sroa.0.013.i, %.noexc7 ]
  %.sroa.5.015.i = phi i64 [ %i.cn, %.noexc11 ], [ 0, %.noexc7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cn = add i64 %.sroa.5.015.i, 16              ; 2 uses
  %i.co = add i64 %i.cn, %.sroa.0.016.i
  %.sroa.0.0.i5 = and i64 %i.co, %i.bu            ; 3 uses
  %i.cp = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.0.0.i5
  invoke void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.n, ptr %i.cq)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %.lr.ph.i
  %i.cr = load <2 x i64>, ptr %i.n, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store <2 x i64> %i.cr, ptr %i.m, align 16
  %i.cs = invoke i32 @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse217__mm_movemask_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 16 %i.m)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %.noexc10
  %i.ct = trunc i32 %i.cs to i16                  ; 2 uses
  %.not.i.i = icmp eq i16 %i.ct, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

bb.j:                                             ; preds = %.noexc9, %._crit_edge.i
  %i.cu = phi i64 [ %.pre64, %.noexc9 ], [ %i.cd, %._crit_edge.i ]
  %i.cv = phi ptr [ %.pre63, %.noexc9 ], [ %.val3.i, %._crit_edge.i ]
  %.sroa.0.0.i4.i = phi i64 [ %.sroa.3.0.i6.i, %.noexc9 ], [ %i.ce, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sroa.0.0.i4.i
  %i.cx = lshr i64 %i.bt, 57
  %i.cy = trunc nuw nsw i64 %i.cx to i8           ; 2 uses
  %i.cz = add i64 %.sroa.0.0.i4.i, -16
  %i.da = and i64 %i.cu, %i.cz
  store i8 %i.cy, ptr %i.cw, align 1
  %i.db = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.dc = getelementptr i8, ptr %i.db, i64 %i.da
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  store i8 %i.cy, ptr %i.dd, align 1
  %i.de = load ptr, ptr %0, align 8
  %i.df = shl i64 %i.bn, 8
  %i.dg = sub nuw nsw i64 -256, %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 %i.dg
  %i.di = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.dj = shl i64 %.sroa.0.0.i4.i, 8
  %i.dk = sub nuw nsw i64 -256, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.dl, ptr noundef nonnull align 1 dereferenceable(256) %i.dh, i64 256, i1 false)
  %i.dm = icmp eq i64 %i.bo, 0
  br i1 %i.dm, label %._crit_edge50.loopexit, label %bb.h

bb.k:                                             ; preds = %.loopexit.split-lp
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.p, %.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi.i, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsdOh5Xhm0ZW8_13dsl_auto_type.exit.i: ; preds = %bb.d, %._crit_edge50
  %.sroa.3.0.i.i = phi i64 [ undef, %._crit_edge50 ], [ %i.as, %bb.d ]
  %.sroa.0.0.i.i = phi i64 [ -1, %._crit_edge50 ], [ %i.aq, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsdOh5Xhm0ZW8_13dsl_auto_type.exit

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCsdfcQ11shQaG_6strsim(ptr nonnull sret([32 x i8]) align 8 %i.i, i64 0, i64 %i.ae, i64 16)
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %.not4.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not4.i.i, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i
  %i.dr = phi i64 [ %i.dp, %.lr.ph.i.i ], [ %i.ed, %bb.m ]
  %i.ds = load i64, ptr %i.dq, align 8
  %i.dt = add nuw i64 %i.ds, 1
  %i.du = load i64, ptr %i.i, align 8             ; 3 uses
  %i.dv = add i64 %i.dt, %i.du
  store i64 %i.dv, ptr %i.i, align 8
  %i.dw = add i64 %i.dr, -1
  store i64 %i.dw, ptr %i.do, align 8
  %i.dx = load ptr, ptr %0, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.du
  call void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse214__mm_load_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.h, ptr %i.dy)
  %i.dz = load <2 x i64>, ptr %i.h, align 16
  store <2 x i64> %i.dz, ptr %i.f, align 16
  call void @_RNvMNtNtNtCsfKiFC1ztrmh_9hashbrown7control5group4sse2NtB2_5Group44convert_special_to_empty_and_full_to_deletedCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.g, ptr nonnull align 16 %i.f)
  %i.ea = load <2 x i64>, ptr %i.g, align 16
  %i.eb = load ptr, ptr %0, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.du
  store <2 x i64> %i.ea, ptr %i.e, align 16
  call void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_store_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr %i.ec, ptr nonnull align 16 %i.e)
  %i.ed = load i64, ptr %i.do, align 8            ; 2 uses
  %.not.i.i12 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i12, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i, label %bb.m

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i: ; preds = %bb.m, %bb.l
  %i.ee = load i64, ptr %i.ab, align 8
  %i.ef = add i64 %i.ee, 1                        ; 2 uses
  %i.eg = load ptr, ptr %0, align 8               ; 2 uses
  %..i.i = call i64 @llvm.umax.i64(i64 %i.ef, i64 16)
  %.8.i.i = call i64 @llvm.umin.i64(i64 %i.ef, i64 16)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %..i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr align 1 %i.eg, i64 %.8.i.i, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvYNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtBb_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1v_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTOhEE9call_onceB1B_, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 256, ptr %i.ej, align 8
  store ptr %0, ptr %i.j, align 8
  %i.ek = load i64, ptr %i.ab, align 8            ; 2 uses
  %.not11.i = icmp eq i64 %i.ek, -1
  br i1 %.not11.i, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.thread, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i, %bb.w
  %.sroa.0.010.i = phi i64 [ %i.el, %bb.w ], [ 0, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i ] ; 9 uses
  %i.el = add nuw i64 %.sroa.0.010.i, 1
  %i.em = load ptr, ptr %0, align 8               ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sroa.0.010.i
  %i.eo = load i8, ptr %i.en, align 1
  %.not.i14 = icmp eq i8 %i.eo, -128
  br i1 %.not.i14, label %bb.n, label %bb.w

bb.n:                                             ; preds = %.lr.ph.i13
  %.neg.i = xor i64 %.sroa.0.010.i, -1
  %.neg10.i = shl i64 %.neg.i, 8
  %i.ep = getelementptr inbounds i8, ptr %i.em, i64 %.neg10.i ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.n
  %i.eq = load ptr, ptr %0, align 8
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -256
  %i.es = invoke i64 @_RNCINvNtCsfKiFC1ztrmh_9hashbrown3map11make_hasherRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0B1r_(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.er)
          to label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1y_.exit.i unwind label %.loopexit.split-lp.i ; 4 uses

.loopexit.i:                                      ; preds = %.noexc15.i, %.lr.ph.i11.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i:                             ; preds = %bb.v, %.noexc13.i, %bb.q, %.noexc.i, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1y_.exit.i, %bb.o
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsdfcQ11shQaG_6strsim(ptr nonnull align 8 %i.j) #23
          to label %common.resume unwind label %bb.x

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1y_.exit.i: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.et = load i64, ptr %i.ab, align 8            ; 2 uses
  %.sroa.0.013.i.i = and i64 %i.et, %i.es         ; 3 uses
  %i.eu = load ptr, ptr %0, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.sroa.0.013.i.i
  invoke void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.ev)
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1y_.exit.i
  %i.ew = load <2 x i64>, ptr %i.d, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i64> %i.ew, ptr %i.c, align 16
  %i.ex = invoke i32 @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse217__mm_movemask_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 16 %i.c)
          to label %.noexc12.i unwind label %.loopexit.split-lp.i

.noexc12.i:                                       ; preds = %.noexc.i
  %i.ey = trunc i32 %i.ex to i16                  ; 2 uses
  %.not.i14.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i14.i.i, label %.lr.ph.i11.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc16.i, %.noexc12.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.013.i.i, %.noexc12.i ], [ %.sroa.0.0.i.i16, %.noexc16.i ]
  %.lcssa.i.i = phi i16 [ %i.ey, %.noexc12.i ], [ %i.fs, %.noexc16.i ]
  %i.ez = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fa = zext nneg i16 %i.ez to i64
  %i.fb = add i64 %.sroa.0.0.lcssa.i.i, %i.fa
  %i.fc = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.fd = and i64 %i.fb, %i.fc                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val3.i.i = load ptr, ptr %0, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fe = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = icmp sgt i8 %i.ff, -1
  br i1 %i.fg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  invoke void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse214__mm_load_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull %.val3.i.i)
          to label %.noexc13.i unwind label %.loopexit.split-lp.i

.noexc13.i:                                       ; preds = %bb.q
  %i.fh = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.fh, ptr %i.a, align 16
  %i.fi = invoke i32 @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse217__mm_movemask_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 16 %i.a)
          to label %.noexc14.i unwind label %.loopexit.split-lp.i

.noexc14.i:                                       ; preds = %.noexc13.i
  %i.fj = trunc i32 %i.fi to i16                  ; 2 uses
  %.not.i5.i.i = icmp eq i16 %i.fj, 0
  %i.fk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fj, i1 true)
  %i.fl = zext nneg i16 %i.fk to i64
  %.sroa.3.0.i6.i.i = select i1 %.not.i5.i.i, i64 undef, i64 %i.fl
  %.pre = load i64, ptr %i.ab, align 8
  br label %bb.r

.lr.ph.i11.i:                                     ; preds = %.noexc12.i, %.noexc16.i
  %.sroa.0.016.i.i = phi i64 [ %.sroa.0.0.i.i16, %.noexc16.i ], [ %.sroa.0.013.i.i, %.noexc12.i ]
  %.sroa.5.015.i.i = phi i64 [ %i.fm, %.noexc16.i ], [ 0, %.noexc12.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fm = add i64 %.sroa.5.015.i.i, 16            ; 2 uses
  %i.fn = add i64 %i.fm, %.sroa.0.016.i.i
  %.sroa.0.0.i.i16 = and i64 %i.fn, %i.et         ; 3 uses
  %i.fo = load ptr, ptr %0, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.0.0.i.i16
  invoke void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.fp)
          to label %.noexc15.i unwind label %.loopexit.i

.noexc15.i:                                       ; preds = %.lr.ph.i11.i
  %i.fq = load <2 x i64>, ptr %i.d, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i64> %i.fq, ptr %i.c, align 16
  %i.fr = invoke i32 @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse217__mm_movemask_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 16 %i.c)
          to label %.noexc16.i unwind label %.loopexit.i

.noexc16.i:                                       ; preds = %.noexc15.i
  %i.fs = trunc i32 %i.fr to i16                  ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fs, 0
  br i1 %.not.i.i.i, label %.lr.ph.i11.i, label %._crit_edge.i.i

bb.r:                                             ; preds = %.noexc14.i, %._crit_edge.i.i
  %i.ft = phi i64 [ %.pre, %.noexc14.i ], [ %i.fc, %._crit_edge.i.i ] ; 4 uses
  %.sroa.0.0.i4.i.i = phi i64 [ %.sroa.3.0.i6.i.i, %.noexc14.i ], [ %i.fd, %._crit_edge.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fu = and i64 %i.ft, %i.es                    ; 2 uses
  %i.fv = sub i64 %.sroa.0.010.i, %i.fu
  %i.fw = sub i64 %.sroa.0.0.i4.i.i, %i.fu
  %i.fx = xor i64 %i.fv, %i.fw
  %.unshifted.i = and i64 %i.fx, %i.ft
  %i.fy = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fy, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fz = load ptr, ptr %0, align 8               ; 2 uses
  %i.ga = shl i64 %.sroa.0.0.i4.i.i, 8
  %i.gb = sub nuw nsw i64 -256, %i.ga
  %i.gc = getelementptr inbounds i8, ptr %i.fz, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.sroa.0.0.i4.i.i ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = lshr i64 %i.es, 57
  %i.gg = trunc nuw nsw i64 %i.gf to i8           ; 2 uses
  %i.gh = add i64 %.sroa.0.0.i4.i.i, -16
  %i.gi = and i64 %i.ft, %i.gh
  store i8 %i.gg, ptr %i.gd, align 1
  %i.gj = load ptr, ptr %0, align 8
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gi
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  store i8 %i.gg, ptr %i.gl, align 1
  %i.gm = icmp eq i8 %i.ge, -1
  br i1 %i.gm, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.gn = lshr i64 %i.es, 57
  %i.go = trunc nuw nsw i64 %i.gn to i8           ; 2 uses
  %i.gp = add nuw i64 %.sroa.0.010.i, -16
  %i.gq = and i64 %i.ft, %i.gp
  %i.gr = load ptr, ptr %0, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.0.010.i
  store i8 %i.go, ptr %i.gs, align 1
  %i.gt = load ptr, ptr %0, align 8
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.gq
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  store i8 %i.go, ptr %i.gv, align 1
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.gw = add nuw i64 %.sroa.0.010.i, -16
  %i.gx = load i64, ptr %i.ab, align 8
  %i.gy = and i64 %i.gx, %i.gw
  %i.gz = load ptr, ptr %0, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sroa.0.010.i
  store i8 -1, ptr %i.ha, align 1
  %i.hb = load ptr, ptr %0, align 8
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.gy
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  store i8 -1, ptr %i.hd, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.gc, ptr noundef nonnull align 1 dereferenceable(256) %i.ep, i64 256, i1 false)
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytesCsdOh5Xhm0ZW8_13dsl_auto_type(ptr %i.ep, ptr nonnull %i.gc, i64 256)
          to label %bb.o unwind label %.loopexit.split-lp.i

bb.w:                                             ; preds = %bb.u, %bb.t, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.0.010.i, %i.ek
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit, label %.lr.ph.i13

bb.x:                                             ; preds = %bb.p
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.w
  %.pre.i = load i64, ptr %i.ab, align 8
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre21.i = add i64 %.pre.i.fr, 1
  %i.hf = lshr i64 %.pre21.i, 3
  %i.hg = mul nuw i64 %i.hf, 7
  %i.hh = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.hh, i64 %.pre.i.fr, i64 %i.hg
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.thread

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.thread: ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i
  %i.hi = phi i64 [ 0, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i ], [ %spec.select, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit ]
  %i.hj = load i64, ptr %i.x, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hl = sub i64 %i.hi, %i.hj
  store i64 %i.hl, ptr %i.hk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsdOh5Xhm0ZW8_13dsl_auto_type.exit

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.c, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsdOh5Xhm0ZW8_13dsl_auto_type.exit.i, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.thread
  %.sroa.4.0.i = phi i64 [ %i.ak, %bb.c ], [ undef, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.thread ], [ %.sroa.3.0.i.i, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsdOh5Xhm0ZW8_13dsl_auto_type.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.aj, %bb.c ], [ -1, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCsdOh5Xhm0ZW8_13dsl_auto_type.exit.thread ], [ %.sroa.0.0.i.i, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsdOh5Xhm0ZW8_13dsl_auto_type.exit.i ]
  %i.hm = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hn = insertvalue { i64, i64 } %i.hm, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hn
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1q_E0NCINvB3s_11make_hasherBQ_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1w_(ptr align 8 %0, i64 %1, ptr align 8 %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br i1 %i.r, label %bb.b, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1w_.exit

bb.b:                                             ; preds = %bb.a
  %i.s = tail call { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1w_(ptr nonnull align 8 %0, i64 1, ptr align 8 %3, i1 zeroext true) ; 0 uses
  br label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1w_.exit

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1w_.exit: ; preds = %bb.a, %bb.b
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
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1w_.exit
  %.sroa.6.0.i = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1w_.exit ], [ %i.bb, %bb.i ]
  %.pn.i = phi i64 [ %1, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1w_.exit ], [ %i.bc, %bb.i ]
  %.sroa.4.0.i = phi i64 [ undef, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1w_.exit ], [ %.sroa.4.18.i, %bb.i ]
  %.sroa.04.0.i = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1w_.exit ], [ %.sroa.04.110.i, %bb.i ]
  %.sroa.0.05.i = and i64 %.pn.i, %i.w            ; 4 uses
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.0.05.i
  call void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.n, ptr %i.y)
  %i.z = load <2 x i64>, ptr %i.n, align 16       ; 3 uses
  call void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse213__mm_set1_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.m, i8 %i.u)
  %i.aa = load <2 x i64>, ptr %i.m, align 16
  store <2 x i64> %i.z, ptr %i.k, align 16
  store <2 x i64> %i.aa, ptr %i.j, align 16
  call void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse214__mm_cmpeq_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.l, ptr nonnull align 16 %i.k, ptr nonnull align 16 %i.j)
  %i.ab = load <2 x i64>, ptr %i.l, align 16
  store <2 x i64> %i.ab, ptr %i.i, align 16
  %i.ac = call i32 @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse217__mm_movemask_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 16 %i.i)
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
  %i.aj = and i64 %i.ai, %i.w
  %i.ak = load ptr, ptr %0, align 8
  %i.al = sub nsw i64 0, %i.aj                    ; 2 uses
  %i.am = getelementptr inbounds [256 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -256
  %i.ao = call zeroext i1 @_RNCINvNtCsfKiFC1ztrmh_9hashbrown3map14equivalent_keyRNtCsf5uYjtxkodL_11proc_macro25IdentBO_NtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeE0B1x_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.an)
  br i1 %i.ao, label %bb.m, label %bb.d

bb.f:                                             ; preds = %bb.d
  %.not12.i = icmp eq i64 %.sroa.04.0.i, 1
  br i1 %.not12.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i64> %i.z, ptr %i.c, align 16
  %i.ap = call i32 @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse217__mm_movemask_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 16 %i.c)
  %i.aq = trunc i32 %i.ap to i16                  ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %bb.h, label %.thread12.i

.thread12.i:                                      ; preds = %bb.g
  %i.ar = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = add i64 %.sroa.0.05.i, %i.as
  %i.au = load i64, ptr %i.v, align 8
  %i.av = and i64 %i.au, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

.thread.i:                                        ; preds = %.thread12.i, %bb.f
  %.sroa.4.19.i = phi i64 [ %i.av, %.thread12.i ], [ %.sroa.4.0.i, %bb.f ] ; 3 uses
  call void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse213__mm_set1_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.h, i8 -1)
  %i.aw = load <2 x i64>, ptr %i.h, align 16
  store <2 x i64> %i.z, ptr %i.f, align 16
  store <2 x i64> %i.aw, ptr %i.e, align 16
  call void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse214__mm_cmpeq_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.g, ptr nonnull align 16 %i.f, ptr nonnull align 16 %i.e)
  %i.ax = load <2 x i64>, ptr %i.g, align 16
  store <2 x i64> %i.ax, ptr %i.d, align 16
  %i.ay = call i32 @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse217__mm_movemask_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 16 %i.d)
  %i.az = and i32 %i.ay, 65535
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread.i, %bb.h
  %.sroa.04.110.i = phi i64 [ 1, %.thread.i ], [ 0, %bb.h ]
  %.sroa.4.18.i = phi i64 [ %.sroa.4.19.i, %.thread.i ], [ undef, %bb.h ]
  %i.bb = add i64 %.sroa.6.0.i, 16                ; 2 uses
  %i.bc = add i64 %.sroa.0.05.i, %i.bb
  br label %bb.c

bb.j:                                             ; preds = %.thread.i
  %.val14.i = load ptr, ptr %0, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bd = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.4.19.i
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = icmp sgt i8 %i.be, -1
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse214__mm_load_si128CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull %.val14.i)
  %i.bg = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.bg, ptr %i.a, align 16
  %i.bh = call i32 @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse217__mm_movemask_epi8CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 16 %i.a)
  %i.bi = trunc i32 %i.bh to i16                  ; 2 uses
end_hunk_0
