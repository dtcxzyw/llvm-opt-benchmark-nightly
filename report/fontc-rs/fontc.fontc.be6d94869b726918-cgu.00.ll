Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc.fontc.be6d94869b726918-cgu.00?download=true
inline.NumInlined: 762
inline.NumDeleted: 371
begin_hunk_0_@_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc:bb.a

.loopexit.split-lp50.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i, %bb.r
  %lpad.loopexit.split-lp306 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.t, !noalias !2188

bb.t:                                             ; preds = %.loopexit.split-lp50.i.loopexit.split-lp.loopexit.split-lp
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2188
  unreachable

.body.i.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp45.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp50.i.loopexit.split-lp.loopexit.split-lp
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp309, %.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp306, %.loopexit.split-lp50.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp303, %.loopexit.split-lp45.i.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense10StartTableINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !2173

.loopexit.split-lp45.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit24.i.i.i.i.i.i.i, %bb.p
  %lpad.loopexit.split-lp303 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i4.i.i.i.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 448
  %i.ef = load i64, ptr %i.ee, align 16, !alias.scope !2178, !noalias !2160, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2189
  store i64 %i.dy, ptr %i.ax, align 8, !alias.scope !2175, !noalias !2164
  store ptr %i.ea, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !2175, !noalias !2164
  store i64 %.val1.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !2175, !noalias !2164
  store i64 %i.ef, ptr %i.ay, align 8, !alias.scope !2175, !noalias !2164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2177
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 464
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.eg, align 16, !alias.scope !2165, !noalias !2160, !nonnull !5, !noundef !5
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 472
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.eh, align 8, !alias.scope !2165, !noalias !2160, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2190
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %.val16.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc31.i.i.i.i.i.i.i unwind label %.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp, !noalias !2191

.noexc31.i.i.i.i.i.i.i:                           ; preds = %bb.u
  %i.ei = load i64, ptr %i.a, align 8, !range !16, !noalias !2190, !noundef !5
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = load i64, ptr %i.az, align 8, !range !23, !noalias !2190, !noundef !5 ; 3 uses
  br i1 %i.ej, label %bb.v, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i29.i.i.i.i.i.i.i, !prof !22

bb.v:                                             ; preds = %.noexc31.i.i.i.i.i.i.i
  %i.el = load i64, ptr %i.ba, align 8, !noalias !2190
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ek, i64 %i.el) #21
          to label %.noexc32.i.i.i.i.i.i.i unwind label %.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp, !noalias !2191

.noexc32.i.i.i.i.i.i.i:                           ; preds = %bb.v
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i29.i.i.i.i.i.i.i: ; preds = %.noexc31.i.i.i.i.i.i.i
  %i.em = load ptr, ptr %i.ba, align 8, !noalias !2190, !nonnull !5, !noundef !5 ; 2 uses
  %i.en = icmp ule i64 %.val16.i.i.i.i.i.i.i, %i.ek
  tail call void @llvm.assume(i1 %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2190
  %.not.i.i30.i.i.i.i.i.i.i = icmp eq i64 %.val16.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i30.i.i.i.i.i.i.i, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i29.i.i.i.i.i.i.i
  %i.eo = shl nuw nsw i64 %.val16.i.i.i.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.em, ptr nonnull readonly align 4 %.val.i.i.i.i.i.i.i, i64 %i.eo, i1 false), !noalias !2192
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i

.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v
  %lpad.loopexit.split-lp309 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense11MatchStatesINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g) #18
          to label %.body.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !2173

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i: ; preds = %bb.w, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i29.i.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 104
  %i.eq = load i8, ptr %i.ep, align 8, !range !13, !alias.scope !2165, !noalias !2160, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.eq, 2
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsD_NtNtCs8hFumjqO1Bi_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 80 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 16, !alias.scope !2165, !noalias !2160, !nonnull !5, !noundef !5
  %i.et = atomicrmw add ptr %i.es, i64 1 monotonic, align 8, !noalias !2173
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ev = load <2 x ptr>, ptr %i.er, align 16, !alias.scope !2165, !noalias !2160
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 96
  %i.ex = load i64, ptr %i.ew, align 16, !alias.scope !2165, !noalias !2160, !noundef !5
  br label %_RNvXsD_NtNtCs8hFumjqO1Bi_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense10StartTableINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2173
  unreachable

_RNvXsD_NtNtCs8hFumjqO1Bi_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i: ; preds = %bb.y, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i
  %.sroa.0.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.ex, %bb.y ], [ undef, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i ]
  %i.ez = phi <2 x ptr> [ %i.ev, %bb.y ], [ undef, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.32..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.fa, i64 32, i1 false), !noalias !2193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %.sroa.9.96..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %i.i, i64 288, i1 false), !noalias !2194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(328) %.sroa.0.sroa.13.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %i.h, i64 328, i1 false), !noalias !2194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.0.sroa.9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !2194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.bv, i64 32, i1 false), !noalias !2193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2164
  %i.fb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 816
  %i.fc = load <2 x i32>, ptr %i.fb, align 16, !alias.scope !2195, !noalias !2160
  %i.fd = load ptr, ptr %.val.i.i.i, align 16, !alias.scope !2195, !noalias !2160, !nonnull !5, !noundef !5 ; 2 uses
  %i.fe = atomicrmw add ptr %i.fd, i64 1 monotonic, align 8, !noalias !2196
  %i.ff = icmp slt i64 %i.fe, 0
  br i1 %i.ff, label %bb.ab, label %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i

bb.ab:                                            ; preds = %_RNvXsD_NtNtCs8hFumjqO1Bi_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i
  tail call void @llvm.trap()
  unreachable

.loopexit.split-lp35.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i, %bb.l
  %lpad.loopexit.split-lp299 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp35.i

.loopexit.split-lp35.i:                           ; preds = %.loopexit.split-lp35.i.loopexit.split-lp.loopexit.split-lp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense10StartTableINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense10StartTableINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp299, %.loopexit.split-lp35.i.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef 832, i64 noundef 16) #17, !noalias !2160
  br label %.body.i.i

_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i: ; preds = %_RNvXsD_NtNtCs8hFumjqO1Bi_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 808
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !2195, !noalias !2160, !noundef !5
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.01.i.i.i.i.i.i, i64 64, i1 false), !noalias !2197
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(295) %.sroa.10.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(295) %.sroa.9.i.i.i.i.i.i, i64 295, i1 false), !noalias !2197
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.11.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.0.sroa.9.i.i.i.i.i.i, i64 56, i1 false), !noalias !2197
  %.sroa.15.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(328) %.sroa.15.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(328) %.sroa.0.sroa.13.i.i.i.i.i.i, i64 328, i1 false), !noalias !2197
  %.sroa.16.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 808
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.16.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.fg, i64 3, i1 false), !noalias !2160
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.9.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.13.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i)
  store ptr %i.fd, ptr %i.bu, align 16, !noalias !2197
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.fi, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2197
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  store <2 x ptr> %i.ez, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 16, !noalias !2197
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  store i64 %.sroa.0.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 16, !noalias !2197
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  store i8 %i.eq, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2197
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 456
  store i64 %i.ek, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2197
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 464
  store ptr %i.em, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 16, !noalias !2197
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 472
  store i64 %.val16.i.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2197
  %.sroa.171.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 816
  store <2 x i32> %i.fc, ptr %.sroa.171.0..sroa_idx.i.i.i.i.i, align 16, !noalias !2197
  %i.fj = ptrtoint ptr %i.bu to i64
  br label %bb.ag

bb.ac:                                            ; preds = %bb.j
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.012.0178.i, i64 40
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !2159, !noundef !5
  %i.fm = ptrtoint ptr %i.bq to i64
  br label %bb.ag

bb.ad:                                            ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.k
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %.loopexit.split-lp35.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fn, %bb.ae ], [ %eh.lpad-body.i.i.i.i, %.loopexit.split-lp35.i ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ai unwind label %bb.af, !noalias !2156

bb.af:                                            ; preds = %.body.i.i
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2156
  unreachable

bb.ag:                                            ; preds = %bb.ac, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.noexc.i
  %.sroa.5.sroa.6.0.i.i = phi i64 [ undef, %.noexc.i ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.e ], [ %i.fl, %bb.ac ], [ undef, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i ]
  %.sroa.5.sroa.5.0.i.i = phi i64 [ undef, %.noexc.i ], [ undef, %bb.f ], [ %i.bk, %bb.g ], [ %i.bm, %bb.h ], [ %i.bo, %bb.i ], [ undef, %bb.e ], [ %i.fm, %bb.ac ], [ %i.fj, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i ]
  %.sroa.5.sroa.0.0.i.i = phi i8 [ undef, %.noexc.i ], [ %i.bi, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.e ], [ undef, %bb.ac ], [ undef, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.023.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !2152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2155
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %.sroa.7.0177.i ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.023.i, i64 24, i1 false), !noalias !2153
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i8 %i.bg, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !2153
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 25
  store i8 %.sroa.5.sroa.0.0.i.i, ptr %.sroa.525.0..sroa_idx.i, align 1, !noalias !2153
  %.sroa.727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store i64 %.sroa.5.sroa.5.0.i.i, ptr %.sroa.727.0..sroa_idx.i, align 8, !noalias !2153
  %.sroa.828.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  store i64 %.sroa.5.sroa.6.0.i.i, ptr %.sroa.828.0..sroa_idx.i, align 8, !noalias !2153
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023.i)
  %i.fq = icmp eq i64 %i.bb, 0
  br i1 %i.fq, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit, label %bb.c

bb.ah:                                            ; preds = %bb.ai
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2153
  unreachable

bb.ai:                                            ; preds = %.body.i.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.0177.i, ptr %i.z, align 8, !noalias !2152
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #18
          to label %bb.aj unwind label %bb.ah, !noalias !2153

bb.aj:                                            ; preds = %bb.ai
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit: ; preds = %bb.c, %bb.ag, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i
  store i64 %i.p, ptr %i.z, align 8, !noalias !2152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2152
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2202
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2202
  %i.f = load i64, ptr %i.a, align 8, !range !16, !noalias !2202, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !23, !noalias !2202, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !2202
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21, !noalias !2202
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2202, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2202
  store i64 %i.i, ptr %0, align 8, !alias.scope !2201
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !2201
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !2201
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !2201
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !2201
  br label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit

_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit, label %.lr.ph66

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit.i: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit.i
  %.sroa.0.0.i65 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i65 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i65, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2215, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2215, !noundef !5 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i.i, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i.i: ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph66, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i64 = phi i64 [ %i.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i.i ], [ 0, %.lr.ph66 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i.i64
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i.i.i64, 1  ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i.i unwind label %bb.b, !noalias !2216

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit7.i.i.i.i: ; preds = %.lr.ph68
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i.i.i67, 1  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body.i.i, label %.lr.ph68

bb.b:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body.i.i, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i67 = phi i64 [ %i.q, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit7.i.i.i.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i.i67
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit7.i.i.i.i unwind label %bb.c, !noalias !2216

bb.c:                                             ; preds = %.lr.ph68
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2216
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit7.i.i.i.i, %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.d

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i.i, %.lr.ph66
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.body.i.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i
  %i.x = icmp eq i64 %i.ab, %i.d
  br i1 %i.x, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit._crit_edge, label %.lr.ph72

bb.e:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.s, %.body.i.i ]
  %i.z = icmp eq i64 %i.h, %i.d
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit._crit_edge, label %.lr.ph72

.lr.ph72:                                         ; preds = %.body.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit
  %.sroa.0.1.i71 = phi i64 [ %i.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit ], [ %i.h, %.body.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i71 ; 4 uses
  %i.ab = add nuw nsw i64 %.sroa.0.1.i71, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !2219, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !2219, !noundef !5 ; 4 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i, label %.lr.ph70

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i: ; preds = %.lr.ph70
  %i.ah = icmp eq i64 %i.aj, %i.af
  br i1 %i.ah, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i, label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph72, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i
  %.sroa.0.0.i.i.i69 = phi i64 [ %i.aj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i ], [ 0, %.lr.ph72 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.0.0.i.i.i69
  %i.aj = add nuw nsw i64 %.sroa.0.0.i.i.i69, 1   ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i unwind label %bb.f, !noalias !2219

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit7.i.i.i: ; preds = %.lr.ph74
  %i.ak = add nuw nsw i64 %.sroa.0.1.i.i.i73, 1   ; 2 uses
  %i.al = icmp eq i64 %i.ak, %i.af
  br i1 %i.al, label %.body.i1, label %.lr.ph74

bb.f:                                             ; preds = %.lr.ph70
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.an = icmp eq i64 %i.aj, %i.af
  br i1 %i.an, label %.body.i1, label %.lr.ph74
end_hunk_0
