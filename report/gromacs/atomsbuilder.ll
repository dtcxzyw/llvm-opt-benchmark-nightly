Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/atomsbuilder?download=true
inline.NumInlined: 262
inline.NumDeleted: 135
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx12AtomsBuilder7addAtomERK7t_atomsi:bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.i
  store ptr %.0.i, ptr %i.v, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds [36 x i8], ptr %i.z, i64 %i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 %i.x, ptr %i.ab, align 4, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %.not13 = icmp eq ptr %i.af, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds [52 x i8], ptr %i.af, i64 %i.e
  %i.ah = getelementptr inbounds [52 x i8], ptr %i.ad, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ah, ptr noundef nonnull align 4 dereferenceable(52) %i.ag, i64 52, i1 false), !tbaa.struct !54
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds [52 x i8], ptr %i.ad, i64 %i.i
  tail call void @_Z24gmx_pdbinfo_init_defaultP9t_pdbinfo(ptr noundef nonnull %i.ai)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !15
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @_Z24gmx_pdbinfo_init_defaultP9t_pdbinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx12AtomsBuilder12startResidueERK9t_resinfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  store i32 %i.e, ptr %i.a, align 4, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = sext i32 %i.h to i64                     ; 3 uses
  %i.l = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !58
  %i.m = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.m, ptr %i.r, align 8, !tbaa !30
  %i.s = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.w = tail call noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr noundef nonnull %i.u, ptr noundef %i.v)
  %.pre = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre7 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !29
  %.pre8 = load i32, ptr %i.a, align 4, !tbaa !28
  br label %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit

_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit:     ; preds = %bb.c, %bb.d
  %i.x = phi i32 [ %.pre8, %bb.d ], [ %i.m, %bb.c ]
  %i.y = phi ptr [ %.pre7, %bb.d ], [ %i.p, %bb.c ]
  %i.z = phi ptr [ %.pre, %bb.d ], [ %i.n, %bb.c ]
  %.0.i = phi ptr [ %i.w, %bb.d ], [ %i.s, %bb.c ]
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.k
  store ptr %.0.i, ptr %i.aa, align 8, !tbaa !59
  %i.ab = add nsw i32 %i.x, 1
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.h, ptr %i.ac, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !25
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx12AtomsBuilder13finishResidueERK9t_resinfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  store i32 %i.e, ptr %i.a, align 4, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27   ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = sext i32 %i.g to i64                     ; 3 uses
  %i.l = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !58
  %i.m = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.m, ptr %i.r, align 8, !tbaa !30
  %i.s = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.w = tail call noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr noundef nonnull %i.u, ptr noundef %i.v)
  %.pre = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !29
  %.pre9 = load i32, ptr %i.a, align 4, !tbaa !28
  br label %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit

_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit:     ; preds = %bb.c, %bb.d
  %i.x = phi i32 [ %.pre9, %bb.d ], [ %i.m, %bb.c ]
  %i.y = phi ptr [ %.pre8, %bb.d ], [ %i.p, %bb.c ]
  %i.z = phi ptr [ %.pre, %bb.d ], [ %i.n, %bb.c ]
  %.0.i = phi ptr [ %i.w, %bb.d ], [ %i.s, %bb.c ]
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.k
  store ptr %.0.i, ptr %i.aa, align 8, !tbaa !59
  %i.ab = add nsw i32 %i.x, 1
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !28
  %i.ac = add nsw i32 %i.g, 1
  store i32 %i.ac, ptr %i.f, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !25 ; 2 uses
  %.not = icmp slt i32 %i.g, %i.ae
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx12AtomsBuilder21discardCurrentResidueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.b, i32 1)
  %i.f = add i32 %smin, -1                        ; 2 uses
  %i.g = icmp sgt i32 %i.b, 1
  br i1 %i.g, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %1 = zext nneg i32 %i.b to i64
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !40
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp sgt i32 %2, 1
  br i1 %i.i, label %.lr.ph, label %.critedge, !llvm.loop !60

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv7 = phi i64 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv7, -1 ; 2 uses
  %i.j = getelementptr [36 x i8], ptr %i.h, i64 %indvars.iv7
  %i.k = getelementptr i8, ptr %i.j, i64 -48
  %i.l = load i32, ptr %i.k, align 4, !tbaa !52
  %i.m = icmp eq i32 %i.l, %i.e
  %2 = trunc i64 %indvars.iv.next to i32          ; 2 uses
  br i1 %i.m, label %bb.b, label %.critedge, !llvm.loop !60

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ %i.f, %bb.a ], [ %i.f, %bb.b ], [ %2, %.lr.ph ]
  store i32 %.0.lcssa, ptr %i.a, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.e, ptr %i.n, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx12AtomsBuilder10mergeAtomsERK7t_atoms(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = load i32, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.d = add nsw i32 %i.c, %i.b                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = icmp sgt i32 %i.d, %i.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre25 = load i32, ptr %.phi.trans.insert24, align 8, !tbaa !25
  %.pre30 = add nsw i32 %.pre25, %.pre            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp sgt i32 %.pre30, %i.i
  %or.cond = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond, label %._crit_edge23, label %bb.b

._crit_edge23:                                    ; preds = %bb.a
  tail call void @_ZN3gmx12AtomsBuilder7reserveEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.d, i32 noundef %.pre30)
  %.pre26 = load i32, ptr %1, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge23
  %i.k = phi i32 [ %.pre26, %._crit_edge23 ], [ %i.c, %bb.a ]
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN3gmx12AtomsBuilder7addAtomERK7t_atomsi.exit, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN3gmx12AtomsBuilder7addAtomERK7t_atomsi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3gmx12AtomsBuilder7addAtomERK7t_atomsi.exit ] ; 5 uses
  %.01620 = phi i32 [ -1, %.lr.ph ], [ %.1, %_ZN3gmx12AtomsBuilder7addAtomERK7t_atomsi.exit ] ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %i.u = getelementptr inbounds nuw [36 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 4, !tbaa !52   ; 3 uses
  %.not = icmp eq i32 %i.w, %.01620
  br i1 %.not, label %._crit_edge27, label %bb.d

._crit_edge27:                                    ; preds = %bb.c
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !9
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [32 x i8], ptr %i.x, i64 %i.y ; 3 uses
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !28
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !30
  store i32 %i.ad, ptr %i.o, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = sext i32 %i.ag to i64                   ; 3 uses
  %i.ak = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !tbaa.struct !58
  %i.al = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.ao, i64 %i.aj
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %i.al, ptr %i.aq, align 8, !tbaa !30
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !59  ; 2 uses
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !14  ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN3gmx12AtomsBuilder12startResidueERK9t_resinfo.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.au = tail call noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr noundef nonnull %i.as, ptr noundef %i.at)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !9   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 48
  %.pre7.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29
  %.pre8.i = load i32, ptr %i.o, align 4, !tbaa !28
  br label %_ZN3gmx12AtomsBuilder12startResidueERK9t_resinfo.exit

_ZN3gmx12AtomsBuilder12startResidueERK9t_resinfo.exit: ; preds = %bb.f, %bb.g
  %i.av = phi i32 [ %.pre8.i, %bb.g ], [ %i.al, %bb.f ]
  %i.aw = phi ptr [ %.pre7.i, %bb.g ], [ %i.ao, %bb.f ]
  %i.ax = phi ptr [ %.pre.i, %bb.g ], [ %i.am, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  %i.ay = getelementptr inbounds [32 x i8], ptr %i.aw, i64 %i.aj
  store ptr %.0.i.i, ptr %i.ay, align 8, !tbaa !59
  %i.az = add nsw i32 %i.av, 1
  store i32 %i.az, ptr %i.o, align 4, !tbaa !28
  store i32 %i.ag, ptr %i.q, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !25
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !25
  %.pre29 = load ptr, ptr %i.m, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge27, %_ZN3gmx12AtomsBuilder12startResidueERK9t_resinfo.exit
  %i.bd = phi ptr [ %.pre29, %_ZN3gmx12AtomsBuilder12startResidueERK9t_resinfo.exit ], [ %i.t, %._crit_edge27 ]
  %i.be = phi ptr [ %i.ax, %_ZN3gmx12AtomsBuilder12startResidueERK9t_resinfo.exit ], [ %.pre28, %._crit_edge27 ] ; 2 uses
  %.1 = phi i32 [ %i.w, %_ZN3gmx12AtomsBuilder12startResidueERK9t_resinfo.exit ], [ %.01620, %._crit_edge27 ]
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw [36 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !40
  %i.bj = sext i32 %i.bf to i64                   ; 5 uses
  %i.bk = getelementptr inbounds [36 x i8], ptr %i.bi, i64 %i.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.bk, ptr noundef nonnull align 4 dereferenceable(36) %i.bg, i64 36, i1 false), !tbaa.struct !41
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !51 ; 2 uses
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !14  ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i18, label %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !33
  %i.bq = tail call noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr noundef nonnull %i.bo, ptr noundef %i.bp)
  br label %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit.i

_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit.i:   ; preds = %bb.i, %bb.h
  %.0.i.i19 = phi ptr [ %i.bq, %bb.i ], [ %i.bn, %bb.h ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bj
  store ptr %.0.i.i19, ptr %i.bu, align 8, !tbaa !51
  %i.bv = load i32, ptr %i.q, align 8, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !40
  %i.by = getelementptr inbounds [36 x i8], ptr %i.bx, i64 %i.bj
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i32 %i.bv, ptr %i.bz, align 4, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !38 ; 3 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %_ZN3gmx12AtomsBuilder7addAtomERK7t_atomsi.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit.i
  %i.cc = load ptr, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  %.not13.i = icmp eq ptr %i.cc, null
  br i1 %.not13.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw [52 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ce = getelementptr inbounds [52 x i8], ptr %i.cb, i64 %i.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ce, ptr noundef nonnull align 4 dereferenceable(52) %i.cd, i64 52, i1 false), !tbaa.struct !54
  br label %_ZN3gmx12AtomsBuilder7addAtomERK7t_atomsi.exit

bb.l:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds [52 x i8], ptr %i.cb, i64 %i.bj
  tail call void @_Z24gmx_pdbinfo_init_defaultP9t_pdbinfo(ptr noundef nonnull %i.cf)
  br label %_ZN3gmx12AtomsBuilder7addAtomERK7t_atomsi.exit

_ZN3gmx12AtomsBuilder7addAtomERK7t_atomsi.exit:   ; preds = %_ZN3gmx12AtomsBuilder12symtabStringEPPc.exit.i, %bb.k, %bb.l
  %i.cg = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !15
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = load i32, ptr %1, align 8, !tbaa !15
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %bb.c, label %._crit_edge, !llvm.loop !62
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx12AtomsRemoverC2ERK7t_atoms(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = icmp slt i32 %i.a, 0
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIcSaIcEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPcS1_EEmRKc:bb.a
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !49
  store i8 %i.q, ptr %i.d, align 1, !tbaa !49
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !66
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !67

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !49
  store i8 %i.z, ptr %i.y, align 1, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !66
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !67

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !49
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !49
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !66
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPccEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !63    ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !67

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !49
  store i8 %i.az, ptr %i.au, align 1, !tbaa !49
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %bb.z, !prof !67

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %bb.ab

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.be = load i8, ptr %1, align 1, !tbaa !49
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !49
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i75 = icmp eq ptr %i.ai, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = sub i64 %i.e, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bg) #18
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.ab, %bb.ac
  store ptr %i.au, ptr %0, align 8, !tbaa !63
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !65
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit

_ZSt4fillIPccEvT_S1_RKT0_.exit:                   ; preds = %bb.k, %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit69, %bb.q, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx12AtomsRemover7markAllEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = ptrtoaddr ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.a, i8 1, i64 %i.f, i1 false), !tbaa !49
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEiEvT_S7_RKT0_.exit: ; preds = %bb.a, %.lr.ph.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx12AtomsRemover11markResidueERK7t_atomsib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [36 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52   ; 2 uses
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %4, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = getelementptr [36 x i8], ptr %i.b, i64 %indvars.iv
  %i.i = getelementptr i8, ptr %i.h, i64 -12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !52
  %i.k = icmp eq i32 %i.f, %i.j
  br i1 %i.k, label %bb.b, label %.critedge.loopexit.split.loop.exit27

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.l = icmp sgt i64 %indvars.iv, 1
  br i1 %i.l, label %.lr.ph, label %.critedge, !llvm.loop !68

.critedge.loopexit.split.loop.exit27:             ; preds = %.lr.ph
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit27, %bb.a
  %.0.lcssa = phi i32 [ %2, %bb.a ], [ %5, %.critedge.loopexit.split.loop.exit27 ], [ 0, %bb.b ] ; 2 uses
  %i.m = load i32, ptr %1, align 8, !tbaa !15
  %i.n = icmp slt i32 %.0.lcssa, %i.m
  br i1 %i.n, label %.lr.ph21, label %.critedge2

.lr.ph21:                                         ; preds = %.critedge
  %i.o = zext i1 %3 to i8
  %i.p = sext i32 %.0.lcssa to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph21, %bb.d
  %indvars.iv.a = phi i64 [ %i.p, %.lr.ph21 ], [ %indvars.iv.next.a, %bb.d ] ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.r = getelementptr inbounds [36 x i8], ptr %i.q, i64 %indvars.iv.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !52
  %i.u = icmp eq i32 %i.f, %i.t
  br i1 %i.u, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.a
  store i8 %i.o, ptr %i.w, align 1, !tbaa !49
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.x = load i32, ptr %1, align 8, !tbaa !15
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next.a, %i.y
  br i1 %i.z, label %bb.c, label %.critedge2, !llvm.loop !69

.critedge2:                                       ; preds = %bb.c, %bb.d, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx12AtomsRemover20removeMarkedElementsEPSt6vectorINS_11BasicVectorIfEESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = load ptr, ptr %1, align 8, !tbaa !73
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp eq i64 %i.g, %i.m
  br i1 %i.n, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not14 = icmp eq ptr %i.i, %i.j
  br i1 %.not14, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx12AtomsRemover20removeMarkedElementsEPSt6vectorINS_11BasicVectorIfEESaIS3_EEENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 238) #16
  unreachable

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.o = sext i32 %.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.011.lcssa = phi i64 [ 0, %.preheader ], [ %i.o, %._crit_edge.loopexit ]
  tail call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.011.lcssa)
  ret void

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.p = phi ptr [ %i.y, %bb.d ], [ %i.j, %.preheader ] ; 2 uses
  %i.q = phi ptr [ %i.z, %bb.d ], [ %i.i, %.preheader ]
  %.013 = phi i64 [ %i.aa, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %.01112 = phi i32 [ %.1, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %.013
  %i.s = load i8, ptr %i.r, align 1, !tbaa !49
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.t = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %.013
  %i.v = sext i32 %.01112 to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false), !tbaa.struct !74
  %i.x = add nsw i32 %.01112, 1
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !66
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.y = phi ptr [ %i.p, %.lr.ph ], [ %.pre15, %bb.c ] ; 2 uses
  %i.z = phi ptr [ %i.q, %.lr.ph ], [ %.pre, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %.01112, %.lr.ph ], [ %i.x, %bb.c ] ; 2 uses
  %i.aa = add nuw i64 %.013, 1                    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.aa, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !75
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !73     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.d
  %i.n = sdiv exact i64 %i.m, 12                  ; 2 uses
  %i.o = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i64 768614336404564650, %i.g
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = mul nuw nsw i64 %i.i, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !70
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %1, 768614336404564650
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 768614336404564650) ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #17 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !tbaa.struct !74, !alias.scope !77
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !81

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.aa = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aa) #18
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !76
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ad = icmp ult i64 %1, %i.g
  br i1 %i.ad, label %bb.h, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ae
  br i1 %.not.i4, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !70
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
end_hunk_1
