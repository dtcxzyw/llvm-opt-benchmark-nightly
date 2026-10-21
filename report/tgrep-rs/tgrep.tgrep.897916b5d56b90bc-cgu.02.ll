Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.02?download=true
inline.NumInlined: 782
inline.NumDeleted: 344
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsbNLsQi0JuJ4_5tgrep6search13resolve_scope:bb.a
          to label %bb.n unwind label %bb.m, !noalias !504

bb.m:                                             ; preds = %.noexc11
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #22
          to label %.body unwind label %bb.z, !noalias !504

bb.n:                                             ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !503
  %i.aw = load i64, ptr %i.f, align 8, !range !15, !alias.scope !505, !noalias !502, !noundef !6
  %i.ax = icmp eq i64 %i.aw, -1
  br i1 %i.ax, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.p, !noalias !504

bb.p:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i10 unwind label %bb.q, !noalias !504

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !504
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.r, !noalias !504

bb.r:                                             ; preds = %bb.u, %bb.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i10

.body.i10:                                        ; preds = %bb.r, %bb.p
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ba, %bb.r ], [ %i.ay, %bb.p ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #22
          to label %.body unwind label %bb.z, !noalias !504

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !502
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !502, !noundef !6 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.bc, 0
  br i1 %i.be, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.bf = invoke noundef zeroext i1 @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path7is_file(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.t unwind label %bb.r, !noalias !504

bb.t:                                             ; preds = %bb.s
  br i1 %i.bf, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !502
  store ptr %i.g, ptr %i.d, align 8, !noalias !502
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !502
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @21, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.r, !noalias !504

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !506
  br label %bb.ab

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !506
  br label %bb.w

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i
  %storemerge.i = phi i64 [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.x, !noalias !504

bb.x:                                             ; preds = %bb.w
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.y, !noalias !504

bb.y:                                             ; preds = %bb.x
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !504
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.w
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %.body.i10, %bb.m
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !504
  unreachable

bb.aa:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.l, %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %.body.i10, %bb.x, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.aa ], [ %i.bg, %bb.x ], [ %eh.lpad-body.i, %.body.i10 ], [ %i.av, %bb.m ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #22
          to label %common.resume unwind label %bb.ag

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.v
  %.sroa.015.0 = phi i64 [ 2, %bb.v ], [ %storemerge.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.015.0, ptr %.sroa.421.0..sroa_idx, align 8
  br label %bb.af

bb.ac:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.bk, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.ac
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %bb.af

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.ag:                                            ; preds = %.body
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtCsbNLsQi0JuJ4_5tgrep6search14passes_filters(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5_10TypeFilter7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvMs_NtCsbNLsQi0JuJ4_5tgrep11glob_filterNtB4_10GlobFilter7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search15read_text_lossy(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 0, 3) %3, ptr %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 9 uses
  %i.h = alloca [176 x i8], align 8               ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [4 x i8], align 4                 ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !528
  call void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File4openRNtNtB8_4path4PathECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !529
  %i.p = load i32, ptr %i.i, align 8, !range !23, !noalias !528, !noundef !6
  %i.q = trunc nuw i32 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.s = load i32, ptr %i.r, align 4, !range !24, !noalias !528 ; 4 uses
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.i.i = load ptr, ptr %i.t, align 8, !alias.scope !530, !noalias !528, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !531
  %i.u = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.c
    i64 0, label %bb.f
    i64 1, label %bb.d
  ], !prof !18

default.unreachable:                              ; preds = %bb.p, %bb.i, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.x = and i64 %i.u, 1095216660480
  %i.y = icmp ne i64 %i.x, 1095216660480
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.y)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %.val.i.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !532, !noalias !531
  store i8 3, ptr %i.d, align 8, !alias.scope !532, !noalias !531
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa), !noalias !533
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !528
  store i32 %i.s, ptr %i.j, align 4, !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !528
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j)
          to label %bb.h unwind label %bb.g, !noalias !529

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !528
  br label %bb.ak

bb.g:                                             ; preds = %.loopexit78.i, %bb.r, %bb.n, %bb.k, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.h:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.h, align 8, !range !16, !noalias !528, !noundef !6
  %i.ad = icmp eq i64 %i.ac, 2
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val52.i = load ptr, ptr %i.ae, align 8, !noalias !528, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !528
  %i.af = ptrtoint ptr %.val52.i to i64           ; 2 uses
  %i.ag = and i64 %i.af, 3
  switch i64 %i.ag, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %bb.j
    i64 0, label %bb.m
    i64 1, label %bb.k
  ], !prof !18

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp ult ptr %.val52.i, inttoptr (i64 188978561024 to ptr)
  %i.ai = and i64 %i.af, 1095216660480
  %i.aj = icmp ne i64 %i.ai, 1095216660480
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.assume(i1 %i.aj)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %.val52.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !534, !noalias !528
  store i8 3, ptr %i.c, align 8, !alias.scope !534, !noalias !528
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.m unwind label %bb.g, !noalias !529

bb.l:                                             ; preds = %bb.h
  %.sroa.425.sroa.12.0..sroa.425.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.sroa.425.sroa.12.0.copyload.i = load i64, ptr %.sroa.425.sroa.12.0..sroa.425.0..sroa_idx.sroa_idx.i, align 8, !noalias !528
  %i.am = icmp ult i64 %.sroa.425.sroa.12.0.copyload.i, 1048576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !528
  br i1 %i.am, label %bb.ag, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !528
  br label %bb.ag

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !528
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.an, align 8, !noalias !528
  store i64 0, ptr %i.e, align 8, !noalias !528
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %i.ao, align 8, !noalias !528
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  store i8 0, ptr %i.ap, align 2, !noalias !528
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 27
  store i8 0, ptr %i.aq, align 1, !noalias !528
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i8 0, ptr %i.ar, align 4, !noalias !528
  invoke void @_RINvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB6_11MmapOptions3mapRNtNtCs5Xr050g3D4S_3std2fs4FileECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j)
          to label %bb.o unwind label %bb.g, !noalias !529

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !528
  %i.as = load i64, ptr %i.f, align 8, !range !20, !noalias !528, !noundef !6
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !528 ; 5 uses
  br i1 %i.at, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !535
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = and i64 %i.aw, 3
  switch i64 %i.ax, label %default.unreachable [
    i64 2, label %bb.t
    i64 3, label %bb.q
    i64 0, label %bb.t
    i64 1, label %bb.r
  ], !prof !18

bb.q:                                             ; preds = %bb.p
  %i.ay = icmp ult ptr %i.av, inttoptr (i64 188978561024 to ptr)
  %i.az = and i64 %i.aw, 1095216660480
  %i.ba = icmp ne i64 %i.az, 1095216660480
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.assume(i1 %i.ba)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bb = getelementptr i8, ptr %i.av, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !536, !noalias !535
  store i8 3, ptr %i.b, align 8, !alias.scope !536, !noalias !535
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %bb.t unwind label %bb.g, !noalias !529

bb.s:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noalias !528 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !528
  store ptr %i.av, ptr %i.g, align 8, !noalias !528
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 %i.be, ptr %i.bf, align 8, !noalias !528
  %i.bg = invoke noundef zeroext i1 @_RNvNtCsbzNSmZPCnTx_10tgrep_core8encoding19borrows_whole_input(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.be, i64 noundef range(i64 0, 3) %3, ptr %4)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !529

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !528
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs3Hr4GOJ0UGa_7memmap24MmapECsbNLsQi0JuJ4_5tgrep.exit70.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs3Hr4GOJ0UGa_7memmap24MmapECsbNLsQi0JuJ4_5tgrep.exit70.i: ; preds = %.loopexit78.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !528
  br label %bb.ag

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %bb.ae, %bb.w, %bb.ad, %bb.s
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs3Hr4GOJ0UGa_7memmap22osNtB4_9MmapInnerNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.ai unwind label %bb.ah, !noalias !529

bb.u:                                             ; preds = %bb.s
  br i1 %i.bg, label %bb.v, label %.loopexit78.i

bb.v:                                             ; preds = %bb.u
  %i.bh = load ptr, ptr %i.g, align 8, !noalias !528, !noundef !6 ; 2 uses
  %i.bi = load i64, ptr %i.bf, align 8, !noalias !528, !noundef !6 ; 4 uses
  %.not31.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not31.i.i, label %bb.aj, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.w

bb.w:                                             ; preds = %_RINvNtNtNtCsbZZSDSnXQ8V_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNLsQi0JuJ4_5tgrep.exit.i.i, %.lr.ph.i.i
  %.sroa.02.026.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bw, %_RINvNtNtNtCsbZZSDSnXQ8V_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNLsQi0JuJ4_5tgrep.exit.i.i ] ; 5 uses
  %.sroa.09.025.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.sroa.09.1.i.i, %_RINvNtNtNtCsbZZSDSnXQ8V_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %.sroa.411.024.i.i = phi i64 [ undef, %.lr.ph.i.i ], [ %.sroa.411.1.i.i, %_RINvNtNtNtCsbZZSDSnXQ8V_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNLsQi0JuJ4_5tgrep.exit.i.i ] ; 2 uses
  %i.bl = add nuw i64 %.sroa.02.026.i.i, 1048576  ; 2 uses
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bi)
  %i.bn = sub nuw nsw i64 %i.bm, %.sroa.02.026.i.i ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.02.026.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !537
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bn)
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !529

.noexc65.i:                                       ; preds = %bb.w
  %i.bp = load i64, ptr %i.a, align 8, !range !20, !noalias !537, !noundef !6
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc65.i
  %i.br = load i8, ptr %i.bj, align 8, !range !8, !noalias !537, !noundef !6
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = icmp uge i64 %i.bl, %i.bi
  %or.cond.not.i.i = or i1 %i.bt, %i.bs
  br i1 %or.cond.not.i.i, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.z, %.noexc65.i
  %.sroa.013.0.i.i = phi i64 [ %i.bv, %bb.z ], [ %i.bn, %.noexc65.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !537
  %i.bu = icmp eq i64 %.sroa.013.0.i.i, 0
  br i1 %i.bu, label %.loopexit78.i, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.bv = load i64, ptr %i.bk, align 8, !noalias !537, !noundef !6
  br label %bb.y

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !537
  br label %.loopexit78.i

bb.ab:                                            ; preds = %bb.y
  %.not.i64.i = icmp eq i64 %.sroa.09.025.i.i, 1
  br i1 %.not.i64.i, label %_RINvNtNtNtCsbZZSDSnXQ8V_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNLsQi0JuJ4_5tgrep.exit.i.i, label %bb.ac

_RINvNtNtNtCsbZZSDSnXQ8V_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %.noexc68.i, %.noexc67.i, %bb.ab
  %.sroa.411.1.i.i = phi i64 [ %i.cf, %.noexc68.i ], [ %.sroa.411.024.i.i, %bb.ab ], [ %.sroa.411.024.i.i, %.noexc67.i ] ; 2 uses
  %.sroa.09.1.i.i = phi i64 [ 1, %.noexc68.i ], [ 1, %bb.ab ], [ 0, %.noexc67.i ] ; 2 uses
  %i.bw = add i64 %.sroa.013.0.i.i, %.sroa.02.026.i.i ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bi
  br i1 %i.bx, label %bb.w, label %.loopexit79.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  %.not19.i.i = icmp ugt i64 %.sroa.013.0.i.i, %i.bn
  br i1 %.not19.i.i, label %bb.ad, label %bb.ae, !prof !538

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.013.0.i.i, i64 noundef %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #26
          to label %.noexc66.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !529

.noexc66.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.013.0.i.i
  %i.bz = load atomic ptr, ptr @_RNvNvNtNtNtCsbZZSDSnXQ8V_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !539, !nonnull !6, !noundef !6
  %i.ca = invoke { i64, ptr } %i.bz(i8 noundef 0, ptr noundef nonnull readonly %i.bo, ptr noundef nonnull readonly %i.by)
          to label %.noexc67.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !529, !inline_history !524 ; 2 uses

.noexc67.i:                                       ; preds = %bb.ae
  %i.cb = extractvalue { i64, ptr } %i.ca, 0
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.af, label %_RINvNtNtNtCsbZZSDSnXQ8V_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNLsQi0JuJ4_5tgrep.exit.i.i

bb.af:                                            ; preds = %.noexc67.i
  %i.cd = extractvalue { i64, ptr } %i.ca, 1
  %i.ce = invoke noundef i64 @_RNvXNtCsbZZSDSnXQ8V_6memchr3extPhNtB2_7Pointer8distanceCsbNLsQi0JuJ4_5tgrep(ptr noundef %i.cd, ptr noundef nonnull readonly %i.bo)
          to label %.noexc68.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !529

.noexc68.i:                                       ; preds = %bb.af
  %i.cf = add i64 %i.ce, %.sroa.02.026.i.i
  br label %_RINvNtNtNtCsbZZSDSnXQ8V_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNLsQi0JuJ4_5tgrep.exit.i.i

.loopexit78.i:                                    ; preds = %bb.y, %bb.aa, %bb.u
  invoke void @_RNvXs_NtCs3Hr4GOJ0UGa_7memmap22osNtB4_9MmapInnerNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs3Hr4GOJ0UGa_7memmap24MmapECsbNLsQi0JuJ4_5tgrep.exit70.i unwind label %bb.g, !noalias !529

.loopexit79.loopexit.i:                           ; preds = %_RINvNtNtNtCsbZZSDSnXQ8V_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %.pre.i = load ptr, ptr %i.g, align 8, !noalias !528
  %.pre93.i = load i64, ptr %i.bf, align 8, !noalias !528
  br label %bb.aj

bb.ag:                                            ; preds = %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs3Hr4GOJ0UGa_7memmap24MmapECsbNLsQi0JuJ4_5tgrep.exit70.i, %bb.m
  %i.cg = call noundef i32 @close(i32 noundef %i.s) #25, !noalias !529 ; 0 uses
  br label %bb.ak

bb.ah:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !529
  unreachable

common.resume:                                    ; preds = %bb.as, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.ai ], [ %i.dd, %bb.as ]
  resume { ptr, i32 } %common.resume.op

bb.ai:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %lpad.loopexit.split-lp66, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ci = call noundef i32 @close(i32 noundef %i.s) #25, !noalias !529 ; 0 uses
  br label %common.resume

bb.aj:                                            ; preds = %.loopexit79.loopexit.i, %bb.v
  %i.cj = phi i64 [ 0, %bb.v ], [ %.pre93.i, %.loopexit79.loopexit.i ]
  %i.ck = phi ptr [ %i.bh, %bb.v ], [ %.pre.i, %.loopexit79.loopexit.i ]
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.v ], [ %.sroa.411.1.i.i, %.loopexit79.loopexit.i ]
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.v ], [ %.sroa.09.1.i.i, %.loopexit79.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !528
  %i.cl = call noundef i32 @close(i32 noundef %i.s) #25, !noalias !529 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !528
  store i64 %.sroa.0.0.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ck, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.cj, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.f, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvNtCs5Xr050g3D4S_3std2fs4readRNtNtB4_4path4PathECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.cm = load i64, ptr %i.o, align 8, !range !15, !noundef !6 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, -1
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  br i1 %i.cn, label %bb.am, label %bb.an

bb.al:                                            ; preds = %bb.aq, %bb.am, %bb.aj
  ret void

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %i.cq, align 8
  store i64 2, ptr %0, align 8
  br label %bb.al

bb.an:                                            ; preds = %bb.ak
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx20, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.cm, ptr %i.n, align 8
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.cp, ptr %.sroa.63.0..sroa_idx4, align 8
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.8.0..sroa_idx6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtCsbzNSmZPCnTx_10tgrep_core8encoding24decode_owned_with_fixups(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, i64 noundef %3, ptr %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cv
  %i.cx = load atomic ptr, ptr @_RNvNvNtNtNtCsbZZSDSnXQ8V_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !540, !nonnull !6, !noundef !6
  %i.cy = invoke { i64, ptr } %i.cx(i8 noundef 0, ptr noundef nonnull readonly %i.ct, ptr noundef nonnull readonly %i.cw)
          to label %.noexc unwind label %bb.ap, !inline_history !527 ; 2 uses

.noexc:                                           ; preds = %bb.an
  %i.cz = extractvalue { i64, ptr } %i.cy, 0
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %.noexc
  %i.db = extractvalue { i64, ptr } %i.cy, 1
  %i.dc = invoke noundef i64 @_RNvXNtCsbZZSDSnXQ8V_6memchr3extPhNtB2_7Pointer8distanceCsbNLsQi0JuJ4_5tgrep(ptr noundef %i.db, ptr noundef nonnull readonly %i.ct)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8encoding11LossyFixupsECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #22
          to label %bb.as unwind label %bb.ar

bb.aq:                                            ; preds = %.noexc, %bb.ao
  %.sroa.3.0.i = phi i64 [ undef, %.noexc ], [ %i.dc, %bb.ao ]
  %.sroa.0.0.i = phi i64 [ 0, %.noexc ], [ 1, %bb.ao ]
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.al

bb.ar:                                            ; preds = %bb.as, %bb.ap
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.as:                                            ; preds = %bb.ap
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #22
          to label %common.resume unwind label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtCsbNLsQi0JuJ4_5tgrep6search16within_max_depth(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(624) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.b = load i64, ptr %i.a, align 8, !range !20, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %.lr.ph.split.preheader.i.i.i.lr.ph.i, label %bb.g

.lr.ph.split.preheader.i.i.i.lr.ph.i:             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  br label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i.lr.ph.i
  %.sroa.0.028.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i.i.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.f = phi i64 [ 0, %.lr.ph.split.preheader.i.i.i.lr.ph.i ], [ %i.u, %bb.f ]
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i
  %i.g = phi i64 [ %i.u, %bb.d ], [ %i.f, %.lr.ph.split.preheader.i.i.i.i ] ; 5 uses
  %i.h = sub nuw i64 %1, %i.g                     ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 %i.g       ; 3 uses
  %i.j = icmp samesign ult i64 %i.h, 16
  br i1 %i.j, label %.preheader.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %1, %i.g
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbNLsQi0JuJ4_5tgrep.exit, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.k = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h), !noalias !552 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %.loopexit.i.i.i.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbNLsQi0JuJ4_5tgrep.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.c
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.011.i.i.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !553, !noalias !552, !noundef !6
  %i.q = icmp eq i8 %i.p, 47
  br i1 %i.q, label %.loopexit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbNLsQi0JuJ4_5tgrep.exit, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.m, %bb.b ], [ %.sroa.04.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.s = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.h
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i64 %i.g, 1
  %i.u = add i64 %i.t, %.sroa.5.0.i.i.i.i.i       ; 3 uses
  %.not12.i.i.i.i = icmp ugt i64 %i.u, %1
  %i.v = add i64 %.sroa.5.0.i.i.i.i.i, %i.g
  %or.cond.i.i.i.i.not = icmp ult i64 %i.v, %1
  br i1 %or.cond.i.i.i.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i.i
  br i1 %.not12.i.i.i.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbNLsQi0JuJ4_5tgrep.exit, label %.lr.ph.split.i.i.i.i

bb.e:                                             ; preds = %.loopexit.i.i.i.i
  %i.w = getelementptr i8, ptr %i.i, i64 %.sroa.5.0.i.i.i.i.i
  %lhsc = load i8, ptr %i.w, align 1
  %i.x = icmp eq i8 %lhsc, 47
  br i1 %i.x, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %.sroa.0.028.i, 1
  br label %.lr.ph.split.preheader.i.i.i.i

_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.preheader.i.i.i.i.i, %bb.b, %bb.d, %bb.c
  %i.z = icmp ult i64 %.sroa.0.028.i, %i.e
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.0.0 = phi i1 [ %i.z, %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbNLsQi0JuJ4_5tgrep.exit ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search17build_type_filter(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 384307168202282326) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 384307168202282326) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %7, i64 noundef range(i64 0, 384307168202282326) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = or i64 %4, %2
  %i.c = or i64 %i.b, %6
  %i.d = or i64 %i.c, %8
  %or.cond2 = icmp eq i64 %i.d, 0
  br i1 %or.cond2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB4_8TypeDefs7builtin(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a)
  %.idx = mul nuw nsw i64 %4, 24
end_hunk_0
