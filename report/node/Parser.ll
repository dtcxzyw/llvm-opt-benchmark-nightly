Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/Parser?download=true
inline.NumInlined: 6129
inline.NumDeleted: 2841
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4LIEF2PE6Parser17parse_relocationsEv:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ex = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ek, i64 %i.ex ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.dz, i64 %i.ex ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.ey = getelementptr i8, ptr %next.gep138, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep138, align 8, !alias.scope !84, !noalias !79
  %wide.load139 = load <2 x i64>, ptr %i.ey, align 8, !alias.scope !84, !noalias !79
  %i.ez = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !87, !noalias !84
  store <2 x i64> %wide.load139, ptr %i.ez, align 8, !alias.scope !87, !noalias !84
  %i.fa = getelementptr i8, ptr %next.gep138, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep138, align 8, !alias.scope !84, !noalias !79
  store <2 x ptr> splat (ptr null), ptr %i.fa, align 8, !alias.scope !84, !noalias !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i45.preheader165

.lr.ph.i.i.i.i45.preheader165:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i45.preheader, %middle.block
  %.012.i.i.i.i46.ph = phi ptr [ %i.ek, %vector.memcheck ], [ %i.ek, %.lr.ph.i.i.i.i45.preheader ], [ %i.ev, %middle.block ]
  %.0911.i.i.i.i47.ph = phi ptr [ %i.dz, %vector.memcheck ], [ %i.dz, %.lr.ph.i.i.i.i45.preheader ], [ %i.ew, %middle.block ]
  br label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph.i.i.i.i45.preheader165, %.lr.ph.i.i.i.i45
  %.012.i.i.i.i46 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i45 ], [ %.012.i.i.i.i46.ph, %.lr.ph.i.i.i.i45.preheader165 ] ; 2 uses
  %.0911.i.i.i.i47 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i45 ], [ %.0911.i.i.i.i47.ph, %.lr.ph.i.i.i.i45.preheader165 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.fc = load i64, ptr %.0911.i.i.i.i47, align 8, !alias.scope !82, !noalias !79
  store i64 %i.fc, ptr %.012.i.i.i.i46, align 8, !alias.scope !79, !noalias !82
  store ptr null, ptr %.0911.i.i.i.i47, align 8, !alias.scope !82, !noalias !79
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i47, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i46, i64 8 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.fd, %i.dt
  br i1 %.not.i.i.i.i48, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i45, !llvm.loop !90

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i45, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i49 = phi ptr [ %i.ek, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ev, %middle.block ], [ %i.fe, %.lr.ph.i.i.i.i45 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i49, i64 8
  %.not.i23.i56 = icmp eq ptr %i.dz, null
  br i1 %.not.i23.i56, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.fg = load ptr, ptr %i.du, align 8
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = sub i64 %i.fh, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.fi) #18
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.r
  store ptr %i.ek, ptr %i.dr, align 8
  store ptr %i.ff, ptr %i.ds, align 8
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.fj, ptr %i.du, align 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.d, %bb.c
  %i.fk = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.101) #19 ; 0 uses
  %i.fl = load ptr, ptr %i.af, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #19, !inline_history !91
  br label %.critedge

_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.fo = load i32, ptr %i.ae, align 4
  %i.fp = add i32 %i.fo, %.02997                  ; 3 uses
  %i.fq = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.fr = zext i32 %i.fp to i64                   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 3 uses
  %i.ft = load i64, ptr %i.fs, align 8
  store i64 %i.fr, ptr %i.fs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i64 0, ptr %1, align 8
  %i.fu = load ptr, ptr %i.fq, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 96
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = call i64 %i.fw(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull %1, i64 noundef %i.fr, i64 noundef 8, i64 noundef 0) #19, !inline_history !58
  %i.fy = and i64 %i.fx, 4294967296               ; 2 uses
  %.not.not.i.i34 = icmp eq i64 %i.fy, 0          ; 2 uses
  %i.fz = load i64, ptr %1, align 8
  %.lobit.i.i35 = lshr exact i64 %i.fy, 32
  %spec.select.i.i36 = trunc nuw nsw i64 %.lobit.i.i35 to i8
  %spec.select8.i.i37 = select i1 %.not.not.i.i34, i64 1, i64 %i.fz ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  store i64 %i.ft, ptr %i.fs, align 8
  store i64 %spec.select8.i.i37, ptr %3, align 8
  store i8 %spec.select.i.i36, ptr %.sroa.216.0..sroa_idx, align 8
  %i.ga = icmp uge i32 %i.fp, %i.q
  %or.cond = select i1 %.not.not.i.i34, i1 true, i1 %i.ga
  %i.gb = and i64 %spec.select8.i.i37, 4294967295
  %.not = icmp eq i64 %i.gb, 0
  %or.cond85 = select i1 %or.cond, i1 true, i1 %.not
  br i1 %or.cond85, label %.critedge, label %bb.c

.critedge:                                        ; preds = %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit, %.preheader, %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.thread, %bb.b
  %.sroa.3.0 = phi i64 [ 1, %bb.b ], [ 4294967297, %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.thread ], [ 4294967297, %.preheader ], [ 4294967297, %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %.critedge
  %.sroa.070.0.insert.insert = phi i64 [ %.sroa.3.0, %.critedge ], [ 2, %bb.a ]
  ret i64 %.sroa.070.0.insert.insert
}

declare noundef i64 @_ZNK4LIEF2PE6Binary13rva_to_offsetEm(ptr noundef nonnull align 8 dereferenceable(736), i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN4LIEF2PE15RelocationEntry14type_from_dataENS0_6Header13MACHINE_TYPESEt(i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 4294967298) i64 @_ZN4LIEF2PE6Parser15parse_resourcesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(215) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.224", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.101) #19 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr @_ZNK4LIEF2PE6Binary14data_directoryENS0_13DataDirectory5TYPESE(ptr noundef nonnull align 8 dereferenceable(736) %i.c, i32 noundef 2) #19 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.101) #19 ; 0 uses
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = zext i32 %i.g to i64
  %i.k = tail call noundef i64 @_ZNK4LIEF2PE6Binary13rva_to_offsetEm(ptr noundef nonnull align 8 dereferenceable(736) %i.i, i64 noundef %i.j) #19
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.101) #19 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.k, 4294967295
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.r = load ptr, ptr %i.b, align 8
  call void @_ZN4LIEF2PE12ResourceNode5parseERNS_12BinaryStreamERKNS0_6BinaryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.224") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(736) %i.r) #19
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 696 ; 2 uses
  %i.u = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %i.v = load ptr, ptr %i.t, align 8              ; 3 uses
  store ptr %i.u, ptr %i.t, align 8
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.b
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(76) %i.v) #19, !inline_history !92
  %.pr = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit
  %i.z = load ptr, ptr %.pr, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(76) %.pr) #19, !inline_history !93
  br label %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 696
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i3 = icmp eq ptr %i.ae, null
  br i1 %.not.i3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.101) #19 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit, %bb.c
  %.sroa.3.0 = phi i64 [ 1, %bb.c ], [ 4294967297, %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit ]
  store i64 %i.q, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sroa.09.0.insert.insert = phi i64 [ %.sroa.3.0, %bb.d ], [ 2, %bb.a ]
  ret i64 %.sroa.09.0.insert.insert
}

declare void @_ZN4LIEF2PE12ResourceNode5parseERNS_12BinaryStreamERKNS0_6BinaryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.224") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(736)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 4294967297) i64 @_ZN4LIEF2PE6Parser18parse_string_tableEv(ptr noundef nonnull align 8 dereferenceable(215) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %1 = alloca %"class.std::vector.73", align 8    ; 8 uses
  %2 = alloca %"class.LIEF::SpanStream", align 8  ; 11 uses
  %3 = alloca %"class.LIEF::result.373", align 8  ; 10 uses
  %4 = alloca %"class.LIEF::COFF::String", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.101) #19 ; 0 uses
  %i.i = load i32, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 196
  %i.k = load i32, ptr %i.j, align 4
  %i.l = mul i32 %i.k, 18
  %i.m = add i32 %i.l, %i.i
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.101) #19 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = zext i32 %i.m to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call i64 %i.x(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull %i.b, i64 noundef %i.u, i64 noundef 4, i64 noundef 0) #19, !inline_history !94
  %i.z = and i64 %i.y, 4294967296
  %.not.i.i = icmp eq i64 %i.z, 0
  store i64 %i.u, ptr %i.t, align 8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.c

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !6, !noundef !7
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #19
  %.pre.i = load i64, ptr %i.t, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.c, %bb.d
  %i.ad = phi i64 [ %i.u, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ae = load i32, ptr %i.b, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.af = add i64 %i.ad, 4
  store i64 %i.af, ptr %i.t, align 8
  %i.ag = icmp ult i32 %i.ae, 5
  br i1 %i.ag, label %bb.q, label %bb.e

bb.e:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.ah = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.ai = add i32 %i.ae, -4
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call i64 %i.am(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aj) #19 ; 2 uses
  %i.ao = and i64 %i.an, 4294967296
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ap = and i64 %i.an, 4294967295
  br label %bb.o

.critedge:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.aq = load ptr, ptr %1, align 8               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 3, ptr %i.ay, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %2, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.aq, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.av, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.g

bb.g:                                             ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, %.critedge
  %i.bk = load i64, ptr %i.aw, align 8
  %i.bl = load ptr, ptr %2, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %2) #19, !inline_history !95
  %i.bp = icmp ult i64 %i.bk, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.bq = load i64, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNK4LIEF12BinaryStream11read_stringB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.373") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef -1) #19
  %i.br = load i8, ptr %i.bb, align 8, !range !6, !noundef !7
  %i.bs = trunc nuw i8 %i.br to i1                ; 2 uses
  br i1 %i.bs, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.bt = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.101) #19 ; 0 uses
  %i.bu = trunc i64 %i.bq to i32
  %i.bv = add i32 %i.bu, 4                        ; 2 uses
  store ptr %i.bc, ptr %5, align 8
  %i.bw = load ptr, ptr %3, align 8               ; 3 uses
  %i.bx = icmp eq ptr %i.bw, %i.bd
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.i
  %i.by = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.ca, i1 false)
  store ptr %i.bd, ptr %3, align 8
  store i64 0, ptr %i.be, align 8
  store i8 0, ptr %i.bd, align 8
  store ptr %i.bg, ptr %4, align 8
  br label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.i
  %i.cb = load i64, ptr %i.bd, align 8
  store i64 %i.cb, ptr %i.bc, align 8
  %.pre = load i64, ptr %i.be, align 8            ; 2 uses
  store ptr %i.bd, ptr %3, align 8
  store i64 0, ptr %i.be, align 8
  store i8 0, ptr %i.bd, align 8
  store ptr %i.bg, ptr %4, align 8
  %i.cc = icmp eq ptr %i.bw, %i.bc
  br i1 %i.cc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.cd = phi i64 [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = add nuw nsw i64 %i.cd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.cf, i1 false)
  br label %_ZN4LIEF4COFF6StringC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.bw, ptr %4, align 8
  %i.cg = load i64, ptr %i.bc, align 8
  store i64 %i.cg, ptr %i.bg, align 8
  br label %_ZN4LIEF4COFF6StringC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4LIEF4COFF6StringC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ch = phi i64 [ %i.cd, %bb.j ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  store i64 %i.ch, ptr %i.bh, align 8
  store ptr %i.bc, ptr %5, align 8
  store i64 0, ptr %i.bf, align 8
  store i8 0, ptr %i.bc, align 8
  store i32 %i.bv, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 %i.bv, ptr %i.a, align 4
  %i.ci = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 456
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 464
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.cj, align 8
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 40
  %i.cr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i64 %i.cq, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 464 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 472
  %i.cw = load ptr, ptr %i.cv, align 8
  %.not.i.i.i = icmp eq ptr %i.cu, %i.cw
  br i1 %.not.i.i.i, label %_ZN4LIEF2PE6Parser7memoizeENS_4COFF6StringE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4LIEF4COFF6StringC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 3 uses
  store ptr %i.cx, ptr %i.cu, align 8
  %i.cy = load ptr, ptr %4, align 8               ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bg
  br i1 %i.cz, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.da = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.db = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.db)
  %i.dc = add nuw nsw i64 %i.da, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cx, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.dc, i1 false)
  br label %_ZN4LIEF2PE6Parser7memoizeENS_4COFF6StringE.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  store ptr %i.cy, ptr %i.cu, align 8
  %i.dd = load i64, ptr %i.bg, align 8
  store i64 %i.dd, ptr %i.cx, align 8
  %.pre25 = load i64, ptr %i.bh, align 8
  br label %_ZN4LIEF2PE6Parser7memoizeENS_4COFF6StringE.exit.thread

_ZN4LIEF2PE6Parser7memoizeENS_4COFF6StringE.exit.thread: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.de = phi i64 [ %.pre25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.da, %bb.l ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.de, ptr %i.df, align 8
  store ptr %i.bg, ptr %4, align 8
  store i64 0, ptr %i.bh, align 8
  store i8 0, ptr %i.bg, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dh = load i32, ptr %i.bi, align 8
  store i32 %i.dh, ptr %i.dg, align 8
  %i.di = load ptr, ptr %i.ct, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store ptr %i.dj, ptr %i.ct, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN4LIEF4COFF6StringD2Ev.exit

_ZN4LIEF2PE6Parser7memoizeENS_4COFF6StringE.exit: ; preds = %_ZN4LIEF4COFF6StringC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cs, i64 456
  call void @_ZNSt6vectorIN4LIEF4COFF6StringESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr %i.cu, ptr noundef nonnull align 8 dereferenceable(36) %4)
  %.pre26 = load ptr, ptr %4, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.dl = icmp eq ptr %.pre26, %i.bg
  br i1 %i.dl, label %_ZN4LIEF4COFF6StringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4LIEF2PE6Parser7memoizeENS_4COFF6StringE.exit
  %i.dm = load i64, ptr %i.bg, align 8
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %.pre26, i64 noundef %i.dn) #18
  br label %_ZN4LIEF4COFF6StringD2Ev.exit

_ZN4LIEF4COFF6StringD2Ev.exit:                    ; preds = %_ZN4LIEF2PE6Parser7memoizeENS_4COFF6StringE.exit, %_ZN4LIEF2PE6Parser7memoizeENS_4COFF6StringE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.do = load ptr, ptr %5, align 8               ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.bc
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZN4LIEF4COFF6StringD2Ev.exit
  %i.dq = load i64, ptr %i.bc, align 8
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4LIEF4COFF6StringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.h
  %i.ds = load i8, ptr %i.bb, align 8, !range !6, !noundef !7
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.m, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.du = load ptr, ptr %3, align 8               ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bd
  br i1 %i.dv, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.m
  %i.dw = load i64, ptr %i.bd, align 8
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #18
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %i.bs, label %bb.g, label %bb.n

bb.n:                                             ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, %bb.g
  %i.dy = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.101) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.n
  %.sroa.3.0 = phi i64 [ 4294967296, %bb.n ], [ %i.ap, %bb.f ]
  %i.dz = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.q

bb.q:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit, %bb.a
  %.sroa.3.2 = phi i64 [ 4294967296, %bb.a ], [ 1, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ %.sroa.3.0, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ 4294967296, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ]
  ret i64 %.sroa.3.2
}

declare void @_ZNK4LIEF12BinaryStream11read_stringB5cxx11Em(ptr dead_on_unwind writable sret(%"class.LIEF::result.373") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE6Parser7memoizeENS_4COFF6StringE(ptr noundef nonnull align 8 dereferenceable(215) %0, ptr noundef align 8 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 456
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i64 %i.m, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 464 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 472
  %i.t = load ptr, ptr %i.s, align 8
  %.not.i.i = icmp eq ptr %i.r, %i.t
end_hunk_0
