Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syntax-43d35de622208d94.syntax.e5f0618c8c3ca174-cgu.06?download=true
inline.NumInlined: 516
inline.NumDeleted: 230
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1k_9generated5nodes4MetaEINtCsjpcu9PwIgok_8smallvec8SmallVecAB1Y_j1_ENCNvMsc_NtB1k_8node_extB1Y_14skip_cfg_attrs0EEB1m_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !252
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1H_9generated5nodes4MetaENCNvMsc_NtB1H_8node_extB2l_14skip_cfg_attrs0EINtCsjpcu9PwIgok_8smallvec8IntoIterAB2l_j1_EEEB1J_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EEEB1F_.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EEB1j_.exit.i8.i
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtB11_9edit_algo11apply_editss_0E0INtNtB1S_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 125000)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %..i8, 64          ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCsbSS6DM8SDEO_5alloc5sliceINtNtB7_3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable8BufGuardBN_E13with_capacityBR_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc5sliceINtNtB7_3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.l, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 64, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtBY_9edit_algo11apply_editss_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEEB1c_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEEB1c_.exit: ; preds = %bb.k, %bb.j, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.a, align 8, !range !12, !alias.scope !277, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %.val2.i, 0
  br i1 %i.m, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !278, !nonnull !4, !noundef !4
  %i.o = shl nuw i64 %.val2.i, 6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !279
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i = load i64, ptr %i.a, align 8, !range !12, !alias.scope !277, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %.val.i, 0
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEEB1c_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !278, !nonnull !4, !noundef !4
  %i.r = shl nuw i64 %.val.i, 6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !280
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEEB1c_.exit

common.resume:                                    ; preds = %bb.c, %bb.l, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.l, %bb.i ], [ %i.s, %bb.l ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.thread, %bb.c
  %i.s = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtB16_9edit_algo11apply_editss_0E0EB18_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 18014398509481984) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtB16_9edit_algo11apply_editss_0E0EB18_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtB16_9edit_algo11apply_editss_0E0EB18_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtB16_9edit_algo11apply_editss_0E0EB18_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.val13 = load ptr, ptr %4, align 8, !nonnull !4, !align !13, !noundef !4
  %i.n = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7sort_byNCNvNtBA_9edit_algo11apply_editss_0E0BC_(ptr nonnull %.val13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.04.0) #26 ; 2 uses
  %.val12 = load ptr, ptr %4, align 8, !nonnull !4, !align !13, !noundef !4
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7sort_byNCNvNtBA_9edit_algo11apply_editss_0E0BC_(ptr nonnull %.val12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.08.0) #26
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtB11_9edit_algo11apply_editss_0E0EB13_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %4, align 8, !nonnull !4, !align !13, !noundef !4
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7sort_byNCNvNtBA_9edit_algo11apply_editss_0E0BC_(ptr nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.04.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.08.0) #26
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtB11_9edit_algo11apply_editss_0E0EB13_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtB11_9edit_algo11apply_editss_0E0EB13_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtBY_9edit_algo11apply_editss_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i110 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i115 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dn, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dl, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtB15_9edit_algo11apply_editss_0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.ay, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtB15_9edit_algo11apply_editss_0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtB15_9edit_algo11apply_editss_0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph74, label %._crit_edge

.lr.ph74:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i.thread113, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.val8.i = load ptr, ptr %5, align 8, !alias.scope !302, !noalias !303, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7sort_byNCNvNtBA_9edit_algo11apply_editss_0E0BC_(ptr nonnull %.val8.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.o) #26, !noalias !304, !inline_history !285 ; 2 uses
  %.not81 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader48, label %.preheader49

.preheader49:                                     ; preds = %bb.k
  br i1 %.not81, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader49
  %smax = tail call i64 @llvm.smax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph

.preheader48:                                     ; preds = %bb.k
  br i1 %.not81, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i.thread113, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.preheader48
  %smax94 = tail call i64 @llvm.smax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph68

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.sroa.01.0.i.i64 = phi i64 [ %i.w, %bb.l ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %.sroa.01.0.i.i64
  %i.t = getelementptr [64 x i8], ptr %i.o, i64 %.sroa.01.0.i.i64
  %i.u = getelementptr i8, ptr %i.t, i64 -64
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7sort_byNCNvNtBA_9edit_algo11apply_editss_0E0BC_(ptr nonnull %.val8.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.u) #26, !noalias !304, !inline_history !285
  br i1 %i.v, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw nsw i64 %.sroa.01.0.i.i64, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i, label %.lr.ph

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %bb.m
  %.sroa.01.1.i.i67 = phi i64 [ %i.ab, %bb.m ], [ 2, %.lr.ph68.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %.sroa.01.1.i.i67
  %i.y = getelementptr [64 x i8], ptr %i.o, i64 %.sroa.01.1.i.i67
  %i.z = getelementptr i8, ptr %i.y, i64 -64
  %i.aa = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7sort_byNCNvNtBA_9edit_algo11apply_editss_0E0BC_(ptr nonnull %.val8.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.z) #26, !noalias !304, !inline_history !285
  br i1 %i.aa, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph68
  %i.ab = add nuw nsw i64 %.sroa.01.1.i.i67, 1    ; 2 uses
  %exitcond94.not = icmp eq i64 %i.ab, %smax94
  br i1 %exitcond94.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i, label %.lr.ph68

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph68
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i67, %.lr.ph68 ], [ %smax94, %bb.m ], [ %.sroa.01.0.i.i64, %.lr.ph ], [ %smax, %bb.l ] ; 5 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i.thread113: ; preds = %.preheader48
  br i1 %.not5.i115, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i110, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7reverseBy_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i
  %i.ad = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp ne i64 %i.ad, 0
  %or.cond.not = and i1 %.not.i.i, %i.r
  br i1 %or.cond.not, label %.lr.ph.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7reverseBy_.exit

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.n, i64 %.sroa.01.0)
  %i.ae = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtB15_9edit_algo11apply_editss_0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtB17_9edit_algo11apply_editss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32, !inline_history !285
  %i.af = shl nuw nsw i64 %..i37, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtB15_9edit_algo11apply_editss_0E0EB17_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7reverseBy_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEB14_.exit.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i.thread ], [ %.sroa.0.0.i.i111118122, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEB14_.exit.i.i ]
  %i.ah = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtB15_9edit_algo11apply_editss_0E0EB17_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i.thread113
  %i.aj = phi i64 [ %i.ad, %bb.n ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i.thread113 ]
  %.sroa.0.0.i.i111118122 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtB14_9edit_algo11apply_editss_0E0EB16_.exit.i.thread113 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %.sroa.0.0.i.i111118122
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ap, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.al = xor i64 %.sroa.0.017.i.i, -1
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.an = getelementptr [64 x i8], ptr %i.ak, i64 %i.al
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjJXvCMGntp8_6syntax(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 8)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEB14_.exit.i.i unwind label %bb.q, !noalias !304

bb.q:                                             ; preds = %.lr.ph.i.i36
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #28, !noalias !304
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEB14_.exit.i.i: ; preds = %.lr.ph.i.i36
  %i.ap = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7reverseBy_.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtB15_9edit_algo11apply_editss_0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7reverseBy_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ai, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7reverseBy_.exit ], [ %i.ag, %bb.p ], [ %i.ae, %bb.o ] ; 2 uses
  %i.aq = lshr i64 %.sroa.023.0, 1
  %i.ar = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.as = sub nsw i64 %factor, %i.aq
  %i.at = add nuw nsw i64 %i.ar, %factor
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = mul i64 %i.at, %.sroa.0.0
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false)
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph74, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtB18_9edit_algo11apply_editss_0E0EB1a_.exit
  %.sroa.02.173 = phi i64 [ %.sroa.02.0, %.lr.ph74 ], [ %i.az, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtB18_9edit_algo11apply_editss_0E0EB1a_.exit ] ; 2 uses
  %.sroa.023.172 = phi i64 [ %.sroa.023.0, %.lr.ph74 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtB18_9edit_algo11apply_editss_0E0EB1a_.exit ] ; 4 uses
  %i.az = add i64 %.sroa.02.173, -1               ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bb, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtB18_9edit_algo11apply_editss_0E0EB1a_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.172, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtB18_9edit_algo11apply_editss_0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.173, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtB18_9edit_algo11apply_editss_0E0EB1a_.exit ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bd, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.az
  %i.bf = load i64, ptr %i.be, align 8, !noundef !4 ; 3 uses
  %i.bg = lshr i64 %i.bf, 1                       ; 8 uses
  %i.bh = lshr i64 %.sroa.023.172, 1              ; 6 uses
  %i.bi = add nuw i64 %i.bg, %i.bh                ; 4 uses
  %i.bj = sub i64 %.sroa.09.0, %i.bi
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.bj ; 6 uses
  %i.bl = icmp samesign ugt i64 %i.bi, %3
  %i.bm = trunc i64 %.sroa.023.172 to i1
  %i.bn = or i64 %i.bf, %.sroa.023.172
  %i.bo = trunc i64 %i.bn to i1
  %or.cond3.i = or i1 %i.bl, %i.bo
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = trunc i64 %i.bf to i1
  br i1 %i.bp, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bq = shl nuw nsw i64 %i.bi, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtB18_9edit_algo11apply_editss_0E0EB1a_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bm, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.br = or i64 %i.bg, 1
  %i.bs = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.br, i1 true)
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 1
  %i.bv = xor i32 %i.bu, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtB17_9edit_algo11apply_editss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bk, i64 noundef range(i64 0, 144115188075855872) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32, !inline_history !286
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.bk, i64 %i.bg
  %i.bx = or i64 %i.bh, 1
  %i.by = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtB17_9edit_algo11apply_editss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 144115188075855872) %i.bh, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32, !inline_history !286
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  %i.cc = icmp eq i64 %i.bg, 0
  %i.cd = icmp eq i64 %i.bh, 0
  %or.cond.i = or i1 %i.cd, %i.cc
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtBZ_9edit_algo11apply_editss_0E0EB11_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 range(i64 0, -9223372036854775808) %i.bg) ; 2 uses
  %i.ce = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ce, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtBZ_9edit_algo11apply_editss_0E0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.bk, i64 %i.bg ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bg, %i.bh  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cf, ptr %i.bk
  %i.cg = shl nuw nsw i64 %..i.i, 6               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cg, i1 false), !alias.scope !305
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.co, %.noexc.i ], [ %i.cf, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cq, %.noexc.i ], [ %i.ch, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cl, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -64 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -64 ; 3 uses
  %i.ck = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7sort_byNCNvNtBA_9edit_algo11apply_editss_0E0BC_(ptr nonnull readonly %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ci) #26
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -64 ; 2 uses
  %..i18.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cl, ptr noundef nonnull align 8 dereferenceable(64) %..i18.i, i64 64, i1 false), !alias.scope !305, !noalias !306
  %i.cm = xor i1 %i.ck, true
  %i.cn = zext i1 %i.cm to i64
  %i.co = getelementptr inbounds nuw [64 x i8], ptr %i.ci, i64 %i.cn ; 3 uses
  %i.cp = zext i1 %i.ck to i64
  %i.cq = getelementptr inbounds nuw [64 x i8], ptr %i.cj, i64 %i.cp ; 3 uses
  %i.cr = icmp eq ptr %i.co, %i.bk
  %i.cs = icmp eq ptr %i.cq, %2
  %or.cond.i.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtB1c_9edit_algo11apply_editss_0E0EB1e_.exit.i, label %.preheader

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.cz, %.noexc21.i ], [ %i.bk, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.cw, %.noexc21.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cy, %.noexc21.i ], [ %i.cf, %.critedge.i ] ; 3 uses
  %i.ct = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsjJXvCMGntp8_6syntax13syntax_editor6Change7sort_byNCNvNtBA_9edit_algo11apply_editss_0E0BC_(ptr nonnull readonly %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.02.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0.i34) #26
          to label %.noexc21.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.cu = xor i1 %i.ct, true
  %.sroa.05.0.i.i = select i1 %i.ct, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.05.0.i.i, i64 64, i1 false), !alias.scope !305, !noalias !307
  %i.cv = zext i1 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.i34, i64 %i.cv ; 3 uses
  %i.cx = zext i1 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.02.i.i, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 64 ; 2 uses
  %i.da = icmp ne ptr %i.cw, %i.ch
  %i.db = icmp ne ptr %i.cy, %i.m
end_hunk_0
begin_hunk_1_@_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2t_3api10SyntaxNodeNtNtBZ_11syntax_node12RustLanguageEINtB3i_11SyntaxTokenB3E_EEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1R_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceBZ_:bb.a
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2q_3api10SyntaxNodeNtNtBW_11syntax_node12RustLanguageEINtB3f_11SyntaxTokenB3B_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0BW_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !782, !nonnull !4, !noundef !4
  %i.h = shl nuw i64 %.val.i.i.i, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !784
  br label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2q_3api10SyntaxNodeNtNtBW_11syntax_node12RustLanguageEINtB3f_11SyntaxTokenB3B_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0BW_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1k_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB29_11SyntaxTokenB2v_EEEEB2z_.exit.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2q_3api10SyntaxNodeNtNtBW_11syntax_node12RustLanguageEINtB3f_11SyntaxTokenB3B_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0BW_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB2i_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1N_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B3d_B3b_6parentENvYINtNtB3f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB1P_7convert4FromB3b_E4fromEEEINtB2_10SpecExtendBR_INtNtB1L_10filter_map9FilterMapINtNtB3f_13utility_types13TokenAtOffsetB1G_ENCINvBU_9kmerge_byB6W_NCNvNtB4K_4algo19ancestors_at_offsets_0E0EE11spec_extendB4K_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBK_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1z_11SyntaxTokenB1U_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1B_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B31_B2Z_6parentENvYINtNtB33_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB1D_7convert4FromB2Z_E4fromEEENtNtNtB1D_3ops4drop4Drop4dropB4y_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1G_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsbSS6DM8SDEO_5alloc5sliceINtNtB7_3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable8BufGuardBN_E13with_capacityBR_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc5sliceINtNtB7_3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBR_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtB1u_9edit_algo11apply_editss_0E0EB1w_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 144115188075855872), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 144115188075855872), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEENCNvMNtNtB2v_13syntax_editor7mappingNtB3q_13SyntaxMapping11add_mapping0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4v_8for_each4callTB1M_NtB3q_12MappingEntryENCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB68_7HashMapB1M_B5D_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB4z_7collect6ExtendB5y_E6extendBN_E0E0EB2v_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB2C_13syntax_editor7mapping12MappingEntryENCNvMB3r_NtB3r_13SyntaxMapping5merge0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4N_8for_each4callTB1T_B3p_ENCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6a_7HashMapB1T_B3p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB4R_7collect6ExtendB5Q_E6extendBN_E0E0EB2C_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCscFGNKo4Sl5v_9itertools11kmerge_implNCNvNtCsjJXvCMGntp8_6syntax4algo19ancestors_at_offsets_0INtB5_15KMergePredicateINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtBO_11syntax_node12RustLanguageEE11kmerge_predBO_(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationEB1D_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2_10EquivalentBq_E10equivalentB19_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs3_NtCsjJXvCMGntp8_6syntax13syntax_editorNtB5_6Change13target_parent(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsc_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Meta14skip_cfg_attrs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef range(i64 0, 6), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs3_NtCsjJXvCMGntp8_6syntax13syntax_editorNtB5_6Change12target_range(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #14

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #21

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCscAsMj0W7j8b_3std7process5abort() unnamed_addr #24

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjJXvCMGntp8_6syntax(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4MetaENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint }
attributes #27 = { cold }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { noinline noreturn }
attributes #32 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", i32 1, i32 1999}
!8 = !{!"branch_weights", i32 0, i32 1}
!9 = !{!"branch_weights", i32 2002, i32 2000}
!10 = !{i64 0, i64 3}
!11 = !{i64 0, i64 2}
!12 = !{i64 0, i64 -9223372036854775808}
!13 = !{i64 8}
!14 = !{i64 0, i64 -9223372036854775807}
!15 = !{i8 0, i8 2}
!16 = !{i64 0, i64 6}
!17 = distinct !{!17, !"_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0EB1z_"}
!18 = distinct !{!18, !17, !"_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0EB1z_: argument 0"}
!19 = distinct !{!19, !"_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!20 = distinct !{!20, !19, !"_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!21 = distinct !{!21, !17, !"_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0EB1z_: argument 1"}
!22 = distinct !{!22, !19, !"_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!23 = distinct !{!23, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!24 = distinct !{!24, !23, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!25 = distinct !{!25, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0B1B_"}
!26 = distinct !{!26, !25, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0B1B_: argument 0"}
!27 = !{!18}
!28 = !{!20}
!29 = !{!20, !18}
!30 = !{!22, !21}
!31 = !{!24, !20, !22, !18}
!32 = !{!26, !20, !22, !18}
!33 = distinct !{!33, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax"}
!34 = distinct !{!34, !33, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 0"}
!35 = distinct !{!35, !33, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 2"}
!36 = distinct !{!36, !33, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 1"}
!37 = distinct !{!37, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax"}
!38 = distinct !{!38, !37, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 0"}
!39 = distinct !{!39, !37, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 2"}
!40 = distinct !{!40, !37, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 1"}
!41 = distinct !{!41, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECsjJXvCMGntp8_6syntax"}
!42 = distinct !{!42, !41, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECsjJXvCMGntp8_6syntax: argument 0"}
!43 = distinct !{!43, !"_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax"}
!44 = distinct !{!44, !43, !"_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax: argument 0"}
!45 = distinct !{!45, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1B_13syntax_editor7mapping12MappingEntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2o_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0B1B_"}
!46 = distinct !{!46, !45, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1B_13syntax_editor7mapping12MappingEntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2o_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0B1B_: argument 1"}
!47 = distinct !{!47, !45, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1B_13syntax_editor7mapping12MappingEntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2o_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0B1B_: argument 0"}
!48 = distinct !{!48, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!49 = distinct !{!49, !48, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!50 = !{!34}
!51 = !{!36, !35}
!52 = !{!34, !36, !35}
!53 = !{!38}
!54 = !{!38, !40, !39, !34, !36, !35}
!55 = !{!39, !35}
!56 = !{!38, !34}
!57 = !{!40, !39, !36, !35}
!58 = !{!42}
!59 = !{!44}
!60 = !{!44, !42}
!61 = !{!44, !42, !39, !35}
!62 = !{!46}
!63 = !{!47, !39, !35}
!64 = !{!47, !46, !39, !35}
!65 = !{!49}
!66 = distinct !{!66, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax"}
!67 = distinct !{!67, !66, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 0"}
!68 = distinct !{!68, !66, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 2"}
!69 = distinct !{!69, !66, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 1"}
!70 = distinct !{!70, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax"}
!71 = distinct !{!71, !70, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 0"}
!72 = distinct !{!72, !70, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 2"}
!73 = distinct !{!73, !70, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 1"}
!74 = distinct !{!74, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECsjJXvCMGntp8_6syntax"}
!75 = distinct !{!75, !74, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECsjJXvCMGntp8_6syntax: argument 0"}
!76 = distinct !{!76, !"_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax"}
!77 = distinct !{!77, !76, !"_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax: argument 0"}
!78 = distinct !{!78, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0B1B_"}
!79 = distinct !{!79, !78, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0B1B_: argument 1"}
!80 = distinct !{!80, !78, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0B1B_: argument 0"}
!81 = distinct !{!81, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!82 = distinct !{!82, !81, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!83 = !{!67}
!84 = !{!69, !68}
!85 = !{!67, !69, !68}
!86 = !{!71}
!87 = !{!71, !73, !72, !67, !69, !68}
!88 = !{!72, !68}
!89 = !{!71, !67}
!90 = !{!73, !72, !69, !68}
!91 = !{!75}
!92 = !{!77}
!93 = !{!77, !75}
!94 = !{!77, !75, !72, !68}
!95 = !{!79}
!96 = !{!80, !72, !68}
!97 = !{!80, !79, !72, !68}
!98 = !{!82}
!99 = distinct !{!99, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax"}
!100 = distinct !{!100, !99, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 0"}
!101 = distinct !{!101, !99, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 2"}
!102 = distinct !{!102, !99, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 1"}
!103 = distinct !{!103, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax"}
!104 = distinct !{!104, !103, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 0"}
!105 = distinct !{!105, !103, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 2"}
!106 = distinct !{!106, !103, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 1"}
!107 = distinct !{!107, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECsjJXvCMGntp8_6syntax"}
!108 = distinct !{!108, !107, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECsjJXvCMGntp8_6syntax: argument 0"}
!109 = distinct !{!109, !"_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax"}
!110 = distinct !{!110, !109, !"_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax: argument 0"}
!111 = distinct !{!111, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0B1B_"}
!112 = distinct !{!112, !111, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0B1B_: argument 1"}
!113 = distinct !{!113, !111, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0B1B_: argument 0"}
!114 = distinct !{!114, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!115 = distinct !{!115, !114, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!116 = !{!100}
!117 = !{!102, !101}
!118 = !{!100, !102, !101}
!119 = !{!104}
!120 = !{!104, !106, !105, !100, !102, !101}
!121 = !{!105, !101}
!122 = !{!104, !100}
!123 = !{!106, !105, !102, !101}
!124 = !{!108}
!125 = !{!110}
!126 = !{!110, !108}
!127 = !{!110, !108, !105, !101}
!128 = !{!112}
!129 = !{!113, !105, !101}
!130 = !{!113, !112, !105, !101}
!131 = !{!115}
!132 = distinct !{!132, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax"}
!133 = distinct !{!133, !132, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 0"}
!134 = distinct !{!134, !132, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 2"}
!135 = distinct !{!135, !132, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 1"}
!136 = distinct !{!136, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax"}
!137 = distinct !{!137, !136, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 0"}
!138 = distinct !{!138, !136, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 2"}
!139 = distinct !{!139, !136, !"_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECsjJXvCMGntp8_6syntax: argument 1"}
!140 = distinct !{!140, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECsjJXvCMGntp8_6syntax"}
!141 = distinct !{!141, !140, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECsjJXvCMGntp8_6syntax: argument 0"}
!142 = distinct !{!142, !"_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax"}
!143 = distinct !{!143, !142, !"_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax: argument 0"}
!144 = distinct !{!144, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2q_3api10SyntaxNodeNtNtBW_11syntax_node12RustLanguageEINtB3f_11SyntaxTokenB3B_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0BW_"}
!145 = distinct !{!145, !144, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2q_3api10SyntaxNodeNtNtBW_11syntax_node12RustLanguageEINtB3f_11SyntaxTokenB3B_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0BW_: argument 1"}
!146 = distinct !{!146, !144, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2q_3api10SyntaxNodeNtNtBW_11syntax_node12RustLanguageEINtB3f_11SyntaxTokenB3B_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0E0BW_: argument 0"}
!147 = distinct !{!147, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!148 = distinct !{!148, !147, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!149 = !{!133}
!150 = !{!135, !134}
!151 = !{!133, !135, !134}
!152 = !{!137}
!153 = !{!137, !139, !138, !133, !135, !134}
!154 = !{!138, !134}
!155 = !{!137, !133}
!156 = !{!139, !138, !135, !134}
!157 = !{!141}
!158 = !{!143}
!159 = !{!143, !141}
!160 = !{!143, !141, !138, !134}
!161 = !{!145}
!162 = !{!146, !138, !134}
end_hunk_1
