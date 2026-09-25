Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.15?download=true
inline.NumInlined: 288
inline.NumDeleted: 102
begin_hunk_0_@_RNvXs_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB4_18CoffComdatIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump:bb.a
  %.not.i.i = icmp ne i8 %.val, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  %.val1.i.i = load i8, ptr %i.q, align 1, !alias.scope !88, !noalias !89
  %i.r = icmp eq i8 %.val1.i.i, 3
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val2.i.i = load i16, ptr %i.s, align 1, !alias.scope !87, !noalias !89
  %i.t = icmp eq i16 %.val2.i.i, 0
  %or.cond.i = select i1 %or.cond.i.i, i1 %i.t, i1 false
  br i1 %or.cond.i, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.val19.i = load i32, ptr %i.u, align 1, !alias.scope !87, !noalias !89 ; 3 uses
  %i.v = icmp sgt i32 %.val19.i, 0
  br i1 %i.v, label %bb.e, label %.backedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !90
  call void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_11SymbolTableRShNtNtBb_2pe22AnonObjectHeaderBigobjE3getNtB1b_21ImageAuxSymbolSectionECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, i64 noundef %i.k, i64 noundef 1), !noalias !91
  %i.w = load ptr, ptr %i.b, align 8, !noalias !90, !noundef !6
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90
  br label %.backedge

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.i, align 8, !noalias !90, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  %i.z = load i8, ptr %i.y, align 1, !noalias !91, !noundef !6 ; 2 uses
  switch i8 %i.z, label %.preheader.i [
    i8 0, label %.backedge
    i8 5, label %.backedge
  ]

.preheader.i:                                     ; preds = %bb.g, %bb.i
  %.sroa.05.0.i = phi i64 [ %i.ad, %bb.i ], [ %i.k, %bb.g ]
  %.sroa.0.0.i = phi ptr [ %i.af, %bb.i ], [ %i.l, %bb.g ]
  %i.aa = getelementptr i8, ptr %.sroa.0.0.i, i64 19
  %.sroa.0.0.val.i = load i8, ptr %i.aa, align 1, !noalias !92, !noundef !6
  %i.ab = zext i8 %.sroa.0.0.val.i to i64
  %i.ac = add i64 %.sroa.05.0.i, 1
  %i.ad = add i64 %i.ac, %i.ab                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  call void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_11SymbolTableRShNtNtBb_2pe22AnonObjectHeaderBigobjE3getNtB1b_13ImageSymbolExECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, i64 noundef %i.ad, i64 noundef 0), !noalias !91
  %i.ae = load ptr, ptr %i.a, align 8, !noalias !90, !noundef !6
  %.not18.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  br label %.backedge

bb.i:                                             ; preds = %.preheader.i
  %i.af = load ptr, ptr %i.j, align 8, !noalias !90, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  %i.ag = getelementptr i8, ptr %i.af, i64 12
  %.val.i = load i32, ptr %i.ag, align 1, !noalias !91
  %i.ah = icmp eq i32 %.val19.i, %.val.i
  br i1 %i.ah, label %.loopexit, label %.preheader.i

.backedge:                                        ; preds = %bb.g, %bb.g, %bb.d, %bb.c, %bb.f, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_11SymbolTableRShNtNtBb_2pe22AnonObjectHeaderBigobjE3getNtB1b_13ImageSymbolExECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, i64 noundef %i.p, i64 noundef 0)
  %i.ai = load ptr, ptr %i.c, align 8, !noundef !6
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.c, label %._crit_edge

.loopexit:                                        ; preds = %bb.i
  store ptr %i.af, ptr %.sroa.417.0..sroa_idx.i, align 8
  store i64 %i.ad, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i32 %.val19.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i8 %i.z, ptr %.sroa.7.0..sroa_idx.i, align 4
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.b
  %storemerge = phi ptr [ null, %bb.b ], [ %i.e, %.loopexit ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB4_18CoffComdatIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_11SymbolTable3getNtNtBb_2pe11ImageSymbolECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, i64 noundef %.promoted, i64 noundef 0)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !6
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %.sroa.417.0..sroa_idx.i.promoted = load ptr, ptr %.sroa.417.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i.promoted = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i.promoted = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i.promoted = load i8, ptr %.sroa.7.0..sroa_idx.i, align 4
  br label %bb.c

._crit_edge:                                      ; preds = %.backedge
  store ptr %.sroa.417.0..sroa_idx.i.promoted, ptr %.sroa.417.0..sroa_idx.i, align 8
  store i64 %.sroa.5.0..sroa_idx.i.promoted, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i32 %.sroa.6.0..sroa_idx.i.promoted, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i8 %.sroa.7.0..sroa_idx.i.promoted, ptr %.sroa.7.0..sroa_idx.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.k = phi i64 [ %.promoted, %.lr.ph ], [ %i.p, %.backedge ] ; 3 uses
  %i.l = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = getelementptr i8, ptr %i.l, i64 17
  %.val = load i8, ptr %i.m, align 1, !noundef !6 ; 2 uses
  %i.n = zext i8 %.val to i64
  %i.o = add i64 %i.k, 1
  %i.p = add i64 %i.o, %i.n                       ; 3 uses
  store i64 %i.p, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %.not.i.i = icmp ne i8 %.val, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val1.i.i = load i8, ptr %i.q, align 1, !alias.scope !100, !noalias !101
  %i.r = icmp eq i8 %.val1.i.i, 3
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %.val2.i.i = load i16, ptr %i.s, align 1, !alias.scope !99, !noalias !101
  %i.t = icmp eq i16 %.val2.i.i, 0
  %or.cond.i = select i1 %or.cond.i.i, i1 %i.t, i1 false
  br i1 %or.cond.i, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.val19.i = load i16, ptr %i.u, align 1, !alias.scope !99, !noalias !101 ; 3 uses
  %i.v = icmp ugt i16 %.val19.i, -257
  %i.w = sext i16 %.val19.i to i32
  %i.x = zext i16 %.val19.i to i32
  %.sroa.0.0.i20.i = select i1 %i.v, i32 %i.w, i32 %i.x ; 3 uses
  %i.y = icmp sgt i32 %.sroa.0.0.i20.i, 0
  br i1 %i.y, label %bb.e, label %.backedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  call void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_11SymbolTable3getNtNtBb_2pe21ImageAuxSymbolSectionECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, i64 noundef %i.k, i64 noundef 1), !noalias !103
  %i.z = load ptr, ptr %i.b, align 8, !noalias !102, !noundef !6
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  br label %.backedge

bb.g:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.i, align 8, !noalias !102, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !103, !noundef !6 ; 2 uses
  switch i8 %i.ac, label %.preheader.i [
    i8 0, label %.backedge
    i8 5, label %.backedge
  ]

.preheader.i:                                     ; preds = %bb.g, %bb.i
  %.sroa.05.0.i = phi i64 [ %i.ag, %bb.i ], [ %i.k, %bb.g ]
  %.sroa.0.0.i = phi ptr [ %i.ai, %bb.i ], [ %i.l, %bb.g ]
  %i.ad = getelementptr i8, ptr %.sroa.0.0.i, i64 17
  %.sroa.0.0.val.i = load i8, ptr %i.ad, align 1, !noalias !104, !noundef !6
  %i.ae = zext i8 %.sroa.0.0.val.i to i64
  %i.af = add i64 %.sroa.05.0.i, 1
  %i.ag = add i64 %i.af, %i.ae                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  call void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_11SymbolTable3getNtNtBb_2pe11ImageSymbolECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, i64 noundef %i.ag, i64 noundef 0), !noalias !103
  %i.ah = load ptr, ptr %i.a, align 8, !noalias !102, !noundef !6
  %.not18.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br label %.backedge

bb.i:                                             ; preds = %.preheader.i
  %i.ai = load ptr, ptr %i.j, align 8, !noalias !102, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  %i.aj = getelementptr i8, ptr %i.ai, i64 12
  %.val.i = load i16, ptr %i.aj, align 1, !noalias !103 ; 2 uses
  %2 = icmp ult i16 %.val.i, -256
  %i.ak = zext i16 %.val.i to i32
  %3 = icmp eq i32 %.sroa.0.0.i20.i, %i.ak
  %4 = and i1 %2, %3
  br i1 %4, label %.loopexit, label %.preheader.i

.backedge:                                        ; preds = %bb.g, %bb.g, %bb.d, %bb.c, %bb.f, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_11SymbolTable3getNtNtBb_2pe11ImageSymbolECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, i64 noundef %i.p, i64 noundef 0)
  %i.al = load ptr, ptr %i.c, align 8, !noundef !6
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.c, label %._crit_edge

.loopexit:                                        ; preds = %bb.i
  store ptr %i.ai, ptr %.sroa.417.0..sroa_idx.i, align 8
  store i64 %i.ag, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i32 %.sroa.0.0.i20.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i8 %i.ac, ptr %.sroa.7.0..sroa_idx.i, align 4
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.b
  %storemerge = phi ptr [ null, %bb.b ], [ %i.e, %.loopexit ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i16 @_RNvXsb_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtNtBb_5macho7Nlist64NtNtBb_6endian10EndiannessENtB5_5Nlist6n_descCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 1 ; 2 uses
  %i.b = tail call i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload)
  %.sroa.03.0.i = select i1 %1, i16 %i.b, i16 %.sroa.0.0.copyload
  ret i16 %.sroa.03.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXsb_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtNtBb_5macho7Nlist64NtNtBb_6endian10EndiannessENtB5_5Nlist7n_valueCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 1 ; 2 uses
  %i.b = tail call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload)
  %.sroa.03.0.i = select i1 %1, i64 %i.b, i64 %.sroa.0.0.copyload
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtCseHTIzroA4w0_6object5macho12MachHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho4file10MachHeader6endianCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 9)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(28) %1) unnamed_addr #1 {
bb.a:
  %.val = load i32, ptr %1, align 1
  %i.a = icmp eq i32 %.val, -822415874
  %..i = zext i1 %i.a to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %..i, ptr %i.b, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtCseHTIzroA4w0_6object5macho12MachHeader64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho4file10MachHeader6endianCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 9)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %.val = load i32, ptr %1, align 1
  %i.a = icmp eq i32 %.val, -805638658
  %..i = zext i1 %i.a to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %..i, ptr %i.b, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtCseHTIzroA4w0_6object5macho16SegmentCommand32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7segment7Segment15section_offsetsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 34)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(56) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, 135637824071393762) %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i32, ptr %i.a, align 1             ; 2 uses
  %i.b = tail call i32 @llvm.bswap.i32(i32 %.val)
  %.sroa.03.0.i.i = select i1 %2, i32 %i.b, i32 %.val
  %i.c = zext i32 %.sroa.03.0.i.i to i64          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val1 = load i32, ptr %i.d, align 1            ; 2 uses
  %i.e = tail call i32 @llvm.bswap.i32(i32 %.val1)
  %.sroa.03.0.i.i2 = select i1 %2, i32 %i.e, i32 %.val1
  %i.f = zext i32 %.sroa.03.0.i.i2 to i64
  %i.g = add nuw nsw i64 %i.f, %i.c               ; 2 uses
  %i.h = getelementptr inbounds nuw [68 x i8], ptr %3, i64 %4
  %i.i = icmp samesign ugt i64 %i.g, 4294967295
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = zext i1 %2 to i8
  store i8 %i.k, ptr %i.j, align 8
  store ptr %3, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.n = zext i1 %i.i to i8
  store i8 %i.n, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.g, ptr %i.p, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvYINtNtCseHTIzroA4w0_6object5macho16SegmentCommand32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7segment7Segment4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !107, !nonnull !6, !noundef !6
  %i.d = tail call { i64, ptr } %i.c(i8 noundef 0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.b), !noalias !107, !inline_history !0 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.d, 1
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %.not.i = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %.not.i)
  br label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ %i.j, %bb.b ], [ 16, %bb.a ]
  %i.k = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.l = insertvalue { ptr, i64 } %i.k, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtCseHTIzroA4w0_6object5macho16SegmentCommand64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7segment7Segment15section_offsetsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 34)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(72) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, 115292150460684698) %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load i64, ptr %i.a, align 1             ; 2 uses
  %i.b = tail call i64 @llvm.bswap.i64(i64 %.val)
  %.sroa.03.0.i.i = select i1 %2, i64 %i.b, i64 %.val ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val1 = load i64, ptr %i.c, align 1            ; 2 uses
  %i.d = tail call i64 @llvm.bswap.i64(i64 %.val1)
  %.sroa.03.0.i.i2 = select i1 %2, i64 %i.d, i64 %.val1
  %i.e = add i64 %.sroa.03.0.i.i2, %.sroa.03.0.i.i ; 2 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %3, i64 %4
  %i.g = icmp ugt i64 %i.e, 4294967295
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = zext i1 %2 to i8
  store i8 %i.i, ptr %i.h, align 8
  store ptr %3, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.l = zext i1 %i.g to i8
  store i8 %i.l, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.03.0.i.i, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.n, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvYINtNtCseHTIzroA4w0_6object5macho16SegmentCommand64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7segment7Segment4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !110, !nonnull !6, !noundef !6
  %i.d = tail call { i64, ptr } %i.c(i8 noundef 0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.b), !noalias !110, !inline_history !0 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.d, 1
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %.not.i = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %.not.i)
  br label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ %i.j, %bb.b ], [ 16, %bb.a ]
  %i.k = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.l = insertvalue { ptr, i64 } %i.k, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtCseHTIzroA4w0_6object5macho7Nlist32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho6symbol5Nlist12is_undefinedCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(12) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val = load i8, ptr %i.a, align 1, !noundef !6
  %i.b = and i8 %.val, -18
  %or.cond = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 1
  %i.d = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %.sroa.0.0 = select i1 %or.cond, i1 %i.d, i1 false
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtCseHTIzroA4w0_6object5macho7Nlist32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho6symbol5Nlist13is_definitionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(12) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_0
begin_hunk_1_@_RNvYINtNtCseHTIzroA4w0_6object5macho7Nlist64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho6symbol5Nlist13is_definitionCs8aoZCP6pRcV_7objdump:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val = load i8, ptr %i.a, align 1, !noundef !6
  %i.b = and i8 %.val, -18
  %.sroa.0.0 = icmp eq i8 %i.b, 14
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtCseHTIzroA4w0_6object5macho7Nlist64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho6symbol5Nlist9is_commonCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val = load i8, ptr %i.a, align 1, !noundef !6
  %i.b = and i8 %.val, -18
  %or.cond = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 1
  %i.d = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %.sroa.0.0 = select i1 %or.cond, i1 %i.d, i1 false
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvYINtNtCseHTIzroA4w0_6object5macho9Section32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section12segment_nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(68) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !113, !nonnull !6, !noundef !6
  %i.d = tail call { i64, ptr } %i.c(i8 noundef 0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.b), !noalias !113, !inline_history !0 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.d, 1
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %.not.i = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %.not.i)
  br label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ %i.j, %bb.b ], [ 16, %bb.a ]
  %i.k = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.l = insertvalue { ptr, i64 } %i.k, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvYINtNtCseHTIzroA4w0_6object5macho9Section32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(68) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !116, !nonnull !6, !noundef !6
  %i.c = tail call { i64, ptr } %i.b(i8 noundef 0, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.a), !noalias !116, !inline_history !0 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.c, 1
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %.not.i = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %.not.i)
  br label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ %i.i, %bb.b ], [ 16, %bb.a ]
  %i.j = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, i64 } @_RNvYINtNtCseHTIzroA4w0_6object5macho9Section32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section9file_sizeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(68) %0, i1 noundef zeroext %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load i32, ptr %i.a, align 1, !alias.scope !121 ; 2 uses
  %i.b = lshr i32 %.val, 24
  %.sroa.03.0.i.i.i = select i1 %1, i32 %i.b, i32 %.val
  %i.c = trunc i32 %.sroa.03.0.i.i.i to i8
  switch i8 %i.c, label %bb.b [
    i8 1, label %bb.c
    i8 12, label %bb.c
    i8 18, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 1, !alias.scope !122 ; 2 uses
  %i.e = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i)
  %.sroa.03.0.i.i = select i1 %1, i32 %i.e, i32 %.sroa.0.0.copyload.i
  %i.f = zext i32 %.sroa.03.0.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvYINtNtCseHTIzroA4w0_6object5macho9Section64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section12segment_nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.d = tail call { i64, ptr } %i.c(i8 noundef 0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.b), !noalias !125, !inline_history !0 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.d, 1
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %.not.i = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %.not.i)
  br label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ %i.j, %bb.b ], [ 16, %bb.a ]
  %i.k = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.l = insertvalue { ptr, i64 } %i.k, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvYINtNtCseHTIzroA4w0_6object5macho9Section64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !128, !nonnull !6, !noundef !6
  %i.c = tail call { i64, ptr } %i.b(i8 noundef 0, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.a), !noalias !128, !inline_history !0 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.c, 1
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %.not.i = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %.not.i)
  br label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit

_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ %i.i, %bb.b ], [ 16, %bb.a ]
  %i.j = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, i64 } @_RNvYINtNtCseHTIzroA4w0_6object5macho9Section64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section9file_sizeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(80) %0, i1 noundef zeroext %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load i32, ptr %i.a, align 1, !alias.scope !133 ; 2 uses
  %i.b = lshr i32 %.val, 24
  %.sroa.03.0.i.i.i = select i1 %1, i32 %i.b, i32 %.val
  %i.c = trunc i32 %.sroa.03.0.i.i.i to i8
  switch i8 %i.c, label %bb.b [
    i8 1, label %bb.c
    i8 12, label %bb.c
    i8 18, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 1, !alias.scope !134 ; 2 uses
  %i.e = tail call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.i)
  %.sroa.03.0.i.i = select i1 %1, i64 %i.e, i64 %.sroa.0.0.copyload.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %.sroa.03.0.i.i, %bb.b ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i16 0, 4) i16 @_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol12derived_typeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(18) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.val = load i16, ptr %i.a, align 1
  %i.b = lshr i16 %.val, 4
  %i.c = and i16 %i.b, 3
  ret i16 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol13is_definitionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(18) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val1 = load i16, ptr %i.a, align 1
  %1 = add i16 %.val1, 256
  %2 = icmp ult i16 %1, 257
  br i1 %2, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i8, ptr %i.b, align 1, !noundef !6
  switch i8 %.val, label %bb.d [
    i8 3, label %_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump.exit
    i8 2, label %bb.c
    i8 105, label %bb.c
  ]

_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val.i = load i8, ptr %i.c, align 1, !alias.scope !137, !noundef !6
  %.not.i = icmp eq i8 %.val.i, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.val2.i = load i16, ptr %i.d, align 1
  %i.e = icmp ne i16 %.val2.i, 0
  %.sroa.0.0.i2.not = select i1 %.not.i, i1 true, i1 %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump.exit, %bb.c
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ %.sroa.0.0.i2.not, %_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump.exit ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(18) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val = load i8, ptr %i.a, align 1, !noundef !6
  %.not = icmp ne i8 %.val, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i8, ptr %i.b, align 1
  %i.c = icmp eq i8 %.val1, 3
  %or.cond = select i1 %.not, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.val2 = load i16, ptr %i.d, align 1
  %i.e = icmp eq i16 %.val2, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol16has_aux_functionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(18) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val = load i8, ptr %i.a, align 1, !noundef !6
  %.not = icmp eq i8 %.val, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.val.i = load i16, ptr %i.b, align 1, !alias.scope !140
  %i.c = and i16 %.val.i, 48
  %i.d = icmp eq i16 %i.c, 32
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i8, ptr %i.e, align 1, !noundef !6
  %i.f = and i8 %.val2, -2
  %spec.select = icmp eq i8 %i.f, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %spec.select, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol17has_aux_file_nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(18) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val = load i8, ptr %i.a, align 1, !noundef !6
  %.not = icmp ne i8 %.val, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i8, ptr %i.b, align 1
  %i.c = icmp eq i8 %.val1, 103
  %.sroa.0.0 = select i1 %.not, i1 %i.c, i1 false
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvYNtNtCseHTIzroA4w0_6object2pe11ImageSymbolNtNtNtNtB6_4read4coff6symbol6Symbol7addressCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(18) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i8, ptr %i.a, align 1, !noundef !6
  switch i8 %.val, label %bb.b [
    i8 3, label %bb.c
    i8 105, label %bb.c
    i8 6, label %bb.c
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val6 = load i16, ptr %i.b, align 1            ; 3 uses
  %i.c = icmp ugt i16 %.val6, -257
  %i.d = sext i16 %.val6 to i32
  %i.e = zext i16 %.val6 to i32
  %.sroa.0.0.i.i = select i1 %i.c, i32 %i.d, i32 %i.e ; 2 uses
  %i.f = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %.sroa.0.0.i.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = add nsw i64 %i.g, -1                     ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @49, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %i.m, align 8
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %3, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.05.0.copyload = load i32, ptr %i.p, align 1
  %i.q = zext i32 %.sroa.05.0.copyload to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i32, ptr %i.r, align 1
  %i.s = zext i32 %.val7 to i64
  %i.t = add i64 %2, %i.q
  %i.u = add i64 %i.t, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.w, align 8
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i16 0, 4) i16 @_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol12derived_typeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(20) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i16, ptr %i.a, align 1
  %i.b = lshr i16 %.val, 4
  %i.c = and i16 %i.b, 3
  ret i16 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol13is_definitionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(20) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val1 = load i32, ptr %i.a, align 1
  %i.b = icmp slt i32 %.val1, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.val = load i8, ptr %i.c, align 1, !noundef !6
  switch i8 %.val, label %bb.d [
    i8 3, label %_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump.exit
    i8 2, label %bb.c
    i8 105, label %bb.c
  ]

_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 19
  %.val.i = load i8, ptr %i.d, align 1, !alias.scope !143, !noundef !6
  %.not.i = icmp eq i8 %.val.i, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i16, ptr %i.e, align 1
  %i.f = icmp ne i16 %.val2.i, 0
  %.sroa.0.0.i.not = select i1 %.not.i, i1 true, i1 %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %_RNvYNtNtCseHTIzroA4w0_6object2pe13ImageSymbolExNtNtNtNtB6_4read4coff6symbol6Symbol15has_aux_sectionCs8aoZCP6pRcV_7objdump.exit, %bb.c
end_hunk_1
