Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_sprk?download=true
inline.NumInlined: 18
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@arkodeSymplecticSofroniou10:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store <2 x double> <double f0x3F9C96A2FBCEB312, double f0x3FD409C43D2B1134>, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store <2 x double> <double f0x3FB42BF4DB4B9AFF, double 0.000000e+00>, ptr %i.v, align 8, !tbaa !15
  store <2 x double> <double f0x3FA42BF4DB4B9AFF, double f0x3FC914C173FDF7F4>, ptr %i.a, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double f0x3FC5D32E6CE7FC65, double f0xBFB9D077F98B7AC8>, ptr %i.w, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x double> <double f0xBFA93FDDE8B2C7D6, double f0xBFB1C342694A736B>, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x double> <double f0xBFB8EDE5D17FCE62, double f0x3FB7EE86EB2FB0E2>, ptr %i.y, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x double> <double f0x3FCE99A1754E0361, double f0xBF90E1BACA9F4028>, ptr %i.z, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x double> <double f0xBFC2F1F673F1D397, double f0x3FD076EF063055A3>, ptr %i.aa, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <2 x double> <double f0x3FCA05272A299BD9, double f0xBFC966CE0F2B31DC>, ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <2 x double> <double f0xBFC5C40C6A67EAC6, double f0x3FAA447DC35BDDB7>, ptr %i.ac, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <2 x double> <double f0x3FA9AFD8D135B37B, double f0x3FA9578BF38C189E>, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x double> <double f0x3FA9578BF38C189E, double f0x3FA9AFD8D135B37B>, ptr %i.ae, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <2 x double> <double f0x3FAA447DC35BDDB7, double f0xBFC5C40C6A67EAC6>, ptr %i.af, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <2 x double> <double f0xBFC966CE0F2B31DC, double f0x3FCA05272A299BD9>, ptr %i.ag, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <2 x double> <double f0x3FD076EF063055A3, double f0xBFC2F1F673F1D397>, ptr %i.ah, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <2 x double> <double f0xBF90E1BACA9F4028, double f0x3FCE99A1754E0361>, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <2 x double> <double f0x3FB7EE86EB2FB0E2, double f0xBFB8EDE5D17FCE62>, ptr %i.aj, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <2 x double> <double f0xBFB1C342694A736B, double f0xBFA93FDDE8B2C7D6>, ptr %i.ak, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store <2 x double> <double f0xBFB9D077F98B7AC8, double f0x3FC5D32E6CE7FC65>, ptr %i.al, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <2 x double> <double f0x3FC914C173FDF7F4, double f0x3FA42BF4DB4B9AFF>, ptr %i.am, align 8, !tbaa !15
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @ARKodeSPRKTable_LoadByName(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(22) @.str) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %calloc.i.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i.i = icmp eq ptr %calloc.i.i, null
  br i1 %.not.i.i, label %arkodeSymplecticEuler.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !8
  %.not14.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i, label %ARKodeSPRKTable_Free.exit.i.i, label %bb.d

ARKodeSPRKTable_Free.exit.i.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %calloc.i.i) #14
  br label %arkodeSymplecticEuler.exit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #13 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !12
  %.not15.i.i = icmp eq ptr %i.d, null
  br i1 %.not15.i.i, label %ARKodeSPRKTable_Free.exit19.i.i, label %bb.e

ARKodeSPRKTable_Free.exit19.i.i:                  ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.b) #14
  tail call void @free(ptr noundef nonnull %calloc.i.i) #14
  br label %arkodeSymplecticEuler.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 4
  store i32 1, ptr %calloc.i.i, align 8, !tbaa !14
  store i32 1, ptr %i.f, align 4, !tbaa !13
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !15
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !15
  br label %arkodeSymplecticEuler.exit

bb.f:                                             ; preds = %bb.a
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(25) @.str.1) #15
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = tail call fastcc ptr @arkodeSymplecticLeapfrog2()
  br label %arkodeSymplecticEuler.exit

bb.h:                                             ; preds = %bb.f
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(32) @.str.2) #15
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = tail call fastcc ptr @arkodeSymplecticPseudoLeapfrog2()
  br label %arkodeSymplecticEuler.exit

bb.j:                                             ; preds = %bb.h
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(21) @.str.3) #15
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.l = tail call fastcc ptr @arkodeSymplecticRuth3()
  br label %arkodeSymplecticEuler.exit

bb.l:                                             ; preds = %bb.j
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(26) @.str.4) #15
  %.not16 = icmp eq i32 %i.m, 0
  br i1 %.not16, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.n = tail call fastcc ptr @arkodeSymplecticMcLachlan2()
  br label %arkodeSymplecticEuler.exit

bb.n:                                             ; preds = %bb.l
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(26) @.str.5) #15
  %.not17 = icmp eq i32 %i.o, 0
  br i1 %.not17, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.p = tail call fastcc ptr @arkodeSymplecticMcLachlan3()
  br label %arkodeSymplecticEuler.exit

bb.p:                                             ; preds = %bb.n
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(26) @.str.6) #15
  %.not18 = icmp eq i32 %i.q, 0
  br i1 %.not18, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.r = tail call fastcc ptr @arkodeSymplecticMcLachlan4()
  br label %arkodeSymplecticEuler.exit

bb.r:                                             ; preds = %bb.p
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(29) @.str.7) #15
  %.not19 = icmp eq i32 %i.s, 0
  br i1 %.not19, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.t = tail call fastcc ptr @arkodeSymplecticCandyRozmus4()
  br label %arkodeSymplecticEuler.exit

bb.t:                                             ; preds = %bb.r
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(26) @.str.8) #15
  %.not20 = icmp eq i32 %i.u, 0
  br i1 %.not20, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.v = tail call fastcc ptr @arkodeSymplecticMcLachlan5()
  br label %arkodeSymplecticEuler.exit

bb.v:                                             ; preds = %bb.t
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(24) @.str.9) #15
  %.not21 = icmp eq i32 %i.w, 0
  br i1 %.not21, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.x = tail call fastcc ptr @arkodeSymplecticYoshida6()
  br label %arkodeSymplecticEuler.exit

bb.x:                                             ; preds = %bb.v
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(30) @.str.10) #15
  %.not22 = icmp eq i32 %i.y, 0
  br i1 %.not22, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.z = tail call fastcc ptr @arkodeSymplecticSuzukiUmeno816()
  br label %arkodeSymplecticEuler.exit

bb.z:                                             ; preds = %bb.x
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(28) @.str.11) #15
  %.not23 = icmp eq i32 %i.aa, 0
  br i1 %.not23, label %bb.aa, label %arkodeSymplecticEuler.exit

bb.aa:                                            ; preds = %bb.z
  %i.ab = tail call fastcc ptr @arkodeSymplecticSofroniou10()
  br label %arkodeSymplecticEuler.exit

arkodeSymplecticEuler.exit:                       ; preds = %bb.e, %ARKodeSPRKTable_Free.exit19.i.i, %ARKodeSPRKTable_Free.exit.i.i, %bb.b, %bb.z, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g
  %.0 = phi ptr [ null, %bb.z ], [ %i.ab, %bb.aa ], [ %i.z, %bb.y ], [ %i.x, %bb.w ], [ %i.v, %bb.u ], [ %i.t, %bb.s ], [ %i.r, %bb.q ], [ %i.p, %bb.o ], [ %i.n, %bb.m ], [ %i.l, %bb.k ], [ %i.j, %bb.i ], [ %i.h, %bb.g ], [ %calloc.i.i, %bb.e ], [ null, %ARKodeSPRKTable_Free.exit19.i.i ], [ null, %ARKodeSPRKTable_Free.exit.i.i ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias nonnull ptr @ARKodeSPRKTable_Copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
ARKodeSPRKTable_Alloc.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13   ; 6 uses
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %calloc.i) ]
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #13 ; 7 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.d) #13 ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 %i.b, ptr %i.k, align 4, !tbaa !13
  %i.l = load i32, ptr %0, align 8, !tbaa !14
  store i32 %i.l, ptr %calloc.i, align 8, !tbaa !14
  %i.m = icmp sgt i32 %i.b, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ARKodeSPRKTable_Alloc.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 4 uses
  %min.iters.check = icmp ult i32 %i.b, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.s = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.t = sub i64 %i.f, %i.i
  %diff.check = icmp ugt i64 %i.t, -32
  %i.u = sub i64 %i.s, %i.f
  %diff.check16 = icmp ugt i64 %i.u, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  %i.v = sub i64 %i.f, %i.r
  %diff.check17 = icmp ugt i64 %i.v, -32
  %conflict.rdx18 = or i1 %conflict.rdx, %diff.check17
  %i.w = sub i64 %i.s, %i.i
  %diff.check19 = icmp ugt i64 %i.w, -32
  %conflict.rdx20 = or i1 %conflict.rdx18, %diff.check19
  %i.x = sub i64 %i.r, %i.i
  %diff.check21 = icmp ugt i64 %i.x, -32
  %conflict.rdx22 = or i1 %conflict.rdx20, %diff.check21
  br i1 %conflict.rdx22, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <2 x double>, ptr %i.y, align 8, !tbaa !15
  %wide.load23 = load <2 x double>, ptr %i.z, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %wide.load, ptr %i.aa, align 8, !tbaa !15
  store <2 x double> %wide.load23, ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load24 = load <2 x double>, ptr %i.ac, align 8, !tbaa !15
  %wide.load25 = load <2 x double>, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x double> %wide.load24, ptr %i.ae, align 8, !tbaa !15
  store <2 x double> %wide.load25, ptr %i.af, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %lcmp.mod.not = trunc i32 %i.b to i1
  br i1 %lcmp.mod.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.ph
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.ph
  store double %i.ai, ptr %i.aj, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.ph
  %i.al = load double, ptr %i.ak, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.ph
  store double %i.al, ptr %i.am, align 8, !tbaa !15
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.an = add nsw i64 %wide.trip.count, -1
  %i.ao = icmp eq i64 %indvars.iv.ph, %i.an
  br i1 %i.ao, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.aq, ptr %i.ar, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.at = load double, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.at, ptr %i.au, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.aw = load double, ptr %i.av, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  store double %i.aw, ptr %i.ax, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.az = load double, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next
  store double %i.az, ptr %i.ba, align 8, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %ARKodeSPRKTable_Alloc.exit
  ret ptr %calloc.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ARKodeSPRKTable_Space(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #7 {
bb.a:
  store i64 2, ptr %1, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = shl nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  store i64 %i.d, ptr %2, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @ARKodeSPRKTable_Write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !25
  %i.c = call i32 @ARKodeSPRKTable_ToButcher(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  tail call void @ARKodeButcherTable_Write(ptr noundef %i.d, ptr noundef %1) #14
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  tail call void @ARKodeButcherTable_Write(ptr noundef %i.e, ptr noundef %1) #14
  tail call void @ARKodeButcherTable_Free(ptr noundef %i.d) #14
  tail call void @ARKodeButcherTable_Free(ptr noundef %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @ARKodeSPRKTable_ToButcher(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = tail call ptr @ARKodeButcherTable_Alloc(i32 noundef %i.b, i32 noundef 0) #14 ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !13
  %i.e = tail call ptr @ARKodeButcherTable_Alloc(i32 noundef %i.d, i32 noundef 0) #14 ; 7 uses
  %.not73 = icmp eq ptr %i.e, null
  br i1 %.not73, label %bb.c, label %.preheader80

.preheader80:                                     ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 4, !tbaa !13   ; 5 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph98, label %._crit_edge99

.lr.ph98:                                         ; preds = %.preheader80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 13 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.s = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !31
  %wide.trip.count117 = zext nneg i32 %i.f to i64
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !12   ; 8 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !27
  %wide.trip.count127 = zext nneg i32 %i.f to i64
  %wide.trip.count137 = zext nneg i32 %i.f to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ARKodeButcherTable_Free(ptr noundef nonnull %i.c) #14
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph98, %._crit_edge95
  %.06697 = phi i32 [ 0, %.lr.ph98 ], [ %.4.lcssa, %._crit_edge95 ] ; 5 uses
  %i.z = sext i32 %.06697 to i64                  ; 3 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.z
  store double %i.ab, ptr %i.ac, align 8, !tbaa !15
  %.not7481 = icmp slt i32 %.06697, 0
  br i1 %.not7481, label %.preheader76.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.z
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33 ; 7 uses
  %i.ag = add nuw i32 %.06697, 1
  %wide.trip.count = zext i32 %i.ag to i64        ; 4 uses
  %min.iters.check146 = icmp ult i32 %.06697, 3
  %i.ah = ptrtoaddr ptr %i.af to i64
  %i.ai = sub i64 %i.j, %i.ah
  %diff.check144 = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check146, i1 true, i1 %diff.check144
  br i1 %or.cond, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph
  %n.vec148 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next153, %vector.body149 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index150 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load151 = load <2 x double>, ptr %i.aj, align 8, !tbaa !15
  %wide.load152 = load <2 x double>, ptr %i.ak, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index150 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> %wide.load151, ptr %i.al, align 8, !tbaa !15
  store <2 x double> %wide.load152, ptr %i.am, align 8, !tbaa !15
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next153, %n.vec148
  br i1 %i.an, label %middle.block154, label %vector.body149, !llvm.loop !34

middle.block154:                                  ; preds = %vector.body149
  %cmp.n155 = icmp eq i64 %n.vec148, %wide.trip.count
  br i1 %cmp.n155, label %.preheader76.preheader, label %scalar.ph145.preheader

scalar.ph145.preheader:                           ; preds = %.lr.ph, %middle.block154
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec148, %middle.block154 ] ; 3 uses
  %i.ao = zext nneg i32 %.06697 to i64
  %i.ap = sub nsw i64 %i.ao, %indvars.iv.ph
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph145.prol.loopexit, label %scalar.ph145.prol

scalar.ph145.prol:                                ; preds = %scalar.ph145.preheader, %scalar.ph145.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph145.prol ], [ %indvars.iv.ph, %scalar.ph145.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph145.prol ], [ 0, %scalar.ph145.preheader ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.prol
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.prol
  store double %i.ar, ptr %i.as, align 8, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph145.prol.loopexit, label %scalar.ph145.prol, !llvm.loop !35

scalar.ph145.prol.loopexit:                       ; preds = %scalar.ph145.prol, %scalar.ph145.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph145.preheader ], [ %indvars.iv.next.prol, %scalar.ph145.prol ]
  %i.at = icmp ult i64 %i.ap, 3
  br i1 %i.at, label %.preheader76.preheader, label %scalar.ph145

end_hunk_0
