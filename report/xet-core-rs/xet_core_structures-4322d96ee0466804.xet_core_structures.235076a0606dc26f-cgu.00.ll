Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.00?download=true
inline.NumInlined: 192
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo14serialize_fromINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_:bb.a
          to label %.body237 unwind label %bb.dy

bb.dx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit234
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit239 unwind label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

.body237:                                         ; preds = %bb.dw, %bb.dz, %.body232
  %.sroa.072.7 = phi i8 [ %.sroa.072.5, %.body232 ], [ 0, %bb.dz ], [ 0, %bb.dw ]
  %.sroa.074.7 = phi i8 [ %.sroa.074.5, %.body232 ], [ 0, %bb.dz ], [ 0, %bb.dw ]
  %.pn147 = phi { ptr, i32 } [ %.pn145, %.body232 ], [ %i.og, %bb.dz ], [ %i.oe, %bb.dw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf) #17
          to label %.body unwind label %bb.eg

bb.dz:                                            ; preds = %bb.dx
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %.body237

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit239: ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %bb.eb unwind label %bb.ea

bb.ea:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit239
  %i.oh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %common.resume unwind label %bb.ec

bb.eb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit239
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit245 unwind label %bb.cr

bb.ec:                                            ; preds = %bb.ea
  %i.oi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit245: ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ab, %bb.ef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  ret void

_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit199: ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i32 %i.mr, ptr %i.ar, align 4
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef 4)
          to label %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit247 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit247: ; preds = %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i32 %i.mt, ptr %i.aq, align 4
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef 4)
          to label %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit249 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit249: ; preds = %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %exitcond441.not = icmp eq i64 %i.mn, %.sroa.7302.0.copyload
  br i1 %exitcond441.not, label %.thread369, label %bb.dg

_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit192: ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i32 %i.ls, ptr %i.at, align 4
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef 4)
          to label %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit251 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit251: ; preds = %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %exitcond440.not = icmp eq i64 %i.lo, %.sroa.7296.0.copyload
  br i1 %exitcond440.not, label %.thread364, label %bb.df

_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i32 %i.kr, ptr %i.av, align 4
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef 4)
          to label %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit253 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit253: ; preds = %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %exitcond.not = icmp eq i64 %i.kn, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread359, label %bb.cy

.body.thread384:                                  ; preds = %.body.thread, %.body
  %.sroa.074.10 = phi i8 [ %.sroa.074.0, %.body ], [ %.sroa.074.0382, %.body.thread ]
  %.pn151 = phi { ptr, i32 } [ %.pn149, %.body ], [ %.pn149383, %.body.thread ] ; 2 uses
  %i.oj = trunc nuw i8 %.sroa.074.10 to i1
  br i1 %i.oj, label %.thread374, label %common.resume

bb.ee:                                            ; preds = %bb.cv
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %.thread374

bb.ef:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.ed

bb.eg:                                            ; preds = %.thread374, %.body.thread, %.body237, %.body232, %.body223, %.body175
  %i.ol = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %bb.ef unwind label %bb.eh

bb.eh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit
  %i.om = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %common.resume unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.on = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

.body.thread:                                     ; preds = %bb.bq, %bb.cn, %bb.cq, %.body96.i, %.body
  %.pn149383 = phi { ptr, i32 } [ %.pn149, %.body ], [ %.pn82.i, %.body96.i ], [ %.pn86.ph.i, %bb.cq ], [ %i.jt, %bb.cn ], [ %i.hk, %bb.bq ]
  %.sroa.074.0382 = phi i8 [ %.sroa.074.0, %.body ], [ 1, %.body96.i ], [ 1, %bb.cq ], [ 1, %bb.cn ], [ 1, %bb.bq ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #17
          to label %.body.thread384 unwind label %bb.eg

.thread374:                                       ; preds = %bb.cu, %bb.ee, %.body.thread384
  %.pn151378 = phi { ptr, i32 } [ %.pn151, %.body.thread384 ], [ %i.ok, %bb.ee ], [ %i.jz, %bb.cu ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #17
          to label %common.resume unwind label %bb.eg
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo14serialize_fromINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.030.i.sroa.6 = alloca [72 x i8], align 8 ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [48 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 13 uses
  %i.o = alloca [24 x i8], align 8                ; 15 uses
  %i.p = alloca [24 x i8], align 8                ; 15 uses
  %i.q = alloca [24 x i8], align 8                ; 13 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [72 x i8], align 8                ; 13 uses
  %i.w = alloca [24 x i8], align 8                ; 13 uses
  %i.x = alloca [24 x i8], align 8                ; 13 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [4 x i8], align 4                 ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [4 x i8], align 4                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [4 x i8], align 4                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.079 = alloca [80 x i8], align 8          ; 5 uses
  %i.af = alloca [40 x i8], align 8               ; 7 uses
  %i.ag = alloca [48 x i8], align 8               ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.14259 = alloca [48 x i8], align 8        ; 7 uses
  %.sroa.15 = alloca [24 x i8], align 8           ; 5 uses
  %.sroa.627.sroa.8 = alloca [24 x i8], align 8   ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 11 uses
  %i.am = alloca [24 x i8], align 8               ; 11 uses
  %i.an = alloca [24 x i8], align 8               ; 11 uses
  %i.ao = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.14 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.623.sroa.8 = alloca [24 x i8], align 8   ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 14 uses
  %i.aq = alloca [24 x i8], align 8               ; 11 uses
  %i.ar = alloca [40 x i8], align 8               ; 7 uses
  %i.as = alloca [248 x i8], align 8              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.079)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.079, i8 0, i64 32, i1 false)
  %.sroa.079.32..sroa_idx502 = getelementptr inbounds nuw i8, ptr %.sroa.079, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.079.32..sroa_idx502, i8 0, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 2, ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i64 200, ptr %.sroa.578.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.079, i64 80, i1 false)
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  store i64 1, ptr %.sroa.580.0..sroa_idx, align 8
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 136 ; 2 uses
  %.sroa.782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  %.sroa.883.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 152
  %.sroa.984.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  %.sroa.1085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  %.sroa.1186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 208 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.681.0..sroa_idx, i8 0, i64 72, i1 false)
  store i64 -1, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 216 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 232
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.0..sroa_idx, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB5_18MDBShardFileHeader9serializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB9_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.au = load i64, ptr %i.ar, align 8, !range !145, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.au, -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.595.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.592.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %i.ax, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %.sroa.494.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.eb

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  store i64 %i.aw, ptr %.sroa.681.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.623.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !147
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !146, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !147
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef %i.ba, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !147
  %i.bb = load i64, ptr %i.t, align 8, !range !7, !noalias !147, !noundef !4
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !8, !noalias !147, !noundef !4 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.bc, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !147
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.be, i64 %i.bg) #16, !noalias !147
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bh = load ptr, ptr %i.bf, align 8, !noalias !147, !nonnull !4, !noundef !4
  %i.bi = icmp ule i64 %i.ba, %i.be
  tail call void @llvm.assume(i1 %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !147
  store i64 %i.be, ptr %i.x, align 8, !noalias !147
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !147
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 4 uses
  store i64 0, ptr %i.bk, align 8, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !147
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %i.ba, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.g unwind label %bb.f, !noalias !147

.body.i:                                          ; preds = %bb.q, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp497.a, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bl, %bb.f ], [ %i.cl, %bb.q ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #17
          to label %common.resume unwind label %bb.ab, !noalias !148

bb.f:                                             ; preds = %bb.r, %bb.h, %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.g:                                             ; preds = %bb.e
  %i.bm = load i64, ptr %i.s, align 8, !range !7, !noalias !147, !noundef !4
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !8, !noalias !147, !noundef !4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.bn, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.br = load i64, ptr %i.bq, align 8, !noalias !147
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bp, i64 %i.br) #16
          to label %bb.ac unwind label %bb.f, !noalias !147

bb.i:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bq, align 8, !noalias !147, !nonnull !4, !noundef !4
  %i.bt = icmp ule i64 %i.ba, %i.bp
  tail call void @llvm.assume(i1 %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !147
  store i64 %i.bp, ptr %i.w, align 8, !noalias !147
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.bs, ptr %i.bu, align 8, !noalias !147
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store i64 0, ptr %i.bv, align 8, !noalias !147
  %i.bw = load ptr, ptr %i.ay, align 8, !alias.scope !146, !noundef !4 ; 3 uses
  %.not.i = icmp ne ptr %i.bw, null               ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !146
  %.sroa.05.sroa.0.0.i = zext i1 %.not.i to i64   ; 2 uses
  %.sroa.05.sroa.6.sroa.7.0.i = select i1 %.not.i, i64 %i.by, i64 undef ; 2 uses
  %.sroa.6.0.i = select i1 %.not.i, i64 %i.ba, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !147
  store i64 %.sroa.05.sroa.0.0.i, ptr %i.v, align 8, !noalias !147
  %.sroa.05.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %.sroa.05.sroa.6.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.05.sroa.6.sroa.6.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.bw, ptr %.sroa.05.sroa.6.sroa.6.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !147
  %.sroa.05.sroa.6.sroa.7.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %.sroa.05.sroa.6.sroa.7.0.i, ptr %.sroa.05.sroa.6.sroa.7.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !147
  %.sroa.05.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i64 %.sroa.05.sroa.0.0.i, ptr %.sroa.05.sroa.7.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.05.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr null, ptr %.sroa.05.sroa.8.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.05.sroa.8.sroa.6.0..sroa.05.sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.bw, ptr %.sroa.05.sroa.8.sroa.6.0..sroa.05.sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !147
  %.sroa.05.sroa.8.sroa.7.0..sroa.05.sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store i64 %.sroa.05.sroa.6.sroa.7.0.i, ptr %.sroa.05.sroa.8.sroa.7.0..sroa.05.sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !147
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !147
  br label %bb.j

bb.j:                                             ; preds = %bb.y, %bb.i
  %.sroa.02.0.i = phi i64 [ 0, %bb.i ], [ %i.db, %bb.y ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ 0, %bb.i ], [ %i.de, %bb.y ] ; 2 uses
  %i.bz = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !148 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.u, %bb.m, %bb.j, %bb.n
  %lpad.loopexit.split-lp497.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #17
          to label %.body.i unwind label %bb.ab, !noalias !148

bb.k:                                             ; preds = %bb.j
  %i.ca = extractvalue { ptr, ptr } %i.bz, 0      ; 2 uses
  %i.cb = extractvalue { ptr, ptr } %i.bz, 1      ; 2 uses
  %.not62.i = icmp eq ptr %i.ca, null
  br i1 %.not62.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cc = load i64, ptr %i.ca, align 8, !noalias !148, !noundef !4
  %i.cd = load i64, ptr %i.bk, align 8, !alias.scope !149, !noalias !147, !noundef !4 ; 3 uses
  %i.ce = load i64, ptr %i.x, align 8, !range !5, !alias.scope !149, !noalias !147, !noundef !4
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #14
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !148

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 -1, i64 32, i1 false), !noalias !147
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !noalias !147
  %i.ch = invoke { i64, ptr } @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader9serializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB7_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !148 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ci = extractvalue { i64, ptr } %i.ch, 0
  %i.cj = extractvalue { i64, ptr } %i.ch, 1      ; 2 uses
  %i.ck = trunc nuw i64 %i.ci to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !147
  br i1 %i.ck, label %bb.p, label %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo26convert_and_save_file_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_.exit

bb.p:                                             ; preds = %bb.o, %bb.x
  %.sroa.12.0 = phi ptr [ %i.cy, %bb.x ], [ %i.cj, %bb.o ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.r unwind label %bb.q, !noalias !148

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body.i unwind label %bb.s, !noalias !148

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i unwind label %bb.f, !noalias !148

bb.s:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !148
  unreachable

bb.t:                                             ; preds = %bb.m, %bb.l
  %i.cn = load ptr, ptr %i.bj, align 8, !alias.scope !149, !noalias !147, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cd
  store i64 %i.cc, ptr %i.co, align 8, !noalias !148
  %i.cp = add i64 %i.cd, 1
  store i64 %i.cp, ptr %i.bk, align 8, !alias.scope !149, !noalias !147
  %i.cq = load i64, ptr %i.bv, align 8, !alias.scope !150, !noalias !147, !noundef !4 ; 3 uses
  %i.cr = load i64, ptr %i.w, align 8, !range !5, !alias.scope !150, !noalias !147, !noundef !4
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsbc8Eb5TzBdy_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #14
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !148

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ct = load ptr, ptr %i.bu, align 8, !alias.scope !150, !noalias !147, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cq
  store i32 %.sroa.0.0.i, ptr %i.cu, align 4, !noalias !148
  %i.cv = add i64 %i.cq, 1
  store i64 %i.cv, ptr %i.bv, align 8, !alias.scope !150, !noalias !147
  %i.cw = invoke { i64, ptr } @_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_11MDBFileInfo9serializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.cb, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !148 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.cx = extractvalue { i64, ptr } %i.cw, 0
  %i.cy = extractvalue { i64, ptr } %i.cw, 1      ; 2 uses
  %i.cz = trunc nuw i64 %i.cx to i1
  br i1 %i.cz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !147
  br label %bb.p

bb.y:                                             ; preds = %bb.w
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = add i64 %.sroa.02.0.i, %i.da
  %i.dc = udiv i64 %i.da, 48
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %.sroa.0.0.i, %i.dd
  br label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !147
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo26convert_and_save_file_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_.exit.thread unwind label %bb.z, !noalias !148

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.aa, !noalias !148

bb.aa:                                            ; preds = %bb.z
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !148
  unreachable

common.resume:                                    ; preds = %bb.fi, %.thread352, %bb.fl, %.body.i, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.pz, %bb.fl ], [ %.pn.i, %.body.i ], [ %i.df, %bb.z ], [ %.pn158356, %.thread352 ], [ %.pn158, %bb.fi ]
  resume { ptr, i32 } %common.resume.op

_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo26convert_and_save_file_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !147
  br label %bb.ad

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !148
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable

_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo26convert_and_save_file_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_.exit: ; preds = %bb.o
  %.sroa.0312.0.copyload = load i64, ptr %i.x, align 8, !noalias !147 ; 2 uses
  %.sroa.4313.0.copyload = load i64, ptr %i.bj, align 8, !noalias !147 ; 2 uses
  %.sroa.5314.0.copyload = load ptr, ptr %i.bk, align 8, !noalias !147 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !147
  %i.di = icmp eq i64 %.sroa.0312.0.copyload, -1
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo26convert_and_save_file_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_.exit.thread, %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo26convert_and_save_file_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_.exit
  %.sroa.8248.1321 = phi i64 [ 0, %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo26convert_and_save_file_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_.exit.thread ], [ %.sroa.4313.0.copyload, %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo26convert_and_save_file_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_.exit ]
  %.sroa.12.1320 = phi ptr [ %.sroa.12.0, %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo26convert_and_save_file_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_.exit.thread ], [ %.sroa.5314.0.copyload, %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo26convert_and_save_file_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.sroa.5293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5293.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.sroa.8, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8248.1321, ptr %i.dj, align 8
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.1320, ptr %.sroa.4292.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623.sroa.8)
  br label %bb.eb

bb.ae:                                            ; preds = %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo26convert_and_save_file_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_.exit
  %i.dk = ptrtoint ptr %i.cj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.sroa.8, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 %.sroa.0312.0.copyload, ptr %i.aq, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store i64 %.sroa.4313.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  store ptr %.sroa.5314.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623.sroa.8)
  %i.dl = add i64 %.sroa.02.0.i, %i.aw
  %i.dm = add i64 %i.dl, %i.dk                    ; 2 uses
  store i64 %i.dm, ptr %.sroa.782.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14259)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !153
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !152, !noundef !4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !153
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.dp, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.ct

.noexc:                                           ; preds = %bb.ae
  %i.dq = load i64, ptr %i.f, align 8, !range !7, !noalias !153, !noundef !4
  %i.dr = trunc nuw i64 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !8, !noalias !153, !noundef !4 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.dr, label %bb.af, label %bb.ag, !prof !9

bb.af:                                            ; preds = %.noexc
  %i.dv = load i64, ptr %i.du, align 8, !noalias !153
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dt, i64 %i.dv) #16
          to label %.noexc171 unwind label %bb.ct

.noexc171:                                        ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %.noexc
  %i.dw = load ptr, ptr %i.du, align 8, !noalias !153, !nonnull !4, !noundef !4
  %i.dx = icmp ule i64 %i.dp, %i.dt
  call void @llvm.assume(i1 %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !153
  store i64 %i.dt, ptr %i.r, align 8, !noalias !153
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.dw, ptr %i.dy, align 8, !noalias !153
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i64 0, ptr %i.dz, align 8, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !153
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.dp, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ai unwind label %bb.ah, !noalias !154

bb.ah:                                            ; preds = %bb.cn, %bb.aj, %bb.ag
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ai:                                            ; preds = %bb.ag
  %i.eb = load i64, ptr %i.e, align 8, !range !7, !noalias !153, !noundef !4
  %i.ec = trunc nuw i64 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !8, !noalias !153, !noundef !4 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ec, label %bb.aj, label %bb.ak, !prof !9

bb.aj:                                            ; preds = %bb.ai
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !153
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ee, i64 %i.eg) #16
          to label %bb.cr unwind label %bb.ah, !noalias !154

bb.ak:                                            ; preds = %bb.ai
  %i.eh = load ptr, ptr %i.ef, align 8, !noalias !153, !nonnull !4, !noundef !4
  %i.ei = icmp ule i64 %i.dp, %i.ee
  call void @llvm.assume(i1 %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !153
  store i64 %i.ee, ptr %i.q, align 8, !noalias !153
  %i.ej = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.eh, ptr %i.ej, align 8, !noalias !153
  %i.ek = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store i64 0, ptr %i.ek, align 8, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !153
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.dp, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.al unwind label %.split.thread.i, !noalias !154

.body96.i:                                        ; preds = %.body93.i
  br i1 %.sroa.032.2.i, label %.body96.thread.i, label %.body.thread

.split.thread.i:                                  ; preds = %bb.ck, %bb.am, %bb.ak
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body96.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.el = load i64, ptr %i.d, align 8, !range !7, !noalias !153, !noundef !4
  %i.em = trunc nuw i64 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !range !8, !noalias !153, !noundef !4 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.em, label %bb.am, label %bb.an, !prof !9

bb.am:                                            ; preds = %bb.al
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !153
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.eo, i64 %i.eq) #16
          to label %bb.cr unwind label %.split.thread.i, !noalias !154

bb.an:                                            ; preds = %bb.al
  %i.er = load ptr, ptr %i.ep, align 8, !noalias !153, !nonnull !4, !noundef !4
  %i.es = icmp ule i64 %i.dp, %i.eo
  call void @llvm.assume(i1 %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !153
  store i64 %i.eo, ptr %i.p, align 8, !noalias !153
  %i.et = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %i.er, ptr %i.et, align 8, !noalias !153
  %i.eu = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  store i64 0, ptr %i.eu, align 8, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !153
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dp, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %bb.ap unwind label %bb.ao, !noalias !154

.body93.i:                                        ; preds = %bb.bw, %bb.bp, %.body.i166, %bb.ao
  %.sroa.032.2.i = phi i1 [ %.sroa.032.4.i, %.body.i166 ], [ false, %bb.bp ], [ %.sroa.032.3.i, %bb.ao ], [ true, %bb.bw ]
  %.pn82.i = phi { ptr, i32 } [ %.pn80.i, %.body.i166 ], [ %i.gv, %bb.bp ], [ %i.ev, %bb.ao ], [ %i.ha, %bb.bw ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #17
          to label %.body96.i unwind label %bb.bu, !noalias !154

bb.ao:                                            ; preds = %bb.bx, %bb.bq, %bb.aq, %bb.an
  %.sroa.032.3.i = phi i1 [ true, %bb.aq ], [ true, %bb.bx ], [ false, %bb.bq ], [ true, %bb.an ]
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i

bb.ap:                                            ; preds = %bb.an
  %i.ew = load i64, ptr %i.c, align 8, !range !7, !noalias !153, !noundef !4
  %i.ex = trunc nuw i64 %i.ew to i1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !range !8, !noalias !153, !noundef !4 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ex, label %bb.aq, label %bb.ar, !prof !9

bb.aq:                                            ; preds = %bb.ap
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !153
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ez, i64 %i.fb) #16
          to label %bb.cr unwind label %bb.ao, !noalias !154

bb.ar:                                            ; preds = %bb.ap
  %i.fc = load ptr, ptr %i.fa, align 8, !noalias !153, !nonnull !4, !noundef !4
  %i.fd = icmp ule i64 %i.dp, %i.ez
  call void @llvm.assume(i1 %i.fd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !153
  store i64 %i.ez, ptr %i.o, align 8, !noalias !153
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo14serialize_fromINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_:bb.a
  %i.ht = load ptr, ptr %i.fl, align 8, !noalias !154, !nonnull !4, !noundef !4 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !154, !nonnull !4, !noundef !4 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !154, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.hx, 48
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx.i
  %i.hz = icmp eq i64 %i.hx, 0
  br i1 %i.hz, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cd, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit.i
  %.sroa.03.1150.i = phi i64 [ %i.im, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit.i ], [ %i.hs, %bb.cd ]
  %.sroa.0.0119149.i = phi ptr [ %i.ia, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit.i ], [ %i.hv, %bb.cd ] ; 3 uses
  %.sroa.8.0148.i = phi i32 [ %i.ib, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit.i ], [ 0, %bb.cd ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0119149.i, i64 48 ; 2 uses
  %i.ib = add i32 %.sroa.8.0148.i, 1
  %i.ic = invoke { i64, ptr } @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry9serializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB9_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0119149.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154 ; 2 uses

._crit_edge.loopexit.i:                           ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit.i
  %.pre.i = load ptr, ptr %i.fl, align 8, !noalias !154
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %.pre160.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !154
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.cd
  %i.id = phi i64 [ 0, %bb.cd ], [ %.pre160.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.03.1.lcssa.i = phi i64 [ %i.hs, %bb.cd ], [ %i.im, %._crit_edge.loopexit.i ]
  %i.ie = icmp ult i64 %i.id, 192153584101141163
  call void @llvm.assume(i1 %i.ie)
  %i.if = trunc i64 %i.id to i32
  %i.ig = add i32 %.sroa.0.0.i165, 1
  %i.ih = add i32 %i.ig, %i.if
  br label %bb.as

bb.ce:                                            ; preds = %.lr.ph.i
  %i.ii = extractvalue { i64, ptr } %i.ic, 0
  %i.ij = extractvalue { i64, ptr } %i.ic, 1      ; 2 uses
  %i.ik = trunc nuw i64 %i.ii to i1
  br i1 %i.ik, label %.loopexit370, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = add i64 %.sroa.03.1150.i, %i.il         ; 2 uses
  %i.in = load i64, ptr %.sroa.0.0119149.i, align 8, !noalias !154, !noundef !4
  %i.io = load i64, ptr %i.eu, align 8, !alias.scope !159, !noalias !153, !noundef !4 ; 3 uses
  %i.ip = load i64, ptr %i.p, align 8, !range !5, !alias.scope !159, !noalias !153, !noundef !4
  %i.iq = icmp eq i64 %i.io, %i.ip
  br i1 %i.iq, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #14
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ir = load ptr, ptr %i.et, align 8, !alias.scope !159, !noalias !153, !nonnull !4, !noundef !4
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.io
  store i64 %i.in, ptr %i.is, align 8, !noalias !154
  %i.it = add i64 %i.io, 1
  store i64 %i.it, ptr %i.eu, align 8, !alias.scope !159, !noalias !153
  %i.iu = load i64, ptr %i.ff, align 8, !alias.scope !160, !noalias !153, !noundef !4 ; 3 uses
  %i.iv = load i64, ptr %i.o, align 8, !range !5, !alias.scope !160, !noalias !153, !noundef !4
  %i.iw = icmp eq i64 %i.iu, %i.iv
  br i1 %i.iw, label %bb.ci, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit.i

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmmEE8grow_oneCsgXWyVpFG3as_5ipnet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #14
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.ci, %bb.ch
  %i.ix = load ptr, ptr %i.fe, align 8, !alias.scope !160, !noalias !153, !nonnull !4, !noundef !4
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iu ; 2 uses
  store i32 %.sroa.0.0.i165, ptr %i.iy, align 4, !noalias !154
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i32 %.sroa.8.0148.i, ptr %i.iz, align 4, !noalias !154
  %i.ja = add i64 %i.iu, 1
  store i64 %i.ja, ptr %i.ff, align 8, !alias.scope !160, !noalias !153
  %i.jb = icmp eq ptr %i.ia, %i.hy
  br i1 %i.jb, label %._crit_edge.loopexit.i, label %.lr.ph.i

.loopexit370:                                     ; preds = %bb.cc, %bb.ce
  %.lcssa.sink.i = phi ptr [ %i.ij, %bb.ce ], [ %i.hp, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !153
  br label %bb.bv

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures.exit103.i: ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !153
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ck unwind label %bb.cj, !noalias !154

bb.cj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures.exit103.i
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body96.thread.i unwind label %bb.cl, !noalias !154

bb.ck:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures.exit103.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit113.i unwind label %.split.thread.i, !noalias !154

bb.cl:                                            ; preds = %bb.cj
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !154
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit113.i: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !153
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.cn unwind label %bb.cm, !noalias !154

bb.cm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit113.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.cs unwind label %bb.co, !noalias !154

bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit113.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i167 unwind label %bb.ah, !noalias !154

bb.co:                                            ; preds = %bb.cm
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !154
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i167: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !153
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit118.i unwind label %bb.cp, !noalias !154

bb.cp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i167
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.thread unwind label %bb.cq, !noalias !154

bb.cq:                                            ; preds = %bb.cp
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !154
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit118.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit.i167
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread unwind label %bb.ct

.thread:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !153
  br label %bb.cv

bb.cr:                                            ; preds = %bb.aq, %bb.am, %bb.aj
  unreachable

.body96.thread.i:                                 ; preds = %bb.cj, %.split.thread.i, %.body96.i
  %.pn84132.i = phi { ptr, i32 } [ %.pn82.i, %.body96.i ], [ %i.jc, %bb.cj ], [ %lpad.thr_comm.i, %.split.thread.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #17
          to label %bb.cs unwind label %bb.bu, !noalias !154

bb.cs:                                            ; preds = %.body96.thread.i, %bb.cm, %bb.ah
  %.pn86.ph.i = phi { ptr, i32 } [ %.pn84132.i, %.body96.thread.i ], [ %i.ea, %bb.ah ], [ %i.je, %bb.cm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #17
          to label %.body.thread unwind label %bb.bu, !noalias !154

.body:                                            ; preds = %bb.fc, %bb.ct, %.body231
  %.sroa.072.0 = phi i8 [ %.sroa.072.7, %.body231 ], [ %.sroa.074.1, %bb.ct ], [ %.sroa.074.9, %bb.fc ]
  %.sroa.074.0 = phi i8 [ %.sroa.074.7, %.body231 ], [ %.sroa.074.1, %bb.ct ], [ %.sroa.074.9, %bb.fc ] ; 2 uses
  %.pn156 = phi { ptr, i32 } [ %.pn154, %.body231 ], [ %i.jj, %bb.ct ], [ %i.pt, %bb.fc ] ; 2 uses
  %i.ji = trunc nuw i8 %.sroa.072.0 to i1
  br i1 %i.ji, label %.body.thread, label %bb.fi

bb.ct:                                            ; preds = %bb.fd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit118.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit.i170, %bb.af, %bb.ae, %bb.dz
  %.sroa.074.1 = phi i8 [ %.sroa.074.9, %bb.fd ], [ 0, %bb.dz ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit118.i ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit.i170 ] ; 2 uses
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !153
  %i.jk = icmp eq i64 %.sroa.030.i.sroa.0.0.copyload, -1
  br i1 %i.jk, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %.thread, %bb.cu
  %.sroa.8255.1327 = phi i64 [ 0, %.thread ], [ %.sroa.030.i.sroa.4.0.copyload, %bb.cu ]
  %.sroa.12257.1326 = phi ptr [ %.sroa.12257.0, %.thread ], [ %.sroa.030.i.sroa.5.0.copyload, %bb.cu ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14259, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14259)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  %.sroa.5311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5311.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.sroa.8, i64 24, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8255.1327, ptr %i.jl, align 8
  %.sroa.4310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12257.1326, ptr %.sroa.4310.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.sroa.8)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.invoke unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.thread352 unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.cy:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14259, i64 24, i1 false)
  %.sroa.14259.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.14259, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14259.48..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14259)
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

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.el, %bb.ei, %bb.dk, %bb.di, %bb.ep
  %lpad.loopexit.split-lp479 = landingpad { ptr, i32 }
          cleanup
  br label %.body182

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.da, %bb.et
  %lpad.loopexit365 = landingpad { ptr, i32 }
          cleanup
  br label %.body182

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread338, %bb.dl, %bb.dm, %bb.do, %bb.dp, %bb.cy, %bb.dc, %bb.df, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit190, %.thread333
  %.sroa.072.2.ph.ph.ph = phi i8 [ 0, %.thread338 ], [ 0, %bb.dl ], [ 0, %bb.dm ], [ 0, %bb.do ], [ 0, %bb.dp ], [ 0, %bb.df ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit190 ], [ 1, %bb.cy ], [ 0, %.thread333 ], [ 1, %bb.dc ]
  %.sroa.074.2.ph.ph.ph = phi i8 [ 0, %.thread338 ], [ 0, %bb.dl ], [ 0, %bb.dm ], [ 0, %bb.do ], [ 0, %bb.dp ], [ 0, %bb.df ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit190 ], [ 1, %bb.cy ], [ 0, %.thread333 ], [ 0, %bb.dc ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body182

.body182:                                         ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.de, %bb.db
  %.sroa.072.2.lpad-body = phi i8 [ 1, %bb.db ], [ 0, %bb.de ], [ %.sroa.072.2.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ 0, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.074.2.lpad-body = phi i8 [ 0, %bb.db ], [ 0, %bb.de ], [ %.sroa.074.2.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ 0, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body183 = phi { ptr, i32 } [ %i.kx, %bb.db ], [ %i.kz, %bb.de ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit365, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp479, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #17
          to label %.body210 unwind label %bb.fn

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.cy
  %.sroa.0260.0.copyload = load ptr, ptr %i.ak, align 8 ; 2 uses
  %.sroa.5262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.5262.0.copyload = load ptr, ptr %.sroa.5262.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.6263.0.copyload = load i64, ptr %.sroa.6263.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.8264.0.copyload = load i64, ptr %.sroa.8264.0..sroa_idx, align 8 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.8264.0.copyload, i64 %.sroa.6263.0.copyload)
  %exitcond.not471.not = icmp ult i64 %.sroa.6263.0.copyload, %.sroa.8264.0.copyload
  br i1 %exitcond.not471.not, label %.lr.ph.preheader, label %.thread328

.lr.ph.preheader:                                 ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0260.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5262.0.copyload) ]
  br label %.lr.ph

bb.cz:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit223
  %exitcond.not = icmp eq i64 %i.kb, %umax
  br i1 %exitcond.not, label %.thread328, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cz
  %.sroa.6263.0472 = phi i64 [ %i.kb, %bb.cz ], [ %.sroa.6263.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %i.kb = add i64 %.sroa.6263.0472, 1             ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0260.0.copyload, i64 %.sroa.6263.0472
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5262.0.copyload, i64 %.sroa.6263.0472
  %i.ke = load i64, ptr %i.kc, align 8, !noundef !4 ; 2 uses
  %i.kf = load i32, ptr %i.kd, align 4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 %i.ke, ptr %i.ae, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.kg = load i64, ptr %1, align 8, !range !5, !alias.scope !161, !noundef !4
  %i.kh = load i64, ptr %i.jz, align 8, !alias.scope !161, !noundef !4 ; 4 uses
  %i.ki = icmp sgt i64 %i.kh, -1
  call void @llvm.assume(i1 %i.ki)
  %i.kj = sub nsw i64 %i.kg, %i.kh
  %i.kk = icmp ugt i64 %i.kj, 8
  br i1 %i.kk, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit.thread, label %bb.da, !prof !6

bb.da:                                            ; preds = %.lr.ph
  %i.kl = invoke noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #14
          to label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit.thread: ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.km = load ptr, ptr %i.ka, align 8, !alias.scope !163, !nonnull !4, !noundef !4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kh
  store i64 %i.ke, ptr %i.kn, align 1, !noalias !163
  %i.ko = add nuw i64 %i.kh, 8                    ; 2 uses
  store i64 %i.ko, ptr %i.jz, align 8, !alias.scope !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.es

.thread328:                                       ; preds = %bb.cz, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit
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
          to label %bb.dc unwind label %bb.db

bb.db:                                            ; preds = %.thread328
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body182 unwind label %bb.dd

bb.dc:                                            ; preds = %.thread328
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.db
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.df unwind label %bb.de

bb.de:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body182 unwind label %bb.dg

bb.df:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dg:                                            ; preds = %bb.de
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit190: ; preds = %bb.df
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
          to label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit192 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit192: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit190
  %.sroa.0265.0.copyload = load ptr, ptr %i.ah, align 8 ; 2 uses
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.5267.0.copyload = load ptr, ptr %.sroa.5267.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.6269.0.copyload = load i64, ptr %.sroa.6269.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.8270.0.copyload = load i64, ptr %.sroa.8270.0..sroa_idx, align 8 ; 2 uses
  %umax415 = call i64 @llvm.umax.i64(i64 %.sroa.8270.0.copyload, i64 %.sroa.6269.0.copyload)
  %exitcond416.not473.not = icmp ult i64 %.sroa.6269.0.copyload, %.sroa.8270.0.copyload
  br i1 %exitcond416.not473.not, label %.lr.ph475.preheader, label %.thread333

.lr.ph475.preheader:                              ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0265.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5267.0.copyload) ]
  br label %.lr.ph475

bb.dh:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit220
  %exitcond416.not = icmp eq i64 %i.lk, %umax415
  br i1 %exitcond416.not, label %.thread333, label %.lr.ph475

.lr.ph475:                                        ; preds = %.lr.ph475.preheader, %bb.dh
  %.sroa.6269.0474 = phi i64 [ %i.lk, %bb.dh ], [ %.sroa.6269.0.copyload, %.lr.ph475.preheader ] ; 3 uses
  %i.lk = add i64 %.sroa.6269.0474, 1             ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0265.0.copyload, i64 %.sroa.6269.0474
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5267.0.copyload, i64 %.sroa.6269.0474
  %i.ln = load i64, ptr %i.ll, align 8, !noundef !4 ; 2 uses
  %i.lo = load i32, ptr %i.lm, align 4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %i.ln, ptr %i.ac, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.lp = load i64, ptr %1, align 8, !range !5, !alias.scope !164, !noundef !4
  %i.lq = load i64, ptr %i.jz, align 8, !alias.scope !164, !noundef !4 ; 4 uses
  %i.lr = icmp sgt i64 %i.lq, -1
  call void @llvm.assume(i1 %i.lr)
  %i.ls = sub nsw i64 %i.lp, %i.lq
  %i.lt = icmp ugt i64 %i.ls, 8
  br i1 %i.lt, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200.thread, label %bb.di, !prof !6

bb.di:                                            ; preds = %.lr.ph475
  %i.lu = invoke noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #14
          to label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200.thread: ; preds = %.lr.ph475
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.lv = load ptr, ptr %i.ka, align 8, !alias.scope !166, !nonnull !4, !noundef !4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lq
  store i64 %i.ln, ptr %i.lw, align 1, !noalias !166
  %i.lx = add nuw i64 %i.lq, 8                    ; 2 uses
  store i64 %i.lx, ptr %i.jz, align 8, !alias.scope !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.eo

.thread333:                                       ; preds = %bb.dh, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_mEECs31YAwBA1AlL_19xet_core_structures.exit192
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

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TmmEEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.thread333
  %.sroa.0271.0.copyload = load ptr, ptr %i.ag, align 8 ; 2 uses
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.5273.0.copyload = load ptr, ptr %.sroa.5273.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.6275.0.copyload = load i64, ptr %.sroa.6275.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.8276.0.copyload = load i64, ptr %.sroa.8276.0..sroa_idx, align 8 ; 2 uses
  %umax417 = call i64 @llvm.umax.i64(i64 %.sroa.8276.0.copyload, i64 %.sroa.6275.0.copyload)
  %exitcond418.not476.not = icmp ult i64 %.sroa.6275.0.copyload, %.sroa.8276.0.copyload
  br i1 %exitcond418.not476.not, label %.lr.ph478.preheader, label %.thread338

.lr.ph478.preheader:                              ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TmmEEECs31YAwBA1AlL_19xet_core_structures.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0271.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5273.0.copyload) ]
  br label %.lr.ph478

bb.dj:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit217
  %exitcond418.not = icmp eq i64 %i.mr, %umax417
  br i1 %exitcond418.not, label %.thread338, label %.lr.ph478

.lr.ph478:                                        ; preds = %.lr.ph478.preheader, %bb.dj
  %.sroa.6275.0477 = phi i64 [ %i.mr, %bb.dj ], [ %.sroa.6275.0.copyload, %.lr.ph478.preheader ] ; 3 uses
  %i.mr = add i64 %.sroa.6275.0477, 1             ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0271.0.copyload, i64 %.sroa.6275.0477
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5273.0.copyload, i64 %.sroa.6275.0477 ; 2 uses
  %i.mu = load i64, ptr %i.ms, align 8, !noundef !4 ; 2 uses
  %i.mv = load i32, ptr %i.mt, align 4, !noundef !4 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.mx = load i32, ptr %i.mw, align 4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %i.mu, ptr %i.aa, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.my = load i64, ptr %1, align 8, !range !5, !alias.scope !167, !noundef !4
  %i.mz = load i64, ptr %i.jz, align 8, !alias.scope !167, !noundef !4 ; 4 uses
  %i.na = icmp sgt i64 %i.mz, -1
  call void @llvm.assume(i1 %i.na)
  %i.nb = sub nsw i64 %i.my, %i.mz
  %i.nc = icmp ugt i64 %i.nb, 8
  br i1 %i.nc, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208.thread, label %bb.dk, !prof !6

bb.dk:                                            ; preds = %.lr.ph478
  %i.nd = invoke noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #14
          to label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208.thread: ; preds = %.lr.ph478
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.ne = load ptr, ptr %i.ka, align 8, !alias.scope !169, !nonnull !4, !noundef !4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.mz
  store i64 %i.mu, ptr %i.nf, align 1, !noalias !169
  %i.ng = add nuw i64 %i.mz, 8                    ; 2 uses
  store i64 %i.ng, ptr %i.jz, align 8, !alias.scope !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.eh

.thread338:                                       ; preds = %bb.dj, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TmmEEECs31YAwBA1AlL_19xet_core_structures.exit
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
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %.thread338
  store i64 %i.no, ptr %.sroa.16.0..sroa_idx, align 8
  %i.np = invoke noundef i64 @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard18materialized_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %2)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl
  store i64 %i.np, ptr %.sroa.17.0..sroa_idx, align 8
  %i.nq = invoke noundef i64 @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard12stored_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %2)
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dn:                                            ; preds = %bb.dm
  store i64 %i.nq, ptr %.sroa.18.0..sroa_idx, align 8
  store i64 %i.nn, ptr %.sroa.19.0..sroa_idx, align 8
  %.not142 = icmp eq i32 %4, -1
  br i1 %.not142, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nr = invoke noundef i64 @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard5utils17shard_expiry_time(i64 noundef %3, i32 noundef %4)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dp:                                            ; preds = %bb.dq, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RINvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_18MDBShardFileFooter9serializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtBa_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEEBa_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dq:                                            ; preds = %bb.do
  store i64 %i.nr, ptr %.sroa.15.0..sroa_idx, align 8
  br label %bb.dp

bb.dr:                                            ; preds = %bb.dp
  %i.ns = load i64, ptr %i.af, align 8, !range !145, !noundef !4 ; 2 uses
  %.not143 = icmp eq i64 %i.ns, -1
  br i1 %.not143, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
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
  br label %bb.ec

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.nu, ptr noundef nonnull align 8 dereferenceable(248) %i.as, i64 248, i1 false)
  store i64 0, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al)
          to label %bb.dv unwind label %bb.du

.body210:                                         ; preds = %bb.ed, %bb.du, %.body182
  %.sroa.072.3 = phi i8 [ %.sroa.072.2.lpad-body, %.body182 ], [ %.sroa.074.4, %bb.du ], [ %.sroa.074.9, %bb.ed ]
  %.sroa.074.3 = phi i8 [ %.sroa.074.2.lpad-body, %.body182 ], [ %.sroa.074.4, %bb.du ], [ %.sroa.074.9, %bb.ed ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body183, %.body182 ], [ %i.nv, %bb.du ], [ %i.ny, %bb.ed ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #17
          to label %.body226 unwind label %bb.fn

bb.du:                                            ; preds = %bb.ee, %bb.dt
  %.sroa.074.4 = phi i8 [ %.sroa.074.9, %bb.ee ], [ 0, %bb.dt ] ; 2 uses
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %.body210

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am)
          to label %bb.dx unwind label %bb.dw

.body226:                                         ; preds = %bb.ew, %bb.dw, %.body210
  %.sroa.072.5 = phi i8 [ %.sroa.072.3, %.body210 ], [ %.sroa.074.6, %bb.dw ], [ %.sroa.074.9, %bb.ew ]
  %.sroa.074.5 = phi i8 [ %.sroa.074.3, %.body210 ], [ %.sroa.074.6, %bb.dw ], [ %.sroa.074.9, %bb.ew ]
  %.pn152 = phi { ptr, i32 } [ %.pn, %.body210 ], [ %i.nw, %bb.dw ], [ %i.pp, %bb.ew ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #17
          to label %.body231 unwind label %bb.fn

bb.dw:                                            ; preds = %bb.ex, %bb.dv
  %.sroa.074.6 = phi i8 [ %.sroa.074.9, %bb.ex ], [ 0, %bb.dv ] ; 2 uses
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.body226

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an)
          to label %bb.dz unwind label %bb.dy

.body231:                                         ; preds = %bb.ez, %bb.dy, %.body226
  %.sroa.072.7 = phi i8 [ %.sroa.072.5, %.body226 ], [ %.sroa.074.8, %bb.dy ], [ %.sroa.074.9, %bb.ez ]
  %.sroa.074.7 = phi i8 [ %.sroa.074.5, %.body226 ], [ %.sroa.074.8, %bb.dy ], [ %.sroa.074.9, %bb.ez ]
  %.pn154 = phi { ptr, i32 } [ %.pn152, %.body226 ], [ %i.nx, %bb.dy ], [ %i.pr, %bb.ez ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #17
          to label %.body unwind label %bb.fn

bb.dy:                                            ; preds = %bb.fa, %bb.dx
  %.sroa.074.8 = phi i8 [ %.sroa.074.9, %bb.fa ], [ 0, %bb.dx ] ; 2 uses
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %.body231

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao)
          to label %bb.ea unwind label %bb.ct

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.b, %bb.ad, %bb.fk, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  ret void

bb.ec:                                            ; preds = %bb.eg, %bb.ej, %bb.en, %bb.ev, %bb.er, %bb.ds
  %.sroa.074.9 = phi i8 [ 1, %bb.ev ], [ 0, %bb.er ], [ 0, %bb.ds ], [ 0, %bb.en ], [ 0, %bb.ej ], [ 0, %bb.eg ] ; 13 uses
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.ee unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body210 unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.du

bb.ef:                                            ; preds = %bb.ed
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208: ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.not144 = icmp eq ptr %i.nd, null
  br i1 %.not144, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208._crit_edge, label %bb.eg

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208._crit_edge: ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208
  %.pre = load i64, ptr %i.jz, align 8, !alias.scope !170
  br label %bb.eh

bb.eg:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.oa, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.nd, ptr %.sroa.4117.0..sroa_idx, align 8
  br label %bb.ec

bb.eh:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208._crit_edge, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208.thread
  %i.ob = phi i64 [ %.pre, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208._crit_edge ], [ %i.ng, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit208.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i32 %i.mv, ptr %i.z, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.oc = load i64, ptr %1, align 8, !range !5, !alias.scope !170, !noundef !4
  %i.od = icmp sgt i64 %i.ob, -1
  call void @llvm.assume(i1 %i.od)
  %i.oe = sub nsw i64 %i.oc, %i.ob
  %i.of = icmp ugt i64 %i.oe, 4
  br i1 %i.of, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214.thread, label %bb.ei, !prof !6

bb.ei:                                            ; preds = %bb.eh
  %i.og = invoke noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 4) #14
          to label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214.thread: ; preds = %bb.eh
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.oh = load ptr, ptr %i.ka, align 8, !alias.scope !172, !nonnull !4, !noundef !4
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ob
  store i32 %i.mv, ptr %i.oi, align 1, !noalias !172
  %i.oj = add nuw i64 %i.ob, 4                    ; 2 uses
  store i64 %i.oj, ptr %i.jz, align 8, !alias.scope !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ek

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214: ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.not145 = icmp eq ptr %i.og, null
  br i1 %.not145, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214._crit_edge, label %bb.ej

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214._crit_edge: ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214
  %.pre419 = load i64, ptr %i.jz, align 8, !alias.scope !173
  br label %bb.ek

bb.ej:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ok, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.og, ptr %.sroa.4120.0..sroa_idx, align 8
  br label %bb.ec

bb.ek:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214._crit_edge, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214.thread
  %i.ol = phi i64 [ %.pre419, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214._crit_edge ], [ %i.oj, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit214.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i32 %i.mx, ptr %i.y, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.om = load i64, ptr %1, align 8, !range !5, !alias.scope !173, !noundef !4
  %i.on = icmp sgt i64 %i.ol, -1
  call void @llvm.assume(i1 %i.on)
  %i.oo = sub nsw i64 %i.om, %i.ol
  %i.op = icmp ugt i64 %i.oo, 4
  br i1 %i.op, label %bb.em, label %bb.el, !prof !6

bb.el:                                            ; preds = %bb.ek
  %i.oq = invoke noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 4) #14
          to label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit217 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.em:                                            ; preds = %bb.ek
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.or = load ptr, ptr %i.ka, align 8, !alias.scope !175, !nonnull !4, !noundef !4
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.ol
  store i32 %i.mx, ptr %i.os, align 1, !noalias !175
  %i.ot = add nuw i64 %i.ol, 4
  store i64 %i.ot, ptr %i.jz, align 8, !alias.scope !175
  br label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit217

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit217: ; preds = %bb.em, %bb.el
  %.sroa.0.0.i215 = phi ptr [ null, %bb.em ], [ %i.oq, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.not146 = icmp eq ptr %.sroa.0.0.i215, null
  br i1 %.not146, label %bb.dj, label %bb.en

bb.en:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit217
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ou, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i215, ptr %.sroa.4123.0..sroa_idx, align 8
  br label %bb.ec

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200: ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.not147 = icmp eq ptr %i.lu, null
  br i1 %.not147, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200._crit_edge, label %bb.er

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200._crit_edge: ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200
  %.pre420 = load i64, ptr %i.jz, align 8, !alias.scope !176
  br label %bb.eo

bb.eo:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200._crit_edge, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200.thread
  %i.ov = phi i64 [ %.pre420, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200._crit_edge ], [ %i.lx, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i32 %i.lo, ptr %i.ab, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.ow = load i64, ptr %1, align 8, !range !5, !alias.scope !176, !noundef !4
  %i.ox = icmp sgt i64 %i.ov, -1
  call void @llvm.assume(i1 %i.ox)
  %i.oy = sub nsw i64 %i.ow, %i.ov
  %i.oz = icmp ugt i64 %i.oy, 4
  br i1 %i.oz, label %bb.eq, label %bb.ep, !prof !6

bb.ep:                                            ; preds = %bb.eo
  %i.pa = invoke noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 4) #14
          to label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit220 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.pb = load ptr, ptr %i.ka, align 8, !alias.scope !178, !nonnull !4, !noundef !4
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ov
  store i32 %i.lo, ptr %i.pc, align 1, !noalias !178
  %i.pd = add nuw i64 %i.ov, 4
  store i64 %i.pd, ptr %i.jz, align 8, !alias.scope !178
  br label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit220

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit220: ; preds = %bb.eq, %bb.ep
  %.sroa.0.0.i218 = phi ptr [ null, %bb.eq ], [ %i.pa, %bb.ep ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.not148 = icmp eq ptr %.sroa.0.0.i218, null
  br i1 %.not148, label %bb.dh, label %bb.er

bb.er:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit220, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200
  %.sroa.0.0.i218.lcssa.sink = phi ptr [ %i.lu, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit200 ], [ %.sroa.0.0.i218, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit220 ]
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.pe, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i218.lcssa.sink, ptr %.sroa.4114.0..sroa_idx, align 8
  br label %bb.ec

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit: ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.not149 = icmp eq ptr %i.kl, null
  br i1 %.not149, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit._crit_edge, label %bb.ev

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit._crit_edge: ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit
  %.pre421 = load i64, ptr %i.jz, align 8, !alias.scope !179
  br label %bb.es

bb.es:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit._crit_edge, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit.thread
  %i.pf = phi i64 [ %.pre421, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit._crit_edge ], [ %i.ko, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i32 %i.kf, ptr %i.ad, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.pg = load i64, ptr %1, align 8, !range !5, !alias.scope !179, !noundef !4
  %i.ph = icmp sgt i64 %i.pf, -1
  call void @llvm.assume(i1 %i.ph)
  %i.pi = sub nsw i64 %i.pg, %i.pf
  %i.pj = icmp ugt i64 %i.pi, 4
  br i1 %i.pj, label %bb.eu, label %bb.et, !prof !6

bb.et:                                            ; preds = %bb.es
  %i.pk = invoke noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 4) #14
          to label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit223 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.eu:                                            ; preds = %bb.es
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.pl = load ptr, ptr %i.ka, align 8, !alias.scope !181, !nonnull !4, !noundef !4
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pf
  store i32 %i.kf, ptr %i.pm, align 1, !noalias !181
  %i.pn = add nuw i64 %i.pf, 4
  store i64 %i.pn, ptr %i.jz, align 8, !alias.scope !181
  br label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit223

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit223: ; preds = %bb.eu, %bb.et
  %.sroa.0.0.i221 = phi ptr [ null, %bb.eu ], [ %i.pk, %bb.et ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.not150 = icmp eq ptr %.sroa.0.0.i221, null
  br i1 %.not150, label %bb.cz, label %bb.ev

bb.ev:                                            ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit223, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit
  %.sroa.0.0.i221.lcssa.sink = phi ptr [ %i.kl, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit ], [ %.sroa.0.0.i221, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allB1f_.exit223 ]
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.po, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i221.lcssa.sink, ptr %.sroa.4108.0..sroa_idx, align 8
  br label %bb.ec

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.ex unwind label %bb.ew

bb.ew:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures.exit
  %i.pp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body226 unwind label %bb.ey

bb.ex:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmmEEECs31YAwBA1AlL_19xet_core_structures.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit228 unwind label %bb.dw

bb.ey:                                            ; preds = %bb.ew
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit228: ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.fa unwind label %bb.ez

bb.ez:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit228
  %i.pr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body231 unwind label %bb.fb

bb.fa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit228
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit233 unwind label %bb.dy

bb.fb:                                            ; preds = %bb.ez
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit233: ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.fd unwind label %bb.fc

bb.fc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit233
  %i.pt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body unwind label %bb.fe

bb.fd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit233
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit239 unwind label %bb.ct

bb.fe:                                            ; preds = %bb.fc
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit239: ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %5 = trunc nuw i8 %.sroa.074.9 to i1
  br i1 %5, label %bb.ff, label %6

6:                                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.fk

bb.ff:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit239
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.invoke unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.pv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.thread352 unwind label %bb.fh

.invoke:                                          ; preds = %bb.ff, %bb.cv
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %i.pw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.fi:                                            ; preds = %.body.thread, %.body
  %.sroa.074.10 = phi i8 [ %.sroa.074.0, %.body ], [ %.sroa.074.0360, %.body.thread ]
  %.pn158 = phi { ptr, i32 } [ %.pn156, %.body ], [ %.pn156361, %.body.thread ] ; 2 uses
  %i.px = trunc nuw i8 %.sroa.074.10 to i1
  br i1 %i.px, label %.thread352, label %common.resume

bb.fj:                                            ; preds = %.invoke
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %.thread352

bb.fk:                                            ; preds = %6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.eb

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit247 unwind label %bb.fl

bb.fl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit
  %i.pz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %common.resume unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures.exit247: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
  br label %bb.fk

bb.fn:                                            ; preds = %.thread352, %.body.thread, %.body231, %.body226, %.body210, %.body182
  %i.qb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

.body.thread:                                     ; preds = %bb.bs, %bb.cp, %bb.cs, %.body96.i, %.body
  %.pn156361 = phi { ptr, i32 } [ %.pn156, %.body ], [ %.pn82.i, %.body96.i ], [ %.pn86.ph.i, %bb.cs ], [ %i.jg, %bb.cp ], [ %i.gx, %bb.bs ]
  %.sroa.074.0360 = phi i8 [ %.sroa.074.0, %.body ], [ 1, %.body96.i ], [ 1, %bb.cs ], [ 1, %bb.cp ], [ 1, %bb.bs ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #17
          to label %bb.fi unwind label %bb.fn

.thread352:                                       ; preds = %bb.fj, %bb.fg, %bb.cw, %bb.fi
  %.pn158356 = phi { ptr, i32 } [ %.pn158, %bb.fi ], [ %i.jm, %bb.cw ], [ %i.py, %bb.fj ], [ %i.pv, %bb.fg ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq) #17
          to label %common.resume unwind label %bb.fn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16load_from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.2.i = alloca [24 x i8], align 8          ; 5 uses
  %i.q = alloca [200 x i8], align 8               ; 22 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.028 = alloca [80 x i8], align 8          ; 4 uses
  %i.t = alloca [208 x i8], align 8               ; 20 uses
  %.sroa.510.sroa.0 = alloca [80 x i8], align 8   ; 7 uses
  %i.u = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.5.sroa.0 = alloca [32 x i8], align 8     ; 6 uses
  %.sroa.013 = alloca [32 x i8], align 8          ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.028, i8 0, i64 32, i1 false)
  %.sroa.028.32..sroa_idx108 = getelementptr inbounds nuw i8, ptr %.sroa.028, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.028.32..sroa_idx108, i8 0, i64 48, i1 false)
  %i.v = tail call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek6rewindCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %.sroa.461.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB5_18MDBShardFileHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  %i.x = load i64, ptr %i.u, align 8, !range !7, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.469.0.copyload = load i64, ptr %.sroa.469.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.0, i64 32, i1 false)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.469.0.copyload, ptr %.sroa.471.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  br label %bb.ar

bb.e:                                             ; preds = %bb.c
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.565.0.copyload = load i64, ptr %.sroa.565.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.013, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  %i.ab = tail call { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 1, i64 noundef -200) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = extractvalue { i64, ptr } %i.ab, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.af, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %.sroa.473.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ar

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !186
  store i64 0, ptr %i.p, align 8, !noalias !186
  %i.ag = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.p, i64 noundef 8), !noalias !185 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !186
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 0, ptr %i.ah, align 8, !alias.scope !185
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.ag, ptr %.sroa.478.0..sroa_idx.i, align 8, !alias.scope !185
  br label %bb.ap

bb.i:                                             ; preds = %bb.g
  %.sroa.076.0.copyload.i = load i64, ptr %i.p, align 8, !noalias !186 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !186
  store i64 %.sroa.076.0.copyload.i, ptr %i.s, align 8, !noalias !186
  %i.ai = icmp eq i64 %.sroa.076.0.copyload.i, 1
  br i1 %i.ai, label %bb.j, label %.split.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !186
  store i64 0, ptr %i.o, align 8, !noalias !186
  %i.aj = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.o, i64 noundef 8), !noalias !185 ; 2 uses
  %.not192.i = icmp eq ptr %i.aj, null
  br i1 %.not192.i, label %bb.l, label %bb.k

.split.i:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !186
  store ptr @0, ptr %i.r, align 8, !noalias !186
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.483.0..sroa_idx.i, align 8, !noalias !186
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.ak, align 8, !noalias !186
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.487.0..sroa_idx.i, align 8, !noalias !186
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull @1, ptr noundef nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !186
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 4, ptr %i.al, align 8, !alias.scope !185
  br label %bb.ap

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !186
  br label %bb.ao

bb.l:                                             ; preds = %bb.j
  %.sroa.092.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !186
  store i64 0, ptr %i.n, align 8, !noalias !186
  %i.am = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.n, i64 noundef 8), !noalias !185 ; 2 uses
  %.not193.i = icmp eq ptr %i.am, null
  br i1 %.not193.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !186
  br label %bb.ao

bb.n:                                             ; preds = %bb.l
  %.sroa.095.0.copyload.i = load i64, ptr %i.n, align 8, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !186
  store i64 0, ptr %i.m, align 8, !noalias !186
  %i.an = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.m, i64 noundef 8), !noalias !185 ; 2 uses
  %.not194.i = icmp eq ptr %i.an, null
  br i1 %.not194.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !186
  br label %bb.ao

bb.p:                                             ; preds = %bb.n
  %.sroa.0101.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !186
  store i64 0, ptr %i.l, align 8, !noalias !186
  %i.ao = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.l, i64 noundef 8), !noalias !185 ; 2 uses
  %.not195.i = icmp eq ptr %i.ao, null
  br i1 %.not195.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !186
  br label %bb.ao

bb.r:                                             ; preds = %bb.p
  %.sroa.0107.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !186
  store i64 0, ptr %i.k, align 8, !noalias !186
  %i.ap = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.k, i64 noundef 8), !noalias !185 ; 2 uses
  %.not196.i = icmp eq ptr %i.ap, null
  br i1 %.not196.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !186
  br label %bb.ao

bb.t:                                             ; preds = %bb.r
  %.sroa.0113.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !186
end_hunk_1
