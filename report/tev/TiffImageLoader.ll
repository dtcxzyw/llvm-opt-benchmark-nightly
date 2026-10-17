Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 183
begin_hunk_0_@_ZN4tlog6Logger3logIJRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSG_:bb.a
  store i8 %i.aw, ptr %9, align 8, !alias.scope !2695
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc.i
  %.017.i.i.i.i = phi ptr [ %i.ar, %.noexc.i ], [ %i.ax, %bb.f ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.al, i64 %i.aj, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.018.i.i.i.i = phi ptr [ %i.ax, %bb.f ], [ %.017.i.i.i.i, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %i.aj
  store i8 0, ptr %i.ay, align 1, !tbaa !80
  %i.az = load ptr, ptr %7, align 8, !tbaa !482, !noalias !2693 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %i.u
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.az) #44, !noalias !2693
  br label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

bb.j:                                             ; preds = %bb.e, %bb.d, %.thread.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %7, align 8, !tbaa !482, !noalias !2693 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.bb, %i.u
  br i1 %.not.i.i7.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.bb) #44, !noalias !2693
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i ], [ %i.cp, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44, !noalias !2693
  br label %common.resume

_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44, !noalias !2693
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44, !noalias !2692
  %i.bc = load i8, ptr %9, align 8                ; 4 uses
  %i.bd = trunc i8 %i.bc to i1                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.bh = select i1 %i.bd, ptr %i.bf, ptr %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = lshr i8 %i.bc, 1
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = select i1 %i.bd, i64 %i.bj, i64 %i.bl
  %i.bn = load i32, ptr %0, align 8, !tbaa !128
  %i.bo = and i32 %i.bn, %1
  %i.bp = icmp eq i32 %i.bo, %1
  br i1 %i.bp, label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !129 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !130 ; 2 uses
  %.not12.i = icmp eq ptr %i.br, %i.bt
  br i1 %.not12.i, label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.br, %.lr.ph.i ], [ %i.cj, %.noexc ] ; 2 uses
  %i.by = load ptr, ptr %.sroa.09.013.i, align 8, !tbaa !133 ; 2 uses
  %i.bz = load i8, ptr %i.bu, align 8             ; 2 uses
  %i.ca = trunc i8 %i.bz to i1                    ; 2 uses
  %i.cb = load ptr, ptr %i.bv, align 8
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.bw
  %i.cd = load i64, ptr %i.bx, align 8
  %i.ce = lshr i8 %i.bz, 1
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = select i1 %i.ca, i64 %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !89
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr %i.cc, i64 %i.cg, i32 noundef %1, ptr %i.bh, i64 %i.bm)
          to label %.noexc unwind label %bb.p, !inline_history !56

.noexc:                                           ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.cj, %i.bt
  br i1 %.not.i, label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit, label %bb.m

_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit: ; preds = %.noexc
  %.pre = load i8, ptr %9, align 8
  br label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit

_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit: ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit, %bb.l, %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.ck = phi i8 [ %.pre, %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit ], [ %i.bc, %bb.l ], [ %i.bc, %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit ]
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.n, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.n:                                             ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit
  %i.cm = load ptr, ptr %i.be, align 8, !tbaa !80
  %i.cn = load i64, ptr %9, align 8
  %i.co = and i64 %i.cn, -2
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.co) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  ret void

bb.p:                                             ; preds = %bb.m
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load i8, ptr %9, align 8
  %i.cr = trunc i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %i.be, align 8, !tbaa !80
  %i.ct = load i64, ptr %9, align 8
  %i.cu = and i64 %i.ct, -2
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cu) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.tev::ImageData", align 16  ; 16 uses
  %5 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  %6 = alloca %"struct.tev::ImageData", align 16  ; 16 uses
  %7 = alloca %"struct.tev::ImageData", align 16  ; 13 uses
  %8 = alloca %"struct.tev::ImageData", align 16  ; 16 uses
  %9 = alloca %"struct.tev::ImageData", align 16  ; 13 uses
  %10 = alloca %"struct.tev::ImageData", align 16 ; 16 uses
  %11 = alloca %"struct.tev::ImageData", align 16 ; 14 uses
  %12 = alloca %"struct.tev::ImageData", align 16 ; 16 uses
  %13 = alloca %"struct.tev::ImageData", align 16 ; 16 uses
  %14 = alloca %"struct.tev::ImageData", align 16 ; 13 uses
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 256 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 272 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 257 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 264 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 256
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 257 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 256
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer": ; preds = %bb.db, %bb.a
  %.024.ph = phi ptr [ %i.auw, %bb.db ], [ %1, %bb.a ] ; 30 uses
  %.021.ph = phi ptr [ %.021, %bb.db ], [ %0, %bb.a ]
  %.048.ph = phi i8 [ %.048.ph407, %bb.db ], [ %i.a, %bb.a ]
  %.046.ph = phi i64 [ %i.aho, %bb.db ], [ %2, %bb.a ]
  %i.at = ptrtoint ptr %.024.ph to i64
  %i.au = getelementptr inbounds i8, ptr %.024.ph, i64 -280 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.024.ph, i64 -560
  %i.aw = getelementptr inbounds i8, ptr %.024.ph, i64 -840
  %i.ax = getelementptr inbounds i8, ptr %.024.ph, i64 -24
  %i.ay = getelementptr inbounds i8, ptr %.024.ph, i64 -8
  %i.az = getelementptr inbounds i8, ptr %.024.ph, i64 -23
  %i.ba = getelementptr inbounds i8, ptr %.024.ph, i64 -16
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer"
  %.021.ph406 = phi ptr [ %.021.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer" ], [ %.021.ph406.be, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge" ]
  %.048.ph407 = phi i8 [ %.048.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer" ], [ 0, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge" ] ; 3 uses
  %.046.ph408 = phi i64 [ %.046.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer" ], [ %i.aho, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge" ]
  %i.bb = trunc nuw i8 %.048.ph407 to i1          ; 2 uses
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405", %bb.dc
  %.021 = phi ptr [ %i.ava, %bb.dc ], [ %.021.ph406, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405" ] ; 103 uses
  %.046 = phi i64 [ %i.aho, %bb.dc ], [ %.046.ph408, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405" ] ; 2 uses
  %i.bc = ptrtoint ptr %.021 to i64               ; 2 uses
  %i.bd = sub i64 %i.at, %i.bc                    ; 4 uses
  %i.be = sdiv exact i64 %i.bd, 280               ; 5 uses
  switch i64 %i.be, label %bb.g [
    i64 0, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"
    i64 1, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

bb.b:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"
  %i.bf = getelementptr inbounds i8, ptr %.024.ph, i64 -280 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.024.ph, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %.021, i64 256 ; 3 uses
  %i.bi = load i8, ptr %i.bg, align 8             ; 2 uses
  %i.bj = trunc i8 %i.bi to i1                    ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.024.ph, i64 -8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %.024.ph, i64 -23
  %i.bn = select i1 %i.bj, ptr %i.bl, ptr %i.bm
  %i.bo = getelementptr inbounds i8, ptr %.024.ph, i64 -16
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = lshr i8 %i.bi, 1
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = select i1 %i.bj, i64 %i.bp, i64 %i.br   ; 2 uses
  %i.bt = load i8, ptr %i.bh, align 8             ; 2 uses
  %i.bu = trunc i8 %i.bt to i1                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.021, i64 272
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.021, i64 257
  %i.by = select i1 %i.bu, ptr %i.bw, ptr %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.021, i64 264
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i8 %i.bt, 1
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = select i1 %i.bu, i64 %i.ca, i64 %i.cc   ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.bs)
  %i.ce = call noundef i32 @memcmp(ptr noundef %i.bn, ptr noundef %i.by, i64 noundef %.sroa.speculated.i.i.i.i) #44 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.c, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit"

bb.c:                                             ; preds = %bb.b
  %i.cg = icmp ult i64 %i.bs, %i.cd
  br i1 %i.cg, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread29", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit": ; preds = %bb.b
  %i.ch = icmp slt i32 %i.ce, 0
  br i1 %i.ch, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread29", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread29": ; preds = %bb.c, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #44
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cj = load <2 x ptr>, ptr %.021, align 8, !tbaa !361
  store <2 x ptr> %i.cj, ptr %14, align 16, !tbaa !361
  %i.ck = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !361
  store ptr %i.cl, ptr %i.ci, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.021, i8 0, i64 24, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.cp = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !379
  store <2 x ptr> %i.cp, ptr %i.cm, align 8, !tbaa !379
  %i.cq = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !379
  store ptr %i.cr, ptr %i.co, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %.021, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.cs, ptr noundef nonnull align 8 dereferenceable(44) %i.ct, i64 44, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 112
  %i.cx = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !376
  store <2 x ptr> %i.cx, ptr %i.cu, align 16, !tbaa !376
  %i.cy = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !376
  store ptr %i.cz, ptr %i.cw, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 120
  %i.db = getelementptr inbounds nuw i8, ptr %.021, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.da, ptr noundef nonnull align 8 dereferenceable(136) %i.db, i64 136, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  %i.dd = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.021, ptr noundef nonnull align 8 dereferenceable(280) %i.bf) #44 ; 0 uses
  %i.de = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.bf, ptr noundef nonnull align 8 dereferenceable(280) %14) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %14) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

bb.d:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"
  %i.df = getelementptr inbounds nuw i8, ptr %.021, i64 280
  %i.dg = getelementptr inbounds i8, ptr %.024.ph, i64 -280
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %.021, ptr noundef nonnull %i.df, ptr noundef nonnull %i.dg)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

bb.e:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"
  %i.dh = getelementptr inbounds nuw i8, ptr %.021, i64 280
  %i.di = getelementptr inbounds nuw i8, ptr %.021, i64 560
  %i.dj = getelementptr inbounds i8, ptr %.024.ph, i64 -280
  call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_T0_"(ptr noundef %.021, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull %i.dj)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

bb.f:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"
  %i.dk = getelementptr inbounds nuw i8, ptr %.021, i64 280
  %i.dl = getelementptr inbounds nuw i8, ptr %.021, i64 560
  %i.dm = getelementptr inbounds nuw i8, ptr %.021, i64 840
  %i.dn = getelementptr inbounds i8, ptr %.024.ph, i64 -280
  call fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSR_SR_SR_SR_SR_SQ_"(ptr noundef %.021, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dn)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

bb.g:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"
  %i.do = icmp slt i64 %i.bd, 6720
  br i1 %i.do, label %bb.h, label %15

bb.h:                                             ; preds = %bb.g
  %i.dp = trunc nuw i8 %.048.ph407 to i1
  %i.dq = icmp eq ptr %.021, %.024.ph             ; 2 uses
  br i1 %i.dp, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  br i1 %i.dq, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %storemerge12.i = getelementptr inbounds nuw i8, ptr %.021, i64 280 ; 2 uses
  %.not13.i = icmp eq ptr %storemerge12.i, %.024.ph
  br i1 %.not13.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 120
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 256 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 272
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 257
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 264
  br label %bb.j

bb.j:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i", %.lr.ph.i
  %storemerge15.i = phi ptr [ %storemerge12.i, %.lr.ph.i ], [ %storemerge.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i" ] ; 5 uses
  %.pn14.i = phi ptr [ %.021, %.lr.ph.i ], [ %storemerge15.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i" ] ; 16 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 536 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 256
  %i.ee = load i8, ptr %i.ec, align 8             ; 2 uses
  %i.ef = trunc i8 %i.ee to i1                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 552
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 537
  %i.ej = select i1 %i.ef, ptr %i.eh, ptr %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 544
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = lshr i8 %i.ee, 1
  %i.en = zext nneg i8 %i.em to i64
  %i.eo = select i1 %i.ef, i64 %i.el, i64 %i.en   ; 2 uses
  %i.ep = load i8, ptr %i.ed, align 8             ; 2 uses
  %i.eq = trunc i8 %i.ep to i1                    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 272
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 257
  %i.eu = select i1 %i.eq, ptr %i.es, ptr %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 264
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = lshr i8 %i.ep, 1
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = select i1 %i.eq, i64 %i.ew, i64 %i.ey   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.eo)
  %i.fa = call noundef i32 @memcmp(ptr noundef %i.ej, ptr noundef %i.eu, i64 noundef %.sroa.speculated.i.i.i.i.i) #44 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.k, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i"

bb.k:                                             ; preds = %bb.j
  %i.fc = icmp ult i64 %i.eo, %i.ez
  br i1 %i.fc, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i": ; preds = %bb.j
  %i.fd = icmp slt i32 %i.fa, 0
  br i1 %i.fd, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i", %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #44
  %i.fe = load <2 x ptr>, ptr %storemerge15.i, align 8, !tbaa !361
  store <2 x ptr> %i.fe, ptr %13, align 16, !tbaa !361
  %i.ff = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 296
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !361
  store ptr %i.fg, ptr %i.dr, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %storemerge15.i, i8 0, i64 24, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 304 ; 2 uses
  %i.fi = load <2 x ptr>, ptr %i.fh, align 8, !tbaa !379
  store <2 x ptr> %i.fi, ptr %i.ds, align 8, !tbaa !379
  %i.fj = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 320
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !379
  store ptr %i.fk, ptr %i.dt, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i8 0, i64 24, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.du, ptr noundef nonnull align 8 dereferenceable(44) %i.fl, i64 44, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 376 ; 2 uses
  %i.fn = load <2 x ptr>, ptr %i.fm, align 8, !tbaa !376
  store <2 x ptr> %i.fn, ptr %i.dv, align 16, !tbaa !376
  %i.fo = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 392
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !376
  store ptr %i.fp, ptr %i.dw, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i8 0, i64 24, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dx, ptr noundef nonnull align 8 dereferenceable(136) %i.fq, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit21.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i"
  %.05.i = phi ptr [ %.pn14.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i" ], [ %i.is, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit21.i" ] ; 20 uses
  %.0.i = phi ptr [ %storemerge15.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i" ], [ %.05.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit21.i" ] ; 18 uses
  %i.fr = load ptr, ptr %.0.i, align 8, !tbaa !356 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !357 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.fr, %i.ft
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.fu, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i ], [ %i.ft, %bb.m ] ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -72 ; 4 uses
  %i.fv = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !360 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = atomicrmw add ptr %i.fx, i64 -1 acq_rel, align 8
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.o, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !89
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(24) %i.fw) #44, !inline_history !2696
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fw) #44
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %.lr.ph.i.i.i.i.i.i
  %i.gd = load i8, ptr %i.fu, align 8
  %i.ge = trunc i8 %i.gd to i1
  br i1 %i.ge, label %bb.p, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i
  %i.gf = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -56
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !80
  %i.gh = load i64, ptr %i.fu, align 8
  %i.gi = and i64 %i.gh, -2
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gi) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i: ; preds = %bb.p, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fr, %i.fu
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %.0.i, align 8, !tbaa !356
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.m
  %i.gj = phi ptr [ %.pre.i.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.fr, %bb.m ] ; 2 uses
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !357
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !361
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.go) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.l
  %i.gp = load <2 x ptr>, ptr %.05.i, align 8, !tbaa !361
  store <2 x ptr> %i.gp, ptr %.0.i, align 8, !tbaa !361
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !361
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.05.i, i8 0, i64 24, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !377 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !378 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %i.gx
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.q, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.gy, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i ], [ %i.gx, %bb.q ] ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.gz = load i8, ptr %i.gy, align 8
  %i.ha = trunc i8 %i.gz to i1
  br i1 %i.ha, label %bb.r, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.hb = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i, i64 -8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !80
  %i.hd = load i64, ptr %i.gy, align 8
  %i.he = and i64 %i.hd, -2
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.he) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb":bb.a
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mj) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74: ; preds = %bb.ad, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i73
  %.not.i.i.i.i.i.i75 = icmp eq ptr %i.ls, %i.lv
  br i1 %.not.i.i.i.i.i.i75, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76, label %.lr.ph.i.i.i.i.i.i70

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74
  %.pre.i.i.i77 = load ptr, ptr %.0.i67, align 8, !tbaa !356
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i78

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i78: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76, %bb.aa
  %i.mk = phi ptr [ %.pre.i.i.i77, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76 ], [ %i.ls, %bb.aa ] ; 2 uses
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !357
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i67, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !361
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %i.mk to i64
  %i.mp = sub i64 %i.mn, %i.mo
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mp) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i78, %bb.z
  %i.mq = load <2 x ptr>, ptr %.05.i66, align 8, !tbaa !361
  store <2 x ptr> %i.mq, ptr %.0.i67, align 8, !tbaa !361
  %i.mr = getelementptr inbounds nuw i8, ptr %.05.i66, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !361
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.i67, i64 16
  store ptr %i.ms, ptr %i.mt, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.05.i66, i8 0, i64 24, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i67, i64 24 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.05.i66, i64 24 ; 2 uses
  %i.mw = load ptr, ptr %i.mu, align 8, !tbaa !377 ; 5 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i.i.i80, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.i67, i64 32 ; 3 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !378 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i81 = icmp eq ptr %i.mw, %i.my
  br i1 %.not6.i.i.i.i.i.i.i.i81, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88, label %.lr.ph.i.i.i.i.i.i.i.i82

.lr.ph.i.i.i.i.i.i.i.i82:                         ; preds = %bb.ae, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84
  %.07.i.i.i.i.i.i.i.i83 = phi ptr [ %i.mz, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84 ], [ %i.my, %bb.ae ] ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i83, i64 -24 ; 4 uses
  %i.na = load i8, ptr %i.mz, align 8
  %i.nb = trunc i8 %i.na to i1
  br i1 %i.nb, label %bb.af, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i82
  %i.nc = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i83, i64 -8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !80
  %i.ne = load i64, ptr %i.mz, align 8
  %i.nf = and i64 %i.ne, -2
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.nf) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84: ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i82
  %.not.i.i.i.i.i.i.i.i85 = icmp eq ptr %i.mw, %i.mz
  br i1 %.not.i.i.i.i.i.i.i.i85, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86, label %.lr.ph.i.i.i.i.i.i.i.i82

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84
  %.pre.i.i.i.i.i87 = load ptr, ptr %i.mu, align 8, !tbaa !377
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86, %bb.ae
  %i.ng = phi ptr [ %.pre.i.i.i.i.i87, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86 ], [ %i.mw, %bb.ae ] ; 2 uses
  store ptr %i.mw, ptr %i.mx, align 8, !tbaa !378
  %i.nh = getelementptr inbounds nuw i8, ptr %.0.i67, i64 40
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !379
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = ptrtoint ptr %i.ng to i64
  %i.nl = sub i64 %i.nj, %i.nk
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nl) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mx, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79
  %i.nm = load <2 x ptr>, ptr %i.mv, align 8, !tbaa !379
  store <2 x ptr> %i.nm, ptr %i.mu, align 8, !tbaa !379
  %i.nn = getelementptr inbounds nuw i8, ptr %.05.i66, i64 40
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !379
  %i.np = getelementptr inbounds nuw i8, ptr %.0.i67, i64 40
  store ptr %i.no, ptr %i.np, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mv, i8 0, i64 24, i1 false)
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i67, i64 48
  %i.nr = getelementptr inbounds nuw i8, ptr %.05.i66, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.nq, ptr noundef nonnull align 8 dereferenceable(44) %i.nr, i64 44, i1 false)
  %i.ns = getelementptr inbounds nuw i8, ptr %.0.i67, i64 96 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.05.i66, i64 96 ; 2 uses
  %i.nu = load ptr, ptr %i.ns, align 8, !tbaa !374 ; 5 uses
  %.not.i.i.i7.i.i90 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i7.i.i90, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89
  %i.nv = getelementptr inbounds nuw i8, ptr %.0.i67, i64 104 ; 3 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !375 ; 2 uses
  %.not.i1.i.i.i.i.i.i.i91 = icmp eq ptr %i.nu, %i.nw
  br i1 %.not.i1.i.i.i.i.i.i.i91, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97, label %.lr.ph.i.i.i.i.i.i.i92

.lr.ph.i.i.i.i.i.i.i92:                           ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i.i92
  %.0.i2.i.i.i.i.i.i.i93 = phi ptr [ %i.nx, %.lr.ph.i.i.i.i.i.i.i92 ], [ %i.nw, %bb.ag ]
  %i.nx = getelementptr inbounds i8, ptr %.0.i2.i.i.i.i.i.i.i93, i64 -96 ; 3 uses
  call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.nx) #44, !inline_history !13
  %.not.i.i.i.i.i.i8.i.i94 = icmp eq ptr %i.nu, %i.nx
  br i1 %.not.i.i.i.i.i.i8.i.i94, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95, label %.lr.ph.i.i.i.i.i.i.i92

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95: ; preds = %.lr.ph.i.i.i.i.i.i.i92
  %.pre.i.i.i9.i.i96 = load ptr, ptr %i.ns, align 8, !tbaa !374
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95, %bb.ag
  %i.ny = phi ptr [ %.pre.i.i.i9.i.i96, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95 ], [ %i.nu, %bb.ag ] ; 2 uses
  store ptr %i.nu, ptr %i.nv, align 8, !tbaa !375
  %i.nz = getelementptr inbounds nuw i8, ptr %.0.i67, i64 112
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !376
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.ny to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.od) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nv, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89
  %i.oe = load <2 x ptr>, ptr %i.nt, align 8, !tbaa !376
  store <2 x ptr> %i.oe, ptr %i.ns, align 8, !tbaa !376
  %i.of = getelementptr inbounds nuw i8, ptr %.05.i66, i64 112
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !376
  %i.oh = getelementptr inbounds nuw i8, ptr %.0.i67, i64 112
  store ptr %i.og, ptr %i.oh, align 8, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nt, i8 0, i64 24, i1 false)
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.i67, i64 120
  %i.oj = getelementptr inbounds nuw i8, ptr %.05.i66, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.oi, ptr noundef nonnull align 8 dereferenceable(136) %i.oj, i64 136, i1 false)
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i67, i64 256 ; 3 uses
  %i.ol = load i8, ptr %i.ok, align 8
  %i.om = trunc i8 %i.ol to i1
  br i1 %i.om, label %bb.ah, label %_ZN3tev9ImageDataaSEOS0_.exit.i99

bb.ah:                                            ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98
  %i.on = getelementptr inbounds nuw i8, ptr %.0.i67, i64 272
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !80
  %i.op = load i64, ptr %i.ok, align 8
  %i.oq = and i64 %i.op, -2
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.oq) #49
  br label %_ZN3tev9ImageDataaSEOS0_.exit.i99

_ZN3tev9ImageDataaSEOS0_.exit.i99:                ; preds = %bb.ah, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98
  %i.or = getelementptr inbounds nuw i8, ptr %.05.i66, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ok, ptr noundef nonnull align 8 dereferenceable(24) %i.or, i64 24, i1 false), !tbaa.struct !462
  store i8 0, ptr %i.or, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %.05.i66, i64 257
  store i8 0, ptr %i.os, align 1, !tbaa !80
  %i.ot = getelementptr inbounds i8, ptr %.05.i66, i64 -280
  %i.ou = getelementptr inbounds i8, ptr %.05.i66, i64 -24
  %i.ov = load i8, ptr %i.jz, align 16            ; 2 uses
  %i.ow = trunc i8 %i.ov to i1                    ; 2 uses
  %i.ox = load ptr, ptr %i.ka, align 16
  %i.oy = select i1 %i.ow, ptr %i.ox, ptr %i.kb
  %i.oz = load i64, ptr %i.kc, align 8
  %i.pa = lshr i8 %i.ov, 1
  %i.pb = zext nneg i8 %i.pa to i64
  %i.pc = select i1 %i.ow, i64 %i.oz, i64 %i.pb   ; 2 uses
  %i.pd = load i8, ptr %i.ou, align 8             ; 2 uses
  %i.pe = trunc i8 %i.pd to i1                    ; 2 uses
  %i.pf = getelementptr inbounds i8, ptr %.05.i66, i64 -8
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds i8, ptr %.05.i66, i64 -23
  %i.pi = select i1 %i.pe, ptr %i.pg, ptr %i.ph
  %i.pj = getelementptr inbounds i8, ptr %.05.i66, i64 -16
  %i.pk = load i64, ptr %i.pj, align 8
  %i.pl = lshr i8 %i.pd, 1
  %i.pm = zext nneg i8 %i.pl to i64
  %i.pn = select i1 %i.pe, i64 %i.pk, i64 %i.pm   ; 2 uses
  %.sroa.speculated.i.i.i.i15.i = call i64 @llvm.umin.i64(i64 %i.pn, i64 %i.pc)
  %i.po = call noundef i32 @memcmp(ptr noundef %i.oy, ptr noundef %i.pi, i64 noundef %.sroa.speculated.i.i.i.i15.i) #44 ; 2 uses
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %bb.ai, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i"

bb.ai:                                            ; preds = %_ZN3tev9ImageDataaSEOS0_.exit.i99
  %i.pq = icmp ult i64 %i.pc, %i.pn
  br i1 %i.pq, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i": ; preds = %bb.ai, %_ZN3tev9ImageDataaSEOS0_.exit.i99
  %.0.i.i.i.i16.i = phi i32 [ %i.po, %_ZN3tev9ImageDataaSEOS0_.exit.i99 ], [ -1, %bb.ai ]
  %i.pr = icmp slt i32 %.0.i.i.i.i16.i, 0
  br i1 %i.pr, label %bb.z, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i", !llvm.loop !2700

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i", %bb.ai
  %i.ps = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.05.i66, ptr noundef nonnull align 8 dereferenceable(280) %12) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %12) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i61", %bb.y
  %storemerge.i63 = getelementptr inbounds nuw i8, ptr %storemerge15.i58, i64 280 ; 2 uses
  %.not.i64 = icmp eq ptr %storemerge.i63, %.024.ph
  br i1 %.not.i64, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %bb.x, !llvm.loop !2701

15:                                               ; preds = %bb.g
  %16 = icmp eq i64 %.046, 0
  br i1 %16, label %bb.aj, label %bb.bw

bb.aj:                                            ; preds = %15
  %i.pt = icmp eq ptr %.021, %.024.ph
  br i1 %i.pt, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.pu = add nsw i64 %i.be, -2
  %i.pv = lshr i64 %i.pu, 1                       ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.px = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.py = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.pz = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.qc = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.qd = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.qf = getelementptr inbounds nuw i8, ptr %4, i64 257
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 264
  br label %bb.al

bb.al:                                            ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit", %bb.ak
  %.01.i.i.i = phi i64 [ %i.pv, %bb.ak ], [ %i.vp, %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit" ] ; 4 uses
  %i.qh = getelementptr inbounds nuw [280 x i8], ptr %.021, i64 %.01.i.i.i ; 14 uses
  %i.qi = shl nsw i64 %.01.i.i.i, 1               ; 2 uses
  %i.qj = or disjoint i64 %i.qi, 1                ; 4 uses
  %i.qk = getelementptr inbounds [280 x i8], ptr %.021, i64 %i.qj ; 12 uses
  %i.ql = add nsw i64 %i.qi, 2                    ; 2 uses
  %i.qm = icmp slt i64 %i.ql, %i.be
  br i1 %i.qm, label %bb.am, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

bb.am:                                            ; preds = %bb.al
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 280
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 256
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qk, i64 536
  %i.qq = load i8, ptr %i.qo, align 8             ; 2 uses
  %i.qr = trunc i8 %i.qq to i1                    ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qk, i64 272
  %i.qt = load ptr, ptr %i.qs, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qk, i64 257
  %i.qv = select i1 %i.qr, ptr %i.qt, ptr %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qk, i64 264
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = lshr i8 %i.qq, 1
  %i.qz = zext nneg i8 %i.qy to i64
  %i.ra = select i1 %i.qr, i64 %i.qx, i64 %i.qz   ; 2 uses
  %i.rb = load i8, ptr %i.qp, align 8             ; 2 uses
  %i.rc = trunc i8 %i.rb to i1                    ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qk, i64 552
  %i.re = load ptr, ptr %i.rd, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qk, i64 537
  %i.rg = select i1 %i.rc, ptr %i.re, ptr %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qk, i64 544
  %i.ri = load i64, ptr %i.rh, align 8
  %i.rj = lshr i8 %i.rb, 1
  %i.rk = zext nneg i8 %i.rj to i64
  %i.rl = select i1 %i.rc, i64 %i.ri, i64 %i.rk   ; 2 uses
  %.sroa.speculated.i.i.i.i.i143 = call i64 @llvm.umin.i64(i64 %i.rl, i64 %i.ra)
  %i.rm = call noundef i32 @memcmp(ptr noundef %i.qv, ptr noundef %i.rg, i64 noundef %.sroa.speculated.i.i.i.i.i143) #44 ; 2 uses
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %bb.an, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144"

bb.an:                                            ; preds = %bb.am
  %i.ro = icmp ult i64 %i.ra, %i.rl
  br i1 %i.ro, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144": ; preds = %bb.am
  %i.rp = icmp slt i32 %i.rm, 0
  br i1 %i.rp, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144", %bb.an
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144", %bb.an, %bb.al
  %.010.i = phi ptr [ %i.qn, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i" ], [ %i.qk, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144" ], [ %i.qk, %bb.al ], [ %i.qk, %bb.an ] ; 5 uses
  %.0.i140 = phi i64 [ %i.ql, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i" ], [ %i.qj, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144" ], [ %i.qj, %bb.al ], [ %i.qj, %bb.an ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.010.i, i64 256
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qh, i64 256 ; 3 uses
  %i.rs = load i8, ptr %i.rq, align 8             ; 2 uses
  %i.rt = trunc i8 %i.rs to i1                    ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.010.i, i64 272
  %i.rv = load ptr, ptr %i.ru, align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %.010.i, i64 257
  %i.rx = select i1 %i.rt, ptr %i.rv, ptr %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %.010.i, i64 264
  %i.rz = load i64, ptr %i.ry, align 8
  %i.sa = lshr i8 %i.rs, 1
  %i.sb = zext nneg i8 %i.sa to i64
  %i.sc = select i1 %i.rt, i64 %i.rz, i64 %i.sb   ; 2 uses
  %i.sd = load i8, ptr %i.rr, align 8             ; 2 uses
  %i.se = trunc i8 %i.sd to i1                    ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qh, i64 272
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qh, i64 257
  %i.si = select i1 %i.se, ptr %i.sg, ptr %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qh, i64 264
  %i.sk = load i64, ptr %i.sj, align 8
  %i.sl = lshr i8 %i.sd, 1
  %i.sm = zext nneg i8 %i.sl to i64
  %i.sn = select i1 %i.se, i64 %i.sk, i64 %i.sm   ; 2 uses
  %.sroa.speculated.i.i.i.i28.i = call i64 @llvm.umin.i64(i64 %i.sn, i64 %i.sc)
  %i.so = call noundef i32 @memcmp(ptr noundef %i.rx, ptr noundef %i.si, i64 noundef %.sroa.speculated.i.i.i.i28.i) #44 ; 2 uses
  %i.sp = icmp eq i32 %i.so, 0
  br i1 %i.sp, label %bb.ao, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.i"

bb.ao:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"
  %i.sq = icmp ult i64 %i.sc, %i.sn
  br i1 %i.sq, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"
  %i.sr = icmp slt i32 %i.so, 0
  br i1 %i.sr, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.i", %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.ss = load <2 x ptr>, ptr %i.qh, align 8, !tbaa !361
  store <2 x ptr> %i.ss, ptr %4, align 16, !tbaa !361
  %i.st = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !361
  store ptr %i.su, ptr %i.pw, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.qh, i8 0, i64 24, i1 false)
  %i.sv = getelementptr inbounds nuw i8, ptr %i.qh, i64 24 ; 2 uses
  %i.sw = load <2 x ptr>, ptr %i.sv, align 8, !tbaa !379
  store <2 x ptr> %i.sw, ptr %i.px, align 8, !tbaa !379
  %i.sx = getelementptr inbounds nuw i8, ptr %i.qh, i64 40
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !379
  store ptr %i.sy, ptr %i.py, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sv, i8 0, i64 24, i1 false)
  %i.sz = getelementptr inbounds nuw i8, ptr %i.qh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.pz, ptr noundef nonnull align 8 dereferenceable(44) %i.sz, i64 44, i1 false)
  %i.ta = getelementptr inbounds nuw i8, ptr %i.qh, i64 96 ; 2 uses
  %i.tb = load <2 x ptr>, ptr %i.ta, align 8, !tbaa !376
  store <2 x ptr> %i.tb, ptr %i.qa, align 16, !tbaa !376
  %i.tc = getelementptr inbounds nuw i8, ptr %i.qh, i64 112
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !376
  store ptr %i.td, ptr %i.qb, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ta, i8 0, i64 24, i1 false)
  %i.te = getelementptr inbounds nuw i8, ptr %i.qh, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.qc, ptr noundef nonnull align 8 dereferenceable(136) %i.te, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.qd, ptr noundef nonnull align 8 dereferenceable(24) %i.rr, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rr, i8 0, i64 24, i1 false)
  %i.tf = load i8, ptr %i.qd, align 16            ; 2 uses
  %i.tg = trunc i8 %i.tf to i1                    ; 2 uses
  %i.th = load ptr, ptr %i.qe, align 16
  %i.ti = select i1 %i.tg, ptr %i.th, ptr %i.qf
  %i.tj = load i64, ptr %i.qg, align 8
  %i.tk = lshr i8 %i.tf, 1
  %i.tl = zext nneg i8 %i.tk to i64
  %i.tm = select i1 %i.tg, i64 %i.tj, i64 %i.tl   ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i"
  %.013.i = phi ptr [ %i.qh, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i" ], [ %.111.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.i" ]
  %.111.i = phi ptr [ %.010.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i" ], [ %.212.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.i" ] ; 3 uses
  %.1.i141 = phi i64 [ %.0.i140, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i" ], [ %.2.i142, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.i" ] ; 2 uses
  %i.tn = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.013.i, ptr noundef nonnull align 8 dereferenceable(280) %.111.i) #44 ; 0 uses
  %i.to = icmp slt i64 %i.pv, %.1.i141
  br i1 %i.to, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.thread.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.tp = shl nsw i64 %.1.i141, 1                 ; 2 uses
  %i.tq = or disjoint i64 %i.tp, 1                ; 4 uses
  %i.tr = getelementptr inbounds [280 x i8], ptr %.021, i64 %i.tq ; 12 uses
  %i.ts = add nsw i64 %i.tp, 2                    ; 2 uses
  %i.tt = icmp slt i64 %i.ts, %i.be
  br i1 %i.tt, label %bb.ar, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i"

bb.ar:                                            ; preds = %bb.aq
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 280
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 256
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 536
  %i.tx = load i8, ptr %i.tv, align 8             ; 2 uses
  %i.ty = trunc i8 %i.tx to i1                    ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tr, i64 272
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tr, i64 257
  %i.uc = select i1 %i.ty, ptr %i.ua, ptr %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tr, i64 264
  %i.ue = load i64, ptr %i.ud, align 8
  %i.uf = lshr i8 %i.tx, 1
  %i.ug = zext nneg i8 %i.uf to i64
  %i.uh = select i1 %i.ty, i64 %i.ue, i64 %i.ug   ; 2 uses
  %i.ui = load i8, ptr %i.tw, align 8             ; 2 uses
  %i.uj = trunc i8 %i.ui to i1                    ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tr, i64 552
  %i.ul = load ptr, ptr %i.uk, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.tr, i64 537
  %i.un = select i1 %i.uj, ptr %i.ul, ptr %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tr, i64 544
  %i.up = load i64, ptr %i.uo, align 8
  %i.uq = lshr i8 %i.ui, 1
  %i.ur = zext nneg i8 %i.uq to i64
  %i.us = select i1 %i.uj, i64 %i.up, i64 %i.ur   ; 2 uses
  %.sroa.speculated.i.i.i.i31.i = call i64 @llvm.umin.i64(i64 %i.us, i64 %i.uh)
  %i.ut = call noundef i32 @memcmp(ptr noundef %i.uc, ptr noundef %i.un, i64 noundef %.sroa.speculated.i.i.i.i31.i) #44 ; 2 uses
  %i.uu = icmp eq i32 %i.ut, 0
  br i1 %i.uu, label %bb.as, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.i"

bb.as:                                            ; preds = %bb.ar
  %i.uv = icmp ult i64 %i.uh, %i.us
  br i1 %i.uv, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread23.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.i": ; preds = %bb.ar
  %i.uw = icmp slt i32 %i.ut, 0
end_hunk_1
begin_hunk_2_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb":bb.a
  call void @_ZdlPvm(ptr noundef %i.aef, i64 noundef %i.aeh) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bp, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i105 = icmp eq ptr %i.adq, %i.adt
  br i1 %.not.i.i.i.i.i.i.i.i105, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i103

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i106 = load ptr, ptr %.07.i.i.i.i.i, align 8, !tbaa !356
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i, %bb.bm
  %i.aei = phi ptr [ %.pre.i.i.i.i.i106, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i ], [ %i.adq, %bb.bm ] ; 2 uses
  store ptr %i.adq, ptr %i.adr, align 8, !tbaa !357
  %i.aej = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !361
  %i.ael = ptrtoint ptr %i.aek to i64
  %i.aem = ptrtoint ptr %i.aei to i64
  %i.aen = sub i64 %i.ael, %i.aem
  call void @_ZdlPvm(ptr noundef %i.aei, i64 noundef %i.aen) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.07.i.i.i.i.i, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i, %bb.bl
  %i.aeo = load <2 x ptr>, ptr %.06.i.i.i.i.i, align 8, !tbaa !361
  store <2 x ptr> %i.aeo, ptr %.07.i.i.i.i.i, align 8, !tbaa !361
  %i.aep = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !361
  %i.aer = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  store ptr %i.aeq, ptr %i.aer, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.06.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.aes = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 24 ; 4 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.aeu = load ptr, ptr %i.aes, align 8, !tbaa !377 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aeu, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i
  %i.aev = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !378 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aeu, %i.aew
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bq, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aex, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aew, %bb.bq ] ; 2 uses
  %i.aex = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.aey = load i8, ptr %i.aex, align 8
  %i.aez = trunc i8 %i.aey to i1
  br i1 %i.aez, label %bb.br, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.afa = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !80
  %i.afc = load i64, ptr %i.aex, align 8
  %i.afd = and i64 %i.afc, -2
  call void @_ZdlPvm(ptr noundef %i.afb, i64 noundef %i.afd) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.br, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i107 = icmp eq ptr %i.aeu, %i.aex
  br i1 %.not.i.i.i.i.i.i.i.i.i.i107, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.aes, align 8, !tbaa !377
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, %bb.bq
  %i.afe = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i ], [ %i.aeu, %bb.bq ] ; 2 uses
  store ptr %i.aeu, ptr %i.aev, align 8, !tbaa !378
  %i.aff = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 40
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !379
  %i.afh = ptrtoint ptr %i.afg to i64
  %i.afi = ptrtoint ptr %i.afe to i64
  %i.afj = sub i64 %i.afh, %i.afi
  call void @_ZdlPvm(ptr noundef %i.afe, i64 noundef %i.afj) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aes, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i
  %i.afk = load <2 x ptr>, ptr %i.aet, align 8, !tbaa !379
  store <2 x ptr> %i.afk, ptr %i.aes, align 8, !tbaa !379
  %i.afl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !379
  %i.afn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 40
  store ptr %i.afm, ptr %i.afn, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aet, i8 0, i64 24, i1 false)
  %i.afo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 48
  %i.afp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.afo, ptr noundef nonnull align 8 dereferenceable(44) %i.afp, i64 44, i1 false)
  %i.afq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 96 ; 4 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 96 ; 2 uses
  %i.afs = load ptr, ptr %i.afq, align 8, !tbaa !374 ; 5 uses
  %.not.i.i.i7.i.i.i.i = icmp eq ptr %i.afs, null
  br i1 %.not.i.i.i7.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i
  %i.aft = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 104 ; 2 uses
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !375 ; 2 uses
  %.not.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afs, %i.afu
  br i1 %.not.i1.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bs, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.0.i2.i.i.i.i.i.i.i.i.i = phi ptr [ %i.afv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.afu, %bb.bs ]
  %i.afv = getelementptr inbounds i8, ptr %.0.i2.i.i.i.i.i.i.i.i.i, i64 -96 ; 3 uses
  call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.afv) #44, !inline_history !13
  %.not.i.i.i.i.i.i8.i.i.i.i = icmp eq ptr %i.afs, %i.afv
  br i1 %.not.i.i.i.i.i.i8.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i9.i.i.i.i = load ptr, ptr %i.afq, align 8, !tbaa !374
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, %bb.bs
  %i.afw = phi ptr [ %.pre.i.i.i9.i.i.i.i, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i ], [ %i.afs, %bb.bs ] ; 2 uses
  store ptr %i.afs, ptr %i.aft, align 8, !tbaa !375
  %i.afx = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 112
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !376
  %i.afz = ptrtoint ptr %i.afy to i64
  %i.aga = ptrtoint ptr %i.afw to i64
  %i.agb = sub i64 %i.afz, %i.aga
  call void @_ZdlPvm(ptr noundef %i.afw, i64 noundef %i.agb) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afq, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i
  %i.agc = load <2 x ptr>, ptr %i.afr, align 8, !tbaa !376
  store <2 x ptr> %i.agc, ptr %i.afq, align 8, !tbaa !376
  %i.agd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 112
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !376
  %i.agf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 112
  store ptr %i.age, ptr %i.agf, align 8, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afr, i8 0, i64 24, i1 false)
  %i.agg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 120
  %i.agh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.agg, ptr noundef nonnull align 8 dereferenceable(136) %i.agh, i64 136, i1 false)
  %i.agi = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 256 ; 3 uses
  %i.agj = load i8, ptr %i.agi, align 8
  %i.agk = trunc i8 %i.agj to i1
  br i1 %i.agk, label %bb.bt, label %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i

bb.bt:                                            ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i
  %i.agl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 272
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !80
  %i.agn = load i64, ptr %i.agi, align 8
  %i.ago = and i64 %i.agn, -2
  call void @_ZdlPvm(ptr noundef %i.agm, i64 noundef %i.ago) #49
  br label %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i

_ZN3tev9ImageDataaSEOS0_.exit.i.i.i:              ; preds = %bb.bt, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i
  %i.agp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agi, ptr noundef nonnull align 8 dereferenceable(24) %i.agp, i64 24, i1 false), !tbaa.struct !462
  store i8 0, ptr %i.agp, align 8
  %i.agq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 257
  store i8 0, ptr %i.agq, align 1, !tbaa !80
  %i.agr = icmp eq i64 %.0.i16.i.i.i.i, 0
  br i1 %i.agr, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i", label %bb.bu

bb.bu:                                            ; preds = %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i
  %i.ags = add nsw i64 %.0.i16.i.i.i.i, -1
  %i.agt = lshr i64 %i.ags, 1                     ; 2 uses
  %i.agu = getelementptr inbounds nuw [280 x i8], ptr %.021, i64 %i.agt ; 5 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 256
  %i.agw = load i8, ptr %i.agv, align 8           ; 2 uses
  %i.agx = trunc i8 %i.agw to i1                  ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agu, i64 272
  %i.agz = load ptr, ptr %i.agy, align 8
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agu, i64 257
  %i.ahb = select i1 %i.agx, ptr %i.agz, ptr %i.aha
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agu, i64 264
  %i.ahd = load i64, ptr %i.ahc, align 8
  %i.ahe = lshr i8 %i.agw, 1
  %i.ahf = zext nneg i8 %i.ahe to i64
  %i.ahg = select i1 %i.agx, i64 %i.ahd, i64 %i.ahf ; 2 uses
  %.sroa.speculated.i.i.i.i12.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.adp, i64 %i.ahg)
  %i.ahh = call noundef i32 @memcmp(ptr noundef %i.ahb, ptr noundef %i.adl, i64 noundef %.sroa.speculated.i.i.i.i12.i.i.i.i.i) #44 ; 2 uses
  %i.ahi = icmp eq i32 %i.ahh, 0
  br i1 %i.ahi, label %bb.bv, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i"

bb.bv:                                            ; preds = %bb.bu
  %i.ahj = icmp ult i64 %i.ahg, %i.adp
  br i1 %i.ahj, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i": ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i13.i.i.i.i.i = phi i32 [ %i.ahh, %bb.bu ], [ -1, %bb.bv ]
  %i.ahk = icmp slt i32 %.0.i.i.i.i13.i.i.i.i.i, 0
  br i1 %i.ahk, label %bb.bl, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i", !llvm.loop !2706

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i", %bb.bv, %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i
  %i.ahl = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.06.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(280) %10) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %10) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  br label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i15.i.i.i.i", %bb.bk, %bb.bi, %bb.bh
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %11) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  %i.ahm = add nsw i64 %.020.i.i.i, -1
  %i.ahn = icmp sgt i64 %.020.i.i.i, 2
  br i1 %i.ahn, label %bb.av, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", !llvm.loop !2707

bb.bw:                                            ; preds = %15
  %i.aho = add nsw i64 %.046, -1                  ; 4 uses
  %i.ahp = lshr i64 %i.be, 1
  %i.ahq = icmp samesign ugt i64 %i.bd, 35840
  %i.ahr = getelementptr [280 x i8], ptr %.021, i64 %i.ahp ; 7 uses
  br i1 %i.ahq, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %.021, ptr noundef %i.ahr, ptr noundef nonnull %i.au)
  %i.ahs = getelementptr inbounds nuw i8, ptr %.021, i64 280
  %i.aht = getelementptr i8, ptr %i.ahr, i64 -280 ; 2 uses
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef nonnull %i.ahs, ptr noundef %i.aht, ptr noundef nonnull %i.av)
  %i.ahu = getelementptr inbounds nuw i8, ptr %.021, i64 560
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahr, i64 280 ; 2 uses
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef nonnull %i.ahu, ptr noundef nonnull %i.ahv, ptr noundef nonnull %i.aw)
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %i.aht, ptr noundef %i.ahr, ptr noundef nonnull %i.ahv)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  %i.ahw = load <2 x ptr>, ptr %.021, align 8, !tbaa !361
  store <2 x ptr> %i.ahw, ptr %9, align 16, !tbaa !361
  %i.ahx = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !361
  store ptr %i.ahy, ptr %i.b, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.021, i8 0, i64 24, i1 false)
  %i.ahz = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.aia = load <2 x ptr>, ptr %i.ahz, align 8, !tbaa !379
  store <2 x ptr> %i.aia, ptr %i.c, align 8, !tbaa !379
  %i.aib = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !379
  store ptr %i.aic, ptr %i.d, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahz, i8 0, i64 24, i1 false)
  %i.aid = getelementptr inbounds nuw i8, ptr %.021, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.e, ptr noundef nonnull align 8 dereferenceable(44) %i.aid, i64 44, i1 false)
  %i.aie = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %i.aif = load <2 x ptr>, ptr %i.aie, align 8, !tbaa !376
  store <2 x ptr> %i.aif, ptr %i.f, align 16, !tbaa !376
  %i.aig = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !376
  store ptr %i.aih, ptr %i.g, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aie, i8 0, i64 24, i1 false)
  %i.aii = getelementptr inbounds nuw i8, ptr %.021, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %i.aii, i64 136, i1 false)
  %i.aij = getelementptr inbounds nuw i8, ptr %.021, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aij, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aij, i8 0, i64 24, i1 false)
  %i.aik = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.021, ptr noundef nonnull align 8 dereferenceable(280) %i.ahr) #44 ; 0 uses
  %i.ail = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.ahr, ptr noundef nonnull align 8 dereferenceable(280) %9) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %i.ahr, ptr noundef %.021, ptr noundef nonnull %i.au)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.bb, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33", label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.aim = getelementptr inbounds i8, ptr %.021, i64 -24
  %i.ain = getelementptr inbounds nuw i8, ptr %.021, i64 256
  %i.aio = load i8, ptr %i.aim, align 8           ; 2 uses
  %i.aip = trunc i8 %i.aio to i1                  ; 2 uses
  %i.aiq = getelementptr inbounds i8, ptr %.021, i64 -8
  %i.air = load ptr, ptr %i.aiq, align 8
  %i.ais = getelementptr inbounds i8, ptr %.021, i64 -23
  %i.ait = select i1 %i.aip, ptr %i.air, ptr %i.ais
  %i.aiu = getelementptr inbounds i8, ptr %.021, i64 -16
  %i.aiv = load i64, ptr %i.aiu, align 8
  %i.aiw = lshr i8 %i.aio, 1
  %i.aix = zext nneg i8 %i.aiw to i64
  %i.aiy = select i1 %i.aip, i64 %i.aiv, i64 %i.aix ; 2 uses
  %i.aiz = load i8, ptr %i.ain, align 8           ; 2 uses
  %i.aja = trunc i8 %i.aiz to i1                  ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.021, i64 272
  %i.ajc = load ptr, ptr %i.ajb, align 8
  %i.ajd = getelementptr inbounds nuw i8, ptr %.021, i64 257
  %i.aje = select i1 %i.aja, ptr %i.ajc, ptr %i.ajd
  %i.ajf = getelementptr inbounds nuw i8, ptr %.021, i64 264
  %i.ajg = load i64, ptr %i.ajf, align 8
  %i.ajh = lshr i8 %i.aiz, 1
  %i.aji = zext nneg i8 %i.ajh to i64
  %i.ajj = select i1 %i.aja, i64 %i.ajg, i64 %i.aji ; 2 uses
  %.sroa.speculated.i.i.i.i109 = call i64 @llvm.umin.i64(i64 %i.ajj, i64 %i.aiy)
  %i.ajk = call noundef i32 @memcmp(ptr noundef %i.ait, ptr noundef %i.aje, i64 noundef %.sroa.speculated.i.i.i.i109) #44 ; 2 uses
  %i.ajl = icmp eq i32 %i.ajk, 0
  br i1 %i.ajl, label %bb.cb, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111"

bb.cb:                                            ; preds = %bb.ca
  %i.ajm = icmp ult i64 %i.aiy, %i.ajj
  br i1 %i.ajm, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111": ; preds = %bb.ca
  %i.ajn = icmp slt i32 %i.ajk, 0
  br i1 %i.ajn, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread": ; preds = %bb.cb, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111"
  %i.ajo = getelementptr inbounds nuw i8, ptr %.021, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %i.ajp = load <2 x ptr>, ptr %.021, align 8, !tbaa !361
  store <2 x ptr> %i.ajp, ptr %8, align 16, !tbaa !361
  %i.ajq = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !361
  store ptr %i.ajr, ptr %i.j, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.021, i8 0, i64 24, i1 false)
  %i.ajs = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.ajt = load <2 x ptr>, ptr %i.ajs, align 8, !tbaa !379
  store <2 x ptr> %i.ajt, ptr %i.k, align 8, !tbaa !379
  %i.aju = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !379
  store ptr %i.ajv, ptr %i.l, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajs, i8 0, i64 24, i1 false)
  %i.ajw = getelementptr inbounds nuw i8, ptr %.021, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.m, ptr noundef nonnull align 8 dereferenceable(44) %i.ajw, i64 44, i1 false)
  %i.ajx = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %i.ajy = load <2 x ptr>, ptr %i.ajx, align 8, !tbaa !376
  store <2 x ptr> %i.ajy, ptr %i.n, align 16, !tbaa !376
  %i.ajz = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !376
  store ptr %i.aka, ptr %i.o, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajx, i8 0, i64 24, i1 false)
  %i.akb = getelementptr inbounds nuw i8, ptr %.021, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.p, ptr noundef nonnull align 8 dereferenceable(136) %i.akb, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ajo, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajo, i8 0, i64 24, i1 false)
  %i.akc = load i8, ptr %i.q, align 16            ; 2 uses
  %i.akd = trunc i8 %i.akc to i1                  ; 2 uses
  %i.ake = load ptr, ptr %i.r, align 16
  %i.akf = select i1 %i.akd, ptr %i.ake, ptr %i.s ; 4 uses
  %i.akg = load i64, ptr %i.t, align 8
  %i.akh = lshr i8 %i.akc, 1
  %i.aki = zext nneg i8 %i.akh to i64
  %i.akj = select i1 %i.akd, i64 %i.akg, i64 %i.aki ; 10 uses
  %i.akk = load i8, ptr %i.ax, align 8            ; 2 uses
  %i.akl = trunc i8 %i.akk to i1                  ; 2 uses
  %i.akm = load ptr, ptr %i.ay, align 8
  %i.akn = select i1 %i.akl, ptr %i.akm, ptr %i.az
  %i.ako = load i64, ptr %i.ba, align 8
  %i.akp = lshr i8 %i.akk, 1
  %i.akq = zext nneg i8 %i.akp to i64
  %i.akr = select i1 %i.akl, i64 %i.ako, i64 %i.akq ; 2 uses
  %.sroa.speculated.i.i.i.i.i112 = call i64 @llvm.umin.i64(i64 %i.akr, i64 %i.akj)
  %i.aks = call noundef i32 @memcmp(ptr noundef %i.akf, ptr noundef %i.akn, i64 noundef %.sroa.speculated.i.i.i.i.i112) #44 ; 2 uses
  %i.akt = icmp eq i32 %i.aks, 0
  br i1 %i.akt, label %bb.cc, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113"

bb.cc:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"
  %i.aku = icmp ult i64 %i.akj, %i.akr
  br i1 %i.aku, label %.preheader34.i.preheader, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113", %bb.cc
  br label %.preheader35.i

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"
  %i.akv = icmp slt i32 %i.aks, 0
  br i1 %i.akv, label %.preheader34.i.preheader, label %.preheader35.i.preheader

.preheader34.i.preheader:                         ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113", %bb.cc
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.preheader34.i.preheader, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i"
  %.018.i = phi ptr [ %i.akw, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i" ], [ %.021, %.preheader34.i.preheader ] ; 5 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.018.i, i64 280 ; 3 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %.018.i, i64 536
  %i.aky = load i8, ptr %i.akx, align 8           ; 2 uses
  %i.akz = trunc i8 %i.aky to i1                  ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.018.i, i64 552
  %i.alb = load ptr, ptr %i.ala, align 8
  %i.alc = getelementptr inbounds nuw i8, ptr %.018.i, i64 537
  %i.ald = select i1 %i.akz, ptr %i.alb, ptr %i.alc
  %i.ale = getelementptr inbounds nuw i8, ptr %.018.i, i64 544
  %i.alf = load i64, ptr %i.ale, align 8
  %i.alg = lshr i8 %i.aky, 1
  %i.alh = zext nneg i8 %i.alg to i64
  %i.ali = select i1 %i.akz, i64 %i.alf, i64 %i.alh ; 3 uses
  %.sroa.speculated.i.i.i.i10.i = call i64 @llvm.umin.i64(i64 %i.ali, i64 %i.akj)
  %i.alj = call noundef i32 @memcmp(ptr noundef %i.akf, ptr noundef %i.ald, i64 noundef %.sroa.speculated.i.i.i.i10.i) #44 ; 2 uses
  %i.alk = icmp eq i32 %i.alj, 0
  br i1 %i.alk, label %bb.cd, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i"

bb.cd:                                            ; preds = %.preheader34.i
  %i.all = icmp eq i64 %i.akj, %i.ali
  br i1 %i.all, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.alm = icmp ult i64 %i.akj, %i.ali
  br i1 %i.alm, label %.critedge.i114, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i": ; preds = %bb.ce, %bb.cd, %.preheader34.i
  %.0.i.i.i.i11.i = phi i32 [ %i.alj, %.preheader34.i ], [ 1, %bb.ce ], [ 0, %bb.cd ]
  %i.aln = icmp slt i32 %.0.i.i.i.i11.i, 0
  br i1 %i.aln, label %.critedge.i114, label %.preheader34.i, !llvm.loop !2708

.preheader35.i:                                   ; preds = %.preheader35.i.preheader, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit15.i"
  %.119.i = phi ptr [ %i.alo, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit15.i" ], [ %.021, %.preheader35.i.preheader ] ; 5 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %.119.i, i64 280 ; 5 uses
  %i.alp = icmp ult ptr %i.alo, %.024.ph
  br i1 %i.alp, label %bb.cf, label %.critedge.i114

bb.cf:                                            ; preds = %.preheader35.i
  %i.alq = getelementptr inbounds nuw i8, ptr %.119.i, i64 536
  %i.alr = load i8, ptr %i.alq, align 8           ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb":bb.a

bb.cs:                                            ; preds = %bb.cr
  %i.arq = icmp ult i64 %i.arm, %i.aqg
  br i1 %i.arq, label %.critedge.i131, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i": ; preds = %bb.cs, %bb.cr, %bb.cq
  %.0.i.i.i.i13.i = phi i32 [ %i.arn, %bb.cq ], [ 1, %bb.cs ], [ 0, %bb.cr ]
  %i.arr = icmp slt i32 %.0.i.i.i.i13.i, 0
  br i1 %i.arr, label %.critedge.i131, label %.preheader29.i, !llvm.loop !2715

.preheader30.i:                                   ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i126", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129"
  %.1.i127 = phi ptr [ %i.ars, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129" ], [ %.024.ph, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i126" ] ; 5 uses
  %i.ars = getelementptr inbounds i8, ptr %.1.i127, i64 -280 ; 3 uses
  %i.art = getelementptr inbounds i8, ptr %.1.i127, i64 -24
  %i.aru = load i8, ptr %i.art, align 8           ; 2 uses
  %i.arv = trunc i8 %i.aru to i1                  ; 2 uses
  %i.arw = getelementptr inbounds i8, ptr %.1.i127, i64 -8
  %i.arx = load ptr, ptr %i.arw, align 8
  %i.ary = getelementptr inbounds i8, ptr %.1.i127, i64 -23
  %i.arz = select i1 %i.arv, ptr %i.arx, ptr %i.ary
  %i.asa = getelementptr inbounds i8, ptr %.1.i127, i64 -16
  %i.asb = load i64, ptr %i.asa, align 8
  %i.asc = lshr i8 %i.aru, 1
  %i.asd = zext nneg i8 %i.asc to i64
  %i.ase = select i1 %i.arv, i64 %i.asb, i64 %i.asd ; 3 uses
  %.sroa.speculated.i.i.i.i15.i128 = call i64 @llvm.umin.i64(i64 %i.aqg, i64 %i.ase)
  %i.asf = call noundef i32 @memcmp(ptr noundef %i.arz, ptr noundef %i.aqc, i64 noundef %.sroa.speculated.i.i.i.i15.i128) #44 ; 2 uses
  %i.asg = icmp eq i32 %i.asf, 0
  br i1 %i.asg, label %bb.ct, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129"

bb.ct:                                            ; preds = %.preheader30.i
  %i.ash = icmp eq i64 %i.ase, %i.aqg
  br i1 %i.ash, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.asi = icmp ult i64 %i.ase, %i.aqg
  br i1 %i.asi, label %.critedge.i131, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129": ; preds = %bb.cu, %bb.ct, %.preheader30.i
  %.0.i.i.i.i16.i130 = phi i32 [ %i.asf, %.preheader30.i ], [ 1, %bb.cu ], [ 0, %bb.ct ]
  %i.asj = icmp slt i32 %.0.i.i.i.i16.i130, 0
  br i1 %i.asj, label %.critedge.i131, label %.preheader30.i, !llvm.loop !2716

.critedge.i131:                                   ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129", %bb.cu, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i", %bb.cs, %.preheader29.i
  %.2.i = phi ptr [ %i.ara, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i" ], [ %.0.i138, %.preheader29.i ], [ %i.ara, %bb.cs ], [ %i.ars, %bb.cu ], [ %i.ars, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129" ] ; 2 uses
  %.not = icmp ult ptr %i.aqh, %.2.i              ; 2 uses
  br i1 %.not, label %.lr.ph.i132, label %._crit_edge.i136

.lr.ph.i132:                                      ; preds = %.critedge.i131, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i"
  %.343.i = phi ptr [ %i.aud, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i" ], [ %.2.i, %.critedge.i131 ] ; 3 uses
  %.11942.i = phi ptr [ %i.atm, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i" ], [ %i.aqh, %.critedge.i131 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.ask = load <2 x ptr>, ptr %.11942.i, align 8, !tbaa !361
  store <2 x ptr> %i.ask, ptr %5, align 16, !tbaa !361
  %i.asl = getelementptr inbounds nuw i8, ptr %.11942.i, i64 16
  %i.asm = getelementptr inbounds nuw i8, ptr %.11942.i, i64 24 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.11942.i, i64 32
  %i.aso = load ptr, ptr %i.asl, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.11942.i, i8 0, i64 24, i1 false)
  %i.asp = load ptr, ptr %i.asm, align 8, !tbaa !377
  %i.asq = load <2 x ptr>, ptr %i.asn, align 8, !tbaa !379
  %i.asr = insertelement <4 x ptr> poison, ptr %i.aso, i64 0
  %i.ass = insertelement <4 x ptr> %i.asr, ptr %i.asp, i64 1
  %i.ast = shufflevector <2 x ptr> %i.asq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.asu = shufflevector <4 x ptr> %i.ass, <4 x ptr> %i.ast, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.asu, ptr %i.an, align 16, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asm, i8 0, i64 24, i1 false)
  %i.asv = getelementptr inbounds nuw i8, ptr %.11942.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.ao, ptr noundef nonnull align 8 dereferenceable(44) %i.asv, i64 44, i1 false)
  %i.asw = getelementptr inbounds nuw i8, ptr %.11942.i, i64 96 ; 2 uses
  %i.asx = load <2 x ptr>, ptr %i.asw, align 8, !tbaa !376
  store <2 x ptr> %i.asx, ptr %i.ap, align 16, !tbaa !376
  %i.asy = getelementptr inbounds nuw i8, ptr %.11942.i, i64 112
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !376
  store ptr %i.asz, ptr %i.aq, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asw, i8 0, i64 24, i1 false)
  %i.ata = getelementptr inbounds nuw i8, ptr %.11942.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ar, ptr noundef nonnull align 8 dereferenceable(136) %i.ata, i64 136, i1 false)
  %i.atb = getelementptr inbounds nuw i8, ptr %.11942.i, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.atb, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atb, i8 0, i64 24, i1 false)
  %i.atc = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.11942.i, ptr noundef nonnull align 8 dereferenceable(280) %.343.i) #44 ; 0 uses
  %i.atd = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.343.i, ptr noundef nonnull align 8 dereferenceable(280) %5) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.ate = load i8, ptr %i.aj, align 16           ; 2 uses
  %i.atf = trunc i8 %i.ate to i1                  ; 2 uses
  %i.atg = load ptr, ptr %i.ak, align 16
  %i.ath = select i1 %i.atf, ptr %i.atg, ptr %i.al ; 2 uses
  %i.ati = load i64, ptr %i.am, align 8
  %i.atj = lshr i8 %i.ate, 1
  %i.atk = zext nneg i8 %i.atj to i64
  %i.atl = select i1 %i.atf, i64 %i.ati, i64 %i.atk ; 5 uses
  br label %bb.cv

bb.cv:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i", %.lr.ph.i132
  %.220.i133 = phi ptr [ %.11942.i, %.lr.ph.i132 ], [ %i.atm, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i" ] ; 6 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %.220.i133, i64 280 ; 3 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %.220.i133, i64 536
  %i.ato = load i8, ptr %i.atn, align 8           ; 2 uses
  %i.atp = trunc i8 %i.ato to i1                  ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %.220.i133, i64 552
  %i.atr = load ptr, ptr %i.atq, align 8
  %i.ats = getelementptr inbounds nuw i8, ptr %.220.i133, i64 537
  %i.att = select i1 %i.atp, ptr %i.atr, ptr %i.ats
  %i.atu = getelementptr inbounds nuw i8, ptr %.220.i133, i64 544
  %i.atv = load i64, ptr %i.atu, align 8
  %i.atw = lshr i8 %i.ato, 1
  %i.atx = zext nneg i8 %i.atw to i64
  %i.aty = select i1 %i.atp, i64 %i.atv, i64 %i.atx ; 2 uses
  %.sroa.speculated.i.i.i.i18.i = call i64 @llvm.umin.i64(i64 %i.atl, i64 %i.aty)
  %i.atz = call noundef i32 @memcmp(ptr noundef %i.att, ptr noundef %i.ath, i64 noundef %.sroa.speculated.i.i.i.i18.i) #44 ; 2 uses
  %i.aua = icmp eq i32 %i.atz, 0
  br i1 %i.aua, label %bb.cw, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i"

bb.cw:                                            ; preds = %bb.cv
  %i.aub = icmp ult i64 %i.aty, %i.atl
  br i1 %i.aub, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i", label %.preheader.i134.preheader

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i": ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i19.i = phi i32 [ %i.atz, %bb.cv ], [ -1, %bb.cw ]
  %i.auc = icmp slt i32 %.0.i.i.i.i19.i, 0
  br i1 %i.auc, label %bb.cv, label %.preheader.i134.preheader, !llvm.loop !2717

.preheader.i134.preheader:                        ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i", %bb.cw
  br label %.preheader.i134

.preheader.i134:                                  ; preds = %.preheader.i134.preheader, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i"
  %.4.i135 = phi ptr [ %i.aud, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i" ], [ %.343.i, %.preheader.i134.preheader ] ; 5 uses
  %i.aud = getelementptr inbounds i8, ptr %.4.i135, i64 -280 ; 3 uses
  %i.aue = getelementptr inbounds i8, ptr %.4.i135, i64 -24
  %i.auf = load i8, ptr %i.aue, align 8           ; 2 uses
  %i.aug = trunc i8 %i.auf to i1                  ; 2 uses
  %i.auh = getelementptr inbounds i8, ptr %.4.i135, i64 -8
  %i.aui = load ptr, ptr %i.auh, align 8
  %i.auj = getelementptr inbounds i8, ptr %.4.i135, i64 -23
  %i.auk = select i1 %i.aug, ptr %i.aui, ptr %i.auj
  %i.aul = getelementptr inbounds i8, ptr %.4.i135, i64 -16
  %i.aum = load i64, ptr %i.aul, align 8
  %i.aun = lshr i8 %i.auf, 1
  %i.auo = zext nneg i8 %i.aun to i64
  %i.aup = select i1 %i.aug, i64 %i.aum, i64 %i.auo ; 3 uses
  %.sroa.speculated.i.i.i.i21.i = call i64 @llvm.umin.i64(i64 %i.atl, i64 %i.aup)
  %i.auq = call noundef i32 @memcmp(ptr noundef %i.auk, ptr noundef %i.ath, i64 noundef %.sroa.speculated.i.i.i.i21.i) #44 ; 2 uses
  %i.aur = icmp eq i32 %i.auq, 0
  br i1 %i.aur, label %bb.cx, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i"

bb.cx:                                            ; preds = %.preheader.i134
  %i.aus = icmp eq i64 %i.aup, %i.atl
  br i1 %i.aus, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i", label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aut = icmp ult i64 %i.aup, %i.atl
  br i1 %i.aut, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i": ; preds = %bb.cy, %bb.cx, %.preheader.i134
  %.0.i.i.i.i22.i = phi i32 [ %i.auq, %.preheader.i134 ], [ 1, %bb.cy ], [ 0, %bb.cx ]
  %i.auu = icmp slt i32 %.0.i.i.i.i22.i, 0
  br i1 %i.auu, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i", label %.preheader.i134, !llvm.loop !2718

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i", %bb.cy
  %i.auv = icmp ult ptr %i.atm, %i.aud
  br i1 %i.auv, label %.lr.ph.i132, label %._crit_edge.i136, !llvm.loop !2719

._crit_edge.i136:                                 ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i", %.critedge.i131
  %i.auw = phi ptr [ %.018.i122, %.critedge.i131 ], [ %.220.i133, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i" ] ; 8 uses
  %.not.i137 = icmp eq ptr %.021, %i.auw
  br i1 %.not.i137, label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit", label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.i136
  %i.aux = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.021, ptr noundef nonnull align 8 dereferenceable(280) %i.auw) #44 ; 0 uses
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit"

"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit": ; preds = %._crit_edge.i136, %bb.cz
  %i.auy = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.auw, ptr noundef nonnull align 8 dereferenceable(280) %6) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br i1 %.not, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit"
  %i.auz = call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEbT1_SP_T0_"(ptr noundef nonnull %.021, ptr noundef nonnull %i.auw) ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auw, i64 280 ; 2 uses
  %i.avb = call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEbT1_SP_T0_"(ptr noundef nonnull %i.ava, ptr noundef %.024.ph)
  br i1 %i.avb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  br i1 %i.auz, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer", !llvm.loop !2720

bb.dc:                                            ; preds = %bb.da
  br i1 %i.auz, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit", label %bb.dd, !llvm.loop !2720

bb.dd:                                            ; preds = %bb.dc, %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit"
  call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb"(ptr noundef nonnull %.021, ptr noundef nonnull %i.auw, i64 noundef %i.aho, i1 noundef zeroext %i.bb)
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auw, i64 280
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge": ; preds = %bb.dd, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EET0_SP_SP_T1_.exit"
  %.021.ph406.be = phi ptr [ %.321.lcssa.i, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EET0_SP_SP_T1_.exit" ], [ %i.avc, %bb.dd ]
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405", !llvm.loop !2720

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit", %bb.db, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i", %bb.c, %bb.aj, %.preheader.i54, %bb.w, %.preheader.i, %bb.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread29", %bb.e, %bb.d, %bb.f, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit"
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSR_SR_SR_SR_SR_SQ_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  %6 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  %7 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  %8 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  tail call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 4 uses
  %i.c = load i8, ptr %i.a, align 8               ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 257
  %i.h = select i1 %i.d, ptr %i.f, ptr %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i8 %i.c, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = select i1 %i.d, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = load i8, ptr %i.b, align 8               ; 2 uses
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 257 ; 2 uses
  %i.s = select i1 %i.o, ptr %i.q, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i8 %i.n, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = select i1 %i.o, i64 %i.u, i64 %i.w       ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.m)
  %i.y = tail call noundef i32 @memcmp(ptr noundef %i.h, ptr noundef %i.s, i64 noundef %.sroa.speculated.i.i.i.i.i) #44 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp ult i64 %i.m, %i.x
  br i1 %i.aa, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i": ; preds = %bb.a
  %i.ab = icmp slt i32 %i.y, 0
  br i1 %i.ab, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i", %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ad = load <2 x ptr>, ptr %3, align 8, !tbaa !361
  store <2 x ptr> %i.ad, ptr %8, align 16, !tbaa !361
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !361
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %3, i8 0, i64 24, i1 false)
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !377
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !379
  %i.ak = insertelement <4 x ptr> poison, ptr %i.ah, i64 0
  %i.al = insertelement <4 x ptr> %i.ak, ptr %i.ai, i64 1
  %i.am = shufflevector <2 x ptr> %i.aj, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.an = shufflevector <4 x ptr> %i.al, <4 x ptr> %i.am, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.an, ptr %i.ac, align 16, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.ao, ptr noundef nonnull align 8 dereferenceable(44) %i.ap, i64 44, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.at = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !376
  store <2 x ptr> %i.at, ptr %i.aq, align 16, !tbaa !376
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !376
  store ptr %i.av, ptr %i.as, align 16, !tbaa !376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.aw, ptr noundef nonnull align 8 dereferenceable(136) %i.ax, i64 136, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.az = tail call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef nonnull align 8 dereferenceable(280) %4) #44 ; 0 uses
  %i.ba = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(280) %8) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 4 uses
  %i.bc = load i8, ptr %i.b, align 8              ; 2 uses
  %i.bd = trunc i8 %i.bc to i1                    ; 2 uses
  %i.be = load ptr, ptr %i.p, align 8
  %i.bf = select i1 %i.bd, ptr %i.be, ptr %i.r
  %i.bg = load i64, ptr %i.t, align 8
  %i.bh = lshr i8 %i.bc, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = select i1 %i.bd, i64 %i.bg, i64 %i.bi   ; 2 uses
  %i.bk = load i8, ptr %i.bb, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 257 ; 2 uses
  %i.bp = select i1 %i.bl, ptr %i.bn, ptr %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = lshr i8 %i.bk, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = select i1 %i.bl, i64 %i.br, i64 %i.bt   ; 2 uses
  %.sroa.speculated.i.i.i.i5.i = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bj)
  %i.bv = call noundef i32 @memcmp(ptr noundef %i.bf, ptr noundef %i.bp, i64 noundef %.sroa.speculated.i.i.i.i5.i) #44 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.c, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.i"

bb.c:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i"
  %i.bx = icmp ult i64 %i.bj, %i.bu
  br i1 %i.bx, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i"
  %i.by = icmp slt i32 %i.bv, 0
  br i1 %i.by, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.i", %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ca = load <2 x ptr>, ptr %2, align 8, !tbaa !361
  store <2 x ptr> %i.ca, ptr %7, align 16, !tbaa !361
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %2, i8 0, i64 24, i1 false)
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !377
  %i.cg = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !379
  %i.ch = insertelement <4 x ptr> poison, ptr %i.ce, i64 0
  %i.ci = insertelement <4 x ptr> %i.ch, ptr %i.cf, i64 1
  %i.cj = shufflevector <2 x ptr> %i.cg, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x ptr> %i.ci, <4 x ptr> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ck, ptr %i.bz, align 16, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.cl, ptr noundef nonnull align 8 dereferenceable(44) %i.cm, i64 44, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.cq = load <2 x ptr>, ptr %i.co, align 8, !tbaa !376
  store <2 x ptr> %i.cq, ptr %i.cn, align 16, !tbaa !376
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !376
  store ptr %i.cs, ptr %i.cp, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ct, ptr noundef nonnull align 8 dereferenceable(136) %i.cu, i64 136, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.cw = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(280) %3) #44 ; 0 uses
  %i.cx = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef nonnull align 8 dereferenceable(280) %7) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %7) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.cz = load i8, ptr %i.bb, align 8             ; 2 uses
  %i.da = trunc i8 %i.cz to i1                    ; 2 uses
  %i.db = load ptr, ptr %i.bm, align 8
  %i.dc = select i1 %i.da, ptr %i.db, ptr %i.bo
  %i.dd = load i64, ptr %i.bq, align 8
  %i.de = lshr i8 %i.cz, 1
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = select i1 %i.da, i64 %i.dd, i64 %i.df   ; 2 uses
  %i.dh = load i8, ptr %i.cy, align 8             ; 2 uses
  %i.di = trunc i8 %i.dh to i1                    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 257 ; 2 uses
  %i.dm = select i1 %i.di, ptr %i.dk, ptr %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = lshr i8 %i.dh, 1
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = select i1 %i.di, i64 %i.do, i64 %i.dq   ; 2 uses
  %.sroa.speculated.i.i.i.i8.i = call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dg)
  %i.ds = call noundef i32 @memcmp(ptr noundef %i.dc, ptr noundef %i.dm, i64 noundef %.sroa.speculated.i.i.i.i8.i) #44 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.d, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.i"

bb.d:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i"
  %i.du = icmp ult i64 %i.dg, %i.dr
  br i1 %i.du, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.thread25.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i"
  %i.dv = icmp slt i32 %i.ds, 0
  br i1 %i.dv, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.thread25.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.thread25.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.i", %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dx = load <2 x ptr>, ptr %1, align 8, !tbaa !361
  store <2 x ptr> %i.dx, ptr %6, align 16, !tbaa !361
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_3
