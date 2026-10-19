Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc.fontc.be6d94869b726918-cgu.03?download=true
inline.NumInlined: 458
inline.NumDeleted: 208
begin_hunk_0_@_RNvCsglDVE6xSTcO_5fontc4main:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 161
  %i.bp = load i8, ptr %i.bo, align 1, !range !23, !alias.scope !1125, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1126
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.312.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bs = load i64, ptr %i.br, align 8, !range !10, !alias.scope !1129, !noundef !5
  %.not.i.i = icmp eq i64 %i.bs, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1129
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1129, !nonnull !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1130
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store i8 1, ptr %i.bx, align 8, !noalias !1130
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store i64 -1, ptr %i.by, align 8, !noalias !1130
  store i64 -2, ptr %i.t, align 8, !noalias !1130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1130
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 -1, ptr %i.bz, align 8, !noalias !1130
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.ca, align 8, !noalias !1130
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !1130
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1130
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 -1, ptr %i.cb, align 8, !noalias !1130
  store i64 3, ptr %i.s, align 8, !noalias !1130
  invoke void @_RNvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB2_7Builder22with_default_directive(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.s)
          to label %.noexc.i unwind label %.body.thread105.i, !noalias !1124

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1130
  invoke void @_RINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB3_7Builder11parse_lossyReECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([1784 x i8]) align 8 captures(address) dereferenceable(1784) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bu)
          to label %bb.f unwind label %bb.e, !noalias !1131

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1130
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store i8 1, ptr %i.cc, align 8, !noalias !1130
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store i64 -1, ptr %i.cd, align 8, !noalias !1130
  store i64 -2, ptr %i.q, align 8, !noalias !1130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1130
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 -1, ptr %i.ce, align 8, !noalias !1130
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 0, ptr %i.cf, align 8, !noalias !1130
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !1130
  %.sroa.522.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 0, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !noalias !1130
  %i.cg = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i64 -1, ptr %i.cg, align 8, !noalias !1130
  store i64 3, ptr %i.p, align 8, !noalias !1130
  invoke void @_RNvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB2_7Builder22with_default_directive(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.p)
          to label %.noexc43.i unwind label %.body.thread105.i, !noalias !1124

.noexc43.i:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1130
  invoke void @_RNvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB2_7Builder14from_env_lossy(ptr noalias nofree noundef nonnull sret([1784 x i8]) align 8 captures(address) dereferenceable(1784) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.r)
          to label %bb.n unwind label %bb.m, !noalias !1132

bb.e:                                             ; preds = %.noexc.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(112) %i.u) #19
          to label %.body.thread.i unwind label %bb.l, !noalias !1133

bb.f:                                             ; preds = %.noexc.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 4 uses
  %i.cj = load i64, ptr %i.ci, align 8, !range !10, !alias.scope !1134, !noalias !1130, !noundef !5
  %i.ck = icmp eq i64 %i.cj, -1
  br i1 %i.ck, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i unwind label %bb.h, !noalias !1133

bb.h:                                             ; preds = %bb.g
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %.body.i.i.i.i unwind label %bb.i, !noalias !1133

bb.i:                                             ; preds = %bb.h
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !1133
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc.exit.i.i.i unwind label %bb.j, !noalias !1133

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.cn, %bb.j ], [ %i.cl, %bb.h ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.u) #19
          to label %.body.thread.i unwind label %bb.k, !noalias !1133

bb.k:                                             ; preds = %.body.i.i.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !1133
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i, %bb.f
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.u)
          to label %.noexc44.i unwind label %.body.thread105.i, !noalias !1124

.noexc44.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1130
  br label %_RNvCsglDVE6xSTcO_5fontc17create_env_filter.exit.i.i

bb.l:                                             ; preds = %bb.m, %bb.e
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !1133
  unreachable

bb.m:                                             ; preds = %.noexc43.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(112) %i.r) #19
          to label %.body.thread.i unwind label %bb.l, !noalias !1135

bb.n:                                             ; preds = %.noexc43.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 4 uses
  %i.cs = load i64, ptr %i.cr, align 8, !range !10, !alias.scope !1136, !noalias !1130, !noundef !5
  %i.ct = icmp eq i64 %i.cs, -1
  br i1 %i.ct, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc.exit28.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i.i27.i.i.i unwind label %bb.p, !noalias !1135

bb.p:                                             ; preds = %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %.body.i25.i.i.i unwind label %bb.q, !noalias !1135

bb.q:                                             ; preds = %bb.p
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !1135
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i.i27.i.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc.exit28.i.i.i unwind label %bb.r, !noalias !1135

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i.i27.i.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i25.i.i.i

.body.i25.i.i.i:                                  ; preds = %bb.r, %bb.p
  %eh.lpad-body.i26.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.r ], [ %i.cu, %bb.p ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.r) #19
          to label %.body.thread.i unwind label %bb.s, !noalias !1135

bb.s:                                             ; preds = %.body.i25.i.i.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !1135
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc.exit28.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i.i27.i.i.i, %bb.n
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.r)
          to label %.noexc45.i unwind label %.body.thread105.i, !noalias !1124

.noexc45.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc.exit28.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1130
  br label %_RNvCsglDVE6xSTcO_5fontc17create_env_filter.exit.i.i

_RNvCsglDVE6xSTcO_5fontc17create_env_filter.exit.i.i: ; preds = %.noexc45.i, %.noexc44.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1128
  invoke void @_RNvMNtCsglDVE6xSTcO_5fontc4argsNtB2_4Args10trace_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.bn)
          to label %bb.u unwind label %0, !noalias !1131

bb.t:                                             ; preds = %bb.ax, %bb.aw
  br i1 %.sroa.023.1.i.i, label %.thread.i.i, label %.body.thread.i

0:                                                ; preds = %_RNvCsglDVE6xSTcO_5fontc17create_env_filter.exit.i.i
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.u:                                             ; preds = %_RNvCsglDVE6xSTcO_5fontc17create_env_filter.exit.i.i
  %i.cy = load i64, ptr %i.ak, align 8, !range !10, !noalias !1128, !noundef !5
  %.not25.i.i = icmp eq i64 %i.cy, -1
  br i1 %.not25.i.i, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !1128
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !1128, !nonnull !5, !noundef !5
  %i.db = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noalias !1128, !noundef !5
  %i.dd = invoke { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.da, i64 noundef %i.dc)
          to label %bb.x unwind label %bb.ak, !noalias !1131 ; 2 uses

bb.w:                                             ; preds = %bb.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsglDVE6xSTcO_5fontc.exit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.x:                                             ; preds = %bb.v
  %i.de = extractvalue { ptr, i64 } %i.dd, 0      ; 2 uses
  %.not26.i.i = icmp eq ptr %i.de, null
  br i1 %.not26.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsglDVE6xSTcO_5fontc.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = extractvalue { ptr, i64 } %i.dd, 1
  %i.dg = invoke noundef ptr @_RINvNtCs5Xr050g3D4S_3std2fs14create_dir_allRNtNtB4_4path4PathECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.df)
          to label %bb.z unwind label %bb.ak, !noalias !1131 ; 4 uses

bb.z:                                             ; preds = %bb.y
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsglDVE6xSTcO_5fontc.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1128
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = and i64 %i.di, 3
  switch i64 %i.dj, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsglDVE6xSTcO_5fontc.exit.i.i.i
    i64 3, label %bb.ab
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsglDVE6xSTcO_5fontc.exit.i.i.i
    i64 1, label %bb.ac
  ], !prof !19

default.unreachable:                              ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.dk = icmp ult ptr %i.dg, inttoptr (i64 188978561024 to ptr)
  %i.dl = and i64 %i.di, 1095216660480
  %i.dm = icmp ne i64 %i.dl, 1095216660480
  call void @llvm.assume(i1 %i.dk)
  call void @llvm.assume(i1 %i.dm)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsglDVE6xSTcO_5fontc.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dn = getelementptr i8, ptr %i.dg, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !alias.scope !1137, !noalias !1128
  store i8 3, ptr %i.o, align 8, !alias.scope !1137, !noalias !1128
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsglDVE6xSTcO_5fontc.exit.i.i.i unwind label %bb.ak, !noalias !1131

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsglDVE6xSTcO_5fontc.exit.i.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1128
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsglDVE6xSTcO_5fontc.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsglDVE6xSTcO_5fontc.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsglDVE6xSTcO_5fontc.exit.i.i.i, %bb.z, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1128
  store ptr null, ptr %i.ae, align 8, !noalias !1128
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr null, ptr %i.dp, align 8, !noalias !1128
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr null, ptr %i.dq, align 8, !noalias !1128
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i8 0, ptr %i.dr, align 8, !noalias !1128
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ae, i64 49
  store i8 1, ptr %i.ds, align 1, !noalias !1128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ae, i64 50
  store i8 0, ptr %i.dt, align 2, !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !1128
  invoke void @_RINvMCs5MxzpKags6U_14tracing_chromeINtB3_18ChromeLayerBuilderINtNtNtCsgCLBQfCopcP_18tracing_subscriber5layer7layered7LayeredINtNtNtB14_6filter13layer_filters8FilteredINtNtNtB14_3fmt9fmt_layer5LayerNtNtNtB14_8registry7sharded8RegistryNtNtB2J_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB23_3env9EnvFilterB39_EB39_EE4fileNtNtCs5Xr050g3D4S_3std4path7PathBufEB4f_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.ad unwind label %bb.w, !noalias !1131

bb.ad:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsglDVE6xSTcO_5fontc.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1128
  %i.du = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i8 1, ptr %i.du, align 8, !noalias !1128
  invoke void @_RNvMs1_Cs5MxzpKags6U_14tracing_chromeINtB5_11ChromeLayerINtNtNtCsgCLBQfCopcP_18tracing_subscriber5layer7layered7LayeredINtNtNtBZ_6filter13layer_filters8FilteredINtNtNtBZ_3fmt9fmt_layer5LayerNtNtNtBZ_8registry7sharded8RegistryNtNtB2D_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1Y_3env9EnvFilterB32_EB32_EE3newB47_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.af)
          to label %bb.ae unwind label %bb.w, !noalias !1131

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1128
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.dv, i64 40, i1 false), !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1128
  invoke void @_RNvXNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3envNtB2_9EnvFilterNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([1784 x i8]) align 8 captures(none) dereferenceable(1784) %i.ac, ptr noundef nonnull align 8 %i.an)
          to label %bb.ag unwind label %bb.af, !noalias !1131

bb.af:                                            ; preds = %bb.ae
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5MxzpKags6U_14tracing_chrome10FlushGuardECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ah) #19
          to label %bb.aj unwind label %bb.ai, !noalias !1131

bb.ag:                                            ; preds = %bb.ae
  %.sroa.09.0.copyload.i.i = load i64, ptr %i.ac, align 8, !noalias !1128
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1776) %.sroa.04.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(1776) %.sroa.4.0..sroa_idx.i.i, i64 1776, i1 false), !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1128
  %.sroa.04.sroa.4.1784..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.sroa.4.i.i, i64 1776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.04.sroa.4.1784..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i64 72, i1 false), !noalias !1128
  %.sroa.014.0.copyload.i.i = load i64, ptr %i.ah, align 8, !noalias !1128
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.312.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.415.0..sroa_idx.i.i, i64 32, i1 false), !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1128
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.u
  %.sroa.010.0.i.i = phi i64 [ %.sroa.014.0.copyload.i.i, %bb.ag ], [ -1, %bb.u ]
  %.sroa.06.0.i.i = phi i64 [ %.sroa.09.0.copyload.i.i, %bb.ag ], [ 2, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1128
  store i64 %.sroa.06.0.i.i, ptr %i.am, align 8, !noalias !1128
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1848) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(1848) %.sroa.04.sroa.4.i.i, i64 1848, i1 false), !noalias !1128
  %.sroa.38.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1856
  store i64 -1, ptr %.sroa.38.0..sroa_idx.i.i, align 8, !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1128
  store i64 %.sroa.010.0.i.i, ptr %i.al, align 8, !noalias !1128
  %.sroa.312.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.312.0..sroa_idx13.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.312.i.i, i64 32, i1 false), !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1128
  invoke void @_RNvXs3_NtNtCsgCLBQfCopcP_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa)
          to label %bb.am unwind label %bb.al, !noalias !1131

bb.ai:                                            ; preds = %.thread.i.i, %bb.ax, %bb.av, %.body.thread.i.i, %bb.ak, %bb.aj, %bb.af
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !1131
  unreachable

bb.aj:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs5MxzpKags6U_14tracing_chrome11ChromeLayerINtNtNtCsgCLBQfCopcP_18tracing_subscriber5layer7layered7LayeredINtNtNtB1s_6filter13layer_filters8FilteredINtNtNtB1s_3fmt9fmt_layer5LayerNtNtNtB1s_8registry7sharded8RegistryNtNtB37_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2r_3env9EnvFilterB3x_EB3x_EEEB4D_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ai) #19
          to label %.thread.i.i unwind label %bb.ai, !noalias !1131

bb.ak:                                            ; preds = %bb.ac, %bb.y, %bb.v
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #19
          to label %.thread.i.i unwind label %bb.ai, !noalias !1131

.body.thread.i.i:                                 ; preds = %bb.av, %bb.as, %.body.thread49.i.i, %bb.al
  %.sroa.021.0.i.i = phi i1 [ false, %bb.as ], [ %.sroa.021.1.ph.i.i, %.body.thread49.i.i ], [ true, %bb.al ], [ true, %bb.av ]
  %.sroa.023.1.i.i = phi i1 [ false, %bb.as ], [ false, %.body.thread49.i.i ], [ true, %bb.al ], [ false, %bb.av ]
  %.pn28.i.i = phi { ptr, i32 } [ %i.el, %bb.as ], [ %lpad.thr_comm47.i.i, %.body.thread49.i.i ], [ %i.dy, %bb.al ], [ %lpad.thr_comm.split-lp48.i.i, %bb.av ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs5MxzpKags6U_14tracing_chrome10FlushGuardEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(40) %i.al) #19
          to label %bb.aw unwind label %bb.ai, !noalias !1131

bb.al:                                            ; preds = %bb.ah
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.am:                                            ; preds = %bb.ah
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !1128, !nonnull !5, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ed = load i8, ptr %i.ec, align 4, !range !23, !noalias !1128, !noundef !5
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ab, i64 1784
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 1792
  %i.ef = load <4 x i8>, ptr %i.dz, align 8, !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1784) %i.ab, ptr noundef nonnull align 8 dereferenceable(1784) %i.an, i64 1784, i1 false), !noalias !1128
  store ptr %i.eb, ptr %i.ee, align 8, !noalias !1128
  store <4 x i8> %i.ef, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !1128
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 1796
  store i8 %i.ed, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !noalias !1128
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 1800
  store i64 -1, ptr %i.eg, align 8, !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1128
  invoke void @_RNvCsgCLBQfCopcP_18tracing_subscriber8registry(ptr noalias nofree noundef nonnull sret([544 x i8]) align 8 captures(address) dereferenceable(544) %i.x)
          to label %bb.an unwind label %bb.av, !noalias !1131

.body.thread49.i.i:                               ; preds = %bb.ap, %bb.ao, %bb.an
  %.sroa.021.1.ph.i.i = phi i1 [ true, %bb.an ], [ false, %bb.ao ], [ false, %bb.ap ]
  %lpad.thr_comm47.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1808) %i.w, ptr noundef nonnull align 8 dereferenceable(1808) %i.ab, i64 1808, i1 false), !noalias !1128
  invoke void @_RNvYINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter13layer_filters8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB1h_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB7_3env9EnvFilterB1G_EINtNtB9_5layer5LayerB1G_E15with_subscriberB2L_(ptr noalias nofree noundef nonnull sret([2360 x i8]) align 8 captures(address) dereferenceable(2360) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1808) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(544) %i.x)
          to label %bb.ao unwind label %.body.thread49.i.i, !noalias !1131

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1864) %i.v, ptr noundef nonnull align 8 dereferenceable(1864) %i.am, i64 1864, i1 false), !noalias !1128
  invoke void @_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter13layer_filters8FilteredINtCs5MxzpKags6U_14tracing_chrome11ChromeLayerINtNtNtBL_5layer7layered7LayeredIBF_INtNtNtBL_3fmt9fmt_layer5LayerNtNtNtBL_8registry7sharded8RegistryNtNtB3d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtBJ_3env9EnvFilterB3C_EB3C_EENtB4H_12ChromeFilterB2y_EEINtB2D_5LayerB2y_E15with_subscriberB4H_(ptr noalias nofree noundef nonnull sret([4232 x i8]) align 8 captures(address) dereferenceable(4232) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1864) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(2360) %i.y)
          to label %bb.ap unwind label %.body.thread49.i.i, !noalias !1131

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1128
  %i.eh = invoke { ptr, ptr } @_RNvYINtNtNtCsgCLBQfCopcP_18tracing_subscriber5layer7layered7LayeredINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB9_6filter13layer_filters8FilteredINtCs5MxzpKags6U_14tracing_chrome11ChromeLayerIB3_IB1G_INtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB3i_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1K_3env9EnvFilterB3H_EB3H_EENtB4M_12ChromeFilterB34_EEB34_ENtNtB9_4util17SubscriberInitExt8try_initB4M_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(4232) %i.z)
          to label %bb.aq unwind label %.body.thread49.i.i, !noalias !1131 ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.ei = extractvalue { ptr, ptr } %i.eh, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i, label %bb.cc, label %bb.ar, !prof !1138

bb.ar:                                            ; preds = %bb.aq
  %i.ej = extractvalue { ptr, ptr } %i.eh, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1128
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  store ptr %i.ei, ptr %i.n, align 8, !noalias !1128
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ej, ptr %i.ek, align 8, !noalias !1128
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 39, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.at unwind label %bb.as, !noalias !1131

bb.as:                                            ; preds = %bb.ar
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCLBQfCopcP_18tracing_subscriber4util12TryInitErrorECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #19
          to label %.body.thread.i.i unwind label %bb.au, !noalias !1131

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !1131
  unreachable

bb.av:                                            ; preds = %bb.am
  %lpad.thr_comm.split-lp48.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9EnvFilterECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(1808) %i.ab)
          to label %.body.thread.i.i unwind label %bb.ai, !noalias !1131

bb.aw:                                            ; preds = %.body.thread.i.i
  br i1 %.sroa.021.0.i.i, label %bb.ax, label %bb.t

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter13layer_filters8FilteredINtCs5MxzpKags6U_14tracing_chrome11ChromeLayerINtNtNtB14_5layer7layered7LayeredIBY_INtNtNtB14_3fmt9fmt_layer5LayerNtNtNtB14_8registry7sharded8RegistryNtNtB3x_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB12_3env9EnvFilterB3X_EB3X_EENtB53_12ChromeFilterB2R_EEEB53_(ptr noalias nofree noundef align 8 dereferenceable(1864) %i.am) #19
          to label %bb.t unwind label %bb.ai, !noalias !1131

.thread.i.i:                                      ; preds = %bb.ak, %bb.aj, %bb.w, %0, %bb.t
  %.pn28.pn35.i.i = phi { ptr, i32 } [ %.pn28.i.i, %bb.t ], [ %1, %0 ], [ %lpad.thr_comm.split-lp.i.i, %bb.w ], [ %lpad.thr_comm.i.i, %bb.ak ], [ %i.dw, %bb.aj ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9EnvFilterECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(1784) %i.an) #19
          to label %.body.thread.i unwind label %bb.ai, !noalias !1131

bb.ay:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1126
  invoke void @_RNvCskL3QWxtyvYA_5fontc7version(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc49.i unwind label %.body.thread105.i, !noalias !1124

.noexc49.i:                                       ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1126
  store ptr @7, ptr %i.l, align 8, !noalias !1126, !captures !24
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 40, ptr %i.en, align 8, !noalias !1126
  %i.eo = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 40, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 7)
          to label %bb.ba unwind label %bb.az, !noalias !1124

bb.az:                                            ; preds = %bb.bx, %bb.bt, %bb.br, %bb.bq, %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.bi, %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.bb, %.noexc49.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #19
          to label %.body.thread.i unwind label %bb.ca, !noalias !1124

bb.ba:                                            ; preds = %.noexc49.i
  br i1 %i.eo, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1126
  %i.eq = invoke noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout()
          to label %bb.bc unwind label %bb.az, !noalias !1124

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.eq, ptr %i.i, align 8, !noalias !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1126
  store ptr %i.m, ptr %i.h, align 8, !noalias !1126
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !1126
  %i.er = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.l, ptr %i.er, align 8, !noalias !1126
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsglDVE6xSTcO_5fontc, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !noalias !1126
  %i.es = invoke noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @9, ptr noundef nonnull %i.h)
          to label %bb.bd unwind label %bb.az, !noalias !1124 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %.not.i48.i = icmp eq ptr %i.es, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1126
  br i1 %.not.i48.i, label %bb.be, label %bb.bu

bb.be:                                            ; preds = %bb.bh, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1126
  %i.et = invoke noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout()
          to label %bb.bi unwind label %bb.az, !noalias !1124

bb.bf:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1126
  %i.eu = invoke noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout()
          to label %bb.bg unwind label %bb.az, !noalias !1124

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.eu, ptr %i.k, align 8, !noalias !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1126
  store ptr %i.m, ptr %i.j, align 8, !noalias !1126
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !1126
  %i.ev = invoke noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @10, ptr noundef nonnull %i.j)
          to label %bb.bh unwind label %bb.az, !noalias !1124 ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %.not42.i.i = icmp eq ptr %i.ev, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1126
  br i1 %.not42.i.i, label %bb.be, label %bb.bu

bb.bi:                                            ; preds = %bb.be
  store ptr %i.et, ptr %i.g, align 8, !noalias !1126
  %i.ew = invoke noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 51 to ptr))
          to label %bb.bj unwind label %bb.az, !noalias !1124 ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %.not43.i.i = icmp eq ptr %i.ew, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1126
  br i1 %.not43.i.i, label %bb.bk, label %bb.bu

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1126
  %i.ex = invoke noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout()
          to label %bb.bl unwind label %bb.az, !noalias !1124

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.ex, ptr %i.f, align 8, !noalias !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1126
  store ptr @12, ptr %i.e, align 8, !noalias !1126, !captures !24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 9, ptr %i.ey, align 8, !noalias !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1126
  store ptr %i.e, ptr %i.d, align 8, !noalias !1126
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsglDVE6xSTcO_5fontc, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !noalias !1126
  %i.ez = invoke noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @13, ptr noundef nonnull %i.d)
          to label %bb.bm unwind label %bb.az, !noalias !1124 ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %.not44.i.i = icmp eq ptr %i.ez, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1126
  br i1 %.not44.i.i, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1126
  %i.fa = invoke noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout()
          to label %bb.bo unwind label %bb.az, !noalias !1124

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.fa, ptr %i.c, align 8, !noalias !1126
  %i.fb = invoke noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @14, ptr noundef nonnull inttoptr (i64 21 to ptr))
          to label %bb.bp unwind label %bb.az, !noalias !1124 ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %.not45.i.i = icmp eq ptr %i.fb, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1126
  br i1 %.not45.i.i, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1126
  %i.fc = invoke noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout()
          to label %bb.br unwind label %bb.az, !noalias !1124

bb.br:                                            ; preds = %bb.bq
  store ptr %i.fc, ptr %i.b, align 8, !noalias !1126
  %i.fd = invoke noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 47 to ptr))
          to label %bb.bs unwind label %bb.az, !noalias !1124 ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %.not46.i.i = icmp eq ptr %i.fd, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1126
  br i1 %.not46.i.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1126
  %i.fe = invoke noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout()
          to label %bb.bx unwind label %bb.az, !noalias !1124

bb.bu:                                            ; preds = %bb.by, %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bh, %bb.bd
  %.sroa.0.0.i.i = phi ptr [ %i.es, %bb.bd ], [ %i.ev, %bb.bh ], [ %i.ew, %bb.bj ], [ %i.ez, %bb.bm ], [ %i.fb, %bb.bp ], [ %i.fd, %bb.bs ], [ %i.fh, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1126
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i.i unwind label %bb.bv, !noalias !1124

bb.bv:                                            ; preds = %bb.bu
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.thread.i unwind label %bb.bw, !noalias !1124

bb.bw:                                            ; preds = %bb.bv
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !1124
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i.i: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.di unwind label %.body.thread105.i, !noalias !1124

bb.bx:                                            ; preds = %bb.bt
  store ptr %i.fe, ptr %i.a, align 8, !noalias !1126
  %i.fh = invoke noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 57 to ptr))
          to label %bb.by unwind label %bb.az, !noalias !1124 ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %.not47.i.i = icmp eq ptr %i.fh, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1126
  br i1 %.not47.i.i, label %bb.bz, label %bb.bu

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1126
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m)
          to label %bb.dg unwind label %.body.thread105.i, !noalias !1124

bb.ca:                                            ; preds = %bb.az
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !1124
  unreachable

bb.cb:                                            ; preds = %bb.cd
  br i1 %.sroa.016.2.i, label %.body.thread.i, label %common.resume

.body.thread105.i:                                ; preds = %bb.dg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5MxzpKags6U_14tracing_chrome10FlushGuardECsglDVE6xSTcO_5fontc.exit.i.i, %bb.bz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i.i, %bb.ay, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc.exit28.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builder7BuilderECsglDVE6xSTcO_5fontc.exit.i.i.i, %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.cc:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !1139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1128
end_hunk_0
