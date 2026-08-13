inline.NumInlined: 955
inline.NumDeleted: 485
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCsh8eZTKRCwoO_3std6thread9lifecycle15spawn_uncheckedNCNCNvNtCskAlUH1kY1DR_10polars_ooc10spill_file13SPILL_CLEANER00uEB14_:bb.a
  %i.dm = trunc nuw i8 %.sroa.017.068 to i1, !dbg !7846
  br i1 %i.dm, label %bb.bb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6scoped9ScopeDataEEECskAlUH1kY1DR_10polars_ooc.exit, !dbg !7846

.body36.thread:                                   ; preds = %bb.n, %bb.f, %.body36
  %.pn2973 = phi { ptr, i32 } [ %.pn29, %.body36 ], [ %i.bc, %bb.n ], [ %i.w, %bb.f ]
  %.sroa.018.071 = phi i1 [ %.sroa.018.0, %.body36 ], [ true, %bb.n ], [ true, %bb.f ]
  %.sroa.017.069 = phi i8 [ %.sroa.017.0, %.body36 ], [ 1, %bb.n ], [ 1, %bb.f ]
  invoke void @_RNvXsi_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_8ReceiverNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvNtCskAlUH1kY1DR_10polars_ooc10spill_file13SPILL_CLEANER00EBO_.exit unwind label %bb.az, !dbg !8101

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6scoped9ScopeDataEEECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.bc, %bb.bb, %bb.bd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvNtCskAlUH1kY1DR_10polars_ooc10spill_file13SPILL_CLEANER00EBO_.exit
  br i1 %.sroa.018.070, label %bb.bf, label %bb.be, !dbg !7846

bb.bb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvNtCskAlUH1kY1DR_10polars_ooc10spill_file13SPILL_CLEANER00EBO_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !8105), !dbg !7846
  %i.dn = load ptr, ptr %i.l, align 8, !dbg !8108, !alias.scope !8105, !noundef !16 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null, !dbg !8108
  br i1 %i.do, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6scoped9ScopeDataEEECskAlUH1kY1DR_10polars_ooc.exit, label %bb.bc, !dbg !8108

bb.bc:                                            ; preds = %bb.bb
  %i.dp = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !dbg !8110, !noalias !8115
  %i.dq = icmp eq i64 %i.dp, 1, !dbg !8120
  br i1 %i.dq, label %bb.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6scoped9ScopeDataEEECskAlUH1kY1DR_10polars_ooc.exit, !dbg !8120

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !8121
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6scoped9ScopeDataE9drop_slowCs4BcJZGCY6Ba_10rayon_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #33
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6scoped9ScopeDataEEECskAlUH1kY1DR_10polars_ooc.exit unwind label %bb.az, !dbg !8123

bb.be:                                            ; preds = %bb.bf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6scoped9ScopeDataEEECskAlUH1kY1DR_10polars_ooc.exit
  resume { ptr, i32 } %.pn2972, !dbg !8100

bb.bf:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6scoped9ScopeDataEEECskAlUH1kY1DR_10polars_ooc.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %1) #37
          to label %bb.be unwind label %bb.az, !dbg !7846
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB19_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEECskAlUH1kY1DR_10polars_ooc(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !8124 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8125 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !8139, !range !28, !noundef !16
  store i8 2, ptr %i.a, align 1, !dbg !8142
  %i.c = icmp eq i8 %i.b, 1, !dbg !8144
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE0ECskAlUH1kY1DR_10polars_ooc.exit, !dbg !8144

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8145), !dbg !8148
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8151), !dbg !8154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8156), !dbg !8159
  %i.d = load ptr, ptr %0, align 8, !dbg !8161, !alias.scope !8163, !noundef !16 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !8161
  br i1 %i.e, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE0ECskAlUH1kY1DR_10polars_ooc.exit, label %bb.c, !dbg !8161

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !8164, !noalias !8170
  %i.g = icmp eq i64 %i.f, 1, !dbg !8177
  br i1 %i.g, label %bb.d, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE0ECskAlUH1kY1DR_10polars_ooc.exit, !dbg !8177

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !8178
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #33
          to label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE0ECskAlUH1kY1DR_10polars_ooc.exit unwind label %bb.e, !dbg !8180

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop() #39
          to label %.noexc1.i unwind label %bb.f, !dbg !8181

.noexc1.i:                                        ; preds = %bb.e
  unreachable, !dbg !8181

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !8184
  unreachable, !dbg !8184

_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE0ECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void, !dbg !8185
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB19_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEECskAlUH1kY1DR_10polars_ooc(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !8186 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8187 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !8199, !range !28, !noundef !16
  store i8 2, ptr %i.a, align 1, !dbg !8202
  %i.c = icmp eq i8 %i.b, 1, !dbg !8204
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECskAlUH1kY1DR_10polars_ooc.exit, !dbg !8204

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8205), !dbg !8208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8211), !dbg !8214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8216), !dbg !8219
  %i.d = load ptr, ptr %0, align 8, !dbg !8221, !alias.scope !8223, !noundef !16 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !8221
  br i1 %i.e, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECskAlUH1kY1DR_10polars_ooc.exit, label %bb.c, !dbg !8221

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !8224, !noalias !8230
  %i.g = icmp eq i64 %i.f, 1, !dbg !8237
  br i1 %i.g, label %bb.d, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECskAlUH1kY1DR_10polars_ooc.exit, !dbg !8237

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !8238
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #33
          to label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECskAlUH1kY1DR_10polars_ooc.exit unwind label %bb.e, !dbg !8240

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop() #39
          to label %.noexc1.i unwind label %bb.f, !dbg !8241

.noexc1.i:                                        ; preds = %bb.e
  unreachable, !dbg !8241

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !8243
  unreachable, !dbg !8243

_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void, !dbg !8244
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskAlUH1kY1DR_10polars_ooc(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #3 !dbg !8245 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8, !dbg !8247
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !8247

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3, !dbg !8247                ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a, !dbg !8247
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a, !dbg !8247
  %bound0 = icmp ult ptr %0, %scevgep5, !dbg !8247
  %bound1 = icmp ult ptr %1, %scevgep, !dbg !8247
  %found.conflict = and i1 %bound0, %bound1, !dbg !8247
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !8259

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body, !dbg !8259

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !8259 ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !8266 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !8270 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8272), !dbg !8275
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8276), !dbg !8275
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !8278 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !dbg !8278, !alias.scope !8281, !noalias !8284
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !dbg !8278, !alias.scope !8281, !noalias !8284
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !8286 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !dbg !8286, !alias.scope !8284, !noalias !8272
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !dbg !8286, !alias.scope !8284, !noalias !8272
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !dbg !8288, !alias.scope !8281, !noalias !8284
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !dbg !8288, !alias.scope !8281, !noalias !8284
  store <2 x i64> %wide.load, ptr %i.c, align 1, !dbg !8290, !alias.scope !8284, !noalias !8272
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !dbg !8290, !alias.scope !8284, !noalias !8272
  %index.next = add nuw i64 %index, 4, !dbg !8259 ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec, !dbg !8247
  br i1 %i.f, label %middle.block, label %vector.body, !dbg !8247, !llvm.loop !8291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !8247
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader, !dbg !8247

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1, !dbg !8247
  %xtraiter = and i64 %2, 1, !dbg !8247
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !8247
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !8247

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1, !dbg !8259
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph, !dbg !8266 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph, !dbg !8270 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8272), !dbg !8275
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8276), !dbg !8275
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !dbg !8278, !alias.scope !8272, !noalias !8276
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !dbg !8286, !alias.scope !8276, !noalias !8272
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !dbg !8288, !alias.scope !8272, !noalias !8276
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !dbg !8290, !alias.scope !8276, !noalias !8272
  br label %scalar.ph.prol.loopexit, !dbg !8247

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg, !dbg !8247
  br i1 %i.j, label %.loopexit, label %scalar.ph, !dbg !8247

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void, !dbg !8294

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.m, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04, !dbg !8266 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04, !dbg !8270 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8272), !dbg !8275
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8276), !dbg !8275
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 1, !dbg !8278, !alias.scope !8272, !noalias !8276
  %.sroa.02.0.copyload.i = load i64, ptr %i.l, align 1, !dbg !8286, !alias.scope !8276, !noalias !8272
  store i64 %.sroa.02.0.copyload.i, ptr %i.k, align 1, !dbg !8288, !alias.scope !8272, !noalias !8276
  store i64 %.sroa.0.0.copyload.i, ptr %i.l, align 1, !dbg !8290, !alias.scope !8276, !noalias !8272
  %i.m = add nuw i64 %.sroa.0.04, 2, !dbg !8259   ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04, !dbg !8266
  %3 = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !8266 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04, !dbg !8270
  %4 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !8270 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8295), !dbg !8275
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8297), !dbg !8275
  %.sroa.0.0.copyload.i.1 = load i64, ptr %3, align 1, !dbg !8278, !alias.scope !8295, !noalias !8297
  %.sroa.02.0.copyload.i.1 = load i64, ptr %4, align 1, !dbg !8286, !alias.scope !8297, !noalias !8295
  store i64 %.sroa.02.0.copyload.i.1, ptr %3, align 1, !dbg !8288, !alias.scope !8295, !noalias !8297
  store i64 %.sroa.0.0.copyload.i.1, ptr %4, align 1, !dbg !8290, !alias.scope !8297, !noalias !8295
  %exitcond.not.1 = icmp eq i64 %i.m, %2, !dbg !8299
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !dbg !8247, !llvm.loop !8305
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvNtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8std_shim9raw_waker10drop_wakerINtB6_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1D_13MemoryManager8do_spill0s_0NCINvB8_5spawnB1w_E0NtB8_12TaskMetadataEEB1F_(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8306 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8308
  %i.b = tail call noundef i64 @_RINvNtCsgZ49sUHp3tW_5alloc4sync11data_offsetINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1F_13MemoryManager8do_spill0s_0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEEB1H_(ptr noundef %0), !dbg !8313
  %i.c = sub nsw i64 0, %i.b, !dbg !8316
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c, !dbg !8322 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ], !dbg !8323
  store ptr %i.d, ptr %i.a, align 8, !dbg !8308
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !8329, !noalias !8336
  %i.f = icmp eq i64 %i.e, 1, !dbg !8341
  br i1 %i.f, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2d_13MemoryManager8do_spill0s_0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2f_.exit, !dbg !8341

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !8342
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1F_13MemoryManager8do_spill0s_0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE9drop_slowB1H_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #33, !dbg !8344
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2d_13MemoryManager8do_spill0s_0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2f_.exit, !dbg !8344

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2d_13MemoryManager8do_spill0s_0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2f_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8345
  ret void, !dbg !8346
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal { ptr, ptr } @_RINvNvNtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8std_shim9raw_waker11clone_wakerINtB6_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1E_13MemoryManager8do_spill0s_0NCINvB8_5spawnB1x_E0NtB8_12TaskMetadataEEB1G_(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !8347 {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCsgZ49sUHp3tW_5alloc4sync11data_offsetINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1F_13MemoryManager8do_spill0s_0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEEB1H_(ptr noundef %0), !dbg !8348
  %i.b = sub nsw i64 0, %i.a, !dbg !8354
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b, !dbg !8357
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ], !dbg !8358
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !dbg !8361
  %i.e = icmp slt i64 %i.d, 0, !dbg !8375
  br i1 %i.e, label %bb.b, label %_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1F_13MemoryManager8do_spill0s_0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE25increment_strong_count_inB1H_.exit, !dbg !8375

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !8377
  unreachable, !dbg !8377

_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1F_13MemoryManager8do_spill0s_0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE25increment_strong_count_inB1H_.exit: ; preds = %bb.a
  %i.f = insertvalue { ptr, ptr } { ptr @18, ptr poison }, ptr %0, 1, !dbg !8378
  ret { ptr, ptr } %i.f, !dbg !8378
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvNtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8std_shim9raw_waker11wake_by_refINtB6_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1E_13MemoryManager8do_spill0s_0NCINvB8_5spawnB1x_E0NtB8_12TaskMetadataEEB1G_(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8379 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef i64 @_RINvNtCsgZ49sUHp3tW_5alloc4sync11data_offsetINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1F_13MemoryManager8do_spill0s_0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEEB1H_(ptr noundef %0), !dbg !8380
  %i.c = sub nsw i64 0, %i.b, !dbg !8384
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c, !dbg !8387 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ], !dbg !8388
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !dbg !8391
  %i.f = icmp slt i64 %i.e, 0, !dbg !8402
  br i1 %i.f, label %bb.j, label %bb.b, !dbg !8402

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 224, !dbg !8404
  %i.h = invoke noundef zeroext i1 @_RNvMNtNtCsidoPH4Qgqxm_12polars_async8executor4taskNtB2_9TaskState4wake(ptr noundef nonnull %i.g)
          to label %bb.c unwind label %bb.g, !dbg !8407

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.f, label %bb.d, !dbg !8404

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !8408, !noalias !8413
  %i.j = icmp eq i64 %i.i, 1, !dbg !8418
  br i1 %i.j, label %bb.e, label %_RNvXs0_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB17_13MemoryManager8do_spill0s_0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataENtNtCsgZ49sUHp3tW_5alloc4task4Wake11wake_by_refB19_.exit, !dbg !8418

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !8419
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1F_13MemoryManager8do_spill0s_0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE9drop_slowB1H_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #33, !dbg !8421
  br label %_RNvXs0_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB17_13MemoryManager8do_spill0s_0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataENtNtCsgZ49sUHp3tW_5alloc4task4Wake11wake_by_refB19_.exit, !dbg !8421

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 176, !dbg !8422
  %i.l = load ptr, ptr %i.k, align 8, !dbg !8422, !nonnull !16, !align !8423, !noundef !16
  tail call void @_RNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB5_8Executor13schedule_task(ptr noundef nonnull align 128 %i.l, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16), !dbg !8424, !inline_history !8429
  br label %_RNvXs0_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB17_13MemoryManager8do_spill0s_0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataENtNtCsgZ49sUHp3tW_5alloc4task4Wake11wake_by_refB19_.exit, !dbg !8424

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2d_13MemoryManager8do_spill0s_0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2f_.exit2.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.m, !dbg !8430

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !8431, !noalias !8436
  %i.o = icmp eq i64 %i.n, 1, !dbg !8441
  br i1 %i.o, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2d_13MemoryManager8do_spill0s_0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2f_.exit2.i.i, !dbg !8441

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !8442
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1F_13MemoryManager8do_spill0s_0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE9drop_slowB1H_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #33
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2d_13MemoryManager8do_spill0s_0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2f_.exit2.i.i unwind label %bb.i, !dbg !8444

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !8430
  unreachable, !dbg !8430

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !8445
  unreachable, !dbg !8445

_RNvXs0_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB17_13MemoryManager8do_spill0s_0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataENtNtCsgZ49sUHp3tW_5alloc4task4Wake11wake_by_refB19_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8446
  ret void, !dbg !8447
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvNtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8std_shim9raw_waker4wakeINtB6_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1w_13MemoryManager8do_spill0s_0NCINvB8_5spawnB1p_E0NtB8_12TaskMetadataEEB1y_(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8448 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef i64 @_RINvNtCsgZ49sUHp3tW_5alloc4sync11data_offsetINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1F_13MemoryManager8do_spill0s_0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEEB1H_(ptr noundef %0), !dbg !8449
  %i.c = sub nsw i64 0, %i.b, !dbg !8453
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c, !dbg !8456 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ], !dbg !8457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224, !dbg !8460
  %i.f = invoke noundef zeroext i1 @_RNvMNtNtCsidoPH4Qgqxm_12polars_async8executor4taskNtB2_9TaskState4wake(ptr noundef nonnull %i.e)
          to label %bb.b unwind label %bb.f, !dbg !8463

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %bb.c, !dbg !8460

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !8464, !noalias !8469
  %i.h = icmp eq i64 %i.g, 1, !dbg !8474
  br i1 %i.h, label %bb.d, label %_RNvXs0_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB17_13MemoryManager8do_spill0s_0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataENtNtCsgZ49sUHp3tW_5alloc4task4Wake4wakeB19_.exit, !dbg !8474

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !8475
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1F_13MemoryManager8do_spill0s_0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE9drop_slowB1H_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #33, !dbg !8477
  br label %_RNvXs0_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB17_13MemoryManager8do_spill0s_0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataENtNtCsgZ49sUHp3tW_5alloc4task4Wake4wakeB19_.exit, !dbg !8477

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 176, !dbg !8478
  %i.j = load ptr, ptr %i.i, align 8, !dbg !8478, !nonnull !16, !align !8423, !noundef !16
  tail call void @_RNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB5_8Executor13schedule_task(ptr noundef nonnull align 128 %i.j, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16), !dbg !8479, !inline_history !8429
  br label %_RNvXs0_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB17_13MemoryManager8do_spill0s_0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataENtNtCsgZ49sUHp3tW_5alloc4task4Wake4wakeB19_.exit, !dbg !8479

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2d_13MemoryManager8do_spill0s_0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2f_.exit2.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k, !dbg !8481

bb.f:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !8482, !noalias !8487
  %i.m = icmp eq i64 %i.l, 1, !dbg !8492
  br i1 %i.m, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2d_13MemoryManager8do_spill0s_0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2f_.exit2.i, !dbg !8492

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !8493
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1F_13MemoryManager8do_spill0s_0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE9drop_slowB1H_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #33
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2d_13MemoryManager8do_spill0s_0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2f_.exit2.i unwind label %bb.h, !dbg !8495

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !8481
  unreachable, !dbg !8481

_RNvXs0_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB17_13MemoryManager8do_spill0s_0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataENtNtCsgZ49sUHp3tW_5alloc4task4Wake4wakeB19_.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8496
  ret void, !dbg !8497
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0E0CskAlUH1kY1DR_10polars_ooc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #5 !dbg !8498 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !8501, !nonnull !16, !align !531, !noundef !16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !8502, !align !531, !noundef !16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !8507
  %.not = icmp eq ptr %i.c, null, !dbg !8509
  br i1 %.not, label %bb.d, label %bb.b, !dbg !8512, !prof !1669

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !8501
  %.val = load i8, ptr %i.d, align 4, !dbg !8501, !range !268, !noundef !16
  %i.e = trunc nuw i8 %.val to i1, !dbg !8513
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB4_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0CskAlUH1kY1DR_10polars_ooc.exit, !dbg !8526, !prof !1669

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std4sync9lazy_lock14panic_poisoned() #34, !dbg !8527
  unreachable, !dbg !8527

_RNCNvMNtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB4_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0CskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !dbg !8528, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8534
  call void %i.f(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a), !dbg !8537, !inline_history !8540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !dbg !8541
end_hunk_0
