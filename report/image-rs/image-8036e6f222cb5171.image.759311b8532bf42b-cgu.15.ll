Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvMs5_NtCs5XDXJCpOCOR_3png7encoderINtB5_7EncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12write_headerCsa5QsYiPB8Gl_5image:bb.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit168.i.i.i: ; preds = %bb.ed
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.noexc83.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !685

.noexc83.i:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit168.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !742
  br label %.noexc84.i

bb.ef:                                            ; preds = %bb.ee
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !743
  unreachable

bb.eg:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !742
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgidZRN39rux_6flate24zlib5write11ZlibEncoderINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ac)
          to label %bb.ed unwind label %.body156.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !743

.loopexit.split-lp310.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.di, %bb.dm
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgidZRN39rux_6flate24zlib5write11ZlibEncoderINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ac) #31
          to label %.body.i.i.i unwind label %bb.eh, !noalias !743

bb.eh:                                            ; preds = %.thread13.i.i.i, %.loopexit.split-lp310.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !743
  unreachable

.loopexit305.i.i:                                 ; preds = %bb.cs, %bb.dd
  %.sroa.16139.1.i.i = phi i8 [ %i.mk, %bb.dd ], [ 1, %bb.cs ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit170.i.i.i unwind label %bb.ei, !noalias !743

bb.ei:                                            ; preds = %.loopexit305.i.i
  %i.ni = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body.i unwind label %bb.ej, !noalias !743

bb.ej:                                            ; preds = %bb.ei
  %i.nj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !743
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit170.i.i.i: ; preds = %.loopexit305.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.noexc84.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !685

.thread13.i.i.i:                                  ; preds = %bb.dx, %.thread20.i.i.i
  %eh.lpad-body16016.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i79.i.i, %.thread20.i.i.i ], [ %i.nb, %bb.dx ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #31
          to label %.body.i unwind label %bb.eh, !noalias !743

._crit_edge330.i.i:                               ; preds = %.noexc85.i, %._crit_edge.i.i
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.nl = load ptr, ptr %i.nk, align 8, !alias.scope !689, !nonnull !5, !noundef !5 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nn = load i64, ptr %i.nm, align 8, !alias.scope !689, !noundef !5 ; 2 uses
  %.idx336.i.i = mul nuw nsw i64 %i.nn, 112
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.idx336.i.i
  %i.np = icmp eq i64 %i.nn, 0
  br i1 %i.np, label %.loopexit.i, label %.lr.ph333.i.i

.lr.ph333.i.i:                                    ; preds = %._crit_edge330.i.i
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.524.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %.sroa.5.0..sroa_idx.i90.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 9 ; 2 uses
  %.sroa.4.0..sroa_idx.i91.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 13 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 22 uses
  %.sroa.4133.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4133.sroa.4.0..sroa.4133.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %.sroa.4133.sroa.5.0..sroa.4133.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %.sroa.6163.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %.sroa.4161.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.5162.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.nr = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.481.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.481.sroa.4.0..sroa.481.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %.sroa.481.sroa.5.0..sroa.481.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %.sroa.4113.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %i.ns = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %bb.el

.noexc84.i:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit170.i.i.i, %.noexc83.i, %bb.cr
  %.sroa.16139.2.ph.i.i = phi i8 [ 2, %.noexc83.i ], [ %i.kz, %bb.cr ], [ %.sroa.16139.1.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit170.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !742
  br label %.thread.i

bb.ek:                                            ; preds = %bb.ea
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.noexc85.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !685

.noexc85.i:                                       ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !742
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.016.0327.i.i, i64 56 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.kl
  br i1 %i.nu, label %._crit_edge330.i.i, label %bb.cq

bb.el:                                            ; preds = %.noexc92.i, %.lr.ph333.i.i
  %.sroa.019.0331.i.i = phi ptr [ %i.nl, %.lr.ph333.i.i ], [ %i.ug, %.noexc92.i ] ; 15 uses
  %.val65.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !720 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !756
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 40
  %i.nw = load ptr, ptr %i.nv, align 8, !alias.scope !755, !noalias !734, !nonnull !5, !noundef !5
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 48
  %i.ny = load i64, ptr %i.nx, align 8, !alias.scope !755, !noalias !734, !noundef !5
  invoke void @_RNvNtCs5XDXJCpOCOR_3png13text_metadata17encode_iso_8859_1(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nw, i64 noundef %i.ny)
          to label %.noexc86.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !685

.noexc86.i:                                       ; preds = %bb.el
  %i.nz = load i64, ptr %i.r, align 8, !range !12, !noalias !756, !noundef !5 ; 3 uses
  %i.oa = icmp eq i64 %i.nz, -1
  %i.ob = load i8, ptr %.sroa.423.0..sroa_idx.i.i.i, align 8, !noalias !756 ; 2 uses
  br i1 %i.oa, label %bb.em, label %bb.en

bb.em:                                            ; preds = %.noexc86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !756
  br label %.noexc87.i

bb.en:                                            ; preds = %.noexc86.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx.i90.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx.i.i.i, i64 15, i1 false), !noalias !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !756
  store i64 %i.nz, ptr %i.s, align 8, !noalias !756
  store i8 %i.ob, ptr %.sroa.4.0..sroa_idx.i91.i.i, align 8, !noalias !756
  %i.oc = load i64, ptr %i.nq, align 8, !noalias !756, !noundef !5 ; 7 uses
  %i.od = icmp sgt i64 %i.oc, -1
  call void @llvm.assume(i1 %i.od)
  %i.oe = add nsw i64 %i.oc, -80
  %or.cond.i92.i.i = icmp ult i64 %i.oe, -79
  br i1 %or.cond.i92.i.i, label %.loopexit.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.of = icmp eq i64 %i.oc, %i.nz
  br i1 %i.of, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #33
          to label %bb.eq unwind label %.thread16.i.i.i, !noalias !757

.thread16.i.i.i:                                  ; preds = %bb.gm, %.noexc218.i.i.i, %.noexc217.i.i.i, %.noexc216.i.i.i, %.noexc215.i.i.i, %.noexc214.i.i.i, %.noexc213.i.i.i, %bb.gg, %bb.ge, %bb.fw, %bb.fu, %bb.fq, %bb.fn, %bb.fm, %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i, %bb.ev, %bb.eu, %bb.es, %bb.ep
  %lpad.thr_comm.i97.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread5.i.i.i

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.og = load ptr, ptr %.sroa.4.0..sroa_idx.i91.i.i, align 8, !alias.scope !758, !noalias !756, !nonnull !5, !noundef !5
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.oc
  store i8 0, ptr %i.oh, align 1, !noalias !757
  %i.oi = add nuw nsw i64 %i.oc, 1                ; 3 uses
  store i64 %i.oi, ptr %i.nq, align 8, !alias.scope !758, !noalias !756
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 104
  %i.ok = load i8, ptr %i.oj, align 8, !range !10, !alias.scope !755, !noalias !734, !noundef !5
  %i.ol = trunc nuw i8 %i.ok to i1                ; 2 uses
  %i.om = load i64, ptr %i.s, align 8, !range !13, !noalias !756, !noundef !5
  %i.on = icmp eq i64 %i.oi, %i.om                ; 2 uses
  br i1 %i.ol, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  br i1 %i.on, label %bb.es, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit186.i.i.i

bb.es:                                            ; preds = %bb.er
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #33
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit186.i.i.i unwind label %.thread16.i.i.i, !noalias !757

bb.et:                                            ; preds = %bb.eq
  br i1 %i.on, label %bb.eu, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit186.i.i.i

bb.eu:                                            ; preds = %bb.et
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #33
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit186.i.i.i unwind label %.thread16.i.i.i, !noalias !757

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit186.i.i.i: ; preds = %bb.eu, %bb.et, %bb.es, %bb.er
  %.sink.i93.i.i = phi i8 [ 0, %bb.er ], [ 0, %bb.es ], [ 1, %bb.eu ], [ 1, %bb.et ]
  %i.oo = load ptr, ptr %.sroa.4.0..sroa_idx.i91.i.i, align 8, !noalias !756, !nonnull !5, !noundef !5
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.oi
  store i8 %.sink.i93.i.i, ptr %i.op, align 1, !noalias !757
  %storemerge.i.i.i = add nuw nsw i64 %i.oc, 2    ; 3 uses
  store i64 %storemerge.i.i.i, ptr %i.nq, align 8, !noalias !756
  %i.oq = load i64, ptr %i.s, align 8, !range !13, !alias.scope !759, !noalias !756, !noundef !5
  %i.or = icmp eq i64 %storemerge.i.i.i, %i.oq
  br i1 %i.or, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit186.i.i.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #33
          to label %bb.ew unwind label %.thread16.i.i.i, !noalias !757

bb.ew:                                            ; preds = %bb.ev, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit186.i.i.i
  %i.os = load ptr, ptr %.sroa.4.0..sroa_idx.i91.i.i, align 8, !alias.scope !759, !noalias !756, !nonnull !5, !noundef !5
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %storemerge.i.i.i
  store i8 0, ptr %i.ot, align 1, !noalias !757
  %i.ou = add nuw nsw i64 %i.oc, 3
  store i64 %i.ou, ptr %i.nq, align 8, !alias.scope !759, !noalias !756
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 64
  %i.ow = load ptr, ptr %i.ov, align 8, !alias.scope !755, !noalias !734, !nonnull !5, !noundef !5 ; 11 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 72
  %i.oy = load i64, ptr %i.ox, align 8, !alias.scope !755, !noalias !734, !noundef !5 ; 9 uses
  %i.oz = icmp samesign ult i64 %i.oy, 64
  br i1 %i.oz, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.pa = and i64 %i.oy, 9223372036854775744
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.pa ; 3 uses
  %i.pc = and i64 %i.oy, 63                       ; 2 uses
  br label %.lr.ph.i.i.i.i.i

bb.ey:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i.i, i64 64 ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.pb
  br i1 %i.pe, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ey, %bb.ex
  %.sroa.01.028.i.i.i.i.i = phi ptr [ %i.pd, %bb.ey ], [ %i.ow, %bb.ex ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i.i.i.i, align 1, !alias.scope !760, !noalias !761
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i.i.i.i = load <2 x i64>, ptr %i.pf, align 1, !alias.scope !760, !noalias !762
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i.i.i.i = load <2 x i64>, ptr %i.pg, align 1, !alias.scope !760, !noalias !763
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i.i.i.i = load <2 x i64>, ptr %i.ph, align 1, !alias.scope !760, !noalias !764
  %i.pi = or <2 x i64> %.sroa.0.0.copyload.i9.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.pj = or <2 x i64> %i.pi, %.sroa.0.0.copyload.i10.i.i.i.i.i
  %i.pk = or <2 x i64> %i.pj, %.sroa.0.0.copyload.i11.i.i.i.i.i
  %i.pl = bitcast <2 x i64> %i.pk to <16 x i8>
  %i.pm = icmp slt <16 x i8> %i.pl, zeroinitializer
  %i.pn = bitcast <16 x i1> %i.pm to i16
  %i.po = icmp eq i16 %i.pn, 0
  br i1 %i.po, label %bb.ey, label %.loopexit.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ey
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pc
  %i.pq = icmp samesign eq i64 %i.pc, 0
  br i1 %i.pq, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i, label %.lr.ph

bb.ez:                                            ; preds = %.lr.ph
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pt, i64 1 ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.pp
  br i1 %i.ps, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i.i.i.i, %bb.ez
  %i.pt = phi ptr [ %i.pr, %bb.ez ], [ %i.pb, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i.i = load i8, ptr %i.pt, align 1, !alias.scope !760, !noalias !765, !noundef !5
  %i.pu = icmp sgt i8 %.val.i.i.i.i.i.i, -1
  br i1 %i.pu, label %bb.ez, label %.loopexit.i.i.i

bb.fa:                                            ; preds = %bb.ew
  %i.pv = and i64 %i.oy, 56                       ; 8 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.pv ; 7 uses
  %i.px = and i64 %i.oy, 7                        ; 7 uses
  %.not.i.i101.i.i313 = icmp eq i64 %i.pv, 0
  br i1 %.not.i.i101.i.i313, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i

2:                                                ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i
  %.not.i.i101.i.i = icmp eq i64 %i.pv, 8
  br i1 %.not.i.i101.i.i, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.1

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.1: ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %.sroa.012.0.copyload.i.i.i.i.1 = load i64, ptr %3, align 1, !alias.scope !766, !noalias !757
  %4 = and i64 %.sroa.012.0.copyload.i.i.i.i.1, -9187201950435737472
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %.loopexit.i.i.i

6:                                                ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.1
  %.not.i.i101.i.i.1 = icmp eq i64 %i.pv, 16
  br i1 %.not.i.i101.i.i.1, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.2

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.2: ; preds = %6
  %7 = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %.sroa.012.0.copyload.i.i.i.i.2 = load i64, ptr %7, align 1, !alias.scope !766, !noalias !757
  %8 = and i64 %.sroa.012.0.copyload.i.i.i.i.2, -9187201950435737472
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %.loopexit.i.i.i

10:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.2
  %.not.i.i101.i.i.2 = icmp eq i64 %i.pv, 24
  br i1 %.not.i.i101.i.i.2, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.3

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.3: ; preds = %10
  %11 = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %.sroa.012.0.copyload.i.i.i.i.3 = load i64, ptr %11, align 1, !alias.scope !766, !noalias !757
  %12 = and i64 %.sroa.012.0.copyload.i.i.i.i.3, -9187201950435737472
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %.loopexit.i.i.i

14:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.3
  %.not.i.i101.i.i.3 = icmp eq i64 %i.pv, 32
  br i1 %.not.i.i101.i.i.3, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.4

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.4: ; preds = %14
  %15 = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  %.sroa.012.0.copyload.i.i.i.i.4 = load i64, ptr %15, align 1, !alias.scope !766, !noalias !757
  %16 = and i64 %.sroa.012.0.copyload.i.i.i.i.4, -9187201950435737472
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %.loopexit.i.i.i

18:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.4
  %.not.i.i101.i.i.4 = icmp eq i64 %i.pv, 40
  br i1 %.not.i.i101.i.i.4, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.5

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.5: ; preds = %18
  %19 = getelementptr inbounds nuw i8, ptr %i.ow, i64 40
  %.sroa.012.0.copyload.i.i.i.i.5 = load i64, ptr %19, align 1, !alias.scope !766, !noalias !757
  %20 = and i64 %.sroa.012.0.copyload.i.i.i.i.5, -9187201950435737472
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %.loopexit.i.i.i

22:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.5
  %.not.i.i101.i.i.5 = icmp eq i64 %i.pv, 48
  br i1 %.not.i.i101.i.i.5, label %._crit_edge, label %bb.fb

bb.fb:                                            ; preds = %22
  %i.py = getelementptr inbounds nuw i8, ptr %i.ow, i64 48
  %.sroa.012.0.copyload.i.i.i.i.6 = load i64, ptr %i.py, align 1, !alias.scope !766, !noalias !757
  %23 = and i64 %.sroa.012.0.copyload.i.i.i.i.6, -9187201950435737472
  %.not.i.i101.i.i.a = icmp eq i64 %23, 0
  br i1 %.not.i.i101.i.i.a, label %._crit_edge, label %.loopexit.i.i.i

._crit_edge:                                      ; preds = %2, %6, %10, %14, %18, %22, %bb.fb, %bb.fa
  %i.pz = icmp samesign eq i64 %i.px, 0
  br i1 %i.pz, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i, label %.lr.ph317

bb.fc:                                            ; preds = %.lr.ph317
  %i.qa = icmp samesign eq i64 %i.px, 1
  br i1 %i.qa, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i, label %.lr.ph317.1

.lr.ph317.1:                                      ; preds = %bb.fc
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  %.val.i.i.i102.i.i.1 = load i8, ptr %i.qb, align 1, !alias.scope !766, !noalias !767, !noundef !5
  %i.qc = icmp sgt i8 %.val.i.i.i102.i.i.1, -1
  br i1 %i.qc, label %bb.fd, label %.loopexit.i.i.i

bb.fd:                                            ; preds = %.lr.ph317.1
  %i.qd = icmp samesign eq i64 %i.px, 2
  br i1 %i.qd, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i, label %.lr.ph317.2

.lr.ph317.2:                                      ; preds = %bb.fd
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pw, i64 2
  %.val.i.i.i102.i.i.2 = load i8, ptr %i.qe, align 1, !alias.scope !766, !noalias !767, !noundef !5
  %i.qf = icmp sgt i8 %.val.i.i.i102.i.i.2, -1
  br i1 %i.qf, label %bb.fe, label %.loopexit.i.i.i

bb.fe:                                            ; preds = %.lr.ph317.2
  %i.qg = icmp samesign eq i64 %i.px, 3
  br i1 %i.qg, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i, label %.lr.ph317.3

.lr.ph317.3:                                      ; preds = %bb.fe
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pw, i64 3
  %.val.i.i.i102.i.i.3 = load i8, ptr %i.qh, align 1, !alias.scope !766, !noalias !767, !noundef !5
  %i.qi = icmp sgt i8 %.val.i.i.i102.i.i.3, -1
  br i1 %i.qi, label %bb.ff, label %.loopexit.i.i.i

bb.ff:                                            ; preds = %.lr.ph317.3
  %i.qj = icmp samesign eq i64 %i.px, 4
  br i1 %i.qj, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i, label %.lr.ph317.4

.lr.ph317.4:                                      ; preds = %bb.ff
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %.val.i.i.i102.i.i.4 = load i8, ptr %i.qk, align 1, !alias.scope !766, !noalias !767, !noundef !5
  %i.ql = icmp sgt i8 %.val.i.i.i102.i.i.4, -1
  br i1 %i.ql, label %bb.fg, label %.loopexit.i.i.i

bb.fg:                                            ; preds = %.lr.ph317.4
  %i.qm = icmp samesign eq i64 %i.px, 5
  br i1 %i.qm, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i, label %.lr.ph317.5

.lr.ph317.5:                                      ; preds = %bb.fg
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pw, i64 5
  %.val.i.i.i102.i.i.5 = load i8, ptr %i.qn, align 1, !alias.scope !766, !noalias !767, !noundef !5
  %i.qo = icmp sgt i8 %.val.i.i.i102.i.i.5, -1
  br i1 %i.qo, label %bb.fh, label %.loopexit.i.i.i

bb.fh:                                            ; preds = %.lr.ph317.5
  %i.qp = icmp samesign eq i64 %i.px, 6
  br i1 %i.qp, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i, label %.lr.ph317.6

.lr.ph317.6:                                      ; preds = %bb.fh
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pw, i64 6
  %.val.i.i.i102.i.i.6 = load i8, ptr %i.qq, align 1, !alias.scope !766, !noalias !767, !noundef !5
  %i.qr = icmp sgt i8 %.val.i.i.i102.i.i.6, -1
  br i1 %i.qr, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i, label %.loopexit.i.i.i

.lr.ph317:                                        ; preds = %._crit_edge
  %.val.i.i.i102.i.i = load i8, ptr %i.pw, align 1, !alias.scope !766, !noalias !767, !noundef !5
  %i.qs = icmp sgt i8 %.val.i.i.i102.i.i, -1
  br i1 %i.qs, label %bb.fc, label %.loopexit.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.fa
  %.sroa.012.0.copyload.i.i.i.i = load i64, ptr %i.ow, align 1, !alias.scope !766, !noalias !757
  %i.qt = and i64 %.sroa.012.0.copyload.i.i.i.i, -9187201950435737472
  %i.qu = icmp eq i64 %i.qt, 0
  br i1 %i.qu, label %2, label %.loopexit.i.i.i

_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i: ; preds = %bb.ez, %bb.fc, %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fh, %.lr.ph317.6, %._crit_edge.i.i.i.i.i, %._crit_edge
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.oy)
          to label %.noexc192.i.i.i unwind label %.thread16.i.i.i, !noalias !757

.noexc192.i.i.i:                                  ; preds = %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit.i.i.i
  %i.qv = load i64, ptr %i.nq, align 8, !alias.scope !768, !noalias !756, !noundef !5 ; 3 uses
  %i.qw = icmp sgt i64 %i.qv, -1
  call void @llvm.assume(i1 %i.qw)
  %.not.i191.i.i.i = icmp eq i64 %i.oy, 0
  br i1 %.not.i191.i.i.i, label %bb.fl, label %bb.fi

bb.fi:                                            ; preds = %.noexc192.i.i.i
  %i.qx = load ptr, ptr %.sroa.4.0..sroa_idx.i91.i.i, align 8, !alias.scope !768, !noalias !756, !nonnull !5, !noundef !5
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qy, ptr nonnull readonly align 1 %i.ow, i64 %i.oy, i1 false), !noalias !757
  %.pre.i.i98.i.i = load i64, ptr %i.nq, align 8, !alias.scope !768, !noalias !756
  br label %bb.fl

.loopexit.i.i.i:                                  ; preds = %bb.en, %.lr.ph.i.i.i.i.i, %.lr.ph, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.1, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.2, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.3, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.4, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.5, %bb.fb, %.lr.ph317, %.lr.ph317.1, %.lr.ph317.2, %.lr.ph317.3, %.lr.ph317.4, %.lr.ph317.5, %.lr.ph317.6, %bb.fy
  %.sroa.18142.0.i.i = phi i8 [ 0, %.lr.ph ], [ 2, %bb.fy ], [ 0, %.lr.ph.i.i.i.i.i ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ 0, %.lr.ph317 ], [ 0, %.lr.ph317.6 ], [ 0, %.lr.ph317.5 ], [ 0, %.lr.ph317.4 ], [ 0, %.lr.ph317.3 ], [ 0, %.lr.ph317.2 ], [ 0, %.lr.ph317.1 ], [ 0, %bb.fb ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.5 ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.4 ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.3 ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.2 ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.i.i.i.1 ], [ 1, %bb.en ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i96.i.i unwind label %bb.fj, !noalias !757

bb.fj:                                            ; preds = %.loopexit.i.i.i
  %i.qz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i unwind label %bb.fk, !noalias !757

bb.fk:                                            ; preds = %bb.fj
  %i.ra = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !757
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i96.i.i: ; preds = %.loopexit.i.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.noexc87.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !685

bb.fl:                                            ; preds = %bb.fi, %.noexc192.i.i.i
  %i.rb = phi i64 [ %.pre.i.i98.i.i, %bb.fi ], [ %i.qv, %.noexc192.i.i.i ]
  %i.rc = add i64 %i.rb, %i.oy                    ; 4 uses
  store i64 %i.rc, ptr %i.nq, align 8, !alias.scope !768, !noalias !756
  %i.rd = load i64, ptr %i.s, align 8, !range !13, !alias.scope !769, !noalias !756, !noundef !5
  %i.re = icmp eq i64 %i.rc, %i.rd
  br i1 %i.re, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #33
          to label %bb.fn unwind label %.thread16.i.i.i, !noalias !757

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.rf = load ptr, ptr %.sroa.4.0..sroa_idx.i91.i.i, align 8, !alias.scope !769, !noalias !756, !nonnull !5, !noundef !5
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rc
  store i8 0, ptr %i.rg, align 1, !noalias !757
  %i.rh = add i64 %i.rc, 1
  store i64 %i.rh, ptr %i.nq, align 8, !alias.scope !769, !noalias !756
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 88
  %i.rj = load ptr, ptr %i.ri, align 8, !alias.scope !755, !noalias !734, !nonnull !5, !noundef !5
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 96
  %i.rl = load i64, ptr %i.rk, align 8, !alias.scope !755, !noalias !734, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.rl)
          to label %.noexc197.i.i.i unwind label %.thread16.i.i.i, !noalias !757

.noexc197.i.i.i:                                  ; preds = %bb.fn
  %i.rm = load i64, ptr %i.nq, align 8, !alias.scope !770, !noalias !756, !noundef !5 ; 3 uses
  %i.rn = icmp sgt i64 %i.rm, -1
  call void @llvm.assume(i1 %i.rn)
  %.not.i195.i.i.i = icmp eq i64 %i.rl, 0
  br i1 %.not.i195.i.i.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %.noexc197.i.i.i
  %i.ro = load ptr, ptr %.sroa.4.0..sroa_idx.i91.i.i, align 8, !alias.scope !770, !noalias !756, !nonnull !5, !noundef !5
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull readonly align 1 %i.rj, i64 %i.rl, i1 false), !noalias !757
  %.pre.i196.i.i.i = load i64, ptr %i.nq, align 8, !alias.scope !770, !noalias !756
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.noexc197.i.i.i
  %i.rq = phi i64 [ %.pre.i196.i.i.i, %bb.fo ], [ %i.rm, %.noexc197.i.i.i ]
  %i.rr = add i64 %i.rq, %i.rl                    ; 4 uses
  store i64 %i.rr, ptr %i.nq, align 8, !alias.scope !770, !noalias !756
  %i.rs = load i64, ptr %i.s, align 8, !range !13, !alias.scope !771, !noalias !756, !noundef !5
  %i.rt = icmp eq i64 %i.rr, %i.rs
  br i1 %i.rt, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #33
          to label %bb.fr unwind label %.thread16.i.i.i, !noalias !757

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.ru = load ptr, ptr %.sroa.4.0..sroa_idx.i91.i.i, align 8, !alias.scope !771, !noalias !756, !nonnull !5, !noundef !5
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rr
  store i8 0, ptr %i.rv, align 1, !noalias !757
  %i.rw = add i64 %i.rr, 1
  store i64 %i.rw, ptr %i.nq, align 8, !alias.scope !771, !noalias !756
  %i.rx = load i64, ptr %.sroa.019.0331.i.i, align 8, !range !20, !alias.scope !755, !noalias !734, !noundef !5
  %i.ry = trunc nuw i64 %i.rx to i1               ; 2 uses
  br i1 %i.ol, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.ry, label %bb.fu, label %bb.fw

bb.ft:                                            ; preds = %bb.fr
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !alias.scope !755, !noalias !734, !nonnull !5, !noundef !5 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 24
  %i.sc = load i64, ptr %i.sb, align 8, !alias.scope !755, !noalias !734, !noundef !5 ; 5 uses
  br i1 %i.ry, label %bb.gi, label %bb.gm

bb.fu:                                            ; preds = %bb.fs
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 16
  %i.se = load ptr, ptr %i.sd, align 8, !alias.scope !755, !noalias !734, !nonnull !5, !noundef !5
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 24
  %i.sg = load i64, ptr %i.sf, align 8, !alias.scope !755, !noalias !734, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.sg)
          to label %.noexc203.i.i.i unwind label %.thread16.i.i.i, !noalias !757

.noexc203.i.i.i:                                  ; preds = %bb.fu
  %i.sh = load i64, ptr %i.nq, align 8, !alias.scope !772, !noalias !756, !noundef !5 ; 3 uses
  %i.si = icmp sgt i64 %i.sh, -1
  call void @llvm.assume(i1 %i.si)
  %.not.i201.i.i.i = icmp eq i64 %i.sg, 0
  br i1 %.not.i201.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit204.i.i.i, label %bb.fv

bb.fv:                                            ; preds = %.noexc203.i.i.i
  %i.sj = load ptr, ptr %.sroa.4.0..sroa_idx.i91.i.i, align 8, !alias.scope !772, !noalias !756, !nonnull !5, !noundef !5
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sk, ptr nonnull readonly align 1 %i.se, i64 %i.sg, i1 false), !noalias !757
  %.pre.i202.i.i.i = load i64, ptr %i.nq, align 8, !alias.scope !772, !noalias !756
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit204.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit204.i.i.i: ; preds = %bb.fv, %.noexc203.i.i.i
  %i.sl = phi i64 [ %.pre.i202.i.i.i, %bb.fv ], [ %i.sh, %.noexc203.i.i.i ]
  %i.sm = add i64 %i.sl, %i.sg
  store i64 %i.sm, ptr %i.nq, align 8, !alias.scope !772, !noalias !756
  br label %bb.gg

bb.fw:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !756
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 16
  %i.so = load ptr, ptr %i.sn, align 8, !alias.scope !755, !noalias !734, !nonnull !5, !noundef !5
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.019.0331.i.i, i64 24
  %i.sq = load i64, ptr %i.sp, align 8, !alias.scope !755, !noalias !734, !noundef !5
  invoke void @_RNvNtCsdZSetL9bOac_8fdeflate10decompress17decompress_to_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.so, i64 noundef %i.sq)
          to label %bb.fx unwind label %.thread16.i.i.i, !noalias !757

bb.fx:                                            ; preds = %bb.fw
  %i.sr = load i64, ptr %i.l, align 8, !range !12, !noalias !756, !noundef !5 ; 2 uses
  %i.ss = icmp eq i64 %i.sr, -1
  br i1 %i.ss, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !756
  br label %.loopexit.i.i.i

bb.fz:                                            ; preds = %bb.fx
  %.sroa.4133.sroa.0.0.copyload.i.i.i = load i8, ptr %.sroa.4133.0..sroa_idx.i.i.i, align 8, !noalias !756
  %.sroa.4133.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4133.sroa.4.0..sroa.4133.0..sroa_idx.sroa_idx.i.i.i, align 1, !noalias !756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6163.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.4133.sroa.5.0..sroa.4133.0..sroa_idx.sroa_idx.i.i.i, i64 14, i1 false), !noalias !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !756
  store i64 %i.sr, ptr %i.m, align 8, !noalias !756
  store i8 %.sroa.4133.sroa.0.0.copyload.i.i.i, ptr %.sroa.4161.0..sroa_idx.i.i.i, align 8, !noalias !756
  store i8 %.sroa.4133.sroa.4.0.copyload.i.i.i, ptr %.sroa.5162.0..sroa_idx.i.i.i, align 1, !noalias !756
  %i.st = load ptr, ptr %.sroa.4161.0..sroa_idx.i.i.i, align 8, !noalias !756, !nonnull !5, !noundef !5
  %i.su = load i64, ptr %i.nr, align 8, !noalias !756, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.su)
          to label %.noexc207.i.i.i unwind label %bb.gb, !noalias !757

.noexc207.i.i.i:                                  ; preds = %bb.fz
  %i.sv = load i64, ptr %i.nq, align 8, !alias.scope !773, !noalias !756, !noundef !5 ; 3 uses
  %i.sw = icmp sgt i64 %i.sv, -1
  call void @llvm.assume(i1 %i.sw)
  %.not.i205.i.i.i = icmp eq i64 %i.su, 0
  br i1 %.not.i205.i.i.i, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %.noexc207.i.i.i
  %i.sx = load ptr, ptr %.sroa.4.0..sroa_idx.i91.i.i, align 8, !alias.scope !773, !noalias !756, !nonnull !5, !noundef !5
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.sv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sy, ptr nonnull readonly align 1 %i.st, i64 %i.su, i1 false), !noalias !757
  %.pre.i206.i.i.i = load i64, ptr %i.nq, align 8, !alias.scope !773, !noalias !756
  br label %bb.gc

bb.gb:                                            ; preds = %bb.fz
  %i.sz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #31
          to label %.thread5.i.i.i unwind label %bb.gh, !noalias !757

bb.gc:                                            ; preds = %bb.ga, %.noexc207.i.i.i
  %i.ta = phi i64 [ %.pre.i206.i.i.i, %bb.ga ], [ %i.sv, %.noexc207.i.i.i ]
  %i.tb = add i64 %i.ta, %i.su
  store i64 %i.tb, ptr %i.nq, align 8, !alias.scope !773, !noalias !756
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ge unwind label %bb.gd, !noalias !757

bb.gd:                                            ; preds = %bb.gc
  %i.tc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread5.i.i.i unwind label %bb.gf, !noalias !757

bb.ge:                                            ; preds = %bb.gc
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit211.i.i.i unwind label %.thread16.i.i.i, !noalias !757

bb.gf:                                            ; preds = %bb.gd
  %i.td = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !757
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit211.i.i.i: ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !756
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gu, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit227.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit211.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit204.i.i.i
  %i.te = load ptr, ptr %.sroa.4.0..sroa_idx.i91.i.i, align 8, !noalias !756, !nonnull !5, !noundef !5 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_headerBV_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1771
  %i.bf = load ptr, ptr %i.ap, align 8, !alias.scope !1770, !noalias !1765, !nonnull !5, !noundef !5
  %i.bg = load i64, ptr %i.aq, align 8, !alias.scope !1770, !noalias !1765, !noundef !5 ; 2 uses
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %i.bg)
          to label %bb.g unwind label %bb.f, !noalias !1771

bb.f:                                             ; preds = %.loopexit.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #31
          to label %.body unwind label %bb.h, !noalias !1772

bb.g:                                             ; preds = %.loopexit.i
  %i.bi = load i64, ptr %i.a, align 8, !range !20, !noalias !1771, !noundef !5
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.k, label %.thread25.i

.thread25.i:                                      ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !alias.scope !1773, !noalias !1765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1765
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1772
  unreachable

bb.i:                                             ; preds = %.lr.ph.i
  %i.bl = load i64, ptr %i.f, align 8, !range !13, !alias.scope !1774, !noalias !1765, !noundef !5
  %i.bm = icmp eq i64 %i.az, %i.bl
  br i1 %i.bm, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #33
          to label %bb.m unwind label %bb.n, !noalias !1765

bb.k:                                             ; preds = %bb.g
  %i.bn = load <2 x i64>, ptr %i.ar, align 8, !noalias !1771
  %i.bo = load i64, ptr %i.ar, align 8, !noalias !1771
  %.sroa.018.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !1772 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !noalias !1765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1765
  %.not.i = icmp eq i64 %.sroa.018.0.copyload.i, -1
  br i1 %.not.i, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1765
  store i64 %.sroa.018.0.copyload.i, ptr %i.d, align 8, !noalias !1765
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, i64 16, i1 false), !noalias !1765
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store <2 x i64> %i.bn, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !1765
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1765
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 4, ptr %i.bp, align 1, !noalias !1765
  store i8 0, ptr %i.b, align 8, !noalias !1765
  invoke void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorEB7_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.p unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.bq = load ptr, ptr %i.an, align 8, !alias.scope !1774, !noalias !1765, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.az
  store i8 %i.bc, ptr %i.br, align 1, !noalias !1765
  %i.bs = add i64 %i.az, 1                        ; 3 uses
  store i64 %i.bs, ptr %i.ao, align 8, !noalias !1765
  %exitcond.not = icmp eq i64 %i.bs, %i.ay
  br i1 %exitcond.not, label %.thread.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #31
          to label %.body unwind label %bb.o, !noalias !1765

bb.o:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1765
  unreachable

.body:                                            ; preds = %.loopexit260, %.loopexit.split-lp, %bb.cr, %bb.n, %bb.f, %.body203, %.body194, %.body169
  %.sroa.082.1 = phi i8 [ 1, %.body169 ], [ 1, %.body203 ], [ 1, %.body194 ], [ %.sroa.082.0, %bb.f ], [ %.sroa.082.0, %bb.n ], [ 1, %bb.cr ], [ 1, %.loopexit260 ], [ %.sroa.082.2.ph, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body170, %.body169 ], [ %eh.lpad-body204, %.body203 ], [ %eh.lpad-body195, %.body194 ], [ %i.bh, %bb.f ], [ %i.bt, %bb.n ], [ %i.mw, %bb.cr ], [ %lpad.loopexit, %.loopexit260 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #31
          to label %.body166 unwind label %bb.ef

.loopexit260:                                     ; preds = %bb.br, %bb.bt, %bb.bv, %bb.bx, %bb.cg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %bb.z, %.loopexit, %bb.bn, %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit.thread241, %bb.cd, %bb.dm, %bb.l
  %.sroa.082.2.ph = phi i8 [ %.sroa.082.0, %bb.l ], [ 1, %bb.bn ], [ 1, %bb.z ], [ 1, %.loopexit ], [ 1, %bb.dm ], [ 1, %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit.thread241 ], [ 1, %bb.cd ], [ 1, %.invoke ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1765
  %.sroa.48.i.sroa.0.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48.i.sroa.0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.48.i.sroa.0.7..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1765
  %.sroa.48.i.sroa.4.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.48.i.sroa.4.7.copyload = load i64, ptr %.sroa.48.i.sroa.4.7..sroa_idx, align 8, !noalias !1765
  %.sroa.48.i.sroa.5.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.595.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.i.sroa.5.7..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7214, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.48.i.sroa.0, i64 23, i1 false), !noalias !1764
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1765
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.sroa.0, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7214, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7214)
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.494.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.sroa.0, i64 23, i1 false)
  store i8 4, ptr %0, align 8
  %.sroa.494.sroa.4.0..sroa.494.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.48.i.sroa.4.7.copyload, ptr %.sroa.494.sroa.4.0..sroa.494.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  %i.bv = load i64, ptr %i.v, align 8, !range !12, !alias.scope !1775, !noundef !5
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body166 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit unwind label %bb.dx

bb.t:                                             ; preds = %.thread25.i, %bb.k
  %.sroa.6.sroa.6.0.i = phi i64 [ %i.bo, %bb.k ], [ %i.bg, %.thread25.i ] ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.7214.8..sroa_idx215, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, i64 16, i1 false), !noalias !1764
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.6.sroa.0.7..sroa_idx218, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.7214.8..sroa_idx215, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7214)
  %i.bz = trunc nuw i8 %.sroa.082.0 to i1
  br i1 %i.bz, label %bb.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.6.sroa.0.7..sroa_idx218, i64 16, i1 false)
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  %i.ca = icmp sgt i64 %.sroa.6.sroa.6.0.i, -1
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp eq i64 %.sroa.6.sroa.6.0.i, 0
  br i1 %i.cb, label %bb.z, label %bb.y

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body169 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body169

.body169:                                         ; preds = %bb.v, %bb.x
  %eh.lpad-body170 = phi { ptr, i32 } [ %i.ce, %bb.x ], [ %i.cc, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.6.sroa.0.7..sroa_idx218, i64 16, i1 false)
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sroa.3.0..sroa_idx, align 8
  br label %.body

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit
  %i.cf = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5 ; 15 uses
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !5
  %i.ch = icmp eq i8 %i.cg, 35
  br i1 %i.ch, label %.backedge.backedge, label %bb.ab

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 6, ptr %i.t, align 8
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.t)
          to label %bb.ea unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.bn
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.ci = icmp samesign ult i64 %.sroa.6.sroa.6.0.i, 64
  br i1 %i.ci, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = and i64 %.sroa.6.sroa.6.0.i, 9223372036854775744
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cj ; 3 uses
  %i.cl = and i64 %.sroa.6.sroa.6.0.i, 63         ; 2 uses
  br label %.lr.ph.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ck
  br i1 %i.cn, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %bb.ac
  %.sroa.01.028.i.i = phi ptr [ %i.cm, %bb.ad ], [ %i.cf, %bb.ac ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !1776, !noalias !1777
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.co, align 1, !alias.scope !1776, !noalias !1778
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.cp, align 1, !alias.scope !1776, !noalias !1779
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.cq, align 1, !alias.scope !1776, !noalias !1780
  %i.cr = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i
  %i.cs = or <2 x i64> %i.cr, %.sroa.0.0.copyload.i10.i.i
  %i.ct = or <2 x i64> %i.cs, %.sroa.0.0.copyload.i11.i.i
  %i.cu = bitcast <2 x i64> %i.ct to <16 x i8>
  %i.cv = icmp slt <16 x i8> %i.cu, zeroinitializer
  %i.cw = bitcast <16 x i1> %i.cv to i16
  %i.cx = icmp eq i16 %i.cw, 0
  br i1 %i.cx, label %bb.ad, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  %i.cz = icmp samesign eq i64 %i.cl, 0
  br i1 %i.cz, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cy
  br i1 %i.db, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %bb.ae
  %i.dc = phi ptr [ %i.da, %bb.ae ], [ %i.ck, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i172 = load i8, ptr %i.dc, align 1, !alias.scope !1776, !noalias !1781, !noundef !5
  %i.dd = icmp sgt i8 %.val.i.i.i172, -1
  br i1 %i.dd, label %bb.ae, label %.loopexit

bb.af:                                            ; preds = %bb.ab
  %i.de = and i64 %.sroa.6.sroa.6.0.i, 56         ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.de ; 7 uses
  %i.dg = and i64 %.sroa.6.sroa.6.0.i, 7          ; 7 uses
  %.not.i173760 = icmp eq i64 %i.de, 0
  br i1 %.not.i173760, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i

2:                                                ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i
  %.not.i173 = icmp eq i64 %i.de, 8
  br i1 %.not.i173, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.1

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.1: ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.012.0.copyload.i.1 = load i64, ptr %3, align 1, !alias.scope !1782
  %4 = and i64 %.sroa.012.0.copyload.i.1, -9187201950435737472
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.1
  %.not.i173.1 = icmp eq i64 %i.de, 16
  br i1 %.not.i173.1, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.2

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.2: ; preds = %6
  %7 = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.012.0.copyload.i.2 = load i64, ptr %7, align 1, !alias.scope !1782
  %8 = and i64 %.sroa.012.0.copyload.i.2, -9187201950435737472
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.2
  %.not.i173.2 = icmp eq i64 %i.de, 24
  br i1 %.not.i173.2, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.3

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.3: ; preds = %10
  %11 = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.012.0.copyload.i.3 = load i64, ptr %11, align 1, !alias.scope !1782
  %12 = and i64 %.sroa.012.0.copyload.i.3, -9187201950435737472
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %.loopexit

14:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.3
  %.not.i173.3 = icmp eq i64 %i.de, 32
  br i1 %.not.i173.3, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.4

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.4: ; preds = %14
  %15 = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.sroa.012.0.copyload.i.4 = load i64, ptr %15, align 1, !alias.scope !1782
  %16 = and i64 %.sroa.012.0.copyload.i.4, -9187201950435737472
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %.loopexit

18:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.4
  %.not.i173.4 = icmp eq i64 %i.de, 40
  br i1 %.not.i173.4, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.5

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.5: ; preds = %18
  %19 = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %.sroa.012.0.copyload.i.5 = load i64, ptr %19, align 1, !alias.scope !1782
  %20 = and i64 %.sroa.012.0.copyload.i.5, -9187201950435737472
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.5
  %.not.i173.5 = icmp eq i64 %i.de, 48
  br i1 %.not.i173.5, label %._crit_edge, label %bb.ag

bb.ag:                                            ; preds = %22
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %.sroa.012.0.copyload.i.6 = load i64, ptr %i.dh, align 1, !alias.scope !1782
  %23 = and i64 %.sroa.012.0.copyload.i.6, -9187201950435737472
  %.not.i173.a = icmp eq i64 %23, 0
  br i1 %.not.i173.a, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %2, %6, %10, %14, %18, %22, %bb.ag, %bb.af
  %i.di = icmp samesign eq i64 %i.dg, 0
  br i1 %i.di, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph764

bb.ah:                                            ; preds = %.lr.ph764
  %i.dj = icmp samesign eq i64 %i.dg, 1
  br i1 %i.dj, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph764.1

.lr.ph764.1:                                      ; preds = %bb.ah
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %.val.i.i.1 = load i8, ptr %i.dk, align 1, !alias.scope !1782, !noalias !1783, !noundef !5
  %i.dl = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.dl, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %.lr.ph764.1
  %i.dm = icmp samesign eq i64 %i.dg, 2
  br i1 %i.dm, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph764.2

.lr.ph764.2:                                      ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %.val.i.i.2 = load i8, ptr %i.dn, align 1, !alias.scope !1782, !noalias !1783, !noundef !5
  %i.do = icmp sgt i8 %.val.i.i.2, -1
  br i1 %i.do, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %.lr.ph764.2
  %i.dp = icmp samesign eq i64 %i.dg, 3
  br i1 %i.dp, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph764.3

.lr.ph764.3:                                      ; preds = %bb.aj
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 3
  %.val.i.i.3 = load i8, ptr %i.dq, align 1, !alias.scope !1782, !noalias !1783, !noundef !5
  %i.dr = icmp sgt i8 %.val.i.i.3, -1
  br i1 %i.dr, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %.lr.ph764.3
  %i.ds = icmp samesign eq i64 %i.dg, 4
  br i1 %i.ds, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph764.4

.lr.ph764.4:                                      ; preds = %bb.ak
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %.val.i.i.4 = load i8, ptr %i.dt, align 1, !alias.scope !1782, !noalias !1783, !noundef !5
  %i.du = icmp sgt i8 %.val.i.i.4, -1
  br i1 %i.du, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %.lr.ph764.4
  %i.dv = icmp samesign eq i64 %i.dg, 5
  br i1 %i.dv, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph764.5

.lr.ph764.5:                                      ; preds = %bb.al
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 5
  %.val.i.i.5 = load i8, ptr %i.dw, align 1, !alias.scope !1782, !noalias !1783, !noundef !5
  %i.dx = icmp sgt i8 %.val.i.i.5, -1
  br i1 %i.dx, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %.lr.ph764.5
  %i.dy = icmp samesign eq i64 %i.dg, 6
  br i1 %i.dy, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph764.6

.lr.ph764.6:                                      ; preds = %bb.am
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  %.val.i.i.6 = load i8, ptr %i.dz, align 1, !alias.scope !1782, !noalias !1783, !noundef !5
  %i.ea = icmp sgt i8 %.val.i.i.6, -1
  br i1 %i.ea, label %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit, label %.loopexit

.lr.ph764:                                        ; preds = %._crit_edge
  %.val.i.i = load i8, ptr %i.df, align 1, !alias.scope !1782, !noalias !1783, !noundef !5
  %i.eb = icmp sgt i8 %.val.i.i, -1
  br i1 %i.eb, label %bb.ah, label %.loopexit

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.af
  %.sroa.012.0.copyload.i = load i64, ptr %i.cf, align 1, !alias.scope !1782
  %i.ec = and i64 %.sroa.012.0.copyload.i, -9187201950435737472
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %2, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.1, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.2, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.3, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.4, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.i.5, %bb.ag, %.lr.ph764, %.lr.ph764.1, %.lr.ph764.2, %.lr.ph764.3, %.lr.ph764.4, %.lr.ph764.5, %.lr.ph764.6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 3, ptr %i.r, align 8
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.r)
          to label %bb.av unwind label %.loopexit.split-lp

_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %bb.ae, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %.lr.ph764.6, %._crit_edge.i.i, %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.6.sroa.6.0.i ; 8 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i
  %i.ef = phi i64 [ %i.fu, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i ], [ 0, %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit ] ; 4 uses
  %i.eg = phi ptr [ %i.fq, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %i.cf, %_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime.exit ] ; 6 uses
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 3 uses
  %i.ej = load i8, ptr %i.eg, align 1, !alias.scope !1784, !noalias !1785, !noundef !5 ; 5 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.an, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.el = and i8 %i.ej, 31
  %i.em = zext nneg i8 %i.el to i32               ; 3 uses
  %i.en = icmp ne ptr %i.ei, %i.ee
  call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 2 ; 3 uses
  %i.ep = load i8, ptr %i.ei, align 1, !alias.scope !1784, !noalias !1785, !noundef !5
  %i.eq = shl nuw nsw i32 %i.em, 6
  %i.er = and i8 %i.ep, 63
  %i.es = zext nneg i8 %i.er to i32               ; 2 uses
  %i.et = or disjoint i32 %i.eq, %i.es
  %i.eu = icmp samesign ugt i8 %i.ej, -33
  br i1 %i.eu, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i.i.i
  %i.ev = zext nneg i8 %i.ej to i32
  br label %bb.ao

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i
  %i.ew = icmp ne ptr %i.eo, %i.ee
  call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 3 ; 3 uses
  %i.ey = load i8, ptr %i.eo, align 1, !alias.scope !1784, !noalias !1785, !noundef !5
  %i.ez = shl nuw nsw i32 %i.es, 6
  %i.fa = and i8 %i.ey, 63
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ez, %i.fb            ; 2 uses
  %i.fd = shl nuw nsw i32 %i.em, 12
  %i.fe = or disjoint i32 %i.fc, %i.fd
  %i.ff = icmp samesign ugt i8 %i.ej, -17
  br i1 %i.ff, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i, label %bb.ao

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i
  %i.fg = icmp ne ptr %i.ex, %i.ee
  call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.fi = load i8, ptr %i.ex, align 1, !alias.scope !1784, !noalias !1785, !noundef !5
  %i.fj = shl nuw nsw i32 %i.em, 18
  %i.fk = and i32 %i.fj, 1835008
  %i.fl = shl nuw nsw i32 %i.fc, 6
  %i.fm = and i8 %i.fi, 63
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = or disjoint i32 %i.fl, %i.fn
  %i.fp = or disjoint i32 %i.fo, %i.fk
  br label %bb.ao

bb.ao:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i, %bb.an, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i
  %i.fq = phi ptr [ %i.ex, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i ], [ %i.fh, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i ], [ %i.eo, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i ], [ %i.ei, %bb.an ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.fe, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i ], [ %i.fp, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i ], [ %i.et, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i ], [ %i.ev, %bb.an ] ; 8 uses
  %i.fr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.fr)
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.ef, %i.eh
  %i.fu = add i64 %i.ft, %i.fs
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %bb.ap [
    i32 32, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i
    i32 13, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i
    i32 12, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i
    i32 11, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i
    i32 10, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i
    i32 9, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.fv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 133
  br i1 %i.fv, label %bb.ba, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fw = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i, 8
  switch i32 %i.fw, label %bb.ba [
    i32 0, label %bb.at
    i32 22, label %bb.ar
    i32 32, label %bb.au
    i32 48, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.fx = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 5760
  %i.fy = zext i1 %i.fx to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.fz = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 12288
  %i.ga = zext i1 %i.fz to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.at:                                            ; preds = %bb.aq
  %i.gb = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !noalias !1786, !noundef !5
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.au:                                            ; preds = %bb.aq
  %i.gf = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !noalias !1786, !noundef !5
  %i.gj = lshr i8 %i.gi, 1
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i

_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.ga, %bb.as ], [ %i.ge, %bb.at ], [ %i.fy, %bb.ar ], [ %i.gj, %bb.au ]
  %i.gk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.gk, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.ba

_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.gl = icmp eq ptr %i.fq, %i.ee
  br i1 %i.gl, label %bb.ba, label %.lr.ph.i.i.i

bb.av:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.cf, %bb.db, %bb.de, %bb.dh, %bb.dk, %bb.ea, %bb.dz, %bb.av
  %i.gm = load i64, ptr %i.v, align 8, !range !12, !alias.scope !1787, !noundef !5
  %i.gn = icmp eq i64 %i.gm, -1
  br i1 %i.gn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit181, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i176 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body166.thread unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i176: ; preds = %bb.ax
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit181 unwind label %bb.dx

bb.ba:                                            ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i, %bb.aq, %bb.ap
  %.sroa.0.0.i174 = phi i64 [ %i.ef, %bb.aq ], [ %.sroa.6.sroa.6.0.i, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %i.ef, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %i.ef, %bb.ap ] ; 2 uses
  %i.gq = sub nuw i64 %.sroa.6.sroa.6.0.i, %.sroa.0.0.i174 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.0.i174 ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  br label %.lr.ph.i.i.i182

.lr.ph.i.i.i182:                                  ; preds = %bb.ba, %bb.bj
  %i.gs = phi i64 [ %i.ih, %bb.bj ], [ 0, %bb.ba ] ; 8 uses
  %i.gt = phi ptr [ %i.id, %bb.bj ], [ %i.cf, %bb.ba ] ; 6 uses
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 3 uses
  %i.gw = load i8, ptr %i.gt, align 1, !alias.scope !1788, !noalias !1789, !noundef !5 ; 5 uses
  %i.gx = icmp sgt i8 %i.gw, -1
  br i1 %i.gx, label %bb.bb, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i183

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i183: ; preds = %.lr.ph.i.i.i182
  %i.gy = and i8 %i.gw, 31
  %i.gz = zext nneg i8 %i.gy to i32               ; 3 uses
  %i.ha = icmp ne ptr %i.gv, %i.ee
  call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 2 ; 3 uses
  %i.hc = load i8, ptr %i.gv, align 1, !alias.scope !1788, !noalias !1789, !noundef !5
  %i.hd = shl nuw nsw i32 %i.gz, 6
  %i.he = and i8 %i.hc, 63
  %i.hf = zext nneg i8 %i.he to i32               ; 2 uses
  %i.hg = or disjoint i32 %i.hd, %i.hf
  %i.hh = icmp samesign ugt i8 %i.gw, -33
  br i1 %i.hh, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i187, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i.i.i182
  %i.hi = zext nneg i8 %i.gw to i32
  br label %bb.bc

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i187: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i183
  %i.hj = icmp ne ptr %i.hb, %i.ee
  call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gt, i64 3 ; 3 uses
  %i.hl = load i8, ptr %i.hb, align 1, !alias.scope !1788, !noalias !1789, !noundef !5
end_hunk_1
