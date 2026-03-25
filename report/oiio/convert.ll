begin_hunk_0
inline.NumInlined: 292
inline.NumDeleted: 127
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #15
  unreachable

common.resume:                                    ; preds = %343, %273, %.loopexit, %58, %23
  %common.resume.op = phi { ptr, i32 } [ %24, %23 ], [ %59, %58 ], [ %.pn.pn.pn.pn.pn.pn.pn108, %.loopexit ], [ %274, %273 ], [ %344, %343 ]
  resume { ptr, i32 } %common.resume.op

23:                                               ; preds = %19
end_hunk_1
begin_hunk_2
  %296 = load i64, ptr %234, align 8, !tbaa !53, !alias.scope !63 ; 9 uses
  %297 = getelementptr inbounds nuw i8, ptr %295, i64 %296
  %.not6.i.i = icmp samesign eq i64 %296, 0
  br i1 %.not6.i.i, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %iter.check218

iter.check218:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %min.iters.check216 = icmp ult i64 %296, 8
  br i1 %min.iters.check216, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check220

vector.main.loop.iter.check220:                   ; preds = %iter.check218
  %min.iters.check219 = icmp ult i64 %296, 32
  br i1 %min.iters.check219, label %vec.epilog.ph236, label %vector.ph221

vector.ph221:                                     ; preds = %vector.main.loop.iter.check220
  %n.mod.vf222 = and i64 %296, 24
  %n.vec223 = and i64 %296, -32                   ; 4 uses
  %298 = getelementptr i8, ptr %295, i64 %n.vec223
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph221
  %index225 = phi i64 [ 0, %vector.ph221 ], [ %index.next229, %vector.body224 ] ; 2 uses
  %next.gep226 = getelementptr i8, ptr %295, i64 %index225 ; 3 uses
  %299 = getelementptr i8, ptr %next.gep226, i64 16 ; 2 uses
  %wide.load227 = load <16 x i8>, ptr %next.gep226, align 1, !tbaa !54 ; 3 uses
  %wide.load228 = load <16 x i8>, ptr %299, align 1, !tbaa !54 ; 3 uses
  %300 = add <16 x i8> %wide.load227, splat (i8 -65)
  %301 = add <16 x i8> %wide.load228, splat (i8 -65)
  %302 = icmp ult <16 x i8> %300, splat (i8 26)
  %303 = icmp ult <16 x i8> %301, splat (i8 26)
  %304 = add nuw nsw <16 x i8> %wide.load227, splat (i8 32)
  %305 = add nuw nsw <16 x i8> %wide.load228, splat (i8 32)
  %306 = select <16 x i1> %302, <16 x i8> %304, <16 x i8> %wide.load227
  %307 = select <16 x i1> %303, <16 x i8> %305, <16 x i8> %wide.load228
  store <16 x i8> %306, ptr %next.gep226, align 1, !tbaa !54
  store <16 x i8> %307, ptr %299, align 1, !tbaa !54
  %index.next229 = add nuw i64 %index225, 32      ; 2 uses
  %308 = icmp eq i64 %index.next229, %n.vec223
  br i1 %308, label %middle.block230, label %vector.body224, !llvm.loop !66

middle.block230:                                  ; preds = %vector.body224
  %cmp.n231 = icmp eq i64 %296, %n.vec223
  br i1 %cmp.n231, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check234

vec.epilog.iter.check234:                         ; preds = %middle.block230
  %min.epilog.iters.check235 = icmp eq i64 %n.mod.vf222, 0
  br i1 %min.epilog.iters.check235, label %.lr.ph.i.i.preheader, label %vec.epilog.ph236, !prof !69

vec.epilog.ph236:                                 ; preds = %vector.main.loop.iter.check220, %vec.epilog.iter.check234
  %vec.epilog.resume.val232 = phi i64 [ %n.vec223, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check220 ]
  %n.vec238 = and i64 %296, -8                    ; 3 uses
  %309 = getelementptr i8, ptr %295, i64 %n.vec238
  br label %vec.epilog.vector.body239

vec.epilog.vector.body239:                        ; preds = %vec.epilog.vector.body239, %vec.epilog.ph236
  %index240 = phi i64 [ %vec.epilog.resume.val232, %vec.epilog.ph236 ], [ %index.next243, %vec.epilog.vector.body239 ] ; 2 uses
  %next.gep241 = getelementptr i8, ptr %295, i64 %index240 ; 2 uses
  %wide.load242 = load <8 x i8>, ptr %next.gep241, align 1, !tbaa !54 ; 3 uses
  %310 = add <8 x i8> %wide.load242, splat (i8 -65)
  %311 = icmp ult <8 x i8> %310, splat (i8 26)
  %312 = add nuw nsw <8 x i8> %wide.load242, splat (i8 32)
  %313 = select <8 x i1> %311, <8 x i8> %312, <8 x i8> %wide.load242
  store <8 x i8> %313, ptr %next.gep241, align 1, !tbaa !54
  %index.next243 = add nuw i64 %index240, 8       ; 2 uses
  %314 = icmp eq i64 %index.next243, %n.vec238
  br i1 %314, label %vec.epilog.middle.block244, label %vec.epilog.vector.body239, !llvm.loop !70

vec.epilog.middle.block244:                       ; preds = %vec.epilog.vector.body239
  %cmp.n245 = icmp eq i64 %296, %n.vec238
  br i1 %cmp.n245, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check218, %vec.epilog.iter.check234, %vec.epilog.middle.block244
  %.sroa.0.08.i.i.ph = phi ptr [ %295, %iter.check218 ], [ %298, %vec.epilog.iter.check234 ], [ %309, %vec.epilog.middle.block244 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %320, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %315 = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !54 ; 3 uses
  %316 = add i8 %315, -65
  %317 = icmp ult i8 %316, 26
  %318 = add nuw nsw i8 %315, 32
  %319 = select i1 %317, i8 %318, i8 %315
  store i8 %319, ptr %.sroa.0.08.i.i, align 1, !tbaa !54
  %320 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i70 = icmp eq ptr %320, %297
  br i1 %.not.i.i70, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !71

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block244, %middle.block230
  %.pre = load i64, ptr %234, align 8, !tbaa !53  ; 3 uses
  %321 = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 8
  %322 = load i64, ptr %321, align 8, !tbaa !53
  %323 = icmp eq i64 %322, %.pre
  br i1 %323, label %327, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %324 = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 8
  %325 = load i64, ptr %324, align 8, !tbaa !53
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %.thread, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

.thread:                                          ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %.pre149167 = load ptr, ptr %15, align 8, !tbaa !62
end_hunk_2
begin_hunk_3
  %.pre148 = load ptr, ptr %15, align 8, !tbaa !62
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

327:                                              ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %328 = icmp eq i64 %.pre, 0
  %.pre149 = load ptr, ptr %15, align 8, !tbaa !62 ; 3 uses
  br i1 %328, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %329

329:                                              ; preds = %327
  %330 = load ptr, ptr %.029.ptr135, align 16, !tbaa !62
  %bcmp.i = call i32 @bcmp(ptr %330, ptr %.pre149, i64 %.pre)
  %331 = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.thread, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %327, %329
  %332 = phi ptr [ %.pre148, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre149, %329 ], [ %.pre149, %327 ], [ %.pre149167, %.thread ] ; 2 uses
  %333 = phi i1 [ false, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %331, %329 ], [ true, %327 ], [ true, %.thread ]
  %334 = icmp eq ptr %332, %233
  br i1 %334, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZdlPv(ptr noundef %332) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  br i1 %333, label %.critedge.sink.split, label %335

335:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %336 = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %337 = load i8, ptr %0, align 8, !tbaa !7, !range !21, !noundef !22
  %338 = trunc nuw i8 %337 to i1
  br i1 %338, label %345, label %339

339:                                              ; preds = %335
  %340 = call ptr @__cxa_allocate_exception(i64 64) #14 ; 3 uses
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %340, ptr noundef nonnull align 8 dereferenceable(32) %341)
          to label %342 unwind label %343

342:                                              ; preds = %339
  call void @__cxa_throw(ptr nonnull %340, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #15
  unreachable

343:                                              ; preds = %339
  %344 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %340) #14
  br label %common.resume

345:                                              ; preds = %335
  %346 = load ptr, ptr %26, align 8, !tbaa !23    ; 2 uses
  %.not.i74 = icmp eq ptr %346, null
  br i1 %.not.i74, label %351, label %347

347:                                              ; preds = %345
  %348 = load ptr, ptr %346, align 8, !tbaa !24
  %349 = load ptr, ptr %348, align 8, !tbaa !27
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 64
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75

351:                                              ; preds = %345
  %352 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML6detail9node_data12empty_scalarB5cxx11Ev()
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75

_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75:            ; preds = %347, %351
  %353 = phi ptr [ %350, %347 ], [ %352, %351 ]   ; 2 uses
  %.val55 = load ptr, ptr %353, align 8, !tbaa !62 ; 2 uses
  %354 = getelementptr i8, ptr %353, i64 8
  %.val56 = load i64, ptr %354, align 8, !tbaa !53 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  store ptr %235, ptr %16, align 8, !tbaa !60, !alias.scope !72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14, !noalias !72
  store i64 %.val56, ptr %3, align 8, !tbaa !61, !noalias !72
  %355 = icmp ugt i64 %.val56, 15
  br i1 %355, label %.noexc.i.i82, label %._crit_edge.i.i.i76

.noexc.i.i82:                                     ; preds = %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75
  %356 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0) ; 2 uses
  store ptr %356, ptr %16, align 8, !tbaa !62, !alias.scope !72
  %357 = load i64, ptr %3, align 8, !tbaa !61, !noalias !72
  store i64 %357, ptr %235, align 8, !tbaa !54, !alias.scope !72
  br label %._crit_edge.i.i.i76

._crit_edge.i.i.i76:                              ; preds = %.noexc.i.i82, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75
  %358 = phi ptr [ %356, %.noexc.i.i82 ], [ %235, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75 ] ; 2 uses
  switch i64 %.val56, label %361 [
    i64 1, label %359
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77
  ]

359:                                              ; preds = %._crit_edge.i.i.i76
  %360 = load i8, ptr %.val55, align 1, !tbaa !54, !noalias !72
  store i8 %360, ptr %358, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77

361:                                              ; preds = %._crit_edge.i.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %358, ptr readonly align 1 %.val55, i64 %.val56, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77: ; preds = %361, %359, %._crit_edge.i.i.i76
  %362 = load i64, ptr %3, align 8, !tbaa !61, !noalias !72 ; 2 uses
  store i64 %362, ptr %236, align 8, !tbaa !53, !alias.scope !72
  %363 = load ptr, ptr %16, align 8, !tbaa !62, !alias.scope !72
  %364 = getelementptr inbounds nuw i8, ptr %363, i64 %362
  store i8 0, ptr %364, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14, !noalias !72
  %365 = load ptr, ptr %16, align 8, !tbaa !62, !alias.scope !72 ; 6 uses
  %366 = load i64, ptr %236, align 8, !tbaa !53, !alias.scope !72 ; 9 uses
  %367 = getelementptr inbounds nuw i8, ptr %365, i64 %366
  %.not6.i.i78 = icmp samesign eq i64 %366, 0
  br i1 %.not6.i.i78, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83.thread, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77
  %min.iters.check = icmp ult i64 %366, 8
  br i1 %min.iters.check, label %.lr.ph.i.i79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check206 = icmp ult i64 %366, 32
  br i1 %min.iters.check206, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %366, 24
  %n.vec = and i64 %366, -32                      ; 4 uses
  %368 = getelementptr i8, ptr %365, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %365, i64 %index ; 3 uses
  %369 = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !54 ; 3 uses
  %wide.load207 = load <16 x i8>, ptr %369, align 1, !tbaa !54 ; 3 uses
  %370 = add <16 x i8> %wide.load, splat (i8 -65)
  %371 = add <16 x i8> %wide.load207, splat (i8 -65)
  %372 = icmp ult <16 x i8> %370, splat (i8 26)
  %373 = icmp ult <16 x i8> %371, splat (i8 26)
  %374 = add nuw nsw <16 x i8> %wide.load, splat (i8 32)
  %375 = add nuw nsw <16 x i8> %wide.load207, splat (i8 32)
  %376 = select <16 x i1> %372, <16 x i8> %374, <16 x i8> %wide.load
  %377 = select <16 x i1> %373, <16 x i8> %375, <16 x i8> %wide.load207
  store <16 x i8> %376, ptr %next.gep, align 1, !tbaa !54
  store <16 x i8> %377, ptr %369, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %378 = icmp eq i64 %index.next, %n.vec
  br i1 %378, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %366, %n.vec
  br i1 %cmp.n, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i79.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec209 = and i64 %366, -8                    ; 3 uses
  %379 = getelementptr i8, ptr %365, i64 %n.vec209
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index210 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next213, %vec.epilog.vector.body ] ; 2 uses
  %next.gep211 = getelementptr i8, ptr %365, i64 %index210 ; 2 uses
  %wide.load212 = load <8 x i8>, ptr %next.gep211, align 1, !tbaa !54 ; 3 uses
  %380 = add <8 x i8> %wide.load212, splat (i8 -65)
  %381 = icmp ult <8 x i8> %380, splat (i8 26)
  %382 = add nuw nsw <8 x i8> %wide.load212, splat (i8 32)
  %383 = select <8 x i1> %381, <8 x i8> %382, <8 x i8> %wide.load212
  store <8 x i8> %383, ptr %next.gep211, align 1, !tbaa !54
  %index.next213 = add nuw i64 %index210, 8       ; 2 uses
  %384 = icmp eq i64 %index.next213, %n.vec209
  br i1 %384, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n214 = icmp eq i64 %366, %n.vec209
  br i1 %cmp.n214, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83, label %.lr.ph.i.i79.preheader

.lr.ph.i.i79.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i80.ph = phi ptr [ %365, %iter.check ], [ %368, %vec.epilog.iter.check ], [ %379, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i79

.lr.ph.i.i79:                                     ; preds = %.lr.ph.i.i79.preheader, %.lr.ph.i.i79
  %.sroa.0.08.i.i80 = phi ptr [ %390, %.lr.ph.i.i79 ], [ %.sroa.0.08.i.i80.ph, %.lr.ph.i.i79.preheader ] ; 3 uses
  %385 = load i8, ptr %.sroa.0.08.i.i80, align 1, !tbaa !54 ; 3 uses
  %386 = add i8 %385, -65
  %387 = icmp ult i8 %386, 26
  %388 = add nuw nsw i8 %385, 32
  %389 = select i1 %387, i8 %388, i8 %385
  store i8 %389, ptr %.sroa.0.08.i.i80, align 1, !tbaa !54
  %390 = getelementptr i8, ptr %.sroa.0.08.i.i80, i64 1 ; 2 uses
  %.not.i.i81 = icmp eq ptr %390, %367
  br i1 %.not.i.i81, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83, label %.lr.ph.i.i79, !llvm.loop !77

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83: ; preds = %.lr.ph.i.i79, %vec.epilog.middle.block, %middle.block
  %.pre150 = load i64, ptr %236, align 8, !tbaa !53 ; 3 uses
  %391 = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 40
  %392 = load i64, ptr %391, align 8, !tbaa !53
  %393 = icmp eq i64 %392, %.pre150
  br i1 %393, label %397, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77
  %394 = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 40
  %395 = load i64, ptr %394, align 8, !tbaa !53
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %.thread168, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge

.thread168:                                       ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83.thread
  %.pre152169 = load ptr, ptr %16, align 8, !tbaa !62
end_hunk_3
begin_hunk_4
  %.pre151 = load ptr, ptr %16, align 8, !tbaa !62
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85

397:                                              ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83
  %398 = icmp eq i64 %.pre150, 0
  %.pre152 = load ptr, ptr %16, align 8, !tbaa !62 ; 3 uses
  br i1 %398, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85, label %399

399:                                              ; preds = %397
  %400 = load ptr, ptr %336, align 16, !tbaa !62
  %bcmp.i84 = call i32 @bcmp(ptr %400, ptr %.pre152, i64 %.pre150)
  %401 = icmp eq i32 %bcmp.i84, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85: ; preds = %.thread168, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge, %397, %399
  %402 = phi ptr [ %.pre151, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge ], [ %.pre152, %399 ], [ %.pre152, %397 ], [ %.pre152169, %.thread168 ] ; 2 uses
  %403 = phi i1 [ false, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge ], [ %401, %399 ], [ true, %397 ], [ true, %.thread168 ]
  %404 = icmp eq ptr %402, %235
  br i1 %404, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85
  call void @_ZdlPv(ptr noundef %402) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br i1 %403, label %.critedge.sink.split, label %265

.critedge.sink.split:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.sink = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
end_hunk_4
