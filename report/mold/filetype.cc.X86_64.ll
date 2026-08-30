Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/filetype.cc.X86_64?download=true
begin_hunk_0_@_ZN4mold13get_file_typeINS_6X86_64EEENS_8FileTypeERNS_7ContextIT_EEPNS_10MappedFileE:bb.a
  %i.le = add nuw nsw i64 %.028.i136, 1           ; 2 uses
  %exitcond.not.i147 = icmp eq i64 %i.le, %i.kw
  br i1 %exitcond.not.i147, label %_ZN4moldL14is_gcc_lto_objINS_4M68KEEEbPNS_10MappedFileEb.exit.thread, label %.lr.ph29.i135, !llvm.loop !31

bb.an:                                            ; preds = %.lr.ph29.i135
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ky, i64 6
  %.0.copyload.i51.i139 = load i16, ptr %i.lf, align 1
  %i.lg = icmp eq i16 %.0.copyload.i51.i139, -3329
  br i1 %i.lg, label %bb.ao, label %_ZN4moldL14is_gcc_lto_objINS_4M68KEEEbPNS_10MappedFileEb.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.lh = getelementptr inbounds nuw i8, ptr %.us-phi26.i132, i64 40
  %.0.copyload.i52.i140 = load i32, ptr %i.lh, align 1
  %i.li = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i52.i140)
  %i.lj = zext i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw [64 x i8], ptr %i.jh, i64 %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %.0.copyload.i53.i141 = load i64, ptr %i.ll, align 1
  %i.lm = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i53.i141)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lm
  %.0.copyload.i54.i142 = load i32, ptr %i.ky, align 1
  %i.lo = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i54.i142)
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lp ; 3 uses
  %i.lr = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.lq) #12
  %.not.i.i56.i143 = icmp ult i64 %i.lr, 10
  br i1 %.not.i.i56.i143, label %_ZN4moldL14is_gcc_lto_objINS_4M68KEEEbPNS_10MappedFileEb.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57.i144

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57.i144: ; preds = %bb.ao
  %i.ls = load i64, ptr %i.lq, align 1
  %i.lt = xor i64 %i.ls, 8389185163852472159
  %i.lu = getelementptr i8, ptr %i.lq, i64 8
  %i.lv = load i16, ptr %i.lu, align 1
  %i.lw = zext i16 %i.lv to i64
  %i.lx = xor i64 %i.lw, 24431
  %i.ly = or i64 %i.lt, %i.lx
  %i.lz = icmp ne i64 %i.ly, 0
  %i.ma = zext i1 %i.lz to i32
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit166, label %_ZN4moldL14is_gcc_lto_objINS_4M68KEEEbPNS_10MappedFileEb.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.i129: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.thread.i125
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.09.024.i126, i64 64 ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.js
  br i1 %i.md, label %_ZN4moldL14is_gcc_lto_objINS_4M68KEEEbPNS_10MappedFileEb.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.thread.i125

bb.ap:                                            ; preds = %bb.x, %bb.f
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit166

bb.aq:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.not.i.i162 = icmp ult i64 %i.d, 8
  br i1 %.not.i.i162, label %.thread280.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i163

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i163: ; preds = %bb.aq
  %i.me = load i64, ptr %i.b, align 1
  %i.mf = icmp ne i64 %i.me, 738142165265366049
  %i.mg = zext i1 %i.mf to i32
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit166, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i169

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i169: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i163
  %i.mi = load i64, ptr %i.b, align 1
  %i.mj = icmp ne i64 %i.mi, 738148787938409505
  %i.mk = zext i1 %i.mj to i32
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit166, label %.thread282

.thread282:                                       ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i169
  %i.mm = icmp sgt i64 %i.d, 3
  br i1 %i.mm, label %.thread280.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i176

.thread280.thread:                                ; preds = %bb.aq, %.thread282
  %i.mn = load i8, ptr %i.b, align 1, !tbaa !27   ; 2 uses
  %i.mo = sext i8 %i.mn to i32
  %i.mp = tail call i32 @isprint(i32 noundef %i.mo) #14
  %i.mq = icmp ne i32 %i.mp, 0
  %i.mr = add i8 %i.mn, -9
  %i.ms = icmp ult i8 %i.mr, 2
  %spec.select.i.i173 = or i1 %i.ms, %i.mq
  br i1 %spec.select.i.i173, label %bb.ar, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i176

bb.ar:                                            ; preds = %.thread280.thread
  %i.mt = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !27  ; 2 uses
  %i.mv = sext i8 %i.mu to i32
  %i.mw = tail call i32 @isprint(i32 noundef %i.mv) #14
  %i.mx = icmp ne i32 %i.mw, 0
  %i.my = add i8 %i.mu, -9
  %i.mz = icmp ult i8 %i.my, 2
  %spec.select.i6.i = or i1 %i.mz, %i.mx
  br i1 %spec.select.i6.i, label %bb.as, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i176

bb.as:                                            ; preds = %bb.ar
  %i.na = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !27  ; 2 uses
  %i.nc = sext i8 %i.nb to i32
  %i.nd = tail call i32 @isprint(i32 noundef %i.nc) #14
  %i.ne = icmp ne i32 %i.nd, 0
  %i.nf = add i8 %i.nb, -9
  %i.ng = icmp ult i8 %i.nf, 2
  %spec.select.i7.i = or i1 %i.ng, %i.ne
  br i1 %spec.select.i7.i, label %_ZN4moldL12is_text_fileEPNS_10MappedFileE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i176

_ZN4moldL12is_text_fileEPNS_10MappedFileE.exit:   ; preds = %bb.as
  %i.nh = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !27  ; 2 uses
  %i.nj = sext i8 %i.ni to i32
  %i.nk = tail call i32 @isprint(i32 noundef %i.nj) #14
  %i.nl = icmp ne i32 %i.nk, 0
  %i.nm = add i8 %i.ni, -9
  %i.nn = icmp ult i8 %i.nm, 2
  %spec.select.i8.i = or i1 %i.nn, %i.nl
  br i1 %spec.select.i8.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit166, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i176

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i176: ; preds = %_ZN4moldL12is_text_fileEPNS_10MappedFileE.exit, %bb.as, %bb.ar, %.thread280.thread, %.thread282
  %i.no = load i32, ptr %i.b, align 1
  %i.np = icmp ne i32 %i.no, 186106078
  %i.nq = zext i1 %i.np to i32
  %i.nr = icmp eq i32 %i.nq, 0
  br i1 %i.nr, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit166, label %_ZN4moldL12is_text_fileEPNS_10MappedFileE.exit.thread

_ZN4moldL12is_text_fileEPNS_10MappedFileE.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i176
  %i.ns = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef @.str.5) #12
  %.27 = select i1 %i.ns, i32 8, i32 0
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit166

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit166: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i153, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i113, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i71, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i, %bb.x, %bb.f, %_ZN4moldL14is_gcc_lto_objINS_4M68KEEEbPNS_10MappedFileEb.exit.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57.i144, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57.i104, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57.i62, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i176, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i169, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i163, %bb.ap, %_ZN4moldL12is_text_fileEPNS_10MappedFileE.exit, %_ZN4moldL12is_text_fileEPNS_10MappedFileE.exit.thread, %bb.a
  %.4 = phi i32 [ 1, %bb.a ], [ 5, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i169 ], [ 3, %bb.x ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57.i ], [ 4, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i163 ], [ 6, %_ZN4moldL12is_text_fileEPNS_10MappedFileE.exit ], [ %.27, %_ZN4moldL12is_text_fileEPNS_10MappedFileE.exit.thread ], [ 0, %bb.ap ], [ 3, %bb.f ], [ 8, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i176 ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57.i104 ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57.i144 ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i71 ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i113 ], [ 2, %_ZN4moldL14is_gcc_lto_objINS_4M68KEEEbPNS_10MappedFileEb.exit.thread ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57.i62 ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !32     ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %.not.i = icmp ugt i64 %i.a, %i.b
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.d, ptr nonnull %1, i64 %.sroa.speculated.i.i)
  %i.f = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit: ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %i.g = phi i1 [ false, %bb.a ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  ret i1 %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind
define weak_odr dso_local { i64, ptr } @_ZN4mold16get_machine_typeINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::vector.252", align 8   ; 7 uses
  %4 = alloca %"class.std::vector.252", align 8   ; 7 uses
  %5 = alloca %"class.mold::Script", align 8      ; 9 uses
  %i.a = tail call noundef i32 @_ZN4mold13get_file_typeINS_6X86_64EEENS_8FileTypeERNS_7ContextIT_EEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %2)
  switch i32 %i.a, label %bb.m [
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 7, label %bb.b
    i32 4, label %bb.c
    i32 5, label %bb.g
    i32 6, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call fastcc { i64, ptr } @_ZN4moldL12get_elf_typeEPh(ptr noundef %i.c) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN4mold24read_fat_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.252") align 8 %3, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %2) #12
  %i.g = load ptr, ptr %3, align 8, !tbaa !35     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.c, %bb.e
  %.sroa.8.067 = phi ptr [ %.sroa.8.1, %bb.e ], [ undef, %bb.c ]
  %.sroa.047.066 = phi i64 [ %.sroa.047.1, %bb.e ], [ undef, %bb.c ]
  %.sroa.044.065 = phi ptr [ %i.r, %bb.e ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.044.065, align 8, !tbaa !37 ; 2 uses
  %i.l = call noundef i32 @_ZN4mold13get_file_typeINS_6X86_64EEENS_8FileTypeERNS_7ContextIT_EEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %i.k) ; 2 uses
  switch i32 %i.l, label %bb.e [
    i32 7, label %bb.d
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph69, %.lr.ph69
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = call fastcc { i64, ptr } @_ZN4moldL12get_elf_typeEPh(ptr noundef %i.n) ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0        ; 3 uses
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 3 uses
  switch i32 %i.l, label %bb.e [
    i32 7, label %._crit_edge70.loopexit
    i32 2, label %._crit_edge70.loopexit
  ]

bb.e:                                             ; preds = %.lr.ph69, %bb.d
  %.sroa.047.1 = phi i64 [ %.sroa.047.066, %.lr.ph69 ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.067, %.lr.ph69 ], [ %i.q, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.044.065, i64 8 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.i
  br i1 %i.s, label %._crit_edge70.loopexit, label %.lr.ph69

._crit_edge70.loopexit:                           ; preds = %bb.d, %bb.d, %bb.e
  %.lcssa.ph = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.d ]
  %.sroa.047.2.ph = phi i64 [ %.sroa.047.1, %bb.e ], [ %i.p, %bb.d ], [ %i.p, %bb.d ]
  %.sroa.8.2.ph = phi ptr [ %.sroa.8.1, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.d ]
  %.pre82 = load ptr, ptr %3, align 8, !tbaa !38
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge70.loopexit, %bb.c
  %i.t = phi ptr [ %i.g, %bb.c ], [ %.pre82, %._crit_edge70.loopexit ] ; 3 uses
  %.lcssa = phi i1 [ true, %bb.c ], [ %.lcssa.ph, %._crit_edge70.loopexit ] ; 2 uses
  %.sroa.047.2 = phi i64 [ undef, %bb.c ], [ %.sroa.047.2.ph, %._crit_edge70.loopexit ]
  %.sroa.8.2 = phi ptr [ undef, %bb.c ], [ %.sroa.8.2.ph, %._crit_edge70.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge70
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #13
  br label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit: ; preds = %._crit_edge70, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %spec.select = select i1 %.lcssa, i64 0, i64 %.sroa.047.2
  %spec.select48 = select i1 %.lcssa, ptr @.str.6, ptr %.sroa.8.2
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN4mold25read_thin_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.252") align 8 %4, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %2) #12
  %i.z = load ptr, ptr %4, align 8, !tbaa !35     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.i
  %.sroa.8.354 = phi ptr [ %.sroa.8.4, %bb.i ], [ undef, %bb.g ]
  %.sroa.040.053 = phi ptr [ %i.ak, %bb.i ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.047.352 = phi i64 [ %.sroa.047.4, %bb.i ], [ undef, %bb.g ]
  %i.ad = load ptr, ptr %.sroa.040.053, align 8, !tbaa !37 ; 2 uses
  %i.ae = call noundef i32 @_ZN4mold13get_file_typeINS_6X86_64EEENS_8FileTypeERNS_7ContextIT_EEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %i.ad) ; 2 uses
  switch i32 %i.ae, label %bb.i [
    i32 7, label %bb.h
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph, %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = call fastcc { i64, ptr } @_ZN4moldL12get_elf_typeEPh(ptr noundef %i.ag) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 3 uses
  switch i32 %i.ae, label %bb.i [
    i32 7, label %._crit_edge.loopexit
    i32 2, label %._crit_edge.loopexit
  ]

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.047.4 = phi i64 [ %.sroa.047.352, %.lr.ph ], [ %i.ai, %bb.h ] ; 2 uses
  %.sroa.8.4 = phi ptr [ %.sroa.8.354, %.lr.ph ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.040.053, i64 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ab
  br i1 %i.al, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.h, %bb.h, %bb.i
  %.lcssa51.ph = phi i1 [ true, %bb.i ], [ false, %bb.h ], [ false, %bb.h ]
  %.sroa.047.5.ph = phi i64 [ %.sroa.047.4, %bb.i ], [ %i.ai, %bb.h ], [ %i.ai, %bb.h ]
  %.sroa.8.5.ph = phi ptr [ %.sroa.8.4, %bb.i ], [ %i.aj, %bb.h ], [ %i.aj, %bb.h ]
  %.pre = load ptr, ptr %4, align 8, !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.am = phi ptr [ %i.z, %bb.g ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa51 = phi i1 [ true, %bb.g ], [ %.lcssa51.ph, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.047.5 = phi i64 [ undef, %bb.g ], [ %.sroa.047.5.ph, %._crit_edge.loopexit ]
  %.sroa.8.5 = phi ptr [ undef, %bb.g ], [ %.sroa.8.5.ph, %._crit_edge.loopexit ]
  %.not.i.i.i38 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #13
  br label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39

_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39: ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %spec.select49 = select i1 %.lcssa51, i64 0, i64 %.sroa.047.5
  %spec.select50 = select i1 %.lcssa51, ptr @.str.6, ptr %.sroa.8.5
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %0, ptr %5, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.as, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.at, align 8, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.au, align 8, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = call { i64, ptr } @_ZN4mold6ScriptINS_6X86_64EE22get_script_output_typeEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #12 ; 2 uses
  %i.ax = extractvalue { i64, ptr } %i.aw, 0
  %i.ay = extractvalue { i64, ptr } %i.aw, 1
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !54 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #13
  br label %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit

_ZN4mold6ScriptINS_6X86_64EED2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit, %bb.a, %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit, %bb.b
  %.sroa.047.6 = phi i64 [ %spec.select49, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39 ], [ %i.e, %bb.b ], [ %i.ax, %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit ], [ 0, %bb.a ], [ %spec.select, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit ]
  %.sroa.8.6 = phi ptr [ %spec.select50, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit39 ], [ %i.f, %bb.b ], [ %i.ay, %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit ], [ @.str.6, %bb.a ], [ %spec.select48, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.047.6, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.8.6, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal fastcc { i64, ptr } @_ZN4moldL12get_elf_typeEPh(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.b = load i8, ptr %i.a, align 1, !tbaa !27
  %i.c = icmp eq i8 %i.b, 1                       ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27
  %i.f = icmp eq i8 %i.e, 2                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.0.copyload.i = load i16, ptr %i.g, align 1    ; 2 uses
  %i.h = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i)
  %.in = select i1 %i.c, i16 %.0.copyload.i, i16 %i.h
  switch i16 %.in, label %bb.p [
    i16 3, label %bb.q
    i16 62, label %bb.b
    i16 40, label %bb.c
    i16 183, label %bb.d
    i16 243, label %bb.e
    i16 20, label %bb.h
    i16 21, label %bb.i
    i16 22, label %bb.k
    i16 43, label %bb.l
    i16 4, label %bb.m
    i16 42, label %bb.n
    i16 258, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload35 = select i1 %i.c, i64 5, i64 7
  %.sroa.17.0.copyload48 = select i1 %i.c, ptr @.str.11, ptr @.str.12
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload36 = select i1 %i.c, i64 5, i64 7
  %.sroa.17.0.copyload49 = select i1 %i.c, ptr @.str.13, ptr @.str.14
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.17.0.copyload50 = select i1 %i.f, ptr @.str.15, ptr @.str.16
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %.sroa.17.0.copyload51 = select i1 %i.f, ptr @.str.17, ptr @.str.18
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i33 = load i32, ptr %i.i, align 1  ; 2 uses
  br i1 %i.c, label %.critedge28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = and i32 %.0.copyload.i33, 33554432
  %or.cond.not.not.not = icmp eq i32 %i.j, 0
  br i1 %or.cond.not.not.not, label %bb.q, label %bb.p

.critedge28:                                      ; preds = %bb.i
  %i.k = and i32 %.0.copyload.i33, 1
  %or.cond4.not = icmp eq i32 %i.k, 0
  br i1 %or.cond4.not, label %bb.q, label %bb.p

bb.k:                                             ; preds = %bb.a
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  %.sroa.0.0.copyload45 = select i1 %i.c, i64 3, i64 5
  %.sroa.17.0.copyload58 = select i1 %i.c, ptr @.str.25, ptr @.str.26
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %.sroa.17.0.copyload59 = select i1 %i.f, ptr @.str.27, ptr @.str.28
  br label %bb.q

bb.p:                                             ; preds = %.critedge28, %bb.j, %bb.a
  br label %bb.q

bb.q:                                             ; preds = %.critedge28, %bb.j, %bb.a, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.17.0 = phi ptr [ @.str.6, %bb.p ], [ %.sroa.17.0.copyload59, %bb.o ], [ @.str.10, %bb.b ], [ %.sroa.17.0.copyload48, %bb.c ], [ %.sroa.17.0.copyload49, %bb.d ], [ %.sroa.17.0.copyload50, %bb.f ], [ %.sroa.17.0.copyload51, %bb.g ], [ @.str.19, %bb.h ], [ @.str.20, %bb.j ], [ @.str.21, %.critedge28 ], [ @.str.9, %bb.a ], [ @.str.22, %bb.k ], [ @.str.23, %bb.l ], [ @.str.24, %bb.m ], [ %.sroa.17.0.copyload58, %bb.n ]
  %.sroa.0.0 = phi i64 [ 0, %bb.p ], [ 11, %bb.o ], [ 6, %bb.b ], [ %.sroa.0.0.copyload35, %bb.c ], [ %.sroa.0.0.copyload36, %bb.d ], [ 7, %bb.f ], [ 9, %bb.g ], [ 5, %bb.h ], [ 7, %bb.j ], [ 7, %.critedge28 ], [ 4, %bb.a ], [ 5, %bb.k ], [ 7, %bb.l ], [ 4, %bb.m ], [ %.sroa.0.0.copyload45, %bb.n ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.17.0, 1
  ret { i64, ptr } %.fca.1.insert
}

declare void @_ZN4mold24read_fat_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind writable sret(%"class.std::vector.252") align 8, ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #5

declare void @_ZN4mold25read_thin_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind writable sret(%"class.std::vector.252") align 8, ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #5

declare { i64, ptr } @_ZN4mold6ScriptINS_6X86_64EE22get_script_output_typeEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p2 _ZTSN4mold7CounterE", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!9, !10, i64 16}
!14 = !{!15, !18, i64 32}
!15 = !{!"_ZTSN4mold10MappedFileE", !16, i64 0, !18, i64 32, !19, i64 40, !20, i64 48, !21, i64 56, !21, i64 64, !20, i64 72, !5, i64 76}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !19, i64 8, !6, i64 16}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !12, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!"bool", !6, i64 0}
!21 = !{!"p1 _ZTSN4mold10MappedFileE", !12, i64 0}
!22 = !{!15, !19, i64 40}
!23 = !{!16, !19, i64 8}
!24 = !{!16, !18, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !26}
!32 = !{!33, !19, i64 0}
!33 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !19, i64 0, !18, i64 8}
!34 = !{!33, !18, i64 8}
!35 = !{!36, !36, i64 0}
!36 = !{!"p2 _ZTSN4mold10MappedFileE", !11, i64 0}
!37 = !{!21, !21, i64 0}
!38 = !{!39, !36, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIPN4mold10MappedFileESaIS2_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
end_hunk_0
