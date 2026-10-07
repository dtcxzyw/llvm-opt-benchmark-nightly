Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.00?download=true
inline.NumInlined: 192
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo14serialize_fromINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_:bb.a
          to label %bb.cl unwind label %bb.ck, !noalias !190

bb.ck:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures.exit103.i
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body96.thread.i unwind label %bb.cm, !noalias !190

bb.cl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures.exit103.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit113.i unwind label %.split.thread.i, !noalias !190

bb.cm:                                            ; preds = %bb.ck
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !190
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit113.i: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !188
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.co unwind label %bb.cn, !noalias !190

bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit113.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.ct unwind label %bb.cp, !noalias !190

bb.co:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit113.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i169 unwind label %bb.ai, !noalias !190

bb.cp:                                            ; preds = %bb.cn
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !190
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i169: ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !188
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit118.i unwind label %bb.cq, !noalias !190

bb.cq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i169
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.thread unwind label %bb.cr, !noalias !190

bb.cr:                                            ; preds = %bb.cq
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !190
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit118.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i169
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread unwind label %bb.cu

.thread:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !188
  br label %bb.cw

bb.cs:                                            ; preds = %bb.ar, %bb.an, %bb.ak
  unreachable

.body96.thread.i:                                 ; preds = %bb.ck, %.split.thread.i, %.body96.i
  %.pn84132.i = phi { ptr, i32 } [ %.pn82.i, %.body96.i ], [ %i.jc, %bb.ck ], [ %lpad.thr_comm.i, %.split.thread.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #17
          to label %bb.ct unwind label %bb.bv, !noalias !190

bb.ct:                                            ; preds = %.body96.thread.i, %bb.cn, %bb.ai
  %.pn86.ph.i = phi { ptr, i32 } [ %.pn84132.i, %.body96.thread.i ], [ %i.ea, %bb.ai ], [ %i.je, %bb.cn ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #17
          to label %.body.thread unwind label %bb.bv, !noalias !190

.body:                                            ; preds = %bb.fd, %bb.cu, %.body232
  %.sroa.072.0 = phi i8 [ %.sroa.072.7, %.body232 ], [ %.sroa.074.1, %bb.cu ], [ %.sroa.074.9, %bb.fd ]
  %.sroa.074.0 = phi i8 [ %.sroa.074.7, %.body232 ], [ %.sroa.074.1, %bb.cu ], [ %.sroa.074.9, %bb.fd ] ; 2 uses
  %.pn156 = phi { ptr, i32 } [ %.pn154, %.body232 ], [ %i.jj, %bb.cu ], [ %i.pt, %bb.fd ] ; 2 uses
  %i.ji = trunc nuw i8 %.sroa.072.0 to i1
  br i1 %i.ji, label %.body.thread, label %bb.fk

bb.cu:                                            ; preds = %bb.fe, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit118.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit.i171, %bb.ag, %bb.af, %bb.ea
  %.sroa.074.1 = phi i8 [ %.sroa.074.9, %bb.fe ], [ 0, %bb.ea ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit118.i ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit.i171 ] ; 2 uses
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !188
  %i.jk = icmp eq i64 %.sroa.030.i.sroa.0.0.copyload, -1
  br i1 %i.jk, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %.thread, %bb.cv
  %.sroa.8256.1328 = phi i64 [ 0, %.thread ], [ %.sroa.030.i.sroa.4.0.copyload, %bb.cv ]
  %.sroa.12258.1327 = phi ptr [ %.sroa.12258.0, %.thread ], [ %.sroa.030.i.sroa.5.0.copyload, %bb.cv ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14260, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14260)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  %.sroa.5312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.sroa.8, i64 24, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8256.1328, ptr %i.jl, align 8
  %.sroa.4311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12258.1327, ptr %.sroa.4311.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.sroa.8)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.invoke unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.thread353 unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.cz:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14260, i64 24, i1 false)
  %.sroa.14260.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.14260, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14260.48..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14260)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.sroa.8, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 %.sroa.030.i.sroa.0.0.copyload, ptr %i.ao, align 8
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store i64 %.sroa.030.i.sroa.4.0.copyload, ptr %.sroa.2136.0..sroa_idx, align 8
  %.sroa.2136.sroa.2.0..sroa.2136.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  store ptr %.sroa.030.i.sroa.5.0.copyload, ptr %.sroa.2136.sroa.2.0..sroa.2136.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.sroa.8)
  %i.jo = add i64 %.sroa.03.0.i, %i.dm
  %i.jp = add i64 %i.jo, %i.fv                    ; 2 uses
  store i64 %i.jp, ptr %.sroa.883.0..sroa_idx, align 8
  %i.jq = load i64, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !noundef !4 ; 3 uses
  %i.jr = icmp ult i64 %i.jq, 1152921504606846976
  call void @llvm.assume(i1 %i.jr)
  store i64 %i.jq, ptr %.sroa.984.0..sroa_idx, align 8
  %i.js = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jq
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !noundef !4
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.jx
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_mEEINtB5_7ZipImplBW_B1o_E3newCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ak, ptr noundef nonnull %i.js, ptr noundef nonnull %i.jt, ptr noundef nonnull %i.jv, ptr noundef nonnull %i.jy)
          to label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %bb.dl, %bb.ej, %bb.em
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body183

.loopexit.split-lp.loopexit:                      ; preds = %bb.eq, %bb.dj
  %lpad.loopexit363 = landingpad { ptr, i32 }
          cleanup
  br label %.body183

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.db, %bb.eu
  %lpad.loopexit366 = landingpad { ptr, i32 }
          cleanup
  br label %.body183

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread339, %bb.dm, %bb.dn, %bb.dp, %bb.dq, %bb.cz, %bb.dd, %bb.dg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit191, %.thread334
  %.sroa.072.2.ph.ph.ph = phi i8 [ 0, %.thread339 ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %bb.dp ], [ 0, %bb.dq ], [ 0, %bb.dg ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit191 ], [ 1, %bb.cz ], [ 0, %.thread334 ], [ 1, %bb.dd ]
  %.sroa.074.2.ph.ph.ph = phi i8 [ 0, %.thread339 ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %bb.dp ], [ 0, %bb.dq ], [ 0, %bb.dg ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit191 ], [ 1, %bb.cz ], [ 0, %.thread334 ], [ 0, %bb.dd ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body183

.body183:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.df, %bb.dc
  %.sroa.072.2.lpad-body = phi i8 [ 1, %bb.dc ], [ 0, %bb.df ], [ 0, %.loopexit ], [ 0, %.loopexit.split-lp.loopexit ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.072.2.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.074.2.lpad-body = phi i8 [ 0, %bb.dc ], [ 0, %bb.df ], [ 0, %.loopexit ], [ 0, %.loopexit.split-lp.loopexit ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.074.2.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body184 = phi { ptr, i32 } [ %i.kx, %bb.dc ], [ %i.kz, %bb.df ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit363, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit366, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #17
          to label %.body211 unwind label %bb.fp

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.cz
  %.sroa.0261.0.copyload = load ptr, ptr %i.ak, align 8 ; 2 uses
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.5263.0.copyload = load ptr, ptr %.sroa.5263.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.6264.0.copyload = load i64, ptr %.sroa.6264.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.8265.0.copyload = load i64, ptr %.sroa.8265.0..sroa_idx, align 8 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.8265.0.copyload, i64 %.sroa.6264.0.copyload)
  %exitcond.not452.not = icmp ult i64 %.sroa.6264.0.copyload, %.sroa.8265.0.copyload
  br i1 %exitcond.not452.not, label %.lr.ph.preheader, label %.thread329

.lr.ph.preheader:                                 ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0261.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5263.0.copyload) ]
  br label %.lr.ph

bb.da:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit224
  %exitcond.not = icmp eq i64 %i.kb, %umax
  br i1 %exitcond.not, label %.thread329, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.da
  %.sroa.6264.0453 = phi i64 [ %i.kb, %bb.da ], [ %.sroa.6264.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %i.kb = add i64 %.sroa.6264.0453, 1             ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0261.0.copyload, i64 %.sroa.6264.0453
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5263.0.copyload, i64 %.sroa.6264.0453
  %i.ke = load i64, ptr %i.kc, align 8, !noundef !4 ; 2 uses
  %i.kf = load i32, ptr %i.kd, align 4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 %i.ke, ptr %i.ae, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.kg = load i64, ptr %1, align 8, !range !5, !alias.scope !197, !noalias !198, !noundef !4
  %i.kh = load i64, ptr %i.jz, align 8, !alias.scope !197, !noalias !198, !noundef !4 ; 4 uses
  %i.ki = icmp sgt i64 %i.kh, -1
  call void @llvm.assume(i1 %i.ki)
  %i.kj = sub nsw i64 %i.kg, %i.kh
  %i.kk = icmp ugt i64 %i.kj, 8
  br i1 %i.kk, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit.thread, label %bb.db, !prof !6

bb.db:                                            ; preds = %.lr.ph
  %i.kl = invoke noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #14
          to label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit.thread: ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.km = load ptr, ptr %i.ka, align 8, !alias.scope !200, !noalias !201, !nonnull !4, !noundef !4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kh
  store i64 %i.ke, ptr %i.kn, align 1, !noalias !200
  %i.ko = add nuw i64 %i.kh, 8                    ; 2 uses
  store i64 %i.ko, ptr %i.jz, align 8, !alias.scope !200, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.et

.thread329:                                       ; preds = %bb.da, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit
  %i.kp = load i64, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.kq = icmp ult i64 %i.kp, 1152921504606846976
  call void @llvm.assume(i1 %i.kq)
  %i.kr = shl nuw nsw i64 %i.kp, 3
  %i.ks = load i64, ptr %i.jw, align 8, !noundef !4 ; 2 uses
  %i.kt = icmp ult i64 %i.ks, 2305843009213693952
  call void @llvm.assume(i1 %i.kt)
  %i.ku = shl nuw nsw i64 %i.ks, 2
  %i.kv = add i64 %i.kr, %i.jp
  %i.kw = add i64 %i.kv, %i.ku                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %.thread329
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body183 unwind label %bb.de

bb.dd:                                            ; preds = %.thread329
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %bb.dc
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.dg unwind label %bb.df

bb.df:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body183 unwind label %bb.dh

bb.dg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit191 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.df
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit191: ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  store i64 %i.kw, ptr %.sroa.1085.0..sroa_idx, align 8
  %i.lb = load i64, ptr %.sroa.2136.sroa.2.0..sroa.2136.0..sroa_idx.sroa_idx, align 8, !noundef !4 ; 3 uses
  %i.lc = icmp ult i64 %i.lb, 1152921504606846976
  call void @llvm.assume(i1 %i.lc)
  store i64 %i.lb, ptr %.sroa.1186.0..sroa_idx, align 8
  %i.ld = load ptr, ptr %.sroa.2136.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lb
  %i.lf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !noundef !4
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.li
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_mEEINtB5_7ZipImplBW_B1o_E3newCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ah, ptr noundef nonnull %i.ld, ptr noundef nonnull %i.le, ptr noundef nonnull %i.lg, ptr noundef nonnull %i.lj)
          to label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit193 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit193: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit191
  %.sroa.0266.0.copyload = load ptr, ptr %i.ah, align 8 ; 2 uses
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.5268.0.copyload = load ptr, ptr %.sroa.5268.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.6270.0.copyload = load i64, ptr %.sroa.6270.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.8271.0.copyload = load i64, ptr %.sroa.8271.0..sroa_idx, align 8 ; 2 uses
  %umax403 = call i64 @llvm.umax.i64(i64 %.sroa.8271.0.copyload, i64 %.sroa.6270.0.copyload)
  %exitcond404.not454.not = icmp ult i64 %.sroa.6270.0.copyload, %.sroa.8271.0.copyload
  br i1 %exitcond404.not454.not, label %.lr.ph456.preheader, label %.thread334

.lr.ph456.preheader:                              ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit193
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0266.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5268.0.copyload) ]
  br label %.lr.ph456

bb.di:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit221
  %exitcond404.not = icmp eq i64 %i.lk, %umax403
  br i1 %exitcond404.not, label %.thread334, label %.lr.ph456

.lr.ph456:                                        ; preds = %.lr.ph456.preheader, %bb.di
  %.sroa.6270.0455 = phi i64 [ %i.lk, %bb.di ], [ %.sroa.6270.0.copyload, %.lr.ph456.preheader ] ; 3 uses
  %i.lk = add i64 %.sroa.6270.0455, 1             ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0266.0.copyload, i64 %.sroa.6270.0455
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5268.0.copyload, i64 %.sroa.6270.0455
  %i.ln = load i64, ptr %i.ll, align 8, !noundef !4 ; 2 uses
  %i.lo = load i32, ptr %i.lm, align 4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %i.ln, ptr %i.ac, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.lp = load i64, ptr %1, align 8, !range !5, !alias.scope !202, !noalias !203, !noundef !4
  %i.lq = load i64, ptr %i.jz, align 8, !alias.scope !202, !noalias !203, !noundef !4 ; 4 uses
  %i.lr = icmp sgt i64 %i.lq, -1
  call void @llvm.assume(i1 %i.lr)
  %i.ls = sub nsw i64 %i.lp, %i.lq
  %i.lt = icmp ugt i64 %i.ls, 8
  br i1 %i.lt, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit201.thread, label %bb.dj, !prof !6

bb.dj:                                            ; preds = %.lr.ph456
  %i.lu = invoke noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #14
          to label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit201 unwind label %.loopexit.split-lp.loopexit ; 2 uses

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit201.thread: ; preds = %.lr.ph456
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.lv = load ptr, ptr %i.ka, align 8, !alias.scope !205, !noalias !206, !nonnull !4, !noundef !4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lq
  store i64 %i.ln, ptr %i.lw, align 1, !noalias !205
  %i.lx = add nuw i64 %i.lq, 8                    ; 2 uses
  store i64 %i.lx, ptr %i.jz, align 8, !alias.scope !205, !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ep

.thread334:                                       ; preds = %bb.di, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit193
  %i.ly = load i64, ptr %.sroa.2136.sroa.2.0..sroa.2136.0..sroa_idx.sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.lz = icmp ult i64 %i.ly, 1152921504606846976
  call void @llvm.assume(i1 %i.lz)
  %i.ma = shl nuw nsw i64 %i.ly, 3
  %i.mb = load i64, ptr %i.lh, align 8, !noundef !4 ; 2 uses
  %i.mc = icmp ult i64 %i.mb, 2305843009213693952
  call void @llvm.assume(i1 %i.mc)
  %i.md = shl nuw nsw i64 %i.mb, 2
  %i.me = add i64 %i.ma, %i.kw
  %i.mf = add i64 %i.me, %i.md                    ; 2 uses
  store i64 %i.mf, ptr %.sroa.12.0..sroa_idx, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.mh = load i64, ptr %i.mg, align 8, !noundef !4 ; 3 uses
  %i.mi = icmp ult i64 %i.mh, 1152921504606846976
  call void @llvm.assume(i1 %i.mi)
  store i64 %i.mh, ptr %.sroa.13.0..sroa_idx, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.mh
  %i.mm = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.mp = load i64, ptr %i.mo, align 8, !noundef !4
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.mp
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_TmmEEEINtB5_7ZipImplBW_B1o_E3newCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ag, ptr noundef nonnull %i.mk, ptr noundef nonnull %i.ml, ptr noundef nonnull %i.mn, ptr noundef nonnull %i.mq)
          to label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TmmEEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TmmEEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.thread334
  %.sroa.0272.0.copyload = load ptr, ptr %i.ag, align 8 ; 2 uses
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.5274.0.copyload = load ptr, ptr %.sroa.5274.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.6276.0.copyload = load i64, ptr %.sroa.6276.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.8277.0.copyload = load i64, ptr %.sroa.8277.0..sroa_idx, align 8 ; 2 uses
  %umax405 = call i64 @llvm.umax.i64(i64 %.sroa.8277.0.copyload, i64 %.sroa.6276.0.copyload)
  %exitcond406.not457.not = icmp ult i64 %.sroa.6276.0.copyload, %.sroa.8277.0.copyload
  br i1 %exitcond406.not457.not, label %.lr.ph459.preheader, label %.thread339

.lr.ph459.preheader:                              ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TmmEEECs31YAwBA1AlL_19xet_core_structures.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0272.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5274.0.copyload) ]
  br label %.lr.ph459

bb.dk:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit218
  %exitcond406.not = icmp eq i64 %i.mr, %umax405
  br i1 %exitcond406.not, label %.thread339, label %.lr.ph459

.lr.ph459:                                        ; preds = %.lr.ph459.preheader, %bb.dk
  %.sroa.6276.0458 = phi i64 [ %i.mr, %bb.dk ], [ %.sroa.6276.0.copyload, %.lr.ph459.preheader ] ; 3 uses
  %i.mr = add i64 %.sroa.6276.0458, 1             ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0272.0.copyload, i64 %.sroa.6276.0458
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5274.0.copyload, i64 %.sroa.6276.0458 ; 2 uses
  %i.mu = load i64, ptr %i.ms, align 8, !noundef !4 ; 2 uses
  %i.mv = load i32, ptr %i.mt, align 4, !noundef !4 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.mx = load i32, ptr %i.mw, align 4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %i.mu, ptr %i.aa, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.my = load i64, ptr %1, align 8, !range !5, !alias.scope !207, !noalias !208, !noundef !4
  %i.mz = load i64, ptr %i.jz, align 8, !alias.scope !207, !noalias !208, !noundef !4 ; 4 uses
  %i.na = icmp sgt i64 %i.mz, -1
  call void @llvm.assume(i1 %i.na)
  %i.nb = sub nsw i64 %i.my, %i.mz
  %i.nc = icmp ugt i64 %i.nb, 8
  br i1 %i.nc, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit209.thread, label %bb.dl, !prof !6

bb.dl:                                            ; preds = %.lr.ph459
  %i.nd = invoke noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #14
          to label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit209 unwind label %.loopexit ; 2 uses

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit209.thread: ; preds = %.lr.ph459
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.ne = load ptr, ptr %i.ka, align 8, !alias.scope !210, !noalias !211, !nonnull !4, !noundef !4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.mz
  store i64 %i.mu, ptr %i.nf, align 1, !noalias !210
  %i.ng = add nuw i64 %i.mz, 8                    ; 2 uses
  store i64 %i.ng, ptr %i.jz, align 8, !alias.scope !210, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ei

.thread339:                                       ; preds = %bb.dk, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TmmEEECs31YAwBA1AlL_19xet_core_structures.exit
  %i.nh = load i64, ptr %i.mg, align 8, !noundef !4 ; 2 uses
  %i.ni = icmp ult i64 %i.nh, 1152921504606846976
  call void @llvm.assume(i1 %i.ni)
  %i.nj = load i64, ptr %i.mo, align 8, !noundef !4 ; 2 uses
  %i.nk = icmp ult i64 %i.nj, 1152921504606846976
  call void @llvm.assume(i1 %i.nk)
  %i.nl = add nuw nsw i64 %i.nj, %i.nh
  %i.nm = shl nuw i64 %i.nl, 3
  %i.nn = add i64 %i.nm, %i.mf
  %i.no = invoke noundef i64 @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard20stored_bytes_on_disk(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %2)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %.thread339
  store i64 %i.no, ptr %.sroa.16.0..sroa_idx, align 8
  %i.np = invoke noundef i64 @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard18materialized_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %2)
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dn:                                            ; preds = %bb.dm
  store i64 %i.np, ptr %.sroa.17.0..sroa_idx, align 8
  %i.nq = invoke noundef i64 @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard12stored_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %2)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.do:                                            ; preds = %bb.dn
  store i64 %i.nq, ptr %.sroa.18.0..sroa_idx, align 8
  store i64 %i.nn, ptr %.sroa.19.0..sroa_idx, align 8
  %.not142 = icmp eq i32 %4, -1
  br i1 %.not142, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.nr = invoke noundef i64 @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard5utils17shard_expiry_time(i64 noundef %3, i32 noundef %4)
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dq:                                            ; preds = %bb.dr, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RINvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_18MDBShardFileFooter9serializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.ds unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dr:                                            ; preds = %bb.dp
  store i64 %i.nr, ptr %.sroa.15.0..sroa_idx, align 8
  br label %bb.dq

bb.ds:                                            ; preds = %bb.dq
  %i.ns = load i64, ptr %i.af, align 8, !range !179, !noundef !4 ; 2 uses
  %.not143 = icmp eq i64 %i.ns, -1
  br i1 %.not143, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4129.0.copyload = load i64, ptr %.sroa.4129.0..sroa_idx, align 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5133.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5130.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ns, ptr %i.nt, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4129.0.copyload, ptr %.sroa.4132.0..sroa_idx, align 8
  br label %bb.ed

bb.du:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.nu, ptr noundef nonnull align 8 dereferenceable(248) %i.as, i64 248, i1 false)
  store i64 0, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al)
          to label %bb.dw unwind label %bb.dv

.body211:                                         ; preds = %bb.ee, %bb.dv, %.body183
  %.sroa.072.3 = phi i8 [ %.sroa.072.2.lpad-body, %.body183 ], [ %.sroa.074.4, %bb.dv ], [ %.sroa.074.9, %bb.ee ]
  %.sroa.074.3 = phi i8 [ %.sroa.074.2.lpad-body, %.body183 ], [ %.sroa.074.4, %bb.dv ], [ %.sroa.074.9, %bb.ee ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body184, %.body183 ], [ %i.nv, %bb.dv ], [ %i.ny, %bb.ee ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #17
          to label %.body227 unwind label %bb.fp

bb.dv:                                            ; preds = %bb.ef, %bb.du
  %.sroa.074.4 = phi i8 [ %.sroa.074.9, %bb.ef ], [ 0, %bb.du ] ; 2 uses
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %.body211

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am)
          to label %bb.dy unwind label %bb.dx

.body227:                                         ; preds = %bb.ex, %bb.dx, %.body211
  %.sroa.072.5 = phi i8 [ %.sroa.072.3, %.body211 ], [ %.sroa.074.6, %bb.dx ], [ %.sroa.074.9, %bb.ex ]
  %.sroa.074.5 = phi i8 [ %.sroa.074.3, %.body211 ], [ %.sroa.074.6, %bb.dx ], [ %.sroa.074.9, %bb.ex ]
  %.pn152 = phi { ptr, i32 } [ %.pn, %.body211 ], [ %i.nw, %bb.dx ], [ %i.pp, %bb.ex ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #17
          to label %.body232 unwind label %bb.fp

bb.dx:                                            ; preds = %bb.ey, %bb.dw
  %.sroa.074.6 = phi i8 [ %.sroa.074.9, %bb.ey ], [ 0, %bb.dw ] ; 2 uses
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.body227

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an)
          to label %bb.ea unwind label %bb.dz

.body232:                                         ; preds = %bb.fa, %bb.dz, %.body227
  %.sroa.072.7 = phi i8 [ %.sroa.072.5, %.body227 ], [ %.sroa.074.8, %bb.dz ], [ %.sroa.074.9, %bb.fa ]
  %.sroa.074.7 = phi i8 [ %.sroa.074.5, %.body227 ], [ %.sroa.074.8, %bb.dz ], [ %.sroa.074.9, %bb.fa ]
  %.pn154 = phi { ptr, i32 } [ %.pn152, %.body227 ], [ %i.nx, %bb.dz ], [ %i.pr, %bb.fa ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #17
          to label %.body unwind label %bb.fp

bb.dz:                                            ; preds = %bb.fb, %bb.dy
  %.sroa.074.8 = phi i8 [ %.sroa.074.9, %bb.fb ], [ 0, %bb.dy ] ; 2 uses
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %.body232

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao)
          to label %bb.eb unwind label %bb.cu

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ec

bb.ec:                                            ; preds = %bb.b, %bb.ae, %bb.fm, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  ret void

bb.ed:                                            ; preds = %bb.eh, %bb.ek, %bb.eo, %bb.ew, %bb.es, %bb.dt
  %.sroa.074.9 = phi i8 [ 1, %bb.ew ], [ 0, %bb.es ], [ 0, %bb.dt ], [ 0, %bb.eo ], [ 0, %bb.ek ], [ 0, %bb.eh ] ; 13 uses
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.ef unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body211 unwind label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.dv

bb.eg:                                            ; preds = %bb.ee
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

end_hunk_0
