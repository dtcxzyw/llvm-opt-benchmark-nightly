Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.13?download=true
inline.NumInlined: 525
inline.NumDeleted: 159
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing12trailer_expr:bb.a
  %i.cj = icmp eq i64 %i.ce, -9223372036854775783
  br i1 %i.cj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !1414, !noundef !6 ; 2 uses
  %i.cm = icmp ult i64 %i.cl, 37191016277640226
  call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp eq i64 %i.cl, 0
  br i1 %i.cn, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.ah, %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1414
  store i64 0, ptr %i.ab, align 8, !noalias !1414
  %i.co = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.co, align 8, !noalias !1414
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %i.cp, align 8, !noalias !1414
  %i.cq = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !noalias !1414, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.aa, ptr noundef nonnull align 8 dereferenceable(168) %i.ak, i64 168, i1 false), !noalias !1414
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !1415
  %i.cs = call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 168, 249) 168, i64 noundef 8) #14, !noalias !1415 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.l, label %bb.bc, !prof !21

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #19
          to label %.noexc.i.i unwind label %bb.m, !noalias !1414

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.aa) #16
          to label %.body.i.i unwind label %bb.n, !noalias !1414

bb.n:                                             ; preds = %bb.m
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1414
  unreachable

.thread84.i.i:                                    ; preds = %bb.ai, %.thread.i.i, %bb.o
  %.sroa.036.0.i.i = phi i1 [ %.sroa.036.1.i.i, %bb.o ], [ true, %.thread.i.i ], [ true, %bb.ai ] ; 2 uses
  %.sroa.029.0.i.i = phi i1 [ %.sroa.029.1.i.i, %bb.o ], [ false, %.thread.i.i ], [ false, %bb.ai ]
  %.pn45.i.i = phi { ptr, i32 } [ %i.cw, %bb.o ], [ %i.do, %.thread.i.i ], [ %i.do, %bb.ai ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #16
          to label %bb.az unwind label %bb.aj, !noalias !1414

bb.o:                                             ; preds = %bb.af, %bb.v, %bb.p
  %.sroa.036.1.i.i = phi i1 [ true, %bb.af ], [ false, %bb.v ], [ false, %bb.p ]
  %.sroa.029.1.i.i = phi i1 [ false, %bb.af ], [ false, %bb.v ], [ true, %bb.p ]
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.thread84.i.i

bb.p:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ai, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i.i, i64 104, i1 false), !noalias !1414
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.val60.i.i = load i64, ptr %i.cy, align 8, !noalias !1414, !noundef !6 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.val61.i.i = load ptr, ptr %i.cz, align 8, !noalias !1414, !align !5, !noundef !6
  %i.da = icmp ult i64 %.val60.i.i, 96076792050570582
  call void @llvm.assume(i1 %i.da)
  %.not.i.i.i = icmp ne ptr %.val61.i.i, null
  %..i.i.i = zext i1 %.not.i.i.i to i64
  %i.db = add nuw nsw i64 %.val60.i.i, %..i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1414
  invoke void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_4Path10parse_rest(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cx, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.o, !noalias !1414

bb.q:                                             ; preds = %bb.p
  %i.dc = load i64, ptr %i.ah, align 8, !range !10, !noalias !1414, !noundef !6
  %.not.not.i.i = icmp eq i64 %i.dc, -1           ; 2 uses
  br i1 %.not.not.i.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1414
  store i64 -1, ptr %i.bv, align 8, !alias.scope !1414
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.t unwind label %bb.s, !noalias !1414

bb.s:                                             ; preds = %bb.r
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body63.thread.i.i unwind label %bb.u, !noalias !1414

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i unwind label %.body63.thread92.i.i, !noalias !1414

.body63.thread92.i.i:                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body63.thread.i.i

bb.u:                                             ; preds = %bb.s
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1414
  unreachable

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1414
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1414
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i64 32, i1 false), !noalias !1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.cx, i64 48, i1 false), !noalias !1414
  invoke fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing31rest_of_path_or_macro_or_struct(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.af, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ad, ptr noundef nonnull align 8 %1)
          to label %bb.w unwind label %bb.o, !noalias !1414

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1414
  %i.di = load i64, ptr %i.af, align 8, !range !12, !noalias !1414, !noundef !6 ; 4 uses
  %i.dj = icmp eq i64 %i.di, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !noalias !1414
  br i1 %i.dj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1414
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69.i.i, i64 24, i1 false)
  store i64 -1, ptr %i.bv, align 8, !alias.scope !1414
  br label %bb.ak

bb.y:                                             ; preds = %bb.w
  %.sroa.542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.515.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.542.0..sroa_idx.i.i, i64 136, i1 false), !noalias !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1414
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69.i.i, i64 24, i1 false), !noalias !1414
  store i64 %i.di, ptr %i.ag, align 8, !noalias !1414
  %i.dm = icmp ne i64 %i.di, -9223372036854775777
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp eq i64 %i.di, -9223372036854775783
  br i1 %i.dn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.bv, ptr noundef nonnull align 8 dereferenceable(168) %i.ag, i64 168, i1 false)
  br label %bb.ak

.thread.i.i:                                      ; preds = %bb.ad
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 -9223372036854775783, ptr %i.ak, align 8, !noalias !1414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 104, i1 false), !noalias !1414
  %i.dp = load i64, ptr %i.ag, align 8, !range !19, !noalias !1414, !noundef !6 ; 2 uses
  %i.dq = icmp ne i64 %i.dp, -9223372036854775777
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq i64 %i.dp, -9223372036854775783
  br i1 %i.dr, label %.thread84.i.i, label %bb.ai

bb.aa:                                            ; preds = %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.val58.i.i = load i64, ptr %i.ds, align 8, !noalias !1414, !noundef !6 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.val59.i.i = load ptr, ptr %i.dt, align 8, !noalias !1414, !align !5, !noundef !6
  %i.du = icmp ult i64 %.val58.i.i, 96076792050570582
  call void @llvm.assume(i1 %i.du)
  %.not.i65.i.i = icmp ne ptr %.val59.i.i, null
  %..i66.i.i = zext i1 %.not.i65.i.i to i64
  %i.dv = add nuw nsw i64 %.val58.i.i, %..i66.i.i
  %i.dw = icmp eq i64 %i.dv, %i.db
  br i1 %i.dw, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.414.0..sroa_idx.i.i, i64 104, i1 false), !noalias !1414
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.518.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.414.0..sroa_idx.i.i, i64 104, i1 false), !noalias !1414
  %i.dx = load i64, ptr %i.ak, align 8, !range !19, !noalias !1414, !noundef !6 ; 2 uses
  %i.dy = icmp ne i64 %i.dx, -9223372036854775777
  call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp eq i64 %i.dx, -9223372036854775783
  br i1 %i.dz, label %.thread105.i.i, label %bb.ad

.thread105.i.i:                                   ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.414.0..sroa_idx.i.i, i64 104, i1 false), !noalias !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ad
  %.pre.i.i = load i64, ptr %i.ag, align 8, !range !19, !noalias !1414 ; 2 uses
  %2 = icmp ne i64 %.pre.i.i, -9223372036854775777
  %3 = icmp eq i64 %.pre.i.i, -9223372036854775783
  store i64 -9223372036854775783, ptr %i.ak, align 8, !noalias !1414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.518.i.i, i64 104, i1 false), !noalias !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.assume(i1 %2)
  br i1 %3, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ak)
          to label %bb.ac unwind label %.thread.i.i, !noalias !1414

bb.ae:                                            ; preds = %bb.af, %bb.ac, %.thread105.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1414
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai)
          to label %bb.ah unwind label %bb.ag, !noalias !1414

bb.af:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ag)
          to label %bb.ae unwind label %bb.o, !noalias !1414

bb.ag:                                            ; preds = %bb.ao, %bb.ae
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1414
  br label %bb.k

bb.ai:                                            ; preds = %.thread.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ag) #16
          to label %.thread84.i.i unwind label %bb.aj, !noalias !1414

bb.aj:                                            ; preds = %bb.bn, %bb.bm, %.body.i.i, %bb.bb, %bb.ba, %bb.ay, %.body63.thread.i.i, %bb.ai, %.thread84.i.i, %.critedge.i.i
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1414
  unreachable

bb.ak:                                            ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1414
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai)
          to label %.thread94.i.i unwind label %bb.an, !noalias !1414

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i: ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.val56.i.i = load i32, ptr %i.ec, align 8, !range !18, !noalias !1414, !noundef !6
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.val57.i.i = load ptr, ptr %i.ed, align 8, !noalias !1414 ; 4 uses
  %i.ee = icmp eq i32 %.val56.i.i, 2
  br i1 %i.ee, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val57.i.i) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %.val57.i.i) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i.i.i unwind label %bb.am, !noalias !1416, !inline_history !0

bb.am:                                            ; preds = %bb.al
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57.i.i, i64 noundef 248, i64 noundef 8) #14, !noalias !1416, !inline_history !0
  br label %bb.ay

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i.i.i: ; preds = %bb.al
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57.i.i, i64 noundef 248, i64 noundef 8) #14, !noalias !1416, !inline_history !0
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.thread94.i.i:                                    ; preds = %bb.ao, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1414
  %i.eh = load i64, ptr %i.ak, align 8, !range !19, !noalias !1414, !noundef !6 ; 2 uses
  %i.ei = icmp ne i64 %i.eh, -9223372036854775777
  call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp eq i64 %i.eh, -9223372036854775783
  br i1 %i.ej, label %bb.ap, label %bb.ax

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cx)
          to label %.thread94.i.i unwind label %bb.ag, !noalias !1414

bb.ap:                                            ; preds = %bb.ax, %.thread94.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1414
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %bb.at unwind label %bb.aq, !noalias !1414

bb.aq:                                            ; preds = %bb.ap
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !1420, !noalias !1414, !noundef !6 ; 3 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %common.resume, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eo = load i64, ptr %i.em, align 8, !noalias !1421, !noundef !6
  %i.ep = add i64 %i.eo, -1                       ; 2 uses
  store i64 %i.ep, ptr %i.em, align 8, !noalias !1421
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.as, label %common.resume

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.el) #18
          to label %common.resume unwind label %bb.aw, !noalias !1414

bb.at:                                            ; preds = %bb.ap
  %i.er = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !1425, !noalias !1414, !noundef !6 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10expr_group.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eu = load i64, ptr %i.es, align 8, !noalias !1426, !noundef !6
  %i.ev = add i64 %i.eu, -1                       ; 2 uses
  store i64 %i.ev, ptr %i.es, align 8, !noalias !1426
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.av, label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10expr_group.exit.i

bb.av:                                            ; preds = %bb.au
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.er) #18, !noalias !1414
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10expr_group.exit.i

bb.aw:                                            ; preds = %bb.as
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1414
  unreachable

common.resume:                                    ; preds = %.body249, %.body289.thread, %.thread483, %bb.mh, %.thread469, %bb.lb, %bb.lk, %bb.mq, %bb.le, %bb.ld, %bb.lc, %bb.mk, %bb.mj, %bb.mi, %.body, %.body239, %.critedge.i.i, %bb.aq, %bb.ar, %bb.as, %bb.bd, %bb.be, %bb.bf, %bb.cr, %bb.cs, %bb.ct, %bb.da, %bb.db, %bb.dc, %.thread.i17.i, %bb.ei
  %common.resume.op = phi { ptr, i32 } [ %.pn7.i, %bb.ei ], [ %.pn6689.i.i, %.thread.i17.i ], [ %.pn51.i.i, %.critedge.i.i ], [ %i.fc, %bb.bd ], [ %i.ek, %bb.aq ], [ %i.ek, %bb.as ], [ %i.ek, %bb.ar ], [ %i.fc, %bb.bf ], [ %i.fc, %bb.be ], [ %i.hn, %bb.da ], [ %i.gz, %bb.cr ], [ %i.gz, %bb.ct ], [ %i.gz, %bb.cs ], [ %i.hn, %bb.dc ], [ %i.hn, %bb.db ], [ %i.tg, %bb.mq ], [ %.pn223413, %.body289.thread ], [ %.pn208, %.body249 ], [ %.pn217, %.body239 ], [ %.pn213, %bb.lb ], [ %.pn215472, %.thread469 ], [ %.pn219, %bb.mh ], [ %.pn221486, %.thread483 ], [ %i.su, %bb.mi ], [ %i.su, %bb.mj ], [ %i.rt, %bb.lk ], [ %.pn210, %.body ], [ %i.su, %bb.mk ], [ %i.rh, %bb.lc ], [ %i.rh, %bb.le ], [ %i.rh, %bb.ld ]
  resume { ptr, i32 } %common.resume.op

bb.ax:                                            ; preds = %.thread94.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ak)
          to label %bb.ap unwind label %bb.f, !noalias !1414

.body63.thread.i.i:                               ; preds = %.body63.thread92.i.i, %bb.s
  %eh.lpad-body6491.i.i = phi { ptr, i32 } [ %i.df, %.body63.thread92.i.i ], [ %i.de, %bb.s ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.val54.i.i = load i32, ptr %i.ey, align 8, !range !18, !noalias !1414, !noundef !6
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.val55.i.i = load ptr, ptr %i.ez, align 8, !noalias !1414
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.val54.i.i, ptr %.val55.i.i) #16
          to label %bb.ay unwind label %bb.aj, !noalias !1414

bb.ay:                                            ; preds = %.body63.thread.i.i, %bb.am
  %.pn47.ph.i.i = phi { ptr, i32 } [ %eh.lpad-body6491.i.i, %.body63.thread.i.i ], [ %i.ef, %bb.am ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cx) #16
          to label %bb.bk unwind label %bb.aj, !noalias !1414

bb.az:                                            ; preds = %.thread84.i.i
  br i1 %.sroa.029.0.i.i, label %bb.ba, label %bb.bk

bb.ba:                                            ; preds = %bb.az
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.val.i.i = load i32, ptr %i.fa, align 8, !range !18, !noalias !1414, !noundef !6
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.val53.i.i = load ptr, ptr %i.fb, align 8, !noalias !1414
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.val.i.i, ptr %.val53.i.i) #16
          to label %bb.bb unwind label %bb.aj, !noalias !1414

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cx) #16
          to label %bb.bk unwind label %bb.aj, !noalias !1414

.body.i.i:                                        ; preds = %bb.m
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #16
          to label %.critedge.i.i unwind label %bb.aj, !noalias !1414

bb.bc:                                            ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.cs, ptr noundef nonnull align 8 dereferenceable(168) %i.aa, i64 168, i1 false), !noalias !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1414
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.423.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1414
  store i64 -9223372036854775794, ptr %i.bv, align 8, !alias.scope !1414
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.cs, ptr %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1414
  %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i32 %i.cr, ptr %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1414
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %bb.bg unwind label %bb.bd, !noalias !1414

bb.bd:                                            ; preds = %bb.bc
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !1430, !noalias !1414, !noundef !6 ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %common.resume, label %bb.be
end_hunk_0
begin_hunk_1_@_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing12trailer_expr:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %i.sv = load ptr, ptr %i.kl, align 8, !alias.scope !1539, !noundef !6 ; 3 uses
  %i.sw = icmp eq ptr %i.sv, null
  br i1 %i.sw, label %common.resume, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.sx = load i64, ptr %i.sv, align 8, !noalias !1540, !noundef !6
  %i.sy = add i64 %i.sx, -1                       ; 2 uses
  store i64 %i.sy, ptr %i.sv, align 8, !noalias !1540
  %i.sz = icmp eq i64 %i.sy, 0
  br i1 %i.sz, label %bb.mk, label %common.resume

bb.mk:                                            ; preds = %bb.mj
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kl) #18
          to label %common.resume unwind label %bb.mo

bb.ml:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit322
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  %i.ta = load ptr, ptr %i.kl, align 8, !alias.scope !1544, !noundef !6 ; 3 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit328, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.tc = load i64, ptr %i.ta, align 8, !noalias !1545, !noundef !6
  %i.td = add i64 %i.tc, -1                       ; 2 uses
  store i64 %i.td, ptr %i.ta, align 8, !noalias !1545
  %i.te = icmp eq i64 %i.td, 0
  br i1 %i.te, label %bb.mn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit328

bb.mn:                                            ; preds = %bb.mm
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kl) #18
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit328

bb.mo:                                            ; preds = %bb.mk
  %i.tf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.body306:                                         ; preds = %bb.lq, %bb.ls
  %.pn219 = phi { ptr, i32 } [ %i.sa, %bb.ls ], [ %i.rz, %bb.lq ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt) #16
          to label %bb.mh unwind label %bb.jd

bb.mp:                                            ; preds = %bb.lp
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ko, i64 noundef 168, i64 noundef 8) #14, !noalias !1524, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit333 unwind label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.tg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %common.resume unwind label %bb.mr

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit333: ; preds = %bb.mp
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit328

bb.mr:                                            ; preds = %bb.mq
  %i.th = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit328: ; preds = %bb.mn, %bb.mm, %bb.ml, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.kf

.thread483:                                       ; preds = %bb.me, %.body309, %.body320.thread495, %bb.mh
  %.pn221486 = phi { ptr, i32 } [ %i.se, %.body309 ], [ %.pn219, %bb.mh ], [ %i.ss, %.body320.thread495 ], [ %i.sr, %bb.me ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bu) #16
          to label %common.resume unwind label %bb.jd

.body289.thread:                                  ; preds = %.body97.i, %bb.lw, %bb.lx, %bb.ly, %bb.kq, %bb.kr, %bb.ks, %.body289.thread422, %.body249
  %.pn223413 = phi { ptr, i32 } [ %lpad.thr_comm, %.body289.thread422 ], [ %.pn208, %.body249 ], [ %i.qs, %bb.kq ], [ %i.qs, %bb.ks ], [ %i.qs, %bb.kr ], [ %i.sf, %bb.ly ], [ %i.sf, %bb.lx ], [ %i.sf, %bb.lw ], [ %.pn86.i, %.body97.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.bw) #16
          to label %common.resume unwind label %bb.jd
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing14ambiguous_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10unary_expr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.b, ptr noundef nonnull align 8 %1)
  %i.c = load i64, ptr %i.b, align 8, !range !12, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10parse_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, i8 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing18expr_struct_helper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [224 x i8], align 8               ; 4 uses
  %i.d = alloca [224 x i8], align 8               ; 7 uses
  %.sroa.621 = alloca [24 x i8], align 8          ; 6 uses
  %i.e = alloca [168 x i8], align 8               ; 5 uses
  %i.f = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.0.sroa.0 = alloca [104 x i8], align 8    ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 12 uses
  %i.l = alloca [56 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_braces(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.l, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %.thread153

.thread153:                                       ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.l, align 8, !range !17, !noundef !6
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bk

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.s, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8, !alias.scope !1596
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1596
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1596
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.823.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.bh
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.r, %bb.d
  %.val108 = load ptr, ptr %i.m, align 8, !noundef !6
  %.val109 = load ptr, ptr %i.t, align 8, !noundef !6
  %i.v = icmp eq ptr %.val108, %.val109
  br i1 %i.v, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token6DotDotNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %i.m)
          to label %bb.h unwind label %bb.bo      ; 2 uses

bb.h:                                             ; preds = %bb.g
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr10FieldValueEB8_(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.d, ptr noundef nonnull align 8 %i.m)
          to label %bb.k unwind label %bb.bo

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.y, align 8
  %i.z = load <2 x i32>, ptr %2, align 8
  %.sroa.0125.0.copyload = load i32, ptr %2, align 8 ; 3 uses
  %.sroa.8129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8129.0.copyload = load ptr, ptr %.sroa.8129.0..sroa_idx, align 8 ; 7 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token6DotDotEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.m)
          to label %bb.ak unwind label %bb.aj

bb.k:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.d, align 8, !range !10, !noundef !6 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.468.0..sroa_idx, i64 24, i1 false)
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621)
  br label %bb.ai

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.823.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.569.0..sroa_idx, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.aa, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, i64 24, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr10FieldValueNtNtB4_5token5CommaE4pushB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(224) %i.c)
          to label %bb.n unwind label %bb.bo

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621)
  %.val106 = load ptr, ptr %i.m, align 8, !noundef !6
  %.val107 = load ptr, ptr %i.t, align 8, !noundef !6
  %i.ad = icmp eq ptr %.val106, %.val107
  br i1 %i.ad, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.m)
          to label %bb.p unwind label %bb.bo

bb.p:                                             ; preds = %bb.o
  %i.ae = load i64, ptr %i.b, align 8, !range !10, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.ae, -1
  %.sroa.070.0.copyload = load i32, ptr %i.u, align 8 ; 2 uses
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.579.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.576.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.070.0.copyload, ptr %.sroa.478.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr10FieldValueNtNtB4_5token5CommaE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef %.sroa.070.0.copyload)
          to label %bb.f unwind label %bb.bo

bb.s:                                             ; preds = %bb.n, %bb.f
  %.sroa.037.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.037.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %.sroa.037.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.037.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %.sroa.9.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %0, i64 156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx40, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.037.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.037.sroa.4.0..sroa_idx, align 8
  %.sroa.037.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.037.sroa.5.0..sroa_idx, align 8
  %.sroa.037.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.037.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %.sroa.738.0..sroa_idx, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %.sroa.839.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.w unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1600, !noundef !6 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = load i64, ptr %i.ai, align 8, !noalias !1601, !noundef !6
  %i.al = add i64 %i.ak, -1                       ; 2 uses
  store i64 %i.al, ptr %i.ai, align 8, !noalias !1601
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.v, label %common.resume

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #18
          to label %common.resume unwind label %bb.z

bb.w:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1605, !noundef !6 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = load i64, ptr %i.ao, align 8, !noalias !1606, !noundef !6
  %i.ar = add i64 %i.aq, -1                       ; 2 uses
  store i64 %i.ar, ptr %i.ao, align 8, !noalias !1606
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit unwind label %bb.bj

bb.z:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.sink.split:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.ai
  %.sroa.052.3 = phi i8 [ 1, %bb.ai ], [ 0, %.sink.split ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.ae unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !1610, !noundef !6 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.body110, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ay = load i64, ptr %i.aw, align 8, !noalias !1611, !noundef !6
  %i.az = add i64 %i.ay, -1                       ; 2 uses
  store i64 %i.az, ptr %i.aw, align 8, !noalias !1611
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.ad, label %.body110

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #18
          to label %.body110 unwind label %bb.ah

bb.ae:                                            ; preds = %bb.aa
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1615, !noundef !6 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit117, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.be = load i64, ptr %i.bc, align 8, !noalias !1616, !noundef !6
  %i.bf = add i64 %i.be, -1                       ; 2 uses
  store i64 %i.bf, ptr %i.bc, align 8, !noalias !1616
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.ag, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit117

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit117 unwind label %bb.bj

bb.ah:                                            ; preds = %bb.ad
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.ai:                                            ; preds = %bb.l, %bb.q
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4expr10FieldValueNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k)
          to label %bb.aa unwind label %.thread136

.thread136:                                       ; preds = %bb.ai
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.aj:                                            ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4expr10FieldValueNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #16
          to label %bb.bl unwind label %bb.ax

bb.ak:                                            ; preds = %bb.j
  %i.bk = load i64, ptr %i.g, align 8, !range !10, !noundef !6 ; 2 uses
  %.not82 = icmp eq i64 %i.bk, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.054.0.copyload = load i64, ptr %i.bl, align 8 ; 2 uses
  br i1 %.not82, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.560.0.copyload = load i64, ptr %.sroa.560.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bk, ptr %i.bm, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.054.0.copyload, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.560.0.copyload, ptr %.sroa.563.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.am:                                            ; preds = %bb.ao
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.as, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.bn, %bb.am ], [ %i.bu, %bb.as ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4expr10FieldValueNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #16
          to label %bb.ay unwind label %bb.ax

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val104 = load ptr, ptr %i.m, align 8, !noundef !6
  %.val105 = load ptr, ptr %i.t, align 8, !noundef !6
  %i.bo = icmp eq ptr %.val104, %.val105
  br i1 %i.bo, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.f, ptr noundef nonnull align 8 %i.m)
          to label %bb.ap unwind label %bb.am

bb.ap:                                            ; preds = %bb.ao
  %i.bp = load i64, ptr %i.f, align 8, !range !12, !noundef !6 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, -1
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  br i1 %i.bq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ap
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.817.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.817.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.566.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.bp, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %i.bt = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 168)
          to label %bb.au unwind label %bb.as     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.e) #16
          to label %.body unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.au:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.bt, ptr noundef nonnull align 8 dereferenceable(168) %i.e, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.av

bb.av:                                            ; preds = %bb.an, %bb.au
  %.sroa.013.0 = phi ptr [ %i.bt, %bb.au ], [ null, %bb.an ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i64 16, i1 false)
  %.sroa.0.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  %.sroa.0.sroa.0.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.0.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.sroa.0, i64 104, i1 false)
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x i32> %i.z, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.8129.0.copyload, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.013.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i64 %.sroa.054.0.copyload, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 4
  br label %.sink.split

bb.aw:                                            ; preds = %bb.aq, %bb.al
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4expr10FieldValueNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h)
          to label %bb.ba unwind label %bb.az

bb.ax:                                            ; preds = %bb.bb, %bb.bm, %bb.bt, %bb.bs, %.thread, %bb.bo, %bb.bn, %bb.bl, %.body118, %bb.ay, %.body, %bb.aj
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.ay:                                            ; preds = %bb.az, %.body
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.az ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #16
          to label %bb.bb unwind label %bb.ax

bb.az:                                            ; preds = %bb.aw
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i)
          to label %bb.bd unwind label %bb.bc

bb.bb:                                            ; preds = %bb.bc, %bb.ay
  %.pn84 = phi { ptr, i32 } [ %i.by, %bb.bc ], [ %.pn, %bb.ay ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.sroa.0125.0.copyload, ptr %.sroa.8129.0.copyload) #16
          to label %.body118 unwind label %bb.ax

bb.bc:                                            ; preds = %bb.ba
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bz = icmp eq i32 %.sroa.0125.0.copyload, 2
  br i1 %i.bz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8129.0.copyload) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %.sroa.8129.0.copyload) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i unwind label %bb.bf, !noalias !1617, !inline_history !0

bb.bf:                                            ; preds = %bb.be
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8129.0.copyload, i64 noundef 248, i64 noundef 8) #14, !noalias !1617, !inline_history !0
  br label %.body118

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i: ; preds = %bb.be
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8129.0.copyload, i64 noundef 248, i64 noundef 8) #14, !noalias !1617, !inline_history !0
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit

.body118:                                         ; preds = %bb.bf, %bb.bb
  %.pn86 = phi { ptr, i32 } [ %.pn84, %bb.bb ], [ %i.ca, %bb.bf ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #16
          to label %.thread unwind label %bb.ax

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i, %bb.bd
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread unwind label %bb.bi

bb.bh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.e

bb.bi:                                            ; preds = %bb.bg
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit117: ; preds = %bb.af, %bb.ae, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.w, label %4, label %bb.bk

.body110:                                         ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.bj, %.thread
  %.sroa.052.4 = phi i8 [ %.sroa.052.0134, %.thread ], [ %.sroa.052.3, %bb.ad ], [ %.sroa.052.3, %bb.ac ], [ %.sroa.052.3, %bb.ab ], [ %.sroa.052.5, %bb.bj ]
  %.pn91 = phi { ptr, i32 } [ %.pn88.pn135, %.thread ], [ %i.au, %bb.ad ], [ %i.au, %bb.ac ], [ %i.au, %bb.ab ], [ %i.ce, %bb.bj ] ; 2 uses
  %i.cd = trunc nuw i8 %.sroa.052.4 to i1
  br i1 %i.cd, label %bb.bs, label %common.resume

bb.bj:                                            ; preds = %bb.ag, %bb.y
  %.sroa.052.5 = phi i8 [ 0, %bb.y ], [ %.sroa.052.3, %bb.ag ]
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body110

4:                                                ; preds = %bb.bk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit117
  %.sroa.052.6 = phi i8 [ %.sroa.052.7, %bb.bk ], [ %.sroa.052.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit117 ]
  %5 = trunc nuw i8 %.sroa.052.6 to i1
  br i1 %5, label %.thread158, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit124

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit117, %bb.c
  %.sroa.052.7 = phi i8 [ 1, %bb.c ], [ %.sroa.052.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit117 ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %3)
          to label %4 unwind label %bb.bp

bb.bl:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #16
          to label %bb.bm unwind label %bb.ax

bb.bm:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.sroa.0125.0.copyload, ptr %.sroa.8129.0.copyload) #16
          to label %bb.bn unwind label %bb.ax

bb.bn:                                            ; preds = %bb.bm
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #16
          to label %.thread unwind label %bb.ax

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit: ; preds = %bb.x, %bb.w, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit124

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit124: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i123, %.thread158, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit, %4
  ret void

bb.bo:                                            ; preds = %bb.r, %bb.o, %bb.g, %bb.m, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4expr10FieldValueNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #16
          to label %.thread unwind label %bb.ax

bb.bp:                                            ; preds = %bb.bk
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %6 = trunc nuw i8 %.sroa.052.7 to i1
  br i1 %6, label %bb.bt, label %common.resume

.thread158:                                       ; preds = %4
  %.val96 = load i32, ptr %2, align 8, !range !18, !noundef !6
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val97 = load ptr, ptr %i.cg, align 8          ; 4 uses
  %i.ch = icmp eq i32 %.val96, 2
  br i1 %i.ch, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit124, label %bb.bq

bb.bq:                                            ; preds = %.thread158
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %.val97) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i123 unwind label %bb.br, !noalias !1618, !inline_history !0

common.resume:                                    ; preds = %bb.bp, %bb.bt, %.body110, %bb.t, %bb.v, %bb.u, %bb.br
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %bb.br ], [ %.pn93.ph, %bb.bt ], [ %i.cf, %bb.bp ], [ %.pn91, %.body110 ], [ %i.ag, %bb.t ], [ %i.ag, %bb.v ], [ %i.ag, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.br:                                            ; preds = %bb.bq
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val97, i64 noundef 248, i64 noundef 8) #14, !noalias !1618, !inline_history !0
  br label %common.resume

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i123: ; preds = %bb.bq
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val97, i64 noundef 248, i64 noundef 8) #14, !noalias !1618, !inline_history !0
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit124

.thread:                                          ; preds = %bb.bn, %.body118, %bb.bg, %bb.e, %bb.bo, %.thread136
  %.pn88.pn135 = phi { ptr, i32 } [ %i.bi, %.thread136 ], [ %i.cb, %bb.bg ], [ %lpad.thr_comm.split-lp, %bb.e ], [ %lpad.thr_comm, %bb.bo ], [ %i.bj, %bb.bn ], [ %.pn86, %.body118 ]
  %.sroa.052.0134 = phi i8 [ 1, %.thread136 ], [ 0, %bb.bg ], [ 0, %bb.e ], [ 1, %bb.bo ], [ 0, %bb.bn ], [ 0, %.body118 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #16
          to label %.body110 unwind label %bb.ax

bb.bs:                                            ; preds = %.thread153, %.body110
  %.pn91157 = phi { ptr, i32 } [ %i.n, %.thread153 ], [ %.pn91, %.body110 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %3) #16
          to label %bb.bt unwind label %bb.ax

bb.bt:                                            ; preds = %bb.bs, %bb.bp
  %.pn93.ph = phi { ptr, i32 } [ %i.cf, %bb.bp ], [ %.pn91157, %bb.bs ]
  %.val = load i32, ptr %2, align 8, !range !18, !noundef !6
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val95 = load ptr, ptr %i.cj, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.val, ptr %.val95) #16
          to label %common.resume unwind label %bb.ax
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing31rest_of_path_or_macro_or_struct(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = load i32, ptr %1, align 8, !range !18, !noundef !6 ; 2 uses
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.f, %bb.d, %bb.a
  %i.f = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5BraceNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %3)
          to label %bb.r unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.g = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token3NotNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %3)
          to label %bb.d unwind label %bb.x

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2NeNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %3)
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %bb.e
  br i1 %i.h, label %bb.b, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = invoke noundef zeroext i1 @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_4Path12is_mod_style(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %bb.h unwind label %bb.x

bb.h:                                             ; preds = %bb.g
  br i1 %i.i, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token3NotEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %3)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.j = load i64, ptr %i.d, align 8, !range !10, !noundef !6 ; 2 uses
  %.not52 = icmp eq i64 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.036.0.copyload = load i32, ptr %i.k, align 8 ; 2 uses
  br i1 %.not52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.542.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.l, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.036.0.copyload, ptr %.sroa.444.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn3mac15parse_delimiter(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %3)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !1619, !noundef !6 ; 2 uses
  %i.o = icmp eq i64 %i.n, -2
  br i1 %i.o, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.411.sroa.6.sroa.0.sroa.6.0..sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411.sroa.6.sroa.0.sroa.6.0..sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.548.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.411.sroa.6.sroa.0.sroa.5.0..sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.411.sroa.6.sroa.0.sroa.5.0..sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  store i64 -9223372036854775787, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.6.sroa.0.sroa.4.0..sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.n, ptr %.sroa.411.sroa.6.sroa.0.sroa.4.0..sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.6.sroa.4.0..sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %.sroa.036.0.copyload, ptr %.sroa.411.sroa.6.sroa.4.0..sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit

bb.p:                                             ; preds = %bb.n, %bb.k
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %2)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit: ; preds = %bb.p, %bb.o, %bb.w, %bb.s
  ret void

bb.r:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.424.sroa.6.0..sroa.424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.424.sroa.6.0..sroa.424.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  store i64 -9223372036854775783, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx, align 8
  %.sroa.424.sroa.5.0..sroa.424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.424.sroa.5.0..sroa.424.0..sroa_idx.sroa_idx, align 8
  %.sroa.424.sroa.7.0..sroa.424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.424.sroa.7.0..sroa.424.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing18expr_struct_helper(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noundef nonnull align 8 %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = load i64, ptr %i.b, align 8, !range !10, !noundef !6
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 168, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_.exit

bb.x:                                             ; preds = %bb.b, %bb.l, %bb.i, %bb.g, %bb.e, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %2) #16
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.z:                                             ; preds = %bb.aa
  resume { ptr, i32 } %.pn.ph

bb.aa:                                            ; preds = %bb.x, %bb.q
  %.pn.ph = phi { ptr, i32 } [ %i.r, %bb.q ], [ %lpad.thr_comm, %bb.x ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val54 = load ptr, ptr %i.x, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %i.e, ptr %.val54) #16
          to label %bb.z unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsgbWeKYPjk8w_3syn8generics7parsing26choose_generics_over_qpath(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXs7T_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2LtNtB6_5Token4peek(ptr noundef %i.a, ptr noundef %i.c)
  br i1 %i.d, label %bb.b, label %bb.c
end_hunk_1
