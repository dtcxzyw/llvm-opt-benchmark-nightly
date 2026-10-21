Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_message_backup-4250b6b8caaf551e.libsignal_message_backup.eef80394ae7480fa-cgu.00?download=true
inline.NumInlined: 1637
inline.NumDeleted: 452
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsc_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_7ContactNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes:bb.a
bb.ao:                                            ; preds = %bb.an
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !5, !noundef !5
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !5
  %i.dl = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream11write_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dk) ; 2 uses
  %.not119 = icmp eq ptr %i.dl, null
  br i1 %.not119, label %bb.ap, label %bb.j

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !5 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dp = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 23, i64 noundef %i.dn) ; 2 uses
  %.not120 = icmp eq ptr %i.dp, null
  br i1 %.not120, label %bb.ar, label %bb.j

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dr = load ptr, ptr %i.dq, align 8, !align !6, !noundef !5 ; 2 uses
  %.not121 = icmp eq ptr %i.dr, null
  br i1 %.not121, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ds = tail call noundef align 8 ptr @_RINvNtNtCsh1373Z0TDxr_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact4NameEB1o_(i32 noundef 24, ptr noundef nonnull align 8 %i.dr, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not122 = icmp eq ptr %i.ds, null
  br i1 %.not122, label %bb.at, label %bb.j

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !range !11, !noundef !5
  switch i64 %i.du, label %bb.av [
    i64 2, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.av, %bb.aw, %bb.at
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dw = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dv)
  br label %bb.j

bb.av:                                            ; preds = %bb.at
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = tail call noundef align 8 ptr @_RINvNtNtCsh1373Z0TDxr_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact13NotRegisteredEB1o_(i32 noundef 8, ptr noundef nonnull align 8 %i.dx, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not125 = icmp eq ptr %i.dy, null
  br i1 %.not125, label %bb.au, label %bb.j

bb.aw:                                            ; preds = %bb.at
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ea = tail call noundef align 8 ptr @_RINvNtNtCsh1373Z0TDxr_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEB1o_(i32 noundef 7, ptr noundef nonnull align 8 %i.dz, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not124 = icmp eq ptr %i.ea, null
  br i1 %.not124, label %bb.au, label %bb.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_7ContactNtNtCsh1373Z0TDxr_8protobuf7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !4, !alias.scope !1388, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  store i64 -1, ptr %i.a, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  store i64 -1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !range !4, !alias.scope !1389, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit53, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i49 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body50 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i49: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit53 unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i49
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %bb.g, %bb.i
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.j, %bb.g ]
  store i64 -1, ptr %i.g, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit53: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i49
  store i64 -1, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.n = load i64, ptr %i.m, align 8, !range !4, !alias.scope !1390, !noundef !5
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit53
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body54 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.body54:                                          ; preds = %bb.k, %bb.m
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.r, %bb.m ], [ %i.p, %bb.k ]
  store i64 -1, ptr %i.m, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit53, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  store i64 -1, ptr %i.m, align 8
  store i64 0, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i8 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val46 = load i64, ptr %i.u, align 8, !range !11, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val47 = load ptr, ptr %i.v, align 8           ; 4 uses
  %i.w = icmp eq i64 %.val46, 2
  %i.x = icmp eq ptr %.val47, null
  %or.cond.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i, label %bb.n, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val47)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i unwind label %common.resume.i.i

common.resume.i.i:                                ; preds = %.invoke.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val47, i64 noundef 32, i64 noundef 8) #19
  store i64 2, ptr %i.u, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i: ; preds = %.invoke.i.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val47, i64 noundef 32, i64 noundef 8) #19
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit
  store i64 2, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !4, !alias.scope !1391, !noundef !5
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit68, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i64 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body65 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i64: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit68 unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i64
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body65

.body65:                                          ; preds = %bb.p, %bb.r
  %eh.lpad-body66 = phi { ptr, i32 } [ %i.ae, %bb.r ], [ %i.ac, %bb.p ]
  store i64 -1, ptr %i.z, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit68: ; preds = %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i64
  store i64 -1, ptr %i.z, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 393
  store i8 0, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !4, !alias.scope !1392, !noundef !5
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit74, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit68
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i70 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body71 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i70: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit74 unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i70
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.body71:                                          ; preds = %bb.t, %bb.v
  %eh.lpad-body72 = phi { ptr, i32 } [ %i.al, %bb.v ], [ %i.aj, %bb.t ]
  store i64 -1, ptr %i.ag, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit74: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit68, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i70
  store i64 -1, ptr %i.ag, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 6 uses
  %i.an = load i64, ptr %i.am, align 8, !range !4, !alias.scope !1393, !noundef !5
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit80, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit74
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i76 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body77 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i76: ; preds = %bb.w
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit80 unwind label %bb.z

bb.z:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i76
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.body77:                                          ; preds = %bb.x, %bb.z
  %eh.lpad-body78 = phi { ptr, i32 } [ %i.ar, %bb.z ], [ %i.ap, %bb.x ]
  store i64 -1, ptr %i.am, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit80: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit74, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i76
  store i64 -1, ptr %i.am, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 394
  store i8 0, ptr %i.as, align 2
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.au = load i64, ptr %i.at, align 8, !range !4, !alias.scope !1394, !noundef !5
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit86, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit80
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i82 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body83 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i82: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit86 unwind label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i82
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body83

.body83:                                          ; preds = %bb.ab, %bb.ad
  %eh.lpad-body84 = phi { ptr, i32 } [ %i.ay, %bb.ad ], [ %i.aw, %bb.ab ]
  store i64 -1, ptr %i.at, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit86: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit80, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i82
  store i64 -1, ptr %i.at, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i32 0, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %.val43 = load ptr, ptr %i.ba, align 8, !align !6, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact4NameEEEB1D_(ptr %.val43)
          to label %bb.af unwind label %bb.ae

common.resume:                                    ; preds = %.body, %.body50, %.body54, %common.resume.i.i, %.body65, %.body71, %.body77, %.body83, %.body89, %bb.ak, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.ae ], [ %i.bp, %bb.ak ], [ %eh.lpad-body90, %.body89 ], [ %eh.lpad-body84, %.body83 ], [ %eh.lpad-body78, %.body77 ], [ %eh.lpad-body72, %.body71 ], [ %eh.lpad-body66, %.body65 ], [ %eh.lpad-body, %.body ], [ %i.y, %common.resume.i.i ], [ %eh.lpad-body55, %.body54 ], [ %eh.lpad-body51, %.body50 ]
  resume { ptr, i32 } %common.resume.op

bb.ae:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit86
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ba, align 8
  br label %common.resume

bb.af:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit86
  store ptr null, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.bi = load i64, ptr %i.bh, align 8, !range !4, !alias.scope !1395, !noundef !5
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit92, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i88 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body89 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RNvXsx_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_20DistributionListItemNtNtCsh1373Z0TDxr_8protobuf7message7Message10merge_from:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.v, %bb.r, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #22
  %i.ad = load i32, ptr %i.c, align 8, !range !16, !noundef !5
  %i.ae = trunc nuw i32 %i.ad to i1
  br i1 %i.ae, label %._crit_edge, label %bb.b

bb.o:                                             ; preds = %bb.u, %bb.q, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.af, %bb.q ], [ %i.ag, %bb.u ]
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22distribution_list_item4ItemEEB15_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.h)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.h, align 8
  store i64 %i.v, ptr %.sroa.646.0..sroa_idx47, align 8
  br label %bb.o

bb.r:                                             ; preds = %bb.p
  store i64 -1, ptr %i.h, align 8
  store i64 %i.v, ptr %.sroa.646.0..sroa_idx47, align 8
  br label %bb.n

bb.s:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.749)
  br label %.loopexit

bb.t:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.749, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.559.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22distribution_list_item4ItemEEB15_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.h)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store i64 %i.x, ptr %i.h, align 8
  store ptr %i.z, ptr %.sroa.646.0..sroa_idx47, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.749.0..sroa_idx50, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.749, i64 56, i1 false)
  br label %bb.o

bb.v:                                             ; preds = %bb.t
  store i64 %i.x, ptr %i.h, align 8
  store ptr %i.z, ptr %.sroa.646.0..sroa_idx47, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.749.0..sroa_idx50, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.749, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.749)
  br label %bb.n

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.b, %._crit_edge, %bb.s, %bb.h
  %.sroa.0.1 = phi ptr [ %i.r, %bb.h ], [ %i.k, %._crit_edge ], [ %i.z, %bb.s ], [ %i.o, %bb.d ], [ %i.u, %bb.f ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXsx_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_20DistributionListItemNtNtCsh1373Z0TDxr_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = or i64 %i.b, 1
  %i.f = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = trunc nuw nsw i64 %i.f to i8
  %.lhs.trunc.i = sub nuw nsw i8 70, %i.g
  %i.h = udiv i8 %.lhs.trunc.i, 7
  %.zext.i = zext nneg i8 %i.h to i64
  %i.i = add nuw i64 %i.b, 1
  %i.j = add nuw i64 %i.i, %.zext.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.j, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !9, !noundef !5
  switch i64 %i.l, label %bb.e [
    i64 -2, label %bb.d
    i64 -1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.sroa.0.1 = phi i64 [ %i.ae, %bb.f ], [ %.sroa.0.0, %bb.c ], [ %i.af, %bb.g ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = tail call noundef i64 @_RNvNtNtCsh1373Z0TDxr_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m)
  %i.o = add i64 %i.n, %.sroa.0.1                 ; 3 uses
  %i.p = icmp ult i64 %i.o, %.sroa.0.1
  br i1 %i.p, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.q = tail call noundef i64 @_RNvXsA_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_16DistributionListNtNtCsh1373Z0TDxr_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %i.k) ; 2 uses
  %i.r = or i64 %i.q, 1
  %i.s = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i8
  %.lhs.trunc = sub nuw nsw i8 70, %i.t
  %i.u = udiv i8 %.lhs.trunc, 7
  %.zext = zext nneg i8 %i.u to i64               ; 2 uses
  %i.v = add i64 %i.q, 1
  %i.w = add i64 %i.v, %.zext                     ; 2 uses
  %.not13 = icmp ugt i64 %i.w, %.zext
  br i1 %.not13, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  %i.z = or i64 %i.y, 1
  %i.aa = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %.lhs.trunc.i1.i = sub nuw nsw i8 70, %i.ab
  %i.ac = udiv i8 %.lhs.trunc.i1.i, 7
  %narrow.i = add nuw nsw i8 %i.ac, 1
  %i.ad = zext nneg i8 %narrow.i to i64
  %i.ae = add nuw i64 %.sroa.0.0, %i.ad
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.af = add i64 %i.w, %.sroa.0.0                ; 2 uses
  %i.ag = icmp ult i64 %i.af, %.sroa.0.0
  br i1 %i.ag, label %bb.i, label %bb.d

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #20
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ai = trunc i64 %i.o to i32
  tail call void @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.ah, i32 noundef %i.ai)
  ret i64 %i.o

bb.k:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXsx_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_20DistributionListItemNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream11write_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !9, !noundef !5
  switch i64 %i.i, label %bb.e [
    i64 -2, label %bb.d
    i64 -1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef align 8 ptr @_RINvNtNtCsh1373Z0TDxr_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup16DistributionListEB1m_(i32 noundef 3, ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not16 = icmp eq ptr %i.l, null
  br i1 %.not16, label %bb.d, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2, i64 noundef %i.n) ; 2 uses
  %.not15 = icmp eq ptr %i.o, null
  br i1 %.not15, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.o, %bb.f ], [ %i.l, %bb.e ], [ %i.g, %bb.b ], [ %i.k, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsx_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_20DistributionListItemNtNtCsh1373Z0TDxr_8protobuf7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(112) initializes((16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22distribution_list_item4ItemEEB15_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -2, ptr %i.b, align 8
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_RNvMNtCsh1373Z0TDxr_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10ChatFolderNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10ChatFolderNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10SendStatusNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10SendStatusNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11AccountDataNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11AccountDataNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11FilePointerNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11FilePointerNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11LinkPreviewNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11LinkPreviewNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11StickerPackNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11StickerPackNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12ReleaseNotesNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12ReleaseNotesNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup14ContactMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup14ContactMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup14IndividualCallNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup14IndividualCallNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup14StickerMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup14StickerMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup15GroupNameUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup15GroupNameUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup15StandardMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup15StandardMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup15ViewOnceMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup15ViewOnceMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup16DistributionListNtNtCsh1373Z0TDxr_8protobuf7message7Message11cached_sizeB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef i32 @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup16DistributionListNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
end_hunk_1
