begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #15
  unreachable

common.resume:                                    ; preds = %342, %273, %.loopexit, %58, %23
  %common.resume.op = phi { ptr, i32 } [ %24, %23 ], [ %59, %58 ], [ %.pn.pn.pn.pn.pn.pn.pn108, %.loopexit ], [ %274, %273 ], [ %343, %342 ]
  resume { ptr, i32 } %common.resume.op

23:                                               ; preds = %19
end_hunk_1
begin_hunk_2
  %296 = load i64, ptr %234, align 8, !tbaa !53, !alias.scope !63 ; 9 uses
  %297 = getelementptr inbounds nuw i8, ptr %295, i64 %296
  %.not6.i.i = icmp samesign eq i64 %296, 0
  br i1 %.not6.i.i, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %iter.check217

iter.check217:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %min.iters.check215 = icmp ult i64 %296, 8
  br i1 %min.iters.check215, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check219

vector.main.loop.iter.check219:                   ; preds = %iter.check217
  %min.iters.check218 = icmp ult i64 %296, 32
  br i1 %min.iters.check218, label %vec.epilog.ph235, label %vector.ph220

vector.ph220:                                     ; preds = %vector.main.loop.iter.check219
  %n.mod.vf221 = and i64 %296, 24
  %n.vec222 = and i64 %296, -32                   ; 4 uses
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph220
  %index224 = phi i64 [ 0, %vector.ph220 ], [ %index.next228, %vector.body223 ] ; 2 uses
  %next.gep225 = getelementptr i8, ptr %295, i64 %index224 ; 3 uses
  %298 = getelementptr i8, ptr %next.gep225, i64 16 ; 2 uses
  %wide.load226 = load <16 x i8>, ptr %next.gep225, align 1, !tbaa !54 ; 3 uses
  %wide.load227 = load <16 x i8>, ptr %298, align 1, !tbaa !54 ; 3 uses
  %299 = add <16 x i8> %wide.load226, splat (i8 -65)
  %300 = add <16 x i8> %wide.load227, splat (i8 -65)
  %301 = icmp ult <16 x i8> %299, splat (i8 26)
  %302 = icmp ult <16 x i8> %300, splat (i8 26)
  %303 = add nuw nsw <16 x i8> %wide.load226, splat (i8 32)
  %304 = add nuw nsw <16 x i8> %wide.load227, splat (i8 32)
  %305 = select <16 x i1> %301, <16 x i8> %303, <16 x i8> %wide.load226
  %306 = select <16 x i1> %302, <16 x i8> %304, <16 x i8> %wide.load227
  store <16 x i8> %305, ptr %next.gep225, align 1, !tbaa !54
  store <16 x i8> %306, ptr %298, align 1, !tbaa !54
  %index.next228 = add nuw i64 %index224, 32      ; 2 uses
  %307 = icmp eq i64 %index.next228, %n.vec222
  br i1 %307, label %middle.block229, label %vector.body223, !llvm.loop !66

middle.block229:                                  ; preds = %vector.body223
  %cmp.n230 = icmp eq i64 %296, %n.vec222
  br i1 %cmp.n230, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block229
  %ind.end246 = getelementptr i8, ptr %295, i64 %n.vec222
  %min.epilog.iters.check234 = icmp eq i64 %n.mod.vf221, 0
  br i1 %min.epilog.iters.check234, label %.lr.ph.i.i.preheader, label %vec.epilog.ph235, !prof !69

vec.epilog.ph235:                                 ; preds = %vector.main.loop.iter.check219, %vec.epilog.iter.check233
  %vec.epilog.resume.val231 = phi i64 [ %n.vec222, %vec.epilog.iter.check233 ], [ 0, %vector.main.loop.iter.check219 ]
  %n.vec237 = and i64 %296, -8                    ; 3 uses
  %308 = getelementptr i8, ptr %295, i64 %n.vec237
  br label %vec.epilog.vector.body238

vec.epilog.vector.body238:                        ; preds = %vec.epilog.vector.body238, %vec.epilog.ph235
  %index239 = phi i64 [ %vec.epilog.resume.val231, %vec.epilog.ph235 ], [ %index.next242, %vec.epilog.vector.body238 ] ; 2 uses
  %next.gep240 = getelementptr i8, ptr %295, i64 %index239 ; 2 uses
  %wide.load241 = load <8 x i8>, ptr %next.gep240, align 1, !tbaa !54 ; 3 uses
  %309 = add <8 x i8> %wide.load241, splat (i8 -65)
  %310 = icmp ult <8 x i8> %309, splat (i8 26)
  %311 = add nuw nsw <8 x i8> %wide.load241, splat (i8 32)
  %312 = select <8 x i1> %310, <8 x i8> %311, <8 x i8> %wide.load241
  store <8 x i8> %312, ptr %next.gep240, align 1, !tbaa !54
  %index.next242 = add nuw i64 %index239, 8       ; 2 uses
  %313 = icmp eq i64 %index.next242, %n.vec237
  br i1 %313, label %vec.epilog.middle.block243, label %vec.epilog.vector.body238, !llvm.loop !70

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body238
  %cmp.n244 = icmp eq i64 %296, %n.vec237
  br i1 %cmp.n244, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check217, %vec.epilog.iter.check233, %vec.epilog.middle.block243
  %.sroa.0.08.i.i.ph = phi ptr [ %295, %iter.check217 ], [ %ind.end246, %vec.epilog.iter.check233 ], [ %308, %vec.epilog.middle.block243 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %319, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %314 = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !54 ; 3 uses
  %315 = add i8 %314, -65
  %316 = icmp ult i8 %315, 26
  %317 = add nuw nsw i8 %314, 32
  %318 = select i1 %316, i8 %317, i8 %314
  store i8 %318, ptr %.sroa.0.08.i.i, align 1, !tbaa !54
  %319 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i70 = icmp eq ptr %319, %297
  br i1 %.not.i.i70, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !71

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block243, %middle.block229
  %.pre = load i64, ptr %234, align 8, !tbaa !53  ; 3 uses
  %320 = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 8
  %321 = load i64, ptr %320, align 8, !tbaa !53
  %322 = icmp eq i64 %321, %.pre
  br i1 %322, label %326, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %323 = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 8
  %324 = load i64, ptr %323, align 8, !tbaa !53
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %.thread, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

.thread:                                          ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %.pre149167 = load ptr, ptr %15, align 8, !tbaa !62
end_hunk_2
begin_hunk_3
  %.pre148 = load ptr, ptr %15, align 8, !tbaa !62
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

326:                                              ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %327 = icmp eq i64 %.pre, 0
  %.pre149 = load ptr, ptr %15, align 8, !tbaa !62 ; 3 uses
  br i1 %327, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %328

328:                                              ; preds = %326
  %329 = load ptr, ptr %.029.ptr135, align 16, !tbaa !62
  %bcmp.i = call i32 @bcmp(ptr %329, ptr %.pre149, i64 %.pre)
  %330 = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.thread, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %326, %328
  %331 = phi ptr [ %.pre148, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre149, %328 ], [ %.pre149, %326 ], [ %.pre149167, %.thread ] ; 2 uses
  %332 = phi i1 [ false, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %330, %328 ], [ true, %326 ], [ true, %.thread ]
  %333 = icmp eq ptr %331, %233
  br i1 %333, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZdlPv(ptr noundef %331) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  br i1 %332, label %.critedge.sink.split, label %334

334:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %335 = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %336 = load i8, ptr %0, align 8, !tbaa !7, !range !21, !noundef !22
  %337 = trunc nuw i8 %336 to i1
  br i1 %337, label %344, label %338

338:                                              ; preds = %334
  %339 = call ptr @__cxa_allocate_exception(i64 64) #14 ; 3 uses
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %339, ptr noundef nonnull align 8 dereferenceable(32) %340)
          to label %341 unwind label %342

341:                                              ; preds = %338
  call void @__cxa_throw(ptr nonnull %339, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #15
  unreachable

342:                                              ; preds = %338
  %343 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %339) #14
  br label %common.resume

344:                                              ; preds = %334
  %345 = load ptr, ptr %26, align 8, !tbaa !23    ; 2 uses
  %.not.i74 = icmp eq ptr %345, null
  br i1 %.not.i74, label %350, label %346

346:                                              ; preds = %344
  %347 = load ptr, ptr %345, align 8, !tbaa !24
  %348 = load ptr, ptr %347, align 8, !tbaa !27
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 64
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75

350:                                              ; preds = %344
  %351 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML6detail9node_data12empty_scalarB5cxx11Ev()
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75

_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75:            ; preds = %346, %350
  %352 = phi ptr [ %349, %346 ], [ %351, %350 ]   ; 2 uses
  %.val55 = load ptr, ptr %352, align 8, !tbaa !62 ; 2 uses
  %353 = getelementptr i8, ptr %352, i64 8
  %.val56 = load i64, ptr %353, align 8, !tbaa !53 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  store ptr %235, ptr %16, align 8, !tbaa !60, !alias.scope !72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14, !noalias !72
  store i64 %.val56, ptr %3, align 8, !tbaa !61, !noalias !72
  %354 = icmp ugt i64 %.val56, 15
  br i1 %354, label %.noexc.i.i82, label %._crit_edge.i.i.i76

.noexc.i.i82:                                     ; preds = %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75
  %355 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0) ; 2 uses
  store ptr %355, ptr %16, align 8, !tbaa !62, !alias.scope !72
  %356 = load i64, ptr %3, align 8, !tbaa !61, !noalias !72
  store i64 %356, ptr %235, align 8, !tbaa !54, !alias.scope !72
  br label %._crit_edge.i.i.i76

._crit_edge.i.i.i76:                              ; preds = %.noexc.i.i82, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75
  %357 = phi ptr [ %355, %.noexc.i.i82 ], [ %235, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75 ] ; 2 uses
  switch i64 %.val56, label %360 [
    i64 1, label %358
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77
  ]

358:                                              ; preds = %._crit_edge.i.i.i76
  %359 = load i8, ptr %.val55, align 1, !tbaa !54, !noalias !72
  store i8 %359, ptr %357, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77

360:                                              ; preds = %._crit_edge.i.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %357, ptr readonly align 1 %.val55, i64 %.val56, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77: ; preds = %360, %358, %._crit_edge.i.i.i76
  %361 = load i64, ptr %3, align 8, !tbaa !61, !noalias !72 ; 2 uses
  store i64 %361, ptr %236, align 8, !tbaa !53, !alias.scope !72
  %362 = load ptr, ptr %16, align 8, !tbaa !62, !alias.scope !72
  %363 = getelementptr inbounds nuw i8, ptr %362, i64 %361
  store i8 0, ptr %363, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14, !noalias !72
  %364 = load ptr, ptr %16, align 8, !tbaa !62, !alias.scope !72 ; 6 uses
  %365 = load i64, ptr %236, align 8, !tbaa !53, !alias.scope !72 ; 9 uses
  %366 = getelementptr inbounds nuw i8, ptr %364, i64 %365
  %.not6.i.i78 = icmp samesign eq i64 %365, 0
  br i1 %.not6.i.i78, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83.thread, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77
  %min.iters.check = icmp ult i64 %365, 8
  br i1 %min.iters.check, label %.lr.ph.i.i79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check206 = icmp ult i64 %365, 32
  br i1 %min.iters.check206, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %365, 24
  %n.vec = and i64 %365, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %364, i64 %index ; 3 uses
  %367 = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !54 ; 3 uses
  %wide.load207 = load <16 x i8>, ptr %367, align 1, !tbaa !54 ; 3 uses
  %368 = add <16 x i8> %wide.load, splat (i8 -65)
  %369 = add <16 x i8> %wide.load207, splat (i8 -65)
  %370 = icmp ult <16 x i8> %368, splat (i8 26)
  %371 = icmp ult <16 x i8> %369, splat (i8 26)
  %372 = add nuw nsw <16 x i8> %wide.load, splat (i8 32)
  %373 = add nuw nsw <16 x i8> %wide.load207, splat (i8 32)
  %374 = select <16 x i1> %370, <16 x i8> %372, <16 x i8> %wide.load
  %375 = select <16 x i1> %371, <16 x i8> %373, <16 x i8> %wide.load207
  store <16 x i8> %374, ptr %next.gep, align 1, !tbaa !54
  store <16 x i8> %375, ptr %367, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %376 = icmp eq i64 %index.next, %n.vec
  br i1 %376, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %365, %n.vec
  br i1 %cmp.n, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = getelementptr i8, ptr %364, i64 %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i79.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec209 = and i64 %365, -8                    ; 3 uses
  %377 = getelementptr i8, ptr %364, i64 %n.vec209
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index210 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next213, %vec.epilog.vector.body ] ; 2 uses
  %next.gep211 = getelementptr i8, ptr %364, i64 %index210 ; 2 uses
  %wide.load212 = load <8 x i8>, ptr %next.gep211, align 1, !tbaa !54 ; 3 uses
  %378 = add <8 x i8> %wide.load212, splat (i8 -65)
  %379 = icmp ult <8 x i8> %378, splat (i8 26)
  %380 = add nuw nsw <8 x i8> %wide.load212, splat (i8 32)
  %381 = select <8 x i1> %379, <8 x i8> %380, <8 x i8> %wide.load212
  store <8 x i8> %381, ptr %next.gep211, align 1, !tbaa !54
  %index.next213 = add nuw i64 %index210, 8       ; 2 uses
  %382 = icmp eq i64 %index.next213, %n.vec209
  br i1 %382, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n214 = icmp eq i64 %365, %n.vec209
  br i1 %cmp.n214, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83, label %.lr.ph.i.i79.preheader

.lr.ph.i.i79.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i80.ph = phi ptr [ %364, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %377, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i79

.lr.ph.i.i79:                                     ; preds = %.lr.ph.i.i79.preheader, %.lr.ph.i.i79
  %.sroa.0.08.i.i80 = phi ptr [ %388, %.lr.ph.i.i79 ], [ %.sroa.0.08.i.i80.ph, %.lr.ph.i.i79.preheader ] ; 3 uses
  %383 = load i8, ptr %.sroa.0.08.i.i80, align 1, !tbaa !54 ; 3 uses
  %384 = add i8 %383, -65
  %385 = icmp ult i8 %384, 26
  %386 = add nuw nsw i8 %383, 32
  %387 = select i1 %385, i8 %386, i8 %383
  store i8 %387, ptr %.sroa.0.08.i.i80, align 1, !tbaa !54
  %388 = getelementptr i8, ptr %.sroa.0.08.i.i80, i64 1 ; 2 uses
  %.not.i.i81 = icmp eq ptr %388, %366
  br i1 %.not.i.i81, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83, label %.lr.ph.i.i79, !llvm.loop !77

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83: ; preds = %.lr.ph.i.i79, %vec.epilog.middle.block, %middle.block
  %.pre150 = load i64, ptr %236, align 8, !tbaa !53 ; 3 uses
  %389 = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 40
  %390 = load i64, ptr %389, align 8, !tbaa !53
  %391 = icmp eq i64 %390, %.pre150
  br i1 %391, label %395, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77
  %392 = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 40
  %393 = load i64, ptr %392, align 8, !tbaa !53
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %.thread168, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge

.thread168:                                       ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83.thread
  %.pre152169 = load ptr, ptr %16, align 8, !tbaa !62
end_hunk_3
begin_hunk_4
  %.pre151 = load ptr, ptr %16, align 8, !tbaa !62
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85

395:                                              ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83
  %396 = icmp eq i64 %.pre150, 0
  %.pre152 = load ptr, ptr %16, align 8, !tbaa !62 ; 3 uses
  br i1 %396, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85, label %397

397:                                              ; preds = %395
  %398 = load ptr, ptr %335, align 16, !tbaa !62
  %bcmp.i84 = call i32 @bcmp(ptr %398, ptr %.pre152, i64 %.pre150)
  %399 = icmp eq i32 %bcmp.i84, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85: ; preds = %.thread168, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge, %395, %397
  %400 = phi ptr [ %.pre151, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge ], [ %.pre152, %397 ], [ %.pre152, %395 ], [ %.pre152169, %.thread168 ] ; 2 uses
  %401 = phi i1 [ false, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge ], [ %399, %397 ], [ true, %395 ], [ true, %.thread168 ]
  %402 = icmp eq ptr %400, %235
  br i1 %402, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85
  call void @_ZdlPv(ptr noundef %400) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br i1 %401, label %.critedge.sink.split, label %265

.critedge.sink.split:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.sink = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
end_hunk_4
