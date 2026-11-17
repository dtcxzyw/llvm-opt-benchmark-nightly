Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.140?download=true
inline.NumInlined: 290
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvNtCsl8OoimOLbh_6qdrant9snapshots21recover_full_snapshot:bb.a
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %common.resume unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant.exit.i, %bb.fe
  %common.resume.op = phi { ptr, i32 } [ %i.jv, %bb.fe ], [ %.pn.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant.exit.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit98: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECsl8OoimOLbh_6qdrant.exit95
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  ret void

.body53.thread121.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.en, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i105.us, %bb.es, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit110, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i105
  %lpad.loopexit.split-lp210 = landingpad { ptr, i32 }
          cleanup
  br label %.body53.thread

.body53.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.split.us, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit110.us, %bb.fj, %.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.fg:                                            ; preds = %bb.es
  %i.jx = load i64, ptr %i.ay, align 8, !range !10, !noundef !6
  %.not33 = icmp eq i64 %i.jx, -1
  br i1 %.not33, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i105 unwind label %.split139.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split139.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ep, %bb.fh
  %lpad.loopexit.split-lp206 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body53.thread unwind label %bb.fi

bb.fi:                                            ; preds = %.split139.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i105: ; preds = %bb.fh
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit110 unwind label %.body53.thread121.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fj:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.iz, i64 24, i1 false)
  invoke void @_RNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager13alias_mappingNtB4_16AliasPersistence6insert(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.be, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.au)
          to label %bb.fl unwind label %.body53.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit110: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store ptr %i.ba, ptr %i.ax, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.429.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #16
          to label %bb.fk unwind label %.body53.thread121.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit110
  unreachable

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.jz = load i32, ptr %i.aw, align 8, !range !335, !alias.scope !334, !noundef !6
  %.not.i52 = icmp eq i32 %i.jz, -1
  br i1 %.not.i52, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorE6unwrapCsl8OoimOLbh_6qdrant.exit, label %.split142.us, !prof !15

.split142.us:                                     ; preds = %bb.fl, %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.aw, i64 56, i1 false)
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 43, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #16
          to label %bb.fn unwind label %bb.fm, !noalias !334

bb.fm:                                            ; preds = %.split142.us
  %i.ka = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aj) #17
          to label %.critedge unwind label %bb.fo, !noalias !334

bb.fn:                                            ; preds = %.split142.us
  unreachable

bb.fo:                                            ; preds = %bb.fm
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !334
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorE6unwrapCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %.split

.body53.thread:                                   ; preds = %.body53.thread121.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split139.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body54116 = phi { ptr, i32 } [ %lpad.loopexit.split-lp206, %.split139.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp210, %.body53.thread121.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az) #17
          to label %bb.fq unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fs, %.critedge, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i71, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant.exit.i62, %.body58, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant.exit.i, %bb.fr, %bb.fq, %.body53.thread
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body55

.body55:                                          ; preds = %bb.dx, %.body.i69, %bb.fp, %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.fq:                                            ; preds = %.body53.thread
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba) #17
          to label %.critedge unwind label %bb.fp

bb.fr:                                            ; preds = %.body90
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #17
          to label %.body58 unwind label %bb.fp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECsl8OoimOLbh_6qdrant.exit: ; preds = %.body58
  %i.kd = trunc nuw i8 %.sroa.08.0 to i1
  br i1 %i.kd, label %bb.fs, label %.body

bb.fs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECsl8OoimOLbh_6qdrant.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ke)
          to label %.body unwind label %bb.fp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_itemINtB5_11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1r_8encoding8EncodingEENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.12 = alloca [7 x i8], align 1            ; 5 uses
  %i.c = icmp samesign ult i64 %2, 64
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %2, 9223372036854775744
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 3 uses
  %i.f = and i64 %2, 63                           ; 2 uses
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.sroa.01.028.i.i = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !370, !noalias !371
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.i, align 1, !alias.scope !370, !noalias !372
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.j, align 1, !alias.scope !370, !noalias !373
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.k, align 1, !alias.scope !370, !noalias !374
  %i.l = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i
  %i.m = or <2 x i64> %i.l, %.sroa.0.0.copyload.i10.i.i
  %i.n = or <2 x i64> %i.m, %.sroa.0.0.copyload.i11.i.i
  %i.o = bitcast <2 x i64> %i.n to <16 x i8>
  %i.p = icmp slt <16 x i8> %i.o, zeroinitializer
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.c, label %.loopexit191

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.t = icmp samesign eq i64 %i.f, 0
  br i1 %i.t, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %bb.d
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.e, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.w, align 1, !alias.scope !370, !noalias !375, !noundef !6
  %i.x = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.x, label %bb.d, label %.loopexit191

bb.e:                                             ; preds = %bb.a
  %i.y = and i64 %2, 56                           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 8 uses
  %i.aa = and i64 %2, 7                           ; 7 uses
  %i.ab = icmp samesign eq i64 %i.y, 0
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i.a

bb.f:                                             ; preds = %.lr.ph.i.a
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i, i64 8 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.z
  br i1 %i.ad, label %._crit_edge.i, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.e, %bb.f
  %.sroa.01.09.i = phi ptr [ %i.ac, %bb.f ], [ %1, %bb.e ] ; 2 uses
  %.sroa.03.0.copyload.i.a = load i64, ptr %.sroa.01.09.i, align 1, !alias.scope !376
  %i.ae = and i64 %.sroa.03.0.copyload.i.a, -9187201950435737472
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.f, label %.loopexit191

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.ag = icmp samesign eq i64 %i.aa, 0
  br i1 %i.ag, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218

bb.g:                                             ; preds = %.lr.ph218
  %i.ah = icmp samesign eq i64 %i.aa, 1
  br i1 %i.ah, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.1

.lr.ph218.1:                                      ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %.val.i.i.1 = load i8, ptr %i.ai, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.aj = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.aj, label %bb.h, label %.loopexit191

bb.h:                                             ; preds = %.lr.ph218.1
  %i.ak = icmp samesign eq i64 %i.aa, 2
  br i1 %i.ak, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.2

.lr.ph218.2:                                      ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %.val.i.i.2 = load i8, ptr %i.al, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.am = icmp sgt i8 %.val.i.i.2, -1
  br i1 %i.am, label %bb.i, label %.loopexit191

bb.i:                                             ; preds = %.lr.ph218.2
  %i.an = icmp samesign eq i64 %i.aa, 3
  br i1 %i.an, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.3

.lr.ph218.3:                                      ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %.val.i.i.3 = load i8, ptr %i.ao, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.ap = icmp sgt i8 %.val.i.i.3, -1
  br i1 %i.ap, label %bb.j, label %.loopexit191

bb.j:                                             ; preds = %.lr.ph218.3
  %i.aq = icmp samesign eq i64 %i.aa, 4
  br i1 %i.aq, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.4

.lr.ph218.4:                                      ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.val.i.i.4 = load i8, ptr %i.ar, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.as = icmp sgt i8 %.val.i.i.4, -1
  br i1 %i.as, label %bb.k, label %.loopexit191

bb.k:                                             ; preds = %.lr.ph218.4
  %i.at = icmp samesign eq i64 %i.aa, 5
  br i1 %i.at, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.5

.lr.ph218.5:                                      ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %.val.i.i.5 = load i8, ptr %i.au, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.av = icmp sgt i8 %.val.i.i.5, -1
  br i1 %i.av, label %bb.l, label %.loopexit191

bb.l:                                             ; preds = %.lr.ph218.5
  %i.aw = icmp samesign eq i64 %i.aa, 6
  br i1 %i.aw, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.6

.lr.ph218.6:                                      ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %.val.i.i.6 = load i8, ptr %i.ax, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.ay = icmp sgt i8 %.val.i.i.6, -1
  br i1 %i.ay, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.loopexit191

_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader: ; preds = %bb.d, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.lr.ph218.6, %._crit_edge.i.i, %._crit_edge.i
  br label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit

.lr.ph218:                                        ; preds = %._crit_edge.i
  %.val.i.i = load i8, ptr %i.z, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.az = icmp sgt i8 %.val.i.i, -1
  br i1 %i.az, label %bb.g, label %.loopexit191

.loopexit191:                                     ; preds = %.lr.ph.i.i, %.lr.ph, %.lr.ph.i.a, %.lr.ph218, %.lr.ph218.1, %.lr.ph218.2, %.lr.ph218.3, %.lr.ph218.4, %.lr.ph218.5, %.lr.ph218.6
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.n
  %.not.i.i = icmp ugt i64 %i.be, %2
  br i1 %.not.i.i, label %.loopexit, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit

_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, %bb.m
  %i.ba = phi i64 [ %i.be, %bb.m ], [ %2, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader ] ; 2 uses
  %i.bb = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr15memrchr_aligned(i8 noundef 59, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.ba), !noalias !378 ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit
  %i.be = extractvalue { i64, i64 } %i.bb, 1      ; 6 uses
  %i.bf = icmp ult i64 %i.be, %i.ba
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %lhsc.i = load i8, ptr %i.bg, align 1, !alias.scope !379
  %i.bh = icmp eq i8 %lhsc.i, 59
  br i1 %i.bh, label %bb.p, label %bb.m

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http5error10ParseErrorECsl8OoimOLbh_6qdrant.exit, %bb.aa, %bb.ad, %bb.ab, %bb.t, %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit.thread, %.loopexit191
  ret void

bb.p:                                             ; preds = %bb.n
  %i.bi = add nuw i64 %i.be, 1                    ; 2 uses
  %i.bj = sub nuw i64 %2, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %i.bl = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.be) ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0      ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1
  %i.bo = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bj) ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bo, 0      ; 8 uses
  %i.bq = extractvalue { ptr, i64 } %i.bo, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm), "nonnull"(ptr %i.bp) ]
  %i.br = icmp ult i64 %i.bq, 2
  br i1 %i.br, label %bb.t, label %bb.s

.loopexit:                                        ; preds = %bb.m, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit, %bb.x, %bb.ae
  %.sroa.060.0 = phi i16 [ %i.cz, %bb.ae ], [ 1000, %bb.x ], [ 1000, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit ], [ 1000, %bb.m ]
  %.sroa.32.0 = phi i64 [ %i.bn, %bb.ae ], [ %2, %bb.x ], [ %2, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit ], [ %2, %bb.m ]
  %.sroa.01.0 = phi ptr [ %i.bm, %bb.ae ], [ %1, %bb.x ], [ %1, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit ], [ %1, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.bs = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.32.0), !noalias !380 ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1      ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit
  %lhsc.i156 = load i8, ptr %i.bt, align 1, !noalias !380
  %i.bw = icmp eq i8 %lhsc.i156, 42
  br i1 %i.bw, label %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !381
  call void @_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header8encodingNtB5_8EncodingNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef %i.bu), !noalias !380
  %i.bx = load i64, ptr %i.b, align 8, !range !382, !noalias !381, !noundef !6 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8160.8.copyload161 = load i64, ptr %i.bz, align 8, !noalias !383 ; 4 uses
  %.sroa.11.8..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.11.8.copyload163 = load i8, ptr %.sroa.11.8..sroa_idx162, align 8, !noalias !383 ; 2 uses
  br i1 %i.by, label %bb.af, label %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit

_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.r
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx, i64 7, i1 false), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !381
  br label %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.ca = icmp eq i64 %i.bq, 2                    ; 2 uses
  br i1 %i.ca, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !384, !noundef !6
  %i.cd = icmp sgt i8 %i.cc, -65
  br i1 %i.cd, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.u, !prof !385

bb.t:                                             ; preds = %bb.p
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.35.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.o

bb.u:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.bq, i64 noundef 0, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #22
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.s, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.ce = load i16, ptr %i.bp, align 1
  %i.cf = icmp ne i16 %i.ce, 15729
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.x, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  br i1 %i.ca, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !386, !noundef !6
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.y, label %bb.z

bb.x:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  %i.cl = load i16, ptr %i.bp, align 1
  %i.cm = icmp ne i16 %i.cl, 15697
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.v, label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.cp = add i64 %i.bq, -2                       ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, 5
  br i1 %i.cq, label %bb.aa, label %.thread

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.bq, i64 noundef 2, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #22
  unreachable

.thread:                                          ; preds = %bb.v, %bb.y
  %i.cr = phi i64 [ %i.cp, %bb.y ], [ 0, %bb.v ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.ct = tail call i64 @_RNvXs1_NtNtCskKLDkoKarTP_4core3num11float_parsefNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr) #21 ; 2 uses
  %.sroa.5149.0.extract.shift = lshr i64 %i.ct, 32
  %.sroa.5149.0.extract.trunc = trunc nuw i64 %.sroa.5149.0.extract.shift to i32
  %i.cu = bitcast i32 %.sroa.5149.0.extract.trunc to float ; 3 uses
  %i.cv = trunc i64 %i.ct to i1
  br i1 %i.cv, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.38.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.o

bb.ab:                                            ; preds = %.thread
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.598.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.o

bb.ac:                                            ; preds = %.thread
  %i.cw = fcmp oge float %i.cu, 0.000000e+00
  %i.cx = fcmp ole float %i.cu, 1.000000e+00
  %spec.select.i = and i1 %i.cw, %i.cx
  br i1 %spec.select.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.5114.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.o

bb.ae:                                            ; preds = %bb.ac
  %i.cy = fmul nnan float %i.cu, 1.000000e+03
  %i.cz = tail call i16 @llvm.fptoui.sat.i16.f32(float %i.cy)
  br label %.loopexit

bb.af:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !381
  %i.da = inttoptr i64 %.sroa.8160.8.copyload161 to ptr ; 2 uses
  %i.db = icmp eq i8 %.sroa.11.8.copyload163, 10
  br i1 %i.db, label %bb.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http5error10ParseErrorECsl8OoimOLbh_6qdrant.exit

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.da) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !387
  %i.dc = and i64 %.sroa.8160.8.copyload161, 3
  switch i64 %i.dc, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i
    i64 3, label %bb.ah
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i
    i64 1, label %bb.ai
  ], !prof !11

default.unreachable:                              ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.dd = icmp ult i64 %.sroa.8160.8.copyload161, 188978561024
  tail call void @llvm.assume(i1 %i.dd)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.de = getelementptr i8, ptr %i.da, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.de, ptr %i.df, align 8, !alias.scope !388, !noalias !387
  store i8 3, ptr %i.a, align 8, !alias.scope !388, !noalias !387
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.df), !noalias !387
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i

end_hunk_0
