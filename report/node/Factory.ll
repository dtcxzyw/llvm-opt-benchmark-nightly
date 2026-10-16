Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/Factory?download=true
inline.NumInlined: 510
inline.NumDeleted: 343
begin_hunk_0_@_ZN4LIEF2PE7FactoryD2Ev:bb.a
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, %_ZNSt6vectorIN4LIEF2PE6ImportESaIS2_EED2Ev.exit
  %i.ab = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i ], [ %i.t, %_ZNSt6vectorIN4LIEF2PE6ImportESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE7Factory6createENS0_7PE_TYPEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.7") align 8 captures(none) initializes((0, 8)) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.LIEF::PE::DosHeader", align 8 ; 5 uses
  %3 = alloca %"class.LIEF::PE::Header", align 8  ; 6 uses
  %4 = alloca %"class.LIEF::PE::OptionalHeader", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 48, i1 false)
  %i.c = tail call noalias noundef nonnull dereferenceable(736) ptr @_Znwm(i64 noundef 736) #18 ; 16 uses
  tail call void @_ZN4LIEF2PE6BinaryC1Ev(ptr noundef nonnull align 8 dereferenceable(736) %i.c) #16
  store ptr %i.c, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i16 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN4LIEF2PE9DosHeader6createENS0_7PE_TYPEE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::PE::DosHeader") align 8 %2, i16 noundef zeroext %1) #16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN4LIEF2PE6Header6createENS0_7PE_TYPEE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::PE::Header") align 8 %3, i16 noundef zeroext %1) #16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF6ObjectaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %3) #16 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN4LIEF2PE14OptionalHeader6createENS0_7PE_TYPEE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::PE::OptionalHeader") align 8 %4, i16 noundef zeroext %1) #16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF6ObjectaSERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %i.k, ptr noundef nonnull align 8 dereferenceable(144) %4) #16 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef nonnull align 8 dereferenceable(136) %i.n, i64 136, i1 false)
  call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 632 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 648 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.o, align 8              ; 5 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, 56
  br i1 %i.v, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.w = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.w, ptr noundef nonnull align 1 dereferenceable(56) @constinit, i64 56, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.y = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.y, null
  br i1 %.not.i.i15, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.p, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #17
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.c, %bb.b
  store ptr %i.w, ptr %i.o, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  store ptr %i.ad, ptr %i.x, align 8
  store ptr %i.ad, ptr %i.p, align 8
  br label %_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag.exit

bb.d:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 640 ; 6 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.t                     ; 7 uses
  %.not.i14 = icmp ult i64 %i.ah, 56
  br i1 %.not.i14, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.r, ptr noundef nonnull align 1 dereferenceable(56) @constinit, i64 56, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.aj = load ptr, ptr %i.ae, align 8
  %.not.i16.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i16.i, label %_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.ai, ptr %i.ae, align 8
  br label %_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag.exit

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.d
  %.sink.i.i = getelementptr inbounds nuw i8, ptr @constinit, i64 %i.ah ; 2 uses
  %i.ak = icmp samesign ugt i64 %i.ah, 1
  br i1 %i.ak, label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17.i, label %bb.g, !prof !29

bb.g:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.al = icmp eq i64 %i.ah, 1
  br i1 %i.al, label %bb.h, label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17.i.thread

bb.h:                                             ; preds = %bb.g
  store i8 14, ptr %i.r, align 1
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17.i.thread

_ZSt4copyIPKhPhET0_T_S4_S3_.exit17.i.thread:      ; preds = %bb.h, %bb.g
  %i.am = load ptr, ptr %i.ae, align 8
  br label %bb.i

_ZSt4copyIPKhPhET0_T_S4_S3_.exit17.i:             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 @constinit, i64 %i.ah, i1 false)
  %i.an = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not = icmp eq i64 %i.ah, 55
  br i1 %.not, label %bb.j, label %bb.i, !prof !30

bb.i:                                             ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17.i.thread, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17.i
  %i.ao = phi ptr [ %i.am, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17.i.thread ], [ %i.an, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17.i ] ; 2 uses
  %gepdiff38 = sub nuw nsw i64 56, %i.ah          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 1 %.sink.i.i, i64 %gepdiff38, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit.i

bb.j:                                             ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17.i
  %i.ap = load i8, ptr %.sink.i.i, align 1
  store i8 %i.ap, ptr %i.an, align 1
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit.i

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit.i: ; preds = %bb.j, %bb.i
  %gepdiff39 = phi i64 [ 1, %bb.j ], [ %gepdiff38, %bb.i ]
  %i.aq = phi ptr [ %i.an, %bb.j ], [ %i.ao, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %gepdiff39
  store ptr %i.ar, ptr %i.ae, align 8
  br label %_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag.exit

_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag.exit: ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %bb.e, %bb.f, %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 408 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 424 ; 6 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load ptr, ptr %i.as, align 8
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp ult i64 %i.ay, 128
  br i1 %i.az, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 416 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ax
  %i.be = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #18 ; 6 uses
  %i.bf = load ptr, ptr %i.as, align 8            ; 6 uses
  %i.bg = load ptr, ptr %i.ba, align 8            ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = ptrtoaddr ptr %i.bf to i64
  %i.bj = add i64 %i.bh, -8
  %i.bk = sub i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bk, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bm, 4611686018427387900     ; 3 uses
  %i.bn = shl i64 %n.vec, 3                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bf, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bq ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.bf, i64 %i.bq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.br = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !alias.scope !32, !noalias !31
  %wide.load41 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !32, !noalias !31
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !31, !noalias !32
  store <2 x i64> %wide.load41, ptr %i.bs, align 8, !alias.scope !31, !noalias !32
  %i.bt = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !alias.scope !32, !noalias !31
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !alias.scope !32, !noalias !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i.preheader62

.lr.ph.i.i.i.i.preheader62:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader62, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader62 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.bv = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !32, !noalias !31
  store i64 %i.bv, ptr %.012.i.i.i.i, align 8, !alias.scope !31, !noalias !32
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !32, !noalias !31
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bw, %i.bg
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pr.i = load ptr, ptr %i.as, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.by = phi ptr [ %.pr.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i ], [ %i.bf, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.by, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.bz = load ptr, ptr %i.at, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #17
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.be, ptr %i.as, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store ptr %i.cd, ptr %i.ba, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  store ptr %i.ce, ptr %i.at, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 416 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, %_ZNSt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS2_EED2Ev.exit
  %.025 = phi i64 [ 0, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ], [ %i.ec, %_ZNSt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.cg = trunc nuw nsw i64 %.025 to i32
  %i.ch = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18, !noalias !35 ; 8 uses
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ch) #16, !noalias !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE13DataDirectoryE, i64 16), ptr %i.ch, align 8, !noalias !35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 0, ptr %i.ci, align 8, !noalias !35
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cj, align 4, !noalias !35
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i32 %i.cg, ptr %i.ck, align 8, !noalias !35
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr null, ptr %i.cl, align 8, !noalias !35
  %i.cm = load ptr, ptr %i.cf, align 8            ; 5 uses
  %i.cn = load ptr, ptr %i.at, align 8
  %.not.i.i = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = ptrtoint ptr %i.ch to i64
  store i64 %i.co, ptr %i.cm, align 8
  %i.cp = load ptr, ptr %i.cf, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.cf, align 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS2_EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.as, align 8            ; 10 uses
  %i.cs = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.ct = ptrtoint ptr %i.cr to i64               ; 4 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 3 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %bb.o, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #19
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.n
  %i.cw = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i16 = icmp ne i64 %i.da, 0
  call void @llvm.assume(i1 %.not.i.i16)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #18 ; 10 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  %i.de = ptrtoint ptr %i.ch to i64
  store i64 %i.de, ptr %i.dd, align 8
  %.not10.i.i.i.i17 = icmp eq ptr %i.cr, %i.cm
  br i1 %.not10.i.i.i.i17, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i18.preheader

.lr.ph.i.i.i.i18.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.df = add i64 %i.cs, -8
  %i.dg = sub i64 %i.df, %i.ct                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check47 = icmp ult i64 %i.dg, 56
  br i1 %min.iters.check47, label %.lr.ph.i.i.i.i18.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i18.preheader
  %scevgep = getelementptr i8, ptr %i.dc, i64 8
  %i.dj = add i64 %i.cs, -8
  %i.dk = sub i64 %i.dj, %i.ct
  %i.dl = and i64 %i.dk, -8                       ; 2 uses
  %scevgep43 = getelementptr i8, ptr %scevgep, i64 %i.dl
  %scevgep44 = getelementptr i8, ptr %i.cr, i64 8
  %scevgep45 = getelementptr i8, ptr %scevgep44, i64 %i.dl
  %bound0 = icmp ult ptr %i.dc, %scevgep45
  %bound1 = icmp ult ptr %i.cr, %scevgep43
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i18.preheader61, label %vector.ph48

vector.ph48:                                      ; preds = %vector.memcheck
  %n.vec49 = and i64 %i.di, 4611686018427387900   ; 3 uses
  %i.dm = shl i64 %n.vec49, 3                     ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dc, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %i.cr, i64 %i.dm
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.dp = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.dc, i64 %i.dp ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.cr, i64 %i.dp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.dq = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !alias.scope !38, !noalias !36
  %wide.load55 = load <2 x i64>, ptr %i.dq, align 8, !alias.scope !38, !noalias !36
  %i.dr = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !alias.scope !39, !noalias !38
  store <2 x i64> %wide.load55, ptr %i.dr, align 8, !alias.scope !39, !noalias !38
  %i.ds = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !alias.scope !38, !noalias !36
  store <2 x ptr> splat (ptr null), ptr %i.ds, align 8, !alias.scope !38, !noalias !36
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.dt = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.dt, label %middle.block57, label %vector.body50, !llvm.loop !26

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.di, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i18.preheader61

.lr.ph.i.i.i.i18.preheader61:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i18.preheader, %middle.block57
  %.012.i.i.i.i19.ph = phi ptr [ %i.dc, %vector.memcheck ], [ %i.dc, %.lr.ph.i.i.i.i18.preheader ], [ %i.dn, %middle.block57 ]
  %.0911.i.i.i.i20.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i.i.i.i18.preheader ], [ %i.do, %middle.block57 ]
  br label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %.lr.ph.i.i.i.i18.preheader61, %.lr.ph.i.i.i.i18
  %.012.i.i.i.i19 = phi ptr [ %i.dw, %.lr.ph.i.i.i.i18 ], [ %.012.i.i.i.i19.ph, %.lr.ph.i.i.i.i18.preheader61 ] ; 2 uses
  %.0911.i.i.i.i20 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i18 ], [ %.0911.i.i.i.i20.ph, %.lr.ph.i.i.i.i18.preheader61 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.du = load i64, ptr %.0911.i.i.i.i20, align 8, !alias.scope !37, !noalias !36
  store i64 %i.du, ptr %.012.i.i.i.i19, align 8, !alias.scope !36, !noalias !37
  store ptr null, ptr %.0911.i.i.i.i20, align 8, !alias.scope !37, !noalias !36
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i20, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i19, i64 8 ; 2 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.dv, %i.cm
  br i1 %.not.i.i.i.i21, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i18, !llvm.loop !27

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i18, %middle.block57, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dc, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dn, %middle.block57 ], [ %i.dw, %.lr.ph.i.i.i.i18 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cr, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dy = load ptr, ptr %i.at, align 8
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.ea) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.p
  store ptr %i.dc, ptr %i.as, align 8
  store ptr %i.dx, ptr %i.cf, align 8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.eb, ptr %i.at, align 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.m
  %i.ec = add nuw nsw i64 %.025, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ec, 16
  br i1 %exitcond.not, label %bb.q, label %bb.l, !llvm.loop !28

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS2_EED2Ev.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN4LIEF2PE9DosHeader6createENS0_7PE_TYPEE(ptr dead_on_unwind writable sret(%"class.LIEF::PE::DosHeader") align 8, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN4LIEF2PE6Header6createENS0_7PE_TYPEE(ptr dead_on_unwind writable sret(%"class.LIEF::PE::Header") align 8, i16 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4LIEF2PE14OptionalHeader6createENS0_7PE_TYPEE(ptr dead_on_unwind writable sret(%"class.LIEF::PE::OptionalHeader") align 8, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE7Factory7processEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.LIEF::PE::Builder::config_t", align 8 ; 32 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 27 uses
  %4 = alloca %"class.std::unique_ptr.132", align 8 ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i16 %i.j, ptr %i.k, align 8
  %i.l = tail call i64 @_ZN4LIEF2PE7Factory16assign_locationsEv(ptr noundef nonnull align 8 dereferenceable(56) %1) ; 0 uses
  %i.m = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 384 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 392 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 400 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %1, align 8
  store ptr %i.t, ptr %i.n, align 8
  %i.u = load ptr, ptr %i.c, align 8
  store ptr %i.u, ptr %i.p, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %i.r, align 8
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.o, %bb.a ] ; 2 uses
  %i.x = load ptr, ptr %.05.i.i.i.i.i.i, align 8  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(144) %i.x) #16, !inline_history !40
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.q
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN4LIEF2PE7Factory13move_sectionsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i.i
  %i.ac = ptrtoint ptr %i.s to i64
  %i.ad = ptrtoint ptr %i.o to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ae) #17
  br label %_ZN4LIEF2PE7Factory13move_sectionsEv.exit

_ZN4LIEF2PE7Factory13move_sectionsEv.exit:        ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i8 0, ptr %2, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %i.ag, i8 1, i64 7, i1 false)
  store ptr %i.ai, ptr %i.ah, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ai, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 5, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 37
  store i8 0, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.am, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 6, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 70
  store i8 0, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8
  store i32 1936487470, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 4, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i8 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.au, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 6, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 134
  store i8 0, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ay, ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 6, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 166
  store i8 0, ptr %i.ba, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bc, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i64 6, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 198
  store i8 0, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bf, i8 0, i64 33, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bg) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 328
  store ptr null, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i8 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 337
  store i8 0, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.bl, ptr %3, align 8
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.bn = getelementptr i8, ptr %i.bl, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %3, i64 %i.bo
  store ptr %i.bm, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %3, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %3, i64 %i.bs
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bt, ptr noundef null) #16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.bg, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bu, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 16, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  store ptr %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 0, ptr %i.ca, align 8
  store i8 0, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %3, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %3, i64 %i.cd
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ce, ptr noundef nonnull %i.bu) #16
  %i.cf = load ptr, ptr %i.a, align 8
  call void @_ZN4LIEF2PE6Binary5writeERSoRKNS0_7Builder8config_tE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.132") align 8 %4, ptr noundef nonnull align 8 dereferenceable(736) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(241) %2) #16
  %i.cg = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF2PE7BuilderESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF2PE7BuilderEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF2PE7BuilderEEclEPS2_.exit.i: ; preds = %_ZN4LIEF2PE7Factory13move_sectionsEv.exit
  call void @_ZN4LIEF2PE7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.cg) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 432) #17
  br label %_ZNSt10unique_ptrIN4LIEF2PE7BuilderESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE7BuilderESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4LIEF2PE7Factory13move_sectionsEv.exit, %_ZNKSt14default_deleteIN4LIEF2PE7BuilderEEclEPS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ch, ptr %5, align 8, !alias.scope !47
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ci, align 8, !alias.scope !47
  store i8 0, ptr %i.ch, align 8, !alias.scope !47
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !47 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ck, null
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !47 ; 2 uses
  %i.cn = icmp ugt ptr %i.ck, %i.cm
  %.08.i.i.i = select i1 %i.cn, ptr %i.ck, ptr %i.cm ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF2PE7BuilderESt14default_deleteIS2_EED2Ev.exit
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !47 ; 2 uses
  %i.cq = ptrtoint ptr %.08.i.i.i to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.cp, i64 noundef %i.cs) #16 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF2PE7BuilderESt14default_deleteIS2_EED2Ev.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.by) #16
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.c, %bb.d
  %i.cu = load ptr, ptr %5, align 8
  %i.cv = load i64, ptr %i.ci, align 8
  call void @_ZN4LIEF2PE6Parser5parseEPKhmRKNS0_12ParserConfigE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %i.cu, i64 noundef %i.cv, ptr noundef nonnull align 1 dereferenceable(7) @_ZZN4LIEF2PE12ParserConfig12default_confEvE7DEFAULT) #16
  %i.cw = load ptr, ptr %5, align 8               ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ch
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cy = load i64, ptr %i.ch, align 8
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.da = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.da, ptr %3, align 8
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dc = getelementptr i8, ptr %i.da, i64 -24
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds i8, ptr %3, i64 %i.dd
  store ptr %i.db, ptr %i.de, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bu, align 8
  %i.df = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bz
  br i1 %i.dg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = load i64, ptr %i.bz, align 8
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #17
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bu, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bw) #16
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bg) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZN4LIEF2PE7Builder8config_tD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN4LIEF2PE7Factory14update_headersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %0, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i16 %i.j, ptr %i.k, align 8
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN4LIEF2PE7Factory16assign_locationsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.g = load i16, ptr %i.f, align 8
  %i.h = icmp eq i16 %i.g, 267
  %i.i = select i1 %i.h, i64 96, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = load ptr, ptr %0, align 8                ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = mul i64 %i.v, 40
  %i.x = add nuw nsw i64 %i.e, 24
  %i.y = add nuw nsw i64 %i.x, %i.i
  %i.z = add i64 %i.y, %i.n
  %i.aa = sub i64 %i.z, %i.o
  %i.ab = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNK4LIEF2PE7Factory14sizeof_headersEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = zext i32 %i.ad to i64                   ; 2 uses
  %i.ag = urem i64 %i.ab, %i.af                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  %i.ah = sub nuw nsw i64 %i.af, %i.ag
  %i.ai = select i1 %.not.i.i, i64 0, i64 %i.ah
  %.0.i.i = add i64 %i.ai, %i.ab
  br label %_ZNK4LIEF2PE7Factory14sizeof_headersEv.exit

_ZNK4LIEF2PE7Factory14sizeof_headersEv.exit:      ; preds = %bb.a, %bb.b
  %.1.i.i = phi i64 [ %.0.i.i, %bb.b ], [ %i.ab, %bb.a ]
  %i.aj = and i64 %.1.i.i, 4294967295             ; 2 uses
  %.not58 = icmp eq ptr %i.r, %i.q
  br i1 %.not58, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 260
  %.pre68 = load i32, ptr %.phi.trans.insert, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK4LIEF2PE7Factory14sizeof_headersEv.exit
  %i.ak = phi i32 [ %i.ad, %_ZNK4LIEF2PE7Factory14sizeof_headersEv.exit ], [ %.pre68, %._crit_edge.loopexit ] ; 2 uses
  %i.al = phi ptr [ %i.b, %_ZNK4LIEF2PE7Factory14sizeof_headersEv.exit ], [ %.pre, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ %i.aj, %_ZNK4LIEF2PE7Factory14sizeof_headersEv.exit ], [ %.sroa.speculated37, %._crit_edge.loopexit ] ; 3 uses
  %i.am = icmp eq i32 %i.ak, 0
  br i1 %i.am, label %_ZN4LIEF5alignEmm.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.an = zext i32 %i.ak to i64                   ; 2 uses
  %i.ao = urem i64 %.0.lcssa, %i.an               ; 2 uses
  %.not.i = icmp eq i64 %i.ao, 0
  %i.ap = sub nuw nsw i64 %i.an, %i.ao
  %i.aq = select i1 %.not.i, i64 0, i64 %i.ap
  %.0.i = add i64 %i.aq, %.0.lcssa
  br label %_ZN4LIEF5alignEmm.exit

_ZN4LIEF5alignEmm.exit:                           ; preds = %._crit_edge, %bb.c
  %.1.i = phi i64 [ %.0.i, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 256
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZN4LIEF5alignEmm.exit21, label %bb.d

bb.d:                                             ; preds = %_ZN4LIEF5alignEmm.exit
  %i.au = zext i32 %i.as to i64                   ; 2 uses
  %i.av = urem i64 %.1.i, %i.au                   ; 2 uses
  %.not.i18 = icmp eq i64 %i.av, 0
  %i.aw = sub nuw nsw i64 %i.au, %i.av
  %i.ax = select i1 %.not.i18, i64 0, i64 %i.aw
  %.0.i19 = add i64 %i.ax, %.1.i
  br label %_ZN4LIEF5alignEmm.exit21

_ZN4LIEF5alignEmm.exit21:                         ; preds = %_ZN4LIEF5alignEmm.exit, %bb.d
  %.1.i20 = phi i64 [ %.0.i19, %bb.d ], [ %.1.i, %_ZN4LIEF5alignEmm.exit ]
  %i.ay = load ptr, ptr %0, align 8               ; 2 uses
  %i.az = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not5762 = icmp eq ptr %i.ay, %i.az
  br i1 %.not5762, label %._crit_edge67, label %.lr.ph66

.lr.ph:                                           ; preds = %_ZNK4LIEF2PE7Factory14sizeof_headersEv.exit, %.lr.ph
  %.061 = phi i64 [ %.sroa.speculated37, %.lr.ph ], [ %i.aj, %_ZNK4LIEF2PE7Factory14sizeof_headersEv.exit ]
  %.sroa.041.059 = phi ptr [ %i.bq, %.lr.ph ], [ %i.r, %_ZNK4LIEF2PE7Factory14sizeof_headersEv.exit ] ; 4 uses
  %i.ba = load ptr, ptr %.sroa.041.059, align 8   ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef i64 %i.bd(ptr noundef nonnull align 8 dereferenceable(64) %i.ba) #16
  %i.bf = load ptr, ptr %.sroa.041.059, align 8   ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(64) %i.bf) #16
  %i.bk = add i64 %i.bj, %i.be
  %.sroa.speculated37 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %.061) ; 2 uses
  %i.bl = load ptr, ptr %.sroa.041.059, align 8   ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(64) %i.bl) #16 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.041.059, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.q
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge67:                                    ; preds = %_ZN4LIEF5alignEmm.exit30, %_ZN4LIEF5alignEmm.exit21
  ret i64 4294967296

.lr.ph66:                                         ; preds = %_ZN4LIEF5alignEmm.exit21, %_ZN4LIEF5alignEmm.exit30
  %.165 = phi i64 [ %.2, %_ZN4LIEF5alignEmm.exit30 ], [ %.1.i, %_ZN4LIEF5alignEmm.exit21 ] ; 3 uses
  %.sroa.032.064 = phi ptr [ %i.dr, %_ZN4LIEF5alignEmm.exit30 ], [ %i.ay, %_ZN4LIEF5alignEmm.exit21 ] ; 8 uses
  %.15563 = phi i64 [ %.256, %_ZN4LIEF5alignEmm.exit30 ], [ %.1.i20, %_ZN4LIEF5alignEmm.exit21 ] ; 3 uses
  %i.br = load ptr, ptr %.sroa.032.064, align 8   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 112 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph66
  %i.bv = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.br) #16
  store i32 %i.bv, ptr %i.bs, align 8
  %.pre69 = load ptr, ptr %.sroa.032.064, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph66
  %i.bw = phi ptr [ %.pre69, %bb.e ], [ %i.br, %.lr.ph66 ] ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef i64 %i.bz(ptr noundef nonnull align 8 dereferenceable(64) %i.bw) #16
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.g, label %_ZN4LIEF5alignEmm.exit26

bb.g:                                             ; preds = %bb.f
  %i.cc = load ptr, ptr %.sroa.032.064, align 8   ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 noundef %.165) #16
  %i.cg = load ptr, ptr %.sroa.032.064, align 8   ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef i64 %i.cj(ptr noundef nonnull align 8 dereferenceable(64) %i.cg) #16
  %i.cl = add i64 %i.ck, %.165                    ; 3 uses
  %i.cm = load ptr, ptr %i.a, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 260
  %i.co = load i32, ptr %i.cn, align 4            ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_ZN4LIEF5alignEmm.exit26, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cq = zext i32 %i.co to i64                   ; 2 uses
  %i.cr = urem i64 %i.cl, %i.cq                   ; 2 uses
  %.not.i23 = icmp eq i64 %i.cr, 0
  %i.cs = sub nuw nsw i64 %i.cq, %i.cr
  %i.ct = select i1 %.not.i23, i64 0, i64 %i.cs
  %.0.i24 = add i64 %i.ct, %i.cl
  br label %_ZN4LIEF5alignEmm.exit26

_ZN4LIEF5alignEmm.exit26:                         ; preds = %bb.h, %bb.g, %bb.f
  %.2 = phi i64 [ %.165, %bb.f ], [ %.0.i24, %bb.h ], [ %i.cl, %bb.g ]
  %i.cu = load ptr, ptr %.sroa.032.064, align 8   ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call noundef i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %i.cu) #16
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.i, label %_ZN4LIEF5alignEmm.exit30

bb.i:                                             ; preds = %_ZN4LIEF5alignEmm.exit26
  %i.da = load ptr, ptr %.sroa.032.064, align 8   ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(64) %i.da, i64 noundef %.15563) #16
  %i.de = load ptr, ptr %.sroa.032.064, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 112
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = zext i32 %i.dg to i64
  %i.di = add i64 %.15563, %i.dh                  ; 3 uses
  %i.dj = load ptr, ptr %i.a, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 256
  %i.dl = load i32, ptr %i.dk, align 8            ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_ZN4LIEF5alignEmm.exit30, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dn = zext i32 %i.dl to i64                   ; 2 uses
  %i.do = urem i64 %i.di, %i.dn                   ; 2 uses
  %.not.i27 = icmp eq i64 %i.do, 0
  %i.dp = sub nuw nsw i64 %i.dn, %i.do
  %i.dq = select i1 %.not.i27, i64 0, i64 %i.dp
  %.0.i28 = add i64 %i.dq, %i.di
  br label %_ZN4LIEF5alignEmm.exit30

_ZN4LIEF5alignEmm.exit30:                         ; preds = %bb.j, %bb.i, %_ZN4LIEF5alignEmm.exit26
  %.256 = phi i64 [ %.15563, %_ZN4LIEF5alignEmm.exit26 ], [ %.0.i28, %bb.j ], [ %i.di, %bb.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.032.064, i64 8 ; 2 uses
  %.not57 = icmp eq ptr %i.dr, %i.az
  br i1 %.not57, label %._crit_edge67, label %.lr.ph66
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN4LIEF2PE7Factory13move_sectionsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8
  store ptr %i.i, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.g, align 8
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.n = load ptr, ptr %.05.i.i.i.i.i, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(144) %i.n) #16, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i
  %i.s = ptrtoint ptr %i.h to i64
  %i.t = ptrtoint ptr %i.d to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.u) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i, %bb.b
  ret i64 4294967296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF2PE7Factory17check_overlappingEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #7 align 2 {
bb.a:
  ret i64 4294967296
}

declare void @_ZN4LIEF2PE6Binary5writeERSoRKNS0_7Builder8config_tE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.132") align 8, ptr noundef nonnull align 8 dereferenceable(736), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(241)) local_unnamed_addr #4

declare void @_ZN4LIEF2PE6Parser5parseEPKhmRKNS0_12ParserConfigE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, i64 noundef, ptr noundef nonnull align 1 dereferenceable(7)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE7Builder8config_tD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #16, !inline_history !48 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4LIEF2PE7Factory14sizeof_headersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.g = load i16, ptr %i.f, align 8
  %i.h = icmp eq i16 %i.g, 267
  %i.i = select i1 %i.h, i64 96, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %0, align 8
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = mul i64 %i.v, 40
  %i.x = add nuw nsw i64 %i.e, 24
  %i.y = add nuw nsw i64 %i.x, %i.i
  %i.z = add i64 %i.y, %i.n
  %i.aa = sub i64 %i.z, %i.o
  %i.ab = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN4LIEF5alignEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = zext i32 %i.ad to i64                   ; 2 uses
  %i.ag = urem i64 %i.ab, %i.af                   ; 2 uses
  %.not.i = icmp eq i64 %i.ag, 0
  %i.ah = sub nuw nsw i64 %i.af, %i.ag
  %i.ai = select i1 %.not.i, i64 0, i64 %i.ah
  %.0.i = add i64 %i.ai, %i.ab
  br label %_ZN4LIEF5alignEmm.exit

_ZN4LIEF5alignEmm.exit:                           ; preds = %bb.a, %bb.b
  %.1.i = phi i64 [ %.0.i, %bb.b ], [ %i.ab, %bb.a ]
  %i.aj = trunc i64 %.1.i to i32
  ret i32 %i.aj
}

declare noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

declare void @_ZN4LIEF2PE6BinaryC1Ev(ptr noundef nonnull align 8 dereferenceable(736)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF6ObjectaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare void @_ZN4LIEF2PE7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432)) unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

declare void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{null, null, null, null, null, null, null, null}
!1 = distinct !{!1, !7}
!2 = distinct !{!2, !7}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{null, null, null, null, null, null}
!9 = distinct !{null, null, null, null, null}
!10 = distinct !{null, null}
!11 = distinct !{null, null, null, null}
!12 = distinct !{null, null, null, null, null, null}
!13 = distinct !{!13, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!14 = distinct !{!14, !13, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!15 = distinct !{!15, !13, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!16 = distinct !{!16, !7, !33, !34}
!17 = distinct !{!17, !7, !34, !33}
!18 = distinct !{!18, i1 false, !"_ZSt11make_uniqueIN4LIEF2PE13DataDirectoryEJNS2_5TYPESEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!19 = distinct !{!19, !18, !"_ZSt11make_uniqueIN4LIEF2PE13DataDirectoryEJNS2_5TYPESEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20 = distinct !{!20, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!21 = distinct !{!21, !20, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!22 = distinct !{!22, !20, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF2PE13DataDirectoryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!23 = distinct !{!23, i1 false, !"LVerDomain"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !7, !33, !34}
!27 = distinct !{!27, !7, !33}
!28 = distinct !{!28, !7}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!"branch_weights", !"expected", i32 1073741, i32 2146409907}
!31 = !{!14}
!32 = !{!15}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!19}
!36 = !{!21}
!37 = !{!22}
!38 = !{!22, !24}
!39 = !{!21, !25}
!40 = distinct !{ptr @_ZN4LIEF2PE7Factory13move_sectionsEv, null, null, null, null, null, null, null, null}
!41 = distinct !{!41, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!42 = distinct !{!42, !41, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!43 = distinct !{!43, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!44 = distinct !{!44, !43, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!45 = !{!42}
!46 = !{!44}
!47 = !{!44, !42}
!48 = distinct !{null}
end_hunk_0
