Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 178
begin_hunk_0_@_ZN4tlog6Logger3logIJRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSG_:bb.a
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
  %i.az = load ptr, ptr %7, align 8, !tbaa !482, !noalias !2694 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %i.u
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.az) #44, !noalias !2694
  br label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

bb.j:                                             ; preds = %bb.e, %bb.d, %.thread.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %7, align 8, !tbaa !482, !noalias !2694 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.bb, %i.u
  br i1 %.not.i.i7.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.bb) #44, !noalias !2694
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i ], [ %i.cp, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44, !noalias !2694
  br label %common.resume

_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44, !noalias !2694
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44, !noalias !2693
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
  %5 = alloca %"struct.tev::ImageData", align 16  ; 13 uses
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
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 256
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer": ; preds = %bb.db, %bb.a
  %.024.ph = phi ptr [ %i.auv, %bb.db ], [ %1, %bb.a ] ; 30 uses
  %.021.ph = phi ptr [ %.021, %bb.db ], [ %0, %bb.a ]
  %.048.ph = phi i8 [ %.048.ph407, %bb.db ], [ %i.a, %bb.a ]
  %.046.ph = phi i64 [ %i.ahq, %bb.db ], [ %2, %bb.a ]
  %i.av = ptrtoint ptr %.024.ph to i64
  %i.aw = getelementptr inbounds i8, ptr %.024.ph, i64 -280 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.024.ph, i64 -560
  %i.ay = getelementptr inbounds i8, ptr %.024.ph, i64 -840
  %i.az = getelementptr inbounds i8, ptr %.024.ph, i64 -24
  %i.ba = getelementptr inbounds i8, ptr %.024.ph, i64 -8
  %i.bb = getelementptr inbounds i8, ptr %.024.ph, i64 -23
  %i.bc = getelementptr inbounds i8, ptr %.024.ph, i64 -16
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer"
  %.021.ph406 = phi ptr [ %.021.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer" ], [ %.021.ph406.be, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge" ]
  %.048.ph407 = phi i8 [ %.048.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer" ], [ 0, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge" ] ; 3 uses
  %.046.ph408 = phi i64 [ %.046.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer" ], [ %i.ahq, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge" ]
  %i.bd = trunc nuw i8 %.048.ph407 to i1          ; 2 uses
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405", %bb.dc
  %.021 = phi ptr [ %i.auz, %bb.dc ], [ %.021.ph406, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405" ] ; 103 uses
  %.046 = phi i64 [ %i.ahq, %bb.dc ], [ %.046.ph408, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405" ] ; 2 uses
  %i.be = ptrtoint ptr %.021 to i64               ; 2 uses
  %i.bf = sub i64 %i.av, %i.be                    ; 4 uses
  %i.bg = sdiv exact i64 %i.bf, 280               ; 5 uses
  switch i64 %i.bg, label %bb.g [
    i64 0, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"
    i64 1, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

bb.b:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"
  %i.bh = getelementptr inbounds i8, ptr %.024.ph, i64 -280 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.024.ph, i64 -24
  %i.bj = getelementptr inbounds nuw i8, ptr %.021, i64 256 ; 3 uses
  %i.bk = load i8, ptr %i.bi, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.024.ph, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %.024.ph, i64 -23
  %i.bp = select i1 %i.bl, ptr %i.bn, ptr %i.bo
  %i.bq = getelementptr inbounds i8, ptr %.024.ph, i64 -16
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = lshr i8 %i.bk, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = select i1 %i.bl, i64 %i.br, i64 %i.bt   ; 2 uses
  %i.bv = load i8, ptr %i.bj, align 8             ; 2 uses
  %i.bw = trunc i8 %i.bv to i1                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.021, i64 272
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.021, i64 257
  %i.ca = select i1 %i.bw, ptr %i.by, ptr %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.021, i64 264
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = lshr i8 %i.bv, 1
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = select i1 %i.bw, i64 %i.cc, i64 %i.ce   ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.bu)
  %i.cg = call noundef i32 @memcmp(ptr noundef %i.bp, ptr noundef %i.ca, i64 noundef %.sroa.speculated.i.i.i.i) #44 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.c, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit"

bb.c:                                             ; preds = %bb.b
  %i.ci = icmp ult i64 %i.bu, %i.cf
  br i1 %i.ci, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread29", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit": ; preds = %bb.b
  %i.cj = icmp slt i32 %i.cg, 0
  br i1 %i.cj, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread29", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread29": ; preds = %bb.c, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #44
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cl = load <2 x ptr>, ptr %.021, align 8, !tbaa !361
  store <2 x ptr> %i.cl, ptr %14, align 16, !tbaa !361
  %i.cm = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !361
  store ptr %i.cn, ptr %i.ck, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.021, i8 0, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.cr = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !379
  store <2 x ptr> %i.cr, ptr %i.co, align 8, !tbaa !379
  %i.cs = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !379
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %.021, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.cu, ptr noundef nonnull align 8 dereferenceable(44) %i.cv, i64 44, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.cx = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 112
  %i.cz = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !376
  store <2 x ptr> %i.cz, ptr %i.cw, align 16, !tbaa !376
  %i.da = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !376
  store ptr %i.db, ptr %i.cy, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i8 0, i64 24, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 120
  %i.dd = getelementptr inbounds nuw i8, ptr %.021, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dc, ptr noundef nonnull align 8 dereferenceable(136) %i.dd, i64 136, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.df = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.021, ptr noundef nonnull align 8 dereferenceable(280) %i.bh) #44 ; 0 uses
  %i.dg = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.bh, ptr noundef nonnull align 8 dereferenceable(280) %14) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %14) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

bb.d:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"
  %i.dh = getelementptr inbounds nuw i8, ptr %.021, i64 280
  %i.di = getelementptr inbounds i8, ptr %.024.ph, i64 -280
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %.021, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

bb.e:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"
  %i.dj = getelementptr inbounds nuw i8, ptr %.021, i64 280
  %i.dk = getelementptr inbounds nuw i8, ptr %.021, i64 560
  %i.dl = getelementptr inbounds i8, ptr %.024.ph, i64 -280
  call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_T0_"(ptr noundef %.021, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

bb.f:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"
  %i.dm = getelementptr inbounds nuw i8, ptr %.021, i64 280
  %i.dn = getelementptr inbounds nuw i8, ptr %.021, i64 560
  %i.do = getelementptr inbounds nuw i8, ptr %.021, i64 840
  %i.dp = getelementptr inbounds i8, ptr %.024.ph, i64 -280
  call fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSR_SR_SR_SR_SR_SQ_"(ptr noundef %.021, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread"

bb.g:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit"
  %i.dq = icmp slt i64 %i.bf, 6720
  br i1 %i.dq, label %bb.h, label %15

bb.h:                                             ; preds = %bb.g
  %i.dr = trunc nuw i8 %.048.ph407 to i1
  %i.ds = icmp eq ptr %.021, %.024.ph             ; 2 uses
  br i1 %i.dr, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  br i1 %i.ds, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %storemerge12.i = getelementptr inbounds nuw i8, ptr %.021, i64 280 ; 2 uses
  %.not13.i = icmp eq ptr %storemerge12.i, %.024.ph
  br i1 %.not13.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 120
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 256 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 272
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 257
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 264
  br label %bb.j

bb.j:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i", %.lr.ph.i
  %storemerge15.i = phi ptr [ %storemerge12.i, %.lr.ph.i ], [ %storemerge.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i" ] ; 5 uses
  %.pn14.i = phi ptr [ %.021, %.lr.ph.i ], [ %storemerge15.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i" ] ; 16 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 536 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 256
  %i.eg = load i8, ptr %i.ee, align 8             ; 2 uses
  %i.eh = trunc i8 %i.eg to i1                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 552
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 537
  %i.el = select i1 %i.eh, ptr %i.ej, ptr %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 544
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = lshr i8 %i.eg, 1
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = select i1 %i.eh, i64 %i.en, i64 %i.ep   ; 2 uses
  %i.er = load i8, ptr %i.ef, align 8             ; 2 uses
  %i.es = trunc i8 %i.er to i1                    ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 272
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 257
  %i.ew = select i1 %i.es, ptr %i.eu, ptr %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 264
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = lshr i8 %i.er, 1
  %i.fa = zext nneg i8 %i.ez to i64
  %i.fb = select i1 %i.es, i64 %i.ey, i64 %i.fa   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.fb, i64 %i.eq)
  %i.fc = call noundef i32 @memcmp(ptr noundef %i.el, ptr noundef %i.ew, i64 noundef %.sroa.speculated.i.i.i.i.i) #44 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.k, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i"

bb.k:                                             ; preds = %bb.j
  %i.fe = icmp ult i64 %i.eq, %i.fb
  br i1 %i.fe, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i": ; preds = %bb.j
  %i.ff = icmp slt i32 %i.fc, 0
  br i1 %i.ff, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i", %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #44
  %i.fg = load <2 x ptr>, ptr %storemerge15.i, align 8, !tbaa !361
  store <2 x ptr> %i.fg, ptr %13, align 16, !tbaa !361
  %i.fh = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 296
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !361
  store ptr %i.fi, ptr %i.dt, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %storemerge15.i, i8 0, i64 24, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 304 ; 2 uses
  %i.fk = load <2 x ptr>, ptr %i.fj, align 8, !tbaa !379
  store <2 x ptr> %i.fk, ptr %i.du, align 8, !tbaa !379
  %i.fl = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 320
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !379
  store ptr %i.fm, ptr %i.dv, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i8 0, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.dw, ptr noundef nonnull align 8 dereferenceable(44) %i.fn, i64 44, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 376 ; 2 uses
  %i.fp = load <2 x ptr>, ptr %i.fo, align 8, !tbaa !376
  store <2 x ptr> %i.fp, ptr %i.dx, align 16, !tbaa !376
  %i.fq = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 392
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !376
  store ptr %i.fr, ptr %i.dy, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, ptr noundef nonnull align 8 dereferenceable(136) %i.fs, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i8 0, i64 24, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit21.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i"
  %.05.i = phi ptr [ %.pn14.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i" ], [ %i.iu, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit21.i" ] ; 20 uses
  %.0.i = phi ptr [ %storemerge15.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i" ], [ %.05.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit21.i" ] ; 18 uses
  %i.ft = load ptr, ptr %.0.i, align 8, !tbaa !356 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !357 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ft, %i.fv
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.fw, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i ], [ %i.fv, %bb.m ] ; 3 uses
  %i.fw = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -72 ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !360 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = atomicrmw add ptr %i.fz, i64 -1 acq_rel, align 8
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.o, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !89
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(24) %i.fy) #44, !inline_history !2697
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fy) #44
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %.lr.ph.i.i.i.i.i.i
  %i.gf = load i8, ptr %i.fw, align 8
  %i.gg = trunc i8 %i.gf to i1
  br i1 %i.gg, label %bb.p, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i
  %i.gh = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -56
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !80
  %i.gj = load i64, ptr %i.fw, align 8
  %i.gk = and i64 %i.gj, -2
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gk) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i: ; preds = %bb.p, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ft, %i.fw
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %.0.i, align 8, !tbaa !356
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.m
  %i.gl = phi ptr [ %.pre.i.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.ft, %bb.m ] ; 2 uses
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !357
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !361
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gq) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.l
  %i.gr = load <2 x ptr>, ptr %.05.i, align 8, !tbaa !361
  store <2 x ptr> %i.gr, ptr %.0.i, align 8, !tbaa !361
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !361
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.05.i, i8 0, i64 24, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !377 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !378 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.gx, %i.gz
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.q, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.ha, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i ], [ %i.gz, %bb.q ] ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.hb = load i8, ptr %i.ha, align 8
  %i.hc = trunc i8 %i.hb to i1
  br i1 %i.hc, label %bb.r, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.hd = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i, i64 -8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !80
  %i.hf = load i64, ptr %i.ha, align 8
  %i.hg = and i64 %i.hf, -2
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hg) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb":bb.a
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.ml) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74: ; preds = %bb.ad, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i73
  %.not.i.i.i.i.i.i75 = icmp eq ptr %i.lu, %i.lx
  br i1 %.not.i.i.i.i.i.i75, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76, label %.lr.ph.i.i.i.i.i.i70

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74
  %.pre.i.i.i77 = load ptr, ptr %.0.i67, align 8, !tbaa !356
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i78

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i78: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76, %bb.aa
  %i.mm = phi ptr [ %.pre.i.i.i77, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76 ], [ %i.lu, %bb.aa ] ; 2 uses
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !357
  %i.mn = getelementptr inbounds nuw i8, ptr %.0.i67, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !361
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mm to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mr) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lv, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i78, %bb.z
  %i.ms = load <2 x ptr>, ptr %.05.i66, align 8, !tbaa !361
  store <2 x ptr> %i.ms, ptr %.0.i67, align 8, !tbaa !361
  %i.mt = getelementptr inbounds nuw i8, ptr %.05.i66, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !361
  %i.mv = getelementptr inbounds nuw i8, ptr %.0.i67, i64 16
  store ptr %i.mu, ptr %i.mv, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.05.i66, i8 0, i64 24, i1 false)
  %i.mw = getelementptr inbounds nuw i8, ptr %.0.i67, i64 24 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.05.i66, i64 24 ; 2 uses
  %i.my = load ptr, ptr %i.mw, align 8, !tbaa !377 ; 5 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i.i.i80, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79
  %i.mz = getelementptr inbounds nuw i8, ptr %.0.i67, i64 32 ; 3 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !378 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i81 = icmp eq ptr %i.my, %i.na
  br i1 %.not6.i.i.i.i.i.i.i.i81, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88, label %.lr.ph.i.i.i.i.i.i.i.i82

.lr.ph.i.i.i.i.i.i.i.i82:                         ; preds = %bb.ae, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84
  %.07.i.i.i.i.i.i.i.i83 = phi ptr [ %i.nb, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84 ], [ %i.na, %bb.ae ] ; 2 uses
  %i.nb = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i83, i64 -24 ; 4 uses
  %i.nc = load i8, ptr %i.nb, align 8
  %i.nd = trunc i8 %i.nc to i1
  br i1 %i.nd, label %bb.af, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i82
  %i.ne = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i83, i64 -8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !80
  %i.ng = load i64, ptr %i.nb, align 8
  %i.nh = and i64 %i.ng, -2
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.nh) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84: ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i82
  %.not.i.i.i.i.i.i.i.i85 = icmp eq ptr %i.my, %i.nb
  br i1 %.not.i.i.i.i.i.i.i.i85, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86, label %.lr.ph.i.i.i.i.i.i.i.i82

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84
  %.pre.i.i.i.i.i87 = load ptr, ptr %i.mw, align 8, !tbaa !377
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86, %bb.ae
  %i.ni = phi ptr [ %.pre.i.i.i.i.i87, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86 ], [ %i.my, %bb.ae ] ; 2 uses
  store ptr %i.my, ptr %i.mz, align 8, !tbaa !378
  %i.nj = getelementptr inbounds nuw i8, ptr %.0.i67, i64 40
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !379
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.ni to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nn) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mz, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79
  %i.no = load <2 x ptr>, ptr %i.mx, align 8, !tbaa !379
  store <2 x ptr> %i.no, ptr %i.mw, align 8, !tbaa !379
  %i.np = getelementptr inbounds nuw i8, ptr %.05.i66, i64 40
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !379
  %i.nr = getelementptr inbounds nuw i8, ptr %.0.i67, i64 40
  store ptr %i.nq, ptr %i.nr, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mx, i8 0, i64 24, i1 false)
  %i.ns = getelementptr inbounds nuw i8, ptr %.0.i67, i64 48
  %i.nt = getelementptr inbounds nuw i8, ptr %.05.i66, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ns, ptr noundef nonnull align 8 dereferenceable(44) %i.nt, i64 44, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %.0.i67, i64 96 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.05.i66, i64 96 ; 2 uses
  %i.nw = load ptr, ptr %i.nu, align 8, !tbaa !374 ; 5 uses
  %.not.i.i.i7.i.i90 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i7.i.i90, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89
  %i.nx = getelementptr inbounds nuw i8, ptr %.0.i67, i64 104 ; 3 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !375 ; 2 uses
  %.not.i1.i.i.i.i.i.i.i91 = icmp eq ptr %i.nw, %i.ny
  br i1 %.not.i1.i.i.i.i.i.i.i91, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97, label %.lr.ph.i.i.i.i.i.i.i92

.lr.ph.i.i.i.i.i.i.i92:                           ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i.i92
  %.0.i2.i.i.i.i.i.i.i93 = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i.i.i92 ], [ %i.ny, %bb.ag ]
  %i.nz = getelementptr inbounds i8, ptr %.0.i2.i.i.i.i.i.i.i93, i64 -96 ; 3 uses
  call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.nz) #44, !inline_history !13
  %.not.i.i.i.i.i.i8.i.i94 = icmp eq ptr %i.nw, %i.nz
  br i1 %.not.i.i.i.i.i.i8.i.i94, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95, label %.lr.ph.i.i.i.i.i.i.i92

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95: ; preds = %.lr.ph.i.i.i.i.i.i.i92
  %.pre.i.i.i9.i.i96 = load ptr, ptr %i.nu, align 8, !tbaa !374
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95, %bb.ag
  %i.oa = phi ptr [ %.pre.i.i.i9.i.i96, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95 ], [ %i.nw, %bb.ag ] ; 2 uses
  store ptr %i.nw, ptr %i.nx, align 8, !tbaa !375
  %i.ob = getelementptr inbounds nuw i8, ptr %.0.i67, i64 112
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !376
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = sub i64 %i.od, %i.oe
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.of) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nx, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89
  %i.og = load <2 x ptr>, ptr %i.nv, align 8, !tbaa !376
  store <2 x ptr> %i.og, ptr %i.nu, align 8, !tbaa !376
  %i.oh = getelementptr inbounds nuw i8, ptr %.05.i66, i64 112
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !376
  %i.oj = getelementptr inbounds nuw i8, ptr %.0.i67, i64 112
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nv, i8 0, i64 24, i1 false)
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i67, i64 120
  %i.ol = getelementptr inbounds nuw i8, ptr %.05.i66, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ok, ptr noundef nonnull align 8 dereferenceable(136) %i.ol, i64 136, i1 false)
  %i.om = getelementptr inbounds nuw i8, ptr %.0.i67, i64 256 ; 3 uses
  %i.on = load i8, ptr %i.om, align 8
  %i.oo = trunc i8 %i.on to i1
  br i1 %i.oo, label %bb.ah, label %_ZN3tev9ImageDataaSEOS0_.exit.i99

bb.ah:                                            ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i67, i64 272
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !80
  %i.or = load i64, ptr %i.om, align 8
  %i.os = and i64 %i.or, -2
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.os) #49
  br label %_ZN3tev9ImageDataaSEOS0_.exit.i99

_ZN3tev9ImageDataaSEOS0_.exit.i99:                ; preds = %bb.ah, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98
  %i.ot = getelementptr inbounds nuw i8, ptr %.05.i66, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.om, ptr noundef nonnull align 8 dereferenceable(24) %i.ot, i64 24, i1 false), !tbaa.struct !462
  store i8 0, ptr %i.ot, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %.05.i66, i64 257
  store i8 0, ptr %i.ou, align 1, !tbaa !80
  %i.ov = getelementptr inbounds i8, ptr %.05.i66, i64 -280
  %i.ow = getelementptr inbounds i8, ptr %.05.i66, i64 -24
  %i.ox = load i8, ptr %i.kb, align 16            ; 2 uses
  %i.oy = trunc i8 %i.ox to i1                    ; 2 uses
  %i.oz = load ptr, ptr %i.kc, align 16
  %i.pa = select i1 %i.oy, ptr %i.oz, ptr %i.kd
  %i.pb = load i64, ptr %i.ke, align 8
  %i.pc = lshr i8 %i.ox, 1
  %i.pd = zext nneg i8 %i.pc to i64
  %i.pe = select i1 %i.oy, i64 %i.pb, i64 %i.pd   ; 2 uses
  %i.pf = load i8, ptr %i.ow, align 8             ; 2 uses
  %i.pg = trunc i8 %i.pf to i1                    ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %.05.i66, i64 -8
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = getelementptr inbounds i8, ptr %.05.i66, i64 -23
  %i.pk = select i1 %i.pg, ptr %i.pi, ptr %i.pj
  %i.pl = getelementptr inbounds i8, ptr %.05.i66, i64 -16
  %i.pm = load i64, ptr %i.pl, align 8
  %i.pn = lshr i8 %i.pf, 1
  %i.po = zext nneg i8 %i.pn to i64
  %i.pp = select i1 %i.pg, i64 %i.pm, i64 %i.po   ; 2 uses
  %.sroa.speculated.i.i.i.i15.i = call i64 @llvm.umin.i64(i64 %i.pp, i64 %i.pe)
  %i.pq = call noundef i32 @memcmp(ptr noundef %i.pa, ptr noundef %i.pk, i64 noundef %.sroa.speculated.i.i.i.i15.i) #44 ; 2 uses
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %bb.ai, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i"

bb.ai:                                            ; preds = %_ZN3tev9ImageDataaSEOS0_.exit.i99
  %i.ps = icmp ult i64 %i.pe, %i.pp
  br i1 %i.ps, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i": ; preds = %bb.ai, %_ZN3tev9ImageDataaSEOS0_.exit.i99
  %.0.i.i.i.i16.i = phi i32 [ %i.pq, %_ZN3tev9ImageDataaSEOS0_.exit.i99 ], [ -1, %bb.ai ]
  %i.pt = icmp slt i32 %.0.i.i.i.i16.i, 0
  br i1 %i.pt, label %bb.z, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i", !llvm.loop !2701

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i", %bb.ai
  %i.pu = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.05.i66, ptr noundef nonnull align 8 dereferenceable(280) %12) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %12) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i61", %bb.y
  %storemerge.i63 = getelementptr inbounds nuw i8, ptr %storemerge15.i58, i64 280 ; 2 uses
  %.not.i64 = icmp eq ptr %storemerge.i63, %.024.ph
  br i1 %.not.i64, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %bb.x, !llvm.loop !2702

15:                                               ; preds = %bb.g
  %16 = icmp eq i64 %.046, 0
  br i1 %16, label %bb.aj, label %bb.bw

bb.aj:                                            ; preds = %15
  %i.pv = icmp eq ptr %.021, %.024.ph
  br i1 %i.pv, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.pw = add nsw i64 %i.bg, -2
  %i.px = lshr i64 %i.pw, 1                       ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.qc = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.qd = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.qf = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.qh = getelementptr inbounds nuw i8, ptr %4, i64 257
  %i.qi = getelementptr inbounds nuw i8, ptr %4, i64 264
  br label %bb.al

bb.al:                                            ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit", %bb.ak
  %.01.i.i.i = phi i64 [ %i.px, %bb.ak ], [ %i.vr, %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit" ] ; 4 uses
  %i.qj = getelementptr inbounds nuw [280 x i8], ptr %.021, i64 %.01.i.i.i ; 14 uses
  %i.qk = shl nsw i64 %.01.i.i.i, 1               ; 2 uses
  %i.ql = or disjoint i64 %i.qk, 1                ; 4 uses
  %i.qm = getelementptr inbounds [280 x i8], ptr %.021, i64 %i.ql ; 12 uses
  %i.qn = add nsw i64 %i.qk, 2                    ; 2 uses
  %i.qo = icmp slt i64 %i.qn, %i.bg
  br i1 %i.qo, label %bb.am, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

bb.am:                                            ; preds = %bb.al
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 280
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 256
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 536
  %i.qs = load i8, ptr %i.qq, align 8             ; 2 uses
  %i.qt = trunc i8 %i.qs to i1                    ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qm, i64 272
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qm, i64 257
  %i.qx = select i1 %i.qt, ptr %i.qv, ptr %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qm, i64 264
  %i.qz = load i64, ptr %i.qy, align 8
  %i.ra = lshr i8 %i.qs, 1
  %i.rb = zext nneg i8 %i.ra to i64
  %i.rc = select i1 %i.qt, i64 %i.qz, i64 %i.rb   ; 2 uses
  %i.rd = load i8, ptr %i.qr, align 8             ; 2 uses
  %i.re = trunc i8 %i.rd to i1                    ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qm, i64 552
  %i.rg = load ptr, ptr %i.rf, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qm, i64 537
  %i.ri = select i1 %i.re, ptr %i.rg, ptr %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qm, i64 544
  %i.rk = load i64, ptr %i.rj, align 8
  %i.rl = lshr i8 %i.rd, 1
  %i.rm = zext nneg i8 %i.rl to i64
  %i.rn = select i1 %i.re, i64 %i.rk, i64 %i.rm   ; 2 uses
  %.sroa.speculated.i.i.i.i.i143 = call i64 @llvm.umin.i64(i64 %i.rn, i64 %i.rc)
  %i.ro = call noundef i32 @memcmp(ptr noundef %i.qx, ptr noundef %i.ri, i64 noundef %.sroa.speculated.i.i.i.i.i143) #44 ; 2 uses
  %i.rp = icmp eq i32 %i.ro, 0
  br i1 %i.rp, label %bb.an, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144"

bb.an:                                            ; preds = %bb.am
  %i.rq = icmp ult i64 %i.rc, %i.rn
  br i1 %i.rq, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144": ; preds = %bb.am
  %i.rr = icmp slt i32 %i.ro, 0
  br i1 %i.rr, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144", %bb.an
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144", %bb.an, %bb.al
  %.010.i = phi ptr [ %i.qp, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i" ], [ %i.qm, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144" ], [ %i.qm, %bb.al ], [ %i.qm, %bb.an ] ; 5 uses
  %.0.i140 = phi i64 [ %i.qn, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i" ], [ %i.ql, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144" ], [ %i.ql, %bb.al ], [ %i.ql, %bb.an ]
  %i.rs = getelementptr inbounds nuw i8, ptr %.010.i, i64 256
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qj, i64 256 ; 3 uses
  %i.ru = load i8, ptr %i.rs, align 8             ; 2 uses
  %i.rv = trunc i8 %i.ru to i1                    ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.010.i, i64 272
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %.010.i, i64 257
  %i.rz = select i1 %i.rv, ptr %i.rx, ptr %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %.010.i, i64 264
  %i.sb = load i64, ptr %i.sa, align 8
  %i.sc = lshr i8 %i.ru, 1
  %i.sd = zext nneg i8 %i.sc to i64
  %i.se = select i1 %i.rv, i64 %i.sb, i64 %i.sd   ; 2 uses
  %i.sf = load i8, ptr %i.rt, align 8             ; 2 uses
  %i.sg = trunc i8 %i.sf to i1                    ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qj, i64 272
  %i.si = load ptr, ptr %i.sh, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qj, i64 257
  %i.sk = select i1 %i.sg, ptr %i.si, ptr %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.qj, i64 264
  %i.sm = load i64, ptr %i.sl, align 8
  %i.sn = lshr i8 %i.sf, 1
  %i.so = zext nneg i8 %i.sn to i64
  %i.sp = select i1 %i.sg, i64 %i.sm, i64 %i.so   ; 2 uses
  %.sroa.speculated.i.i.i.i28.i = call i64 @llvm.umin.i64(i64 %i.sp, i64 %i.se)
  %i.sq = call noundef i32 @memcmp(ptr noundef %i.rz, ptr noundef %i.sk, i64 noundef %.sroa.speculated.i.i.i.i28.i) #44 ; 2 uses
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %bb.ao, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.i"

bb.ao:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"
  %i.ss = icmp ult i64 %i.se, %i.sp
  br i1 %i.ss, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"
  %i.st = icmp slt i32 %i.sq, 0
  br i1 %i.st, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.i", %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.su = load <2 x ptr>, ptr %i.qj, align 8, !tbaa !361
  store <2 x ptr> %i.su, ptr %4, align 16, !tbaa !361
  %i.sv = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !361
  store ptr %i.sw, ptr %i.py, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.qj, i8 0, i64 24, i1 false)
  %i.sx = getelementptr inbounds nuw i8, ptr %i.qj, i64 24 ; 2 uses
  %i.sy = load <2 x ptr>, ptr %i.sx, align 8, !tbaa !379
  store <2 x ptr> %i.sy, ptr %i.pz, align 8, !tbaa !379
  %i.sz = getelementptr inbounds nuw i8, ptr %i.qj, i64 40
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !379
  store ptr %i.ta, ptr %i.qa, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sx, i8 0, i64 24, i1 false)
  %i.tb = getelementptr inbounds nuw i8, ptr %i.qj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.qb, ptr noundef nonnull align 8 dereferenceable(44) %i.tb, i64 44, i1 false)
  %i.tc = getelementptr inbounds nuw i8, ptr %i.qj, i64 96 ; 2 uses
  %i.td = load <2 x ptr>, ptr %i.tc, align 8, !tbaa !376
  store <2 x ptr> %i.td, ptr %i.qc, align 16, !tbaa !376
  %i.te = getelementptr inbounds nuw i8, ptr %i.qj, i64 112
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !376
  store ptr %i.tf, ptr %i.qd, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tc, i8 0, i64 24, i1 false)
  %i.tg = getelementptr inbounds nuw i8, ptr %i.qj, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.qe, ptr noundef nonnull align 8 dereferenceable(136) %i.tg, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.qf, ptr noundef nonnull align 8 dereferenceable(24) %i.rt, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rt, i8 0, i64 24, i1 false)
  %i.th = load i8, ptr %i.qf, align 16            ; 2 uses
  %i.ti = trunc i8 %i.th to i1                    ; 2 uses
  %i.tj = load ptr, ptr %i.qg, align 16
  %i.tk = select i1 %i.ti, ptr %i.tj, ptr %i.qh
  %i.tl = load i64, ptr %i.qi, align 8
  %i.tm = lshr i8 %i.th, 1
  %i.tn = zext nneg i8 %i.tm to i64
  %i.to = select i1 %i.ti, i64 %i.tl, i64 %i.tn   ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i"
  %.013.i = phi ptr [ %i.qj, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i" ], [ %.111.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.i" ]
  %.111.i = phi ptr [ %.010.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i" ], [ %.212.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.i" ] ; 3 uses
  %.1.i141 = phi i64 [ %.0.i140, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i" ], [ %.2.i142, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.i" ] ; 2 uses
  %i.tp = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.013.i, ptr noundef nonnull align 8 dereferenceable(280) %.111.i) #44 ; 0 uses
  %i.tq = icmp slt i64 %i.px, %.1.i141
  br i1 %i.tq, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.thread.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.tr = shl nsw i64 %.1.i141, 1                 ; 2 uses
  %i.ts = or disjoint i64 %i.tr, 1                ; 4 uses
  %i.tt = getelementptr inbounds [280 x i8], ptr %.021, i64 %i.ts ; 12 uses
  %i.tu = add nsw i64 %i.tr, 2                    ; 2 uses
  %i.tv = icmp slt i64 %i.tu, %i.bg
  br i1 %i.tv, label %bb.ar, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i"

bb.ar:                                            ; preds = %bb.aq
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 280
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 256
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tt, i64 536
  %i.tz = load i8, ptr %i.tx, align 8             ; 2 uses
  %i.ua = trunc i8 %i.tz to i1                    ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tt, i64 272
  %i.uc = load ptr, ptr %i.ub, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tt, i64 257
  %i.ue = select i1 %i.ua, ptr %i.uc, ptr %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tt, i64 264
  %i.ug = load i64, ptr %i.uf, align 8
  %i.uh = lshr i8 %i.tz, 1
  %i.ui = zext nneg i8 %i.uh to i64
  %i.uj = select i1 %i.ua, i64 %i.ug, i64 %i.ui   ; 2 uses
  %i.uk = load i8, ptr %i.ty, align 8             ; 2 uses
  %i.ul = trunc i8 %i.uk to i1                    ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.tt, i64 552
  %i.un = load ptr, ptr %i.um, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tt, i64 537
  %i.up = select i1 %i.ul, ptr %i.un, ptr %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tt, i64 544
  %i.ur = load i64, ptr %i.uq, align 8
  %i.us = lshr i8 %i.uk, 1
  %i.ut = zext nneg i8 %i.us to i64
  %i.uu = select i1 %i.ul, i64 %i.ur, i64 %i.ut   ; 2 uses
  %.sroa.speculated.i.i.i.i31.i = call i64 @llvm.umin.i64(i64 %i.uu, i64 %i.uj)
  %i.uv = call noundef i32 @memcmp(ptr noundef %i.ue, ptr noundef %i.up, i64 noundef %.sroa.speculated.i.i.i.i31.i) #44 ; 2 uses
  %i.uw = icmp eq i32 %i.uv, 0
  br i1 %i.uw, label %bb.as, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.i"

bb.as:                                            ; preds = %bb.ar
  %i.ux = icmp ult i64 %i.uj, %i.uu
  br i1 %i.ux, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread23.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.i": ; preds = %bb.ar
  %i.uy = icmp slt i32 %i.uv, 0
end_hunk_1
begin_hunk_2_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb":bb.a
  call void @_ZdlPvm(ptr noundef %i.aeh, i64 noundef %i.aej) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bp, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i105 = icmp eq ptr %i.ads, %i.adv
  br i1 %.not.i.i.i.i.i.i.i.i105, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i103

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i106 = load ptr, ptr %.07.i.i.i.i.i, align 8, !tbaa !356
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i, %bb.bm
  %i.aek = phi ptr [ %.pre.i.i.i.i.i106, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i ], [ %i.ads, %bb.bm ] ; 2 uses
  store ptr %i.ads, ptr %i.adt, align 8, !tbaa !357
  %i.ael = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !361
  %i.aen = ptrtoint ptr %i.aem to i64
  %i.aeo = ptrtoint ptr %i.aek to i64
  %i.aep = sub i64 %i.aen, %i.aeo
  call void @_ZdlPvm(ptr noundef %i.aek, i64 noundef %i.aep) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.07.i.i.i.i.i, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i, %bb.bl
  %i.aeq = load <2 x ptr>, ptr %.06.i.i.i.i.i, align 8, !tbaa !361
  store <2 x ptr> %i.aeq, ptr %.07.i.i.i.i.i, align 8, !tbaa !361
  %i.aer = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !361
  %i.aet = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  store ptr %i.aes, ptr %i.aet, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.06.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.aeu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 24 ; 4 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.aew = load ptr, ptr %i.aeu, align 8, !tbaa !377 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aew, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i
  %i.aex = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !378 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aew, %i.aey
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bq, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aez, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aey, %bb.bq ] ; 2 uses
  %i.aez = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.afa = load i8, ptr %i.aez, align 8
  %i.afb = trunc i8 %i.afa to i1
  br i1 %i.afb, label %bb.br, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.afc = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !80
  %i.afe = load i64, ptr %i.aez, align 8
  %i.aff = and i64 %i.afe, -2
  call void @_ZdlPvm(ptr noundef %i.afd, i64 noundef %i.aff) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.br, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i107 = icmp eq ptr %i.aew, %i.aez
  br i1 %.not.i.i.i.i.i.i.i.i.i.i107, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.aeu, align 8, !tbaa !377
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, %bb.bq
  %i.afg = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i ], [ %i.aew, %bb.bq ] ; 2 uses
  store ptr %i.aew, ptr %i.aex, align 8, !tbaa !378
  %i.afh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 40
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !379
  %i.afj = ptrtoint ptr %i.afi to i64
  %i.afk = ptrtoint ptr %i.afg to i64
  %i.afl = sub i64 %i.afj, %i.afk
  call void @_ZdlPvm(ptr noundef %i.afg, i64 noundef %i.afl) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeu, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i
  %i.afm = load <2 x ptr>, ptr %i.aev, align 8, !tbaa !379
  store <2 x ptr> %i.afm, ptr %i.aeu, align 8, !tbaa !379
  %i.afn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !379
  %i.afp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 40
  store ptr %i.afo, ptr %i.afp, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aev, i8 0, i64 24, i1 false)
  %i.afq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 48
  %i.afr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.afq, ptr noundef nonnull align 8 dereferenceable(44) %i.afr, i64 44, i1 false)
  %i.afs = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 96 ; 4 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 96 ; 2 uses
  %i.afu = load ptr, ptr %i.afs, align 8, !tbaa !374 ; 5 uses
  %.not.i.i.i7.i.i.i.i = icmp eq ptr %i.afu, null
  br i1 %.not.i.i.i7.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i
  %i.afv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 104 ; 2 uses
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !375 ; 2 uses
  %.not.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afu, %i.afw
  br i1 %.not.i1.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bs, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.0.i2.i.i.i.i.i.i.i.i.i = phi ptr [ %i.afx, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.afw, %bb.bs ]
  %i.afx = getelementptr inbounds i8, ptr %.0.i2.i.i.i.i.i.i.i.i.i, i64 -96 ; 3 uses
  call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.afx) #44, !inline_history !13
  %.not.i.i.i.i.i.i8.i.i.i.i = icmp eq ptr %i.afu, %i.afx
  br i1 %.not.i.i.i.i.i.i8.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i9.i.i.i.i = load ptr, ptr %i.afs, align 8, !tbaa !374
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, %bb.bs
  %i.afy = phi ptr [ %.pre.i.i.i9.i.i.i.i, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i ], [ %i.afu, %bb.bs ] ; 2 uses
  store ptr %i.afu, ptr %i.afv, align 8, !tbaa !375
  %i.afz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 112
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !376
  %i.agb = ptrtoint ptr %i.aga to i64
  %i.agc = ptrtoint ptr %i.afy to i64
  %i.agd = sub i64 %i.agb, %i.agc
  call void @_ZdlPvm(ptr noundef %i.afy, i64 noundef %i.agd) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afs, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i
  %i.age = load <2 x ptr>, ptr %i.aft, align 8, !tbaa !376
  store <2 x ptr> %i.age, ptr %i.afs, align 8, !tbaa !376
  %i.agf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 112
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !376
  %i.agh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 112
  store ptr %i.agg, ptr %i.agh, align 8, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aft, i8 0, i64 24, i1 false)
  %i.agi = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 120
  %i.agj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.agi, ptr noundef nonnull align 8 dereferenceable(136) %i.agj, i64 136, i1 false)
  %i.agk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 256 ; 3 uses
  %i.agl = load i8, ptr %i.agk, align 8
  %i.agm = trunc i8 %i.agl to i1
  br i1 %i.agm, label %bb.bt, label %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i

bb.bt:                                            ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i
  %i.agn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 272
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !80
  %i.agp = load i64, ptr %i.agk, align 8
  %i.agq = and i64 %i.agp, -2
  call void @_ZdlPvm(ptr noundef %i.ago, i64 noundef %i.agq) #49
  br label %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i

_ZN3tev9ImageDataaSEOS0_.exit.i.i.i:              ; preds = %bb.bt, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i
  %i.agr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agk, ptr noundef nonnull align 8 dereferenceable(24) %i.agr, i64 24, i1 false), !tbaa.struct !462
  store i8 0, ptr %i.agr, align 8
  %i.ags = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 257
  store i8 0, ptr %i.ags, align 1, !tbaa !80
  %i.agt = icmp eq i64 %.0.i16.i.i.i.i, 0
  br i1 %i.agt, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i", label %bb.bu

bb.bu:                                            ; preds = %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i
  %i.agu = add nsw i64 %.0.i16.i.i.i.i, -1
  %i.agv = lshr i64 %i.agu, 1                     ; 2 uses
  %i.agw = getelementptr inbounds nuw [280 x i8], ptr %.021, i64 %i.agv ; 5 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 256
  %i.agy = load i8, ptr %i.agx, align 8           ; 2 uses
  %i.agz = trunc i8 %i.agy to i1                  ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agw, i64 272
  %i.ahb = load ptr, ptr %i.aha, align 8
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agw, i64 257
  %i.ahd = select i1 %i.agz, ptr %i.ahb, ptr %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agw, i64 264
  %i.ahf = load i64, ptr %i.ahe, align 8
  %i.ahg = lshr i8 %i.agy, 1
  %i.ahh = zext nneg i8 %i.ahg to i64
  %i.ahi = select i1 %i.agz, i64 %i.ahf, i64 %i.ahh ; 2 uses
  %.sroa.speculated.i.i.i.i12.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.adr, i64 %i.ahi)
  %i.ahj = call noundef i32 @memcmp(ptr noundef %i.ahd, ptr noundef %i.adn, i64 noundef %.sroa.speculated.i.i.i.i12.i.i.i.i.i) #44 ; 2 uses
  %i.ahk = icmp eq i32 %i.ahj, 0
  br i1 %i.ahk, label %bb.bv, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i"

bb.bv:                                            ; preds = %bb.bu
  %i.ahl = icmp ult i64 %i.ahi, %i.adr
  br i1 %i.ahl, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i": ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i13.i.i.i.i.i = phi i32 [ %i.ahj, %bb.bu ], [ -1, %bb.bv ]
  %i.ahm = icmp slt i32 %.0.i.i.i.i13.i.i.i.i.i, 0
  br i1 %i.ahm, label %bb.bl, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i", !llvm.loop !2707

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i", %bb.bv, %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i
  %i.ahn = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.06.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(280) %10) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %10) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  br label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i15.i.i.i.i", %bb.bk, %bb.bi, %bb.bh
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %11) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  %i.aho = add nsw i64 %.020.i.i.i, -1
  %i.ahp = icmp sgt i64 %.020.i.i.i, 2
  br i1 %i.ahp, label %bb.av, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", !llvm.loop !2708

bb.bw:                                            ; preds = %15
  %i.ahq = add nsw i64 %.046, -1                  ; 4 uses
  %i.ahr = lshr i64 %i.bg, 1
  %i.ahs = icmp samesign ugt i64 %i.bf, 35840
  %i.aht = getelementptr [280 x i8], ptr %.021, i64 %i.ahr ; 7 uses
  br i1 %i.ahs, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %.021, ptr noundef %i.aht, ptr noundef nonnull %i.aw)
  %i.ahu = getelementptr inbounds nuw i8, ptr %.021, i64 280
  %i.ahv = getelementptr i8, ptr %i.aht, i64 -280 ; 2 uses
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef nonnull %i.ahu, ptr noundef %i.ahv, ptr noundef nonnull %i.ax)
  %i.ahw = getelementptr inbounds nuw i8, ptr %.021, i64 560
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aht, i64 280 ; 2 uses
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef nonnull %i.ahw, ptr noundef nonnull %i.ahx, ptr noundef nonnull %i.ay)
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %i.ahv, ptr noundef %i.aht, ptr noundef nonnull %i.ahx)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  %i.ahy = load <2 x ptr>, ptr %.021, align 8, !tbaa !361
  store <2 x ptr> %i.ahy, ptr %9, align 16, !tbaa !361
  %i.ahz = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !361
  store ptr %i.aia, ptr %i.b, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.021, i8 0, i64 24, i1 false)
  %i.aib = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.aic = load <2 x ptr>, ptr %i.aib, align 8, !tbaa !379
  store <2 x ptr> %i.aic, ptr %i.c, align 8, !tbaa !379
  %i.aid = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !379
  store ptr %i.aie, ptr %i.d, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aib, i8 0, i64 24, i1 false)
  %i.aif = getelementptr inbounds nuw i8, ptr %.021, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.e, ptr noundef nonnull align 8 dereferenceable(44) %i.aif, i64 44, i1 false)
  %i.aig = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %i.aih = load <2 x ptr>, ptr %i.aig, align 8, !tbaa !376
  store <2 x ptr> %i.aih, ptr %i.f, align 16, !tbaa !376
  %i.aii = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !376
  store ptr %i.aij, ptr %i.g, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aig, i8 0, i64 24, i1 false)
  %i.aik = getelementptr inbounds nuw i8, ptr %.021, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %i.aik, i64 136, i1 false)
  %i.ail = getelementptr inbounds nuw i8, ptr %.021, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ail, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ail, i8 0, i64 24, i1 false)
  %i.aim = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.021, ptr noundef nonnull align 8 dereferenceable(280) %i.aht) #44 ; 0 uses
  %i.ain = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.aht, ptr noundef nonnull align 8 dereferenceable(280) %9) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %i.aht, ptr noundef %.021, ptr noundef nonnull %i.aw)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.bd, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33", label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.aio = getelementptr inbounds i8, ptr %.021, i64 -24
  %i.aip = getelementptr inbounds nuw i8, ptr %.021, i64 256
  %i.aiq = load i8, ptr %i.aio, align 8           ; 2 uses
  %i.air = trunc i8 %i.aiq to i1                  ; 2 uses
  %i.ais = getelementptr inbounds i8, ptr %.021, i64 -8
  %i.ait = load ptr, ptr %i.ais, align 8
  %i.aiu = getelementptr inbounds i8, ptr %.021, i64 -23
  %i.aiv = select i1 %i.air, ptr %i.ait, ptr %i.aiu
  %i.aiw = getelementptr inbounds i8, ptr %.021, i64 -16
  %i.aix = load i64, ptr %i.aiw, align 8
  %i.aiy = lshr i8 %i.aiq, 1
  %i.aiz = zext nneg i8 %i.aiy to i64
  %i.aja = select i1 %i.air, i64 %i.aix, i64 %i.aiz ; 2 uses
  %i.ajb = load i8, ptr %i.aip, align 8           ; 2 uses
  %i.ajc = trunc i8 %i.ajb to i1                  ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.021, i64 272
  %i.aje = load ptr, ptr %i.ajd, align 8
  %i.ajf = getelementptr inbounds nuw i8, ptr %.021, i64 257
  %i.ajg = select i1 %i.ajc, ptr %i.aje, ptr %i.ajf
  %i.ajh = getelementptr inbounds nuw i8, ptr %.021, i64 264
  %i.aji = load i64, ptr %i.ajh, align 8
  %i.ajj = lshr i8 %i.ajb, 1
  %i.ajk = zext nneg i8 %i.ajj to i64
  %i.ajl = select i1 %i.ajc, i64 %i.aji, i64 %i.ajk ; 2 uses
  %.sroa.speculated.i.i.i.i109 = call i64 @llvm.umin.i64(i64 %i.ajl, i64 %i.aja)
  %i.ajm = call noundef i32 @memcmp(ptr noundef %i.aiv, ptr noundef %i.ajg, i64 noundef %.sroa.speculated.i.i.i.i109) #44 ; 2 uses
  %i.ajn = icmp eq i32 %i.ajm, 0
  br i1 %i.ajn, label %bb.cb, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111"

bb.cb:                                            ; preds = %bb.ca
  %i.ajo = icmp ult i64 %i.aja, %i.ajl
  br i1 %i.ajo, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111": ; preds = %bb.ca
  %i.ajp = icmp slt i32 %i.ajm, 0
  br i1 %i.ajp, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread": ; preds = %bb.cb, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111"
  %i.ajq = getelementptr inbounds nuw i8, ptr %.021, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %i.ajr = load <2 x ptr>, ptr %.021, align 8, !tbaa !361
  store <2 x ptr> %i.ajr, ptr %8, align 16, !tbaa !361
  %i.ajs = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !361
  store ptr %i.ajt, ptr %i.j, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.021, i8 0, i64 24, i1 false)
  %i.aju = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.ajv = load <2 x ptr>, ptr %i.aju, align 8, !tbaa !379
  store <2 x ptr> %i.ajv, ptr %i.k, align 8, !tbaa !379
  %i.ajw = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !379
  store ptr %i.ajx, ptr %i.l, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aju, i8 0, i64 24, i1 false)
  %i.ajy = getelementptr inbounds nuw i8, ptr %.021, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.m, ptr noundef nonnull align 8 dereferenceable(44) %i.ajy, i64 44, i1 false)
  %i.ajz = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %i.aka = load <2 x ptr>, ptr %i.ajz, align 8, !tbaa !376
  store <2 x ptr> %i.aka, ptr %i.n, align 16, !tbaa !376
  %i.akb = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !376
  store ptr %i.akc, ptr %i.o, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajz, i8 0, i64 24, i1 false)
  %i.akd = getelementptr inbounds nuw i8, ptr %.021, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.p, ptr noundef nonnull align 8 dereferenceable(136) %i.akd, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ajq, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajq, i8 0, i64 24, i1 false)
  %i.ake = load i8, ptr %i.q, align 16            ; 2 uses
  %i.akf = trunc i8 %i.ake to i1                  ; 2 uses
  %i.akg = load ptr, ptr %i.r, align 16
  %i.akh = select i1 %i.akf, ptr %i.akg, ptr %i.s ; 4 uses
  %i.aki = load i64, ptr %i.t, align 8
  %i.akj = lshr i8 %i.ake, 1
  %i.akk = zext nneg i8 %i.akj to i64
  %i.akl = select i1 %i.akf, i64 %i.aki, i64 %i.akk ; 10 uses
  %i.akm = load i8, ptr %i.az, align 8            ; 2 uses
  %i.akn = trunc i8 %i.akm to i1                  ; 2 uses
  %i.ako = load ptr, ptr %i.ba, align 8
  %i.akp = select i1 %i.akn, ptr %i.ako, ptr %i.bb
  %i.akq = load i64, ptr %i.bc, align 8
  %i.akr = lshr i8 %i.akm, 1
  %i.aks = zext nneg i8 %i.akr to i64
  %i.akt = select i1 %i.akn, i64 %i.akq, i64 %i.aks ; 2 uses
  %.sroa.speculated.i.i.i.i.i112 = call i64 @llvm.umin.i64(i64 %i.akt, i64 %i.akl)
  %i.aku = call noundef i32 @memcmp(ptr noundef %i.akh, ptr noundef %i.akp, i64 noundef %.sroa.speculated.i.i.i.i.i112) #44 ; 2 uses
  %i.akv = icmp eq i32 %i.aku, 0
  br i1 %i.akv, label %bb.cc, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113"

bb.cc:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"
  %i.akw = icmp ult i64 %i.akl, %i.akt
  br i1 %i.akw, label %.preheader34.i.preheader, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113", %bb.cc
  br label %.preheader35.i

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"
  %i.akx = icmp slt i32 %i.aku, 0
  br i1 %i.akx, label %.preheader34.i.preheader, label %.preheader35.i.preheader

.preheader34.i.preheader:                         ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113", %bb.cc
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.preheader34.i.preheader, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i"
  %.018.i = phi ptr [ %i.aky, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i" ], [ %.021, %.preheader34.i.preheader ] ; 5 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %.018.i, i64 280 ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %.018.i, i64 536
  %i.ala = load i8, ptr %i.akz, align 8           ; 2 uses
  %i.alb = trunc i8 %i.ala to i1                  ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.018.i, i64 552
  %i.ald = load ptr, ptr %i.alc, align 8
  %i.ale = getelementptr inbounds nuw i8, ptr %.018.i, i64 537
  %i.alf = select i1 %i.alb, ptr %i.ald, ptr %i.ale
  %i.alg = getelementptr inbounds nuw i8, ptr %.018.i, i64 544
  %i.alh = load i64, ptr %i.alg, align 8
  %i.ali = lshr i8 %i.ala, 1
  %i.alj = zext nneg i8 %i.ali to i64
  %i.alk = select i1 %i.alb, i64 %i.alh, i64 %i.alj ; 3 uses
  %.sroa.speculated.i.i.i.i10.i = call i64 @llvm.umin.i64(i64 %i.alk, i64 %i.akl)
  %i.all = call noundef i32 @memcmp(ptr noundef %i.akh, ptr noundef %i.alf, i64 noundef %.sroa.speculated.i.i.i.i10.i) #44 ; 2 uses
  %i.alm = icmp eq i32 %i.all, 0
  br i1 %i.alm, label %bb.cd, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i"

bb.cd:                                            ; preds = %.preheader34.i
  %i.aln = icmp eq i64 %i.akl, %i.alk
  br i1 %i.aln, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.alo = icmp ult i64 %i.akl, %i.alk
  br i1 %i.alo, label %.critedge.i114, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit12.i": ; preds = %bb.ce, %bb.cd, %.preheader34.i
  %.0.i.i.i.i11.i = phi i32 [ %i.all, %.preheader34.i ], [ 1, %bb.ce ], [ 0, %bb.cd ]
  %i.alp = icmp slt i32 %.0.i.i.i.i11.i, 0
  br i1 %i.alp, label %.critedge.i114, label %.preheader34.i, !llvm.loop !2709

.preheader35.i:                                   ; preds = %.preheader35.i.preheader, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit15.i"
  %.119.i = phi ptr [ %i.alq, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit15.i" ], [ %.021, %.preheader35.i.preheader ] ; 5 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %.119.i, i64 280 ; 5 uses
  %i.alr = icmp ult ptr %i.alq, %.024.ph
  br i1 %i.alr, label %bb.cf, label %.critedge.i114

bb.cf:                                            ; preds = %.preheader35.i
  %i.als = getelementptr inbounds nuw i8, ptr %.119.i, i64 536
  %i.alt = load i8, ptr %i.als, align 8           ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb":bb.a
  %i.arr = icmp eq i64 %i.aro, %i.aqi
  br i1 %i.arr, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i", label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ars = icmp ult i64 %i.aro, %i.aqi
  br i1 %i.ars, label %.critedge.i131, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i": ; preds = %bb.cs, %bb.cr, %bb.cq
  %.0.i.i.i.i13.i = phi i32 [ %i.arp, %bb.cq ], [ 1, %bb.cs ], [ 0, %bb.cr ]
  %i.art = icmp slt i32 %.0.i.i.i.i13.i, 0
  br i1 %i.art, label %.critedge.i131, label %.preheader29.i, !llvm.loop !2716

.preheader30.i:                                   ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i126", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129"
  %.1.i127 = phi ptr [ %i.aru, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129" ], [ %.024.ph, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i126" ] ; 5 uses
  %i.aru = getelementptr inbounds i8, ptr %.1.i127, i64 -280 ; 3 uses
  %i.arv = getelementptr inbounds i8, ptr %.1.i127, i64 -24
  %i.arw = load i8, ptr %i.arv, align 8           ; 2 uses
  %i.arx = trunc i8 %i.arw to i1                  ; 2 uses
  %i.ary = getelementptr inbounds i8, ptr %.1.i127, i64 -8
  %i.arz = load ptr, ptr %i.ary, align 8
  %i.asa = getelementptr inbounds i8, ptr %.1.i127, i64 -23
  %i.asb = select i1 %i.arx, ptr %i.arz, ptr %i.asa
  %i.asc = getelementptr inbounds i8, ptr %.1.i127, i64 -16
  %i.asd = load i64, ptr %i.asc, align 8
  %i.ase = lshr i8 %i.arw, 1
  %i.asf = zext nneg i8 %i.ase to i64
  %i.asg = select i1 %i.arx, i64 %i.asd, i64 %i.asf ; 3 uses
  %.sroa.speculated.i.i.i.i15.i128 = call i64 @llvm.umin.i64(i64 %i.aqi, i64 %i.asg)
  %i.ash = call noundef i32 @memcmp(ptr noundef %i.asb, ptr noundef %i.aqe, i64 noundef %.sroa.speculated.i.i.i.i15.i128) #44 ; 2 uses
  %i.asi = icmp eq i32 %i.ash, 0
  br i1 %i.asi, label %bb.ct, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129"

bb.ct:                                            ; preds = %.preheader30.i
  %i.asj = icmp eq i64 %i.asg, %i.aqi
  br i1 %i.asj, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ask = icmp ult i64 %i.asg, %i.aqi
  br i1 %i.ask, label %.critedge.i131, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129": ; preds = %bb.cu, %bb.ct, %.preheader30.i
  %.0.i.i.i.i16.i130 = phi i32 [ %i.ash, %.preheader30.i ], [ 1, %bb.cu ], [ 0, %bb.ct ]
  %i.asl = icmp slt i32 %.0.i.i.i.i16.i130, 0
  br i1 %i.asl, label %.critedge.i131, label %.preheader30.i, !llvm.loop !2717

.critedge.i131:                                   ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129", %bb.cu, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i", %bb.cs, %.preheader29.i
  %.2.i = phi ptr [ %i.arc, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i" ], [ %.0.i138, %.preheader29.i ], [ %i.arc, %bb.cs ], [ %i.aru, %bb.cu ], [ %i.aru, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i129" ] ; 2 uses
  %i.asm = icmp ult ptr %i.aqj, %.2.i             ; 2 uses
  br i1 %i.asm, label %.lr.ph.i134, label %._crit_edge.i132

.lr.ph.i134:                                      ; preds = %.critedge.i131, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i"
  %.343.i = phi ptr [ %i.auc, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i" ], [ %.2.i, %.critedge.i131 ] ; 3 uses
  %.11942.i = phi ptr [ %i.atl, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i" ], [ %i.aqj, %.critedge.i131 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.asn = load <2 x ptr>, ptr %.11942.i, align 8, !tbaa !361
  store <2 x ptr> %i.asn, ptr %5, align 16, !tbaa !361
  %i.aso = getelementptr inbounds nuw i8, ptr %.11942.i, i64 16
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !361
  store ptr %i.asp, ptr %i.an, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.11942.i, i8 0, i64 24, i1 false)
  %i.asq = getelementptr inbounds nuw i8, ptr %.11942.i, i64 24 ; 2 uses
  %i.asr = load <2 x ptr>, ptr %i.asq, align 8, !tbaa !379
  store <2 x ptr> %i.asr, ptr %i.ao, align 8, !tbaa !379
  %i.ass = getelementptr inbounds nuw i8, ptr %.11942.i, i64 40
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !379
  store ptr %i.ast, ptr %i.ap, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asq, i8 0, i64 24, i1 false)
  %i.asu = getelementptr inbounds nuw i8, ptr %.11942.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.aq, ptr noundef nonnull align 8 dereferenceable(44) %i.asu, i64 44, i1 false)
  %i.asv = getelementptr inbounds nuw i8, ptr %.11942.i, i64 96 ; 2 uses
  %i.asw = load <2 x ptr>, ptr %i.asv, align 8, !tbaa !376
  store <2 x ptr> %i.asw, ptr %i.ar, align 16, !tbaa !376
  %i.asx = getelementptr inbounds nuw i8, ptr %.11942.i, i64 112
  %i.asy = load ptr, ptr %i.asx, align 8, !tbaa !376
  store ptr %i.asy, ptr %i.as, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asv, i8 0, i64 24, i1 false)
  %i.asz = getelementptr inbounds nuw i8, ptr %.11942.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.at, ptr noundef nonnull align 8 dereferenceable(136) %i.asz, i64 136, i1 false)
  %i.ata = getelementptr inbounds nuw i8, ptr %.11942.i, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ata, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ata, i8 0, i64 24, i1 false)
  %i.atb = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.11942.i, ptr noundef nonnull align 8 dereferenceable(280) %.343.i) #44 ; 0 uses
  %i.atc = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.343.i, ptr noundef nonnull align 8 dereferenceable(280) %5) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.atd = load i8, ptr %i.aj, align 16           ; 2 uses
  %i.ate = trunc i8 %i.atd to i1                  ; 2 uses
  %i.atf = load ptr, ptr %i.ak, align 16
  %i.atg = select i1 %i.ate, ptr %i.atf, ptr %i.al ; 2 uses
  %i.ath = load i64, ptr %i.am, align 8
  %i.ati = lshr i8 %i.atd, 1
  %i.atj = zext nneg i8 %i.ati to i64
  %i.atk = select i1 %i.ate, i64 %i.ath, i64 %i.atj ; 5 uses
  br label %bb.cv

bb.cv:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i", %.lr.ph.i134
  %.220.i135 = phi ptr [ %.11942.i, %.lr.ph.i134 ], [ %i.atl, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i" ] ; 6 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %.220.i135, i64 280 ; 3 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %.220.i135, i64 536
  %i.atn = load i8, ptr %i.atm, align 8           ; 2 uses
  %i.ato = trunc i8 %i.atn to i1                  ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %.220.i135, i64 552
  %i.atq = load ptr, ptr %i.atp, align 8
  %i.atr = getelementptr inbounds nuw i8, ptr %.220.i135, i64 537
  %i.ats = select i1 %i.ato, ptr %i.atq, ptr %i.atr
  %i.att = getelementptr inbounds nuw i8, ptr %.220.i135, i64 544
  %i.atu = load i64, ptr %i.att, align 8
  %i.atv = lshr i8 %i.atn, 1
  %i.atw = zext nneg i8 %i.atv to i64
  %i.atx = select i1 %i.ato, i64 %i.atu, i64 %i.atw ; 2 uses
  %.sroa.speculated.i.i.i.i18.i = call i64 @llvm.umin.i64(i64 %i.atk, i64 %i.atx)
  %i.aty = call noundef i32 @memcmp(ptr noundef %i.ats, ptr noundef %i.atg, i64 noundef %.sroa.speculated.i.i.i.i18.i) #44 ; 2 uses
  %i.atz = icmp eq i32 %i.aty, 0
  br i1 %i.atz, label %bb.cw, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i"

bb.cw:                                            ; preds = %bb.cv
  %i.aua = icmp ult i64 %i.atx, %i.atk
  br i1 %i.aua, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i", label %.preheader.i136.preheader

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i": ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i19.i = phi i32 [ %i.aty, %bb.cv ], [ -1, %bb.cw ]
  %i.aub = icmp slt i32 %.0.i.i.i.i19.i, 0
  br i1 %i.aub, label %bb.cv, label %.preheader.i136.preheader, !llvm.loop !2718

.preheader.i136.preheader:                        ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i", %bb.cw
  br label %.preheader.i136

.preheader.i136:                                  ; preds = %.preheader.i136.preheader, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i"
  %.4.i137 = phi ptr [ %i.auc, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i" ], [ %.343.i, %.preheader.i136.preheader ] ; 5 uses
  %i.auc = getelementptr inbounds i8, ptr %.4.i137, i64 -280 ; 3 uses
  %i.aud = getelementptr inbounds i8, ptr %.4.i137, i64 -24
  %i.aue = load i8, ptr %i.aud, align 8           ; 2 uses
  %i.auf = trunc i8 %i.aue to i1                  ; 2 uses
  %i.aug = getelementptr inbounds i8, ptr %.4.i137, i64 -8
  %i.auh = load ptr, ptr %i.aug, align 8
  %i.aui = getelementptr inbounds i8, ptr %.4.i137, i64 -23
  %i.auj = select i1 %i.auf, ptr %i.auh, ptr %i.aui
  %i.auk = getelementptr inbounds i8, ptr %.4.i137, i64 -16
  %i.aul = load i64, ptr %i.auk, align 8
  %i.aum = lshr i8 %i.aue, 1
  %i.aun = zext nneg i8 %i.aum to i64
  %i.auo = select i1 %i.auf, i64 %i.aul, i64 %i.aun ; 3 uses
  %.sroa.speculated.i.i.i.i21.i = call i64 @llvm.umin.i64(i64 %i.atk, i64 %i.auo)
  %i.aup = call noundef i32 @memcmp(ptr noundef %i.auj, ptr noundef %i.atg, i64 noundef %.sroa.speculated.i.i.i.i21.i) #44 ; 2 uses
  %i.auq = icmp eq i32 %i.aup, 0
  br i1 %i.auq, label %bb.cx, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i"

bb.cx:                                            ; preds = %.preheader.i136
  %i.aur = icmp eq i64 %i.auo, %i.atk
  br i1 %i.aur, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i", label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aus = icmp ult i64 %i.auo, %i.atk
  br i1 %i.aus, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i": ; preds = %bb.cy, %bb.cx, %.preheader.i136
  %.0.i.i.i.i22.i = phi i32 [ %i.aup, %.preheader.i136 ], [ 1, %bb.cy ], [ 0, %bb.cx ]
  %i.aut = icmp slt i32 %.0.i.i.i.i22.i, 0
  br i1 %i.aut, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i", label %.preheader.i136, !llvm.loop !2719

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.i", %bb.cy
  %i.auu = icmp ult ptr %i.atl, %i.auc
  br i1 %i.auu, label %.lr.ph.i134, label %._crit_edge.i132, !llvm.loop !2720

._crit_edge.i132:                                 ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i", %.critedge.i131
  %i.auv = phi ptr [ %.018.i122, %.critedge.i131 ], [ %.220.i135, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i" ] ; 8 uses
  %.not.i133 = icmp eq ptr %.021, %i.auv
  br i1 %.not.i133, label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit", label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.i132
  %i.auw = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.021, ptr noundef nonnull align 8 dereferenceable(280) %i.auv) #44 ; 0 uses
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit"

"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit": ; preds = %._crit_edge.i132, %bb.cz
  %i.aux = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.auv, ptr noundef nonnull align 8 dereferenceable(280) %6) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br i1 %i.asm, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit"
  %i.auy = call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEbT1_SP_T0_"(ptr noundef nonnull %.021, ptr noundef nonnull %i.auv) ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auv, i64 280 ; 2 uses
  %i.ava = call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEbT1_SP_T0_"(ptr noundef nonnull %i.auz, ptr noundef %.024.ph)
  br i1 %i.ava, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  br i1 %i.auy, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer", !llvm.loop !2721

bb.dc:                                            ; preds = %bb.da
  br i1 %i.auy, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit", label %bb.dd, !llvm.loop !2721

bb.dd:                                            ; preds = %bb.dc, %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit"
  call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb"(ptr noundef nonnull %.021, ptr noundef nonnull %i.auv, i64 noundef %i.ahq, i1 noundef zeroext %i.bd)
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auv, i64 280
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge": ; preds = %bb.dd, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EET0_SP_SP_T1_.exit"
  %.021.ph406.be = phi ptr [ %.321.lcssa.i, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EET0_SP_SP_T1_.exit" ], [ %i.avb, %bb.dd ]
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405", !llvm.loop !2721

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit", %bb.db, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i", %bb.c, %bb.aj, %.preheader.i54, %bb.w, %.preheader.i, %bb.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread29", %bb.e, %bb.d, %bb.f, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit"
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSR_SR_SR_SR_SR_SQ_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ImageData", align 16  ; 13 uses
  %6 = alloca %"struct.tev::ImageData", align 16  ; 13 uses
  %7 = alloca %"struct.tev::ImageData", align 16  ; 13 uses
  %8 = alloca %"struct.tev::ImageData", align 16  ; 13 uses
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
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !361
  store ptr %i.af, ptr %i.ac, align 16, !tbaa !361
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %3, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !379
  store <2 x ptr> %i.aj, ptr %i.ag, align 8, !tbaa !379
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !379
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !379
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.am, ptr noundef nonnull align 8 dereferenceable(44) %i.an, i64 44, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.ar = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !376
  store <2 x ptr> %i.ar, ptr %i.ao, align 16, !tbaa !376
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !376
  store ptr %i.at, ptr %i.aq, align 16, !tbaa !376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.au, ptr noundef nonnull align 8 dereferenceable(136) %i.av, i64 136, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.ax = tail call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef nonnull align 8 dereferenceable(280) %4) #44 ; 0 uses
  %i.ay = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(280) %8) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 4 uses
  %i.ba = load i8, ptr %i.b, align 8              ; 2 uses
  %i.bb = trunc i8 %i.ba to i1                    ; 2 uses
  %i.bc = load ptr, ptr %i.p, align 8
  %i.bd = select i1 %i.bb, ptr %i.bc, ptr %i.r
  %i.be = load i64, ptr %i.t, align 8
  %i.bf = lshr i8 %i.ba, 1
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = select i1 %i.bb, i64 %i.be, i64 %i.bg   ; 2 uses
  %i.bi = load i8, ptr %i.az, align 8             ; 2 uses
  %i.bj = trunc i8 %i.bi to i1                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 257 ; 2 uses
  %i.bn = select i1 %i.bj, ptr %i.bl, ptr %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = lshr i8 %i.bi, 1
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = select i1 %i.bj, i64 %i.bp, i64 %i.br   ; 2 uses
  %.sroa.speculated.i.i.i.i5.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bh)
  %i.bt = call noundef i32 @memcmp(ptr noundef %i.bd, ptr noundef %i.bn, i64 noundef %.sroa.speculated.i.i.i.i5.i) #44 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.c, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.i"

bb.c:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i"
  %i.bv = icmp ult i64 %i.bh, %i.bs
  br i1 %i.bv, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i"
  %i.bw = icmp slt i32 %i.bt, 0
  br i1 %i.bw, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.i", %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.by = load <2 x ptr>, ptr %2, align 8, !tbaa !361
  store <2 x ptr> %i.by, ptr %7, align 16, !tbaa !361
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !361
  store ptr %i.ca, ptr %i.bx, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %2, i8 0, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ce = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !379
  store <2 x ptr> %i.ce, ptr %i.cb, align 8, !tbaa !379
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !379
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.ch, ptr noundef nonnull align 8 dereferenceable(44) %i.ci, i64 44, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.cm = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !376
  store <2 x ptr> %i.cm, ptr %i.cj, align 16, !tbaa !376
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !376
  store ptr %i.co, ptr %i.cl, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cp, ptr noundef nonnull align 8 dereferenceable(136) %i.cq, i64 136, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.cs = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(280) %3) #44 ; 0 uses
  %i.ct = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef nonnull align 8 dereferenceable(280) %7) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %7) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.cv = load i8, ptr %i.az, align 8             ; 2 uses
  %i.cw = trunc i8 %i.cv to i1                    ; 2 uses
  %i.cx = load ptr, ptr %i.bk, align 8
  %i.cy = select i1 %i.cw, ptr %i.cx, ptr %i.bm
  %i.cz = load i64, ptr %i.bo, align 8
  %i.da = lshr i8 %i.cv, 1
  %i.db = zext nneg i8 %i.da to i64
  %i.dc = select i1 %i.cw, i64 %i.cz, i64 %i.db   ; 2 uses
  %i.dd = load i8, ptr %i.cu, align 8             ; 2 uses
  %i.de = trunc i8 %i.dd to i1                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 257 ; 2 uses
  %i.di = select i1 %i.de, ptr %i.dg, ptr %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = lshr i8 %i.dd, 1
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = select i1 %i.de, i64 %i.dk, i64 %i.dm   ; 2 uses
  %.sroa.speculated.i.i.i.i8.i = call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.dc)
  %i.do = call noundef i32 @memcmp(ptr noundef %i.cy, ptr noundef %i.di, i64 noundef %.sroa.speculated.i.i.i.i8.i) #44 ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.d, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.i"

bb.d:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i"
  %i.dq = icmp ult i64 %i.dc, %i.dn
  br i1 %i.dq, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.thread25.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i"
  %i.dr = icmp slt i32 %i.do, 0
  br i1 %i.dr, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.thread25.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.thread25.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit10.i", %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dt = load <2 x ptr>, ptr %1, align 8, !tbaa !361
  store <2 x ptr> %i.dt, ptr %6, align 16, !tbaa !361
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_3
