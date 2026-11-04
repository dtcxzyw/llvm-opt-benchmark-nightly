Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 400
begin_hunk_0_@_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_EB1A_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !1197 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1197, !nonnull !56
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.aq, %bb.g ]
  %.pn.i.i.i = phi i64 [ %i.i, %bb.c ], [ %i.ar, %bb.g ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.p  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i25.i.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !1198 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, %i.s
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not37.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not37.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.thread.i.i.i
  %.sroa.05.0.i38.i.i.i = phi i16 [ %i.ap, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.thread.i.i.i ], [ %i.x, %bb.d ] ; 3 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i38.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.p
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !1199, !noundef !56 ; 4 uses
  %i.af = icmp ult i64 %.val.i.i.i.i, %i.b
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %.val.i.i.i.i ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !1200, !noundef !56
  %i.ai = icmp eq i64 %.val2.i.i.i.i.i, %.val4.i.i.i.i.i
  br i1 %i.ai, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.i.i.i, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.thread.i.i.i, !prof !72

bb.f:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1218) #60, !noalias !1200
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.i.i.i: ; preds = %bb.e
  %i.aj = getelementptr i8, ptr %i.ag, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !noalias !1200, !nonnull !56, !noundef !56
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i, ptr nonnull readonly %.val3.i.i.i.i.i, i64 %.val2.i.i.i.i.i), !noalias !1200
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit.thread6, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.thread.i.i.i, !prof !73

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.thread.i.i.i, %bb.d
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.g, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit.thread, !prof !60

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.i.i.i, %bb.e
  %i.ao = add i16 %.sroa.05.0.i38.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.05.0.i38.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.ar = add i64 %.sroa.01.0.i.i.i.i, %i.aq
  br label %bb.d

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit: ; preds = %bb.b
  %i.as = getelementptr i8, ptr %i.d, i64 8
  %.val3.i = load ptr, ptr %i.as, align 8, !noalias !1189, !nonnull !56, !noundef !56
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.at, align 8, !alias.scope !1188, !nonnull !56, !noundef !56
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val3.i, i64 %.val2.i), !noalias !1189
  %bcmp.i.i.i.i.fr.i = freeze i32 %bcmp.i.i.i.i.i
  %i.au = icmp eq i32 %bcmp.i.i.i.i.fr.i, 0
  br i1 %i.au, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit.thread6, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit.thread

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit.thread6: ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.i.i.i, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit
  %i.av = phi ptr [ %i.d, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit ], [ %i.k, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.i.i.i ]
  %.sroa.5.0.i9 = phi i64 [ 0, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit ], [ %.val.i.i.i.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs87CvPiUlf0m_5alloc6string6StringTRB1K_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyEB1K_E0E0B2x_.exit.i.i.i ] ; 3 uses
  %i.aw = icmp ult i64 %.sroa.5.0.i9, %i.b
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit.thread6
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.av, i64 %.sroa.5.0.i9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  br label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit.thread

bb.i:                                             ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit.thread6
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.5.0.i9, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #60
  unreachable

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit.thread: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.a, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit, %bb.h
  %.sroa.0.0 = phi ptr [ %i.ay, %bb.h ], [ null, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringTRBO_RNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_EB1A_.exit ], [ null, %bb.a ], [ null, %bb.b ], [ null, %._crit_edge.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE7get_mutBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1228, !noundef !56 ; 5 uses
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit.thread
    i64 1, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val5.i = load i64, ptr %i.c, align 8, !alias.scope !1230, !noundef !56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.d = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !1232, !noundef !56
  %.val.i.i.i = load i64, ptr %1, align 4, !alias.scope !1233, !noalias !1234 ; 3 uses
  %i.e = xor i64 %.val.i.i.i, %.val5.i
  %i.f = zext i64 %i.e to i128
  %i.g = zext i64 %i.d to i128
  %i.h = mul nuw i128 %i.f, %i.g                  ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = xor i128 %i.i, %i.h
  %i.k = trunc i128 %i.j to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1236, !nonnull !56, !noundef !56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  %i.o = lshr i64 %i.k, 57
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1239, !noundef !56 ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !alias.scope !1239, !nonnull !56, !noundef !56 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.v = trunc i64 %.val.i.i.i to i32
  %i.w = lshr i64 %.val.i.i.i, 32
  %i.x = trunc nuw i64 %i.w to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.at, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.k, %bb.b ], [ %i.au, %bb.f ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.r  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.y, align 1, !noalias !1240 ; 2 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.u
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.not36.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.not36.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %.sroa.05.0.i37.i.i.i = phi i16 [ %i.as, %bb.e ], [ %i.aa, %bb.c ] ; 3 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.01.0.i.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %i.r
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !1241, !noundef !56 ; 4 uses
  %i.ai = icmp ult i64 %.val.i.i.i.i, %i.b
  br i1 %i.ai, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1218) #60, !noalias !1242
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %.val.i.i.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.val3.i.i.i.i.i = load i32, ptr %i.ak, align 4, !noalias !1242, !noundef !56
  %i.al = getelementptr i8, ptr %i.aj, i64 36
  %.val4.i.i.i.i.i = load i32, ptr %i.al, align 4, !noalias !1242
  %i.am = icmp eq i32 %.val3.i.i.i.i.i, %i.v
  %i.an = icmp eq i32 %.val4.i.i.i.i.i, %i.x
  %spec.select.i.i.i.i.i.i.i = select i1 %i.am, i1 %i.an, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit.thread6, label %bb.e, !prof !66

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.c
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit.thread, !prof !60

bb.e:                                             ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.ar = add i16 %.sroa.05.0.i37.i.i.i, -1
  %i.as = and i16 %i.ar, %.sroa.05.0.i37.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.at = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.au = add i64 %.sroa.01.0.i.i.i.i, %i.at
  br label %bb.c

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !1228, !nonnull !56, !noundef !56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load <2 x i32>, ptr %1, align 4, !alias.scope !1229
  %i.az = load <2 x i32>, ptr %i.ax, align 4, !noalias !1243
  %i.ba = icmp eq <2 x i32> %i.ay, %i.az          ; 2 uses
  %2 = extractelement <2 x i1> %i.ba, i64 0
  %3 = extractelement <2 x i1> %i.ba, i64 1
  %spec.select.i.i.i = select i1 %2, i1 %3, i1 false
  br i1 %spec.select.i.i.i, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit.thread6, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit.thread

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit.thread6: ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit
  %i.bb = phi ptr [ %i.aw, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit ], [ %i.m, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %.sroa.5.0.i9 = phi i64 [ 0, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit ], [ %.val.i.i.i.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 3 uses
  %i.bc = icmp ult i64 %.sroa.5.0.i9, %i.b
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit.thread6
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %.sroa.5.0.i9
  br label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit.thread

bb.h:                                             ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit.thread6
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.5.0.i9, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #60
  unreachable

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %._crit_edge.i.i.i, %bb.a, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit, %bb.g
  %.sroa.0.0 = phi ptr [ %i.bd, %bb.g ], [ null, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx.exit ], [ null, %bb.a ], [ null, %._crit_edge.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapTjjEjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !56 ; 4 uses
  switch i64 %i.b, label %bb.c [
    i64 0, label %_RINvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB5_4CoreTjjEjE12get_index_ofBL_ECskcxRuJ53GpR_9rustworkx.exit
    i64 1, label %bb.b
  ]

_RINvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB5_4CoreTjjEjE12get_index_ofBL_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTjjEjB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ 0, %bb.b ], [ %.val.i.i.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTjjEjB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0 = phi i64 [ %i.b, %bb.a ], [ %.1, %bb.b ], [ 1, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTjjEjB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %._crit_edge.i.i ]
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !56, !noundef !56 ; 2 uses
  %.val4 = load i64, ptr %i.f, align 8, !noundef !56
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val5 = load i64, ptr %i.g, align 8
  %i.h = icmp eq i64 %.0.val, %.val4
  %i.i = icmp eq i64 %.8.val, %.val5
  %spec.select.i.i = select i1 %i.h, i1 %i.i, i1 false
  %.1 = zext i1 %spec.select.i.i to i64
  br label %_RINvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB5_4CoreTjjEjE12get_index_ofBL_ECskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load i64, ptr %i.j, align 8, !alias.scope !78, !noundef !56
  %i.k = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !1264, !noundef !56
  %i.l = xor i64 %.val, %.0.val
  %i.m = zext i64 %i.l to i128
  %i.n = xor i64 %i.k, %.8.val
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw i128 %i.o, %i.m                  ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1265, !nonnull !56, !noundef !56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.w = lshr i64 %i.s, 57
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1268, !noundef !56 ; 2 uses
  %i.aa = load ptr, ptr %i.v, align 8, !alias.scope !1268, !nonnull !56, !noundef !56 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ax, %bb.g ]
  %.pn.i.i = phi i64 [ %i.s, %bb.c ], [ %i.ay, %bb.g ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.z      ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ad, align 1, !noalias !1269 ; 2 uses
  %i.ae = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.ac
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %.not.i.not36.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.f
  %.sroa.05.0.i37.i.i = phi i16 [ %i.aw, %bb.f ], [ %i.af, %bb.d ] ; 3 uses
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add i64 %.sroa.01.0.i.i.i, %i.ah
  %i.aj = and i64 %i.ai, %i.z
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %.val.i.i.i = load i64, ptr %i.am, align 8, !noalias !1270, !noundef !56 ; 4 uses
  %i.an = icmp ult i64 %.val.i.i.i, %i.b
  br i1 %i.an, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTjjEjB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1218) #60, !noalias !1271
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTjjEjB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.val.i.i.i ; 2 uses
  %.val3.i.i.i.i = load i64, ptr %i.ao, align 8, !noalias !1271, !noundef !56
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val4.i.i.i.i = load i64, ptr %i.ap, align 8, !noalias !1271
  %i.aq = icmp eq i64 %.0.val, %.val3.i.i.i.i
  %i.ar = icmp eq i64 %.8.val, %.val4.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %spec.select.i.i.i.i.i.i, label %_RINvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB5_4CoreTjjEjE12get_index_ofBL_ECskcxRuJ53GpR_9rustworkx.exit, label %bb.f, !prof !66

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.d
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.g, label %_RINvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB5_4CoreTjjEjE12get_index_ofBL_ECskcxRuJ53GpR_9rustworkx.exit, !prof !60

bb.f:                                             ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTjjEjB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.av = add i16 %.sroa.05.0.i37.i.i, -1
  %i.aw = and i16 %i.av, %.sroa.05.0.i37.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ax = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.ay = add i64 %.sroa.01.0.i.i.i, %i.ax
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofjECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !56 ; 4 uses
  switch i64 %i.b, label %bb.c [
    i64 0, label %_RINvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB5_4CorejAdj2_E12get_index_ofjECskcxRuJ53GpR_9rustworkx.exit
    i64 1, label %bb.b
  ]

_RINvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB5_4CorejAdj2_E12get_index_ofjECskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentjAdj2_jE0E0CskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ 0, %bb.b ], [ %.val.i.i.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentjAdj2_jE0E0CskcxRuJ53GpR_9rustworkx.exit.i.i ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0 = phi i64 [ %i.b, %bb.a ], [ %.1, %bb.b ], [ 1, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentjAdj2_jE0E0CskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %._crit_edge.i.i ]
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !56, !noundef !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val2 = load i64, ptr %i.g, align 8, !noundef !56
  %i.h = icmp eq i64 %.0.val, %.val2
  %.1 = zext i1 %i.h to i64
  br label %_RINvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB5_4CorejAdj2_E12get_index_ofjECskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3 = load i64, ptr %i.i, align 8, !alias.scope !79, !noundef !56
  %i.j = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !1292, !noundef !56
  %i.k = xor i64 %.val3, %.0.val
  %i.l = zext i64 %i.k to i128
  %i.m = zext i64 %i.j to i128
  %i.n = mul nuw i128 %i.l, %i.m                  ; 2 uses
  %i.o = lshr i128 %i.n, 64
  %i.p = xor i128 %i.o, %i.n
  %i.q = trunc i128 %i.p to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1293, !nonnull !56, !noundef !56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %i.u = lshr i64 %i.q, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1296, !noundef !56 ; 2 uses
  %i.y = load ptr, ptr %i.t, align 8, !alias.scope !1296, !nonnull !56, !noundef !56 ; 2 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.au, %bb.g ]
  %.pn.i.i = phi i64 [ %i.q, %bb.c ], [ %i.av, %bb.g ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.x      ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !1297 ; 2 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.aa
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not.i.not36.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.f
  %.sroa.05.0.i37.i.i = phi i16 [ %i.at, %bb.f ], [ %i.ad, %bb.d ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
end_hunk_0
begin_hunk_1_@_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar9is_planarRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEB2b_NtB1b_10UndirectedEEs_0CskcxRuJ53GpR_9rustworkx:bb.a
  %i.abz = icmp eq i64 %i.aby, 0
  %i.aca = trunc i8 %i.abw to i1
  %or.cond.i180.i = and i1 %i.abz, %i.aca
  br i1 %or.cond.i180.i, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBR_EBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.ct, !prof !68

bb.ct:                                            ; preds = %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i.i
  %i.acb = getelementptr inbounds nuw i8, ptr %i.yy, i64 %.sroa.0.0.i5.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52806)
  %i.acc = and i8 %i.abw, 1
  %i.acd = zext nneg i8 %i.acc to i64
  %i.ace = sub i64 %i.aby, %i.acd
  store i64 %i.ace, ptr %i.abx, align 8, !alias.scope !52807
  %i.acf = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.acg = and i64 %i.acf, %i.yx
  store i8 %i.aae, ptr %i.acb, align 1, !noalias !52808
  %i.ach = getelementptr i8, ptr %i.yy, i64 %i.acg
  %i.aci = getelementptr i8, ptr %i.ach, i64 16
  store i8 %i.aae, ptr %i.aci, align 1, !noalias !52808
  %i.acj = add i64 %i.yl, 1
  store i64 %i.acj, ptr %i.yk, align 8, !alias.scope !52807
  %i.ack = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.acl = getelementptr inbounds [16 x i8], ptr %i.yy, i64 %i.ack
  %i.acm = getelementptr inbounds i8, ptr %i.acl, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.acm, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !52809
  br label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBR_EBQ_EE6insertNCINvNtB8_3map11make_hasherBQ_BQ_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBR_EBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i.i
  %i.acn = tail call fastcc i64 @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBR_EBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.yj, ptr noundef nonnull readonly align 8 %i.yn) #62 ; 0 uses
  %.val.i182.i = load ptr, ptr %i.yj, align 8, !alias.scope !52805
  %.val7.i.i = load i64, ptr %i.yw, align 8, !alias.scope !52805, !noundef !56
  %i.aco = tail call fastcc noundef i64 @_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot(ptr %.val.i182.i, i64 %.val7.i.i, i64 noundef %i.aac) #64, !noalias !52804
  call fastcc void @_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBQ_EBP_EE14insert_in_slotCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.yj, i64 noundef %i.aac, i64 noundef %i.aco, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.h) #64
  br label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBR_EBQ_EE6insertNCINvNtB8_3map11make_hasherBQ_BQ_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBR_EBQ_EE6insertNCINvNtB8_3map11make_hasherBQ_BQ_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBR_EBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !52771
  br label %_RNvMs4_NtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planarINtB5_7LRStateRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2l_5types3any5PyAnyEB2g_NtB1g_10UndirectedEE18lr_testing_visitorCskcxRuJ53GpR_9rustworkx.exit

bb.cu:                                            ; preds = %.lr.ph.i.i169.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52810)
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.acr = load i64, ptr %i.acq, align 8, !alias.scope !52811, !noundef !56 ; 2 uses
  %.not.i254.i.i = icmp eq i64 %i.acr, 0
  br i1 %.not.i254.i.i, label %_RNvMs4_NtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planarINtB5_7LRStateRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2l_5types3any5PyAnyEB2g_NtB1g_10UndirectedEE33until_top_of_stack_is_conflictingCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %.lr.ph.i185.i

.lr.ph.i185.i:                                    ; preds = %bb.cu
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %.sroa.7.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i, i64 8
  %.sroa.7.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i, i64 4
  br label %bb.cv

bb.cv:                                            ; preds = %bb.dz, %.lr.ph.i185.i
  %i.acy = phi i64 [ %i.acr, %.lr.ph.i185.i ], [ %i.aki, %bb.dz ] ; 4 uses
  %.sroa.1299.0258.i.i = phi i32 [ 0, %.lr.ph.i185.i ], [ %.sroa.1299.1.i.i, %bb.dz ] ; 6 uses
  %.sroa.17.0257.i.i = phi i32 [ undef, %.lr.ph.i185.i ], [ %.sroa.17.1.i.i, %bb.dz ] ; 3 uses
  %.sroa.21.0256.i.i = phi i32 [ undef, %.lr.ph.i185.i ], [ %.sroa.21.1.i.i, %bb.dz ] ; 3 uses
  %.sroa.25.0255.i.i = phi i64 [ undef, %.lr.ph.i185.i ], [ %.sroa.25.1.i.i, %bb.dz ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52812)
  %i.acz = load ptr, ptr %i.acs, align 8, !alias.scope !52813, !nonnull !56, !noundef !56 ; 2 uses
  %i.ada = getelementptr [40 x i8], ptr %i.acz, i64 %i.acy ; 9 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 -40
  %.sroa.09.0.copyload.i.i.i = load i32, ptr %i.adb, align 4, !noalias !52814 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ada, i64 -36
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !52814 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ada, i64 -32
  %.sroa.6.0.copyload.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !noalias !52814
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ada, i64 -28
  %.sroa.7.0.copyload.i.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !noalias !52814
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ada, i64 -24
  %.sroa.8.0.copyload.i.i.i = load i32, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !52814 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ada, i64 -20
  %.sroa.9.0.copyload.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !52814
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ada, i64 -16
  %i.adc = load <2 x i32>, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !52814
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ada, i64 -8
  %.sroa.12.0.copyload.i.i.i = load i32, ptr %.sroa.12.0..sroa_idx.i.i.i, align 4, !noalias !52814
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ada, i64 -4
  %.sroa.13.0.copyload.i.i.i = load i32, ptr %.sroa.13.0..sroa_idx.i.i.i, align 4, !noalias !52814 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52815)
  %i.add = load i64, ptr %i.act, align 8, !alias.scope !52816, !noundef !56
  %i.ade = icmp eq i64 %i.add, 0
  br i1 %i.ade, label %select.unfold.i.i199.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.val.i.i.i186.i = load i64, ptr %i.acv, align 8, !alias.scope !52817, !noundef !56
  %i.adf = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !52818, !noundef !56
  %i.adg = xor i64 %.val.i.i.i186.i, %i.bo
  %i.adh = zext i64 %i.adg to i128
  %i.adi = zext i64 %i.adf to i128                ; 4 uses
  %i.adj = mul nuw i128 %i.adi, %i.adh            ; 2 uses
  %i.adk = lshr i128 %i.adj, 64
  %i.adl = xor i128 %i.adk, %i.adj
  %i.adm = trunc i128 %i.adl to i64               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52820)
  %i.adn = lshr i64 %i.adm, 57
  %i.ado = trunc nuw nsw i64 %i.adn to i8
  %i.adp = load i64, ptr %i.acw, align 8, !alias.scope !52821, !noundef !56 ; 2 uses
  %i.adq = load ptr, ptr %i.acu, align 8, !alias.scope !52821, !nonnull !56, !noundef !56 ; 2 uses
  %i.adr = insertelement <16 x i8> poison, i8 %i.ado, i64 0
  %i.ads = shufflevector <16 x i8> %i.adr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %bb.cw
  %.sroa.011.0.i.i.i.i.i187.i = phi i64 [ 0, %bb.cw ], [ %i.ael, %bb.cz ]
  %.pn.i.i.i.i188.i = phi i64 [ %i.adm, %bb.cw ], [ %i.aem, %bb.cz ]
  %.sroa.01.0.i.i.i.i.i189.i = and i64 %.pn.i.i.i.i188.i, %i.adp ; 3 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adq, i64 %.sroa.01.0.i.i.i.i.i189.i
  %.sroa.0.0.copyload.i24.i.i.i.i190.i = load <16 x i8>, ptr %i.adt, align 1, !noalias !52822 ; 2 uses
  %i.adu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i190.i, %i.ads
  %i.adv = bitcast <16 x i1> %i.adu to i16        ; 2 uses
  %.not.i.not30.i.i.i.i191.i = icmp eq i16 %i.adv, 0
  br i1 %.not.i.not30.i.i.i.i191.i, label %._crit_edge.i.i.i.i198.i, label %.lr.ph.i.i.i.i192.i

.lr.ph.i.i.i.i192.i:                              ; preds = %bb.cx, %bb.cy
  %.sroa.05.0.i31.i.i.i.i193.i = phi i16 [ %i.aek, %bb.cy ], [ %i.adv, %bb.cx ] ; 3 uses
  %i.adw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i193.i, i1 true)
  %i.adx = zext nneg i16 %i.adw to i64
  %i.ady = add i64 %.sroa.01.0.i.i.i.i.i189.i, %i.adx
  %i.adz = and i64 %i.ady, %i.adp
  %i.aea = sub nsw i64 0, %i.adz
  %i.aeb = getelementptr inbounds [48 x i8], ptr %i.adq, i64 %i.aea ; 11 uses
  %i.aec = getelementptr inbounds i8, ptr %i.aeb, i64 -48
  %.val2.i.i.i.i.i194.i = load i32, ptr %i.aec, align 4, !noalias !52823, !noundef !56
  %i.aed = getelementptr i8, ptr %i.aeb, i64 -44
  %.val3.i.i.i.i.i195.i = load i32, ptr %i.aed, align 4, !noalias !52823
  %i.aee = icmp eq i32 %.val2.i.i.i.i.i194.i, %i.bp
  %i.aef = icmp eq i32 %.val3.i.i.i.i.i195.i, %i.br
  %spec.select.i.i.i.i.i.i.i.i196.i = select i1 %i.aee, i1 %i.aef, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i196.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar12ConflictPairBO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.cy, !prof !66

._crit_edge.i.i.i.i198.i:                         ; preds = %bb.cy, %bb.cx
  %i.aeg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i190.i, splat (i8 -1)
  %i.aeh = bitcast <16 x i1> %i.aeg to i16
  %i.aei = icmp eq i16 %i.aeh, 0
  br i1 %i.aei, label %bb.cz, label %select.unfold.i.i199.i, !prof !60

bb.cy:                                            ; preds = %.lr.ph.i.i.i.i192.i
  %i.aej = add i16 %.sroa.05.0.i31.i.i.i.i193.i, -1
  %i.aek = and i16 %i.aej, %.sroa.05.0.i31.i.i.i.i193.i ; 2 uses
  %.not.i.not.i.i.i.i197.i = icmp eq i16 %i.aek, 0
  br i1 %.not.i.not.i.i.i.i197.i, label %._crit_edge.i.i.i.i198.i, label %.lr.ph.i.i.i.i192.i

bb.cz:                                            ; preds = %._crit_edge.i.i.i.i198.i
  %i.ael = add i64 %.sroa.011.0.i.i.i.i.i187.i, 16 ; 2 uses
  %i.aem = add i64 %.sroa.01.0.i.i.i.i.i189.i, %i.ael
  br label %bb.cx

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar12ConflictPairBO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i192.i
  %i.aen = getelementptr inbounds i8, ptr %i.aeb, i64 -40
  %i.aeo = load i32, ptr %i.aen, align 4, !range !65, !alias.scope !52824, !noalias !52814, !noundef !56
  %i.aep = trunc nuw i32 %i.aeo to i1
  %i.aeq = trunc nuw i32 %.sroa.09.0.copyload.i.i.i to i1 ; 2 uses
  br i1 %i.aep, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar12ConflictPairBO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  br i1 %i.aeq, label %bb.dc, label %bb.dg

bb.db:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EINtNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar12ConflictPairBO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  br i1 %i.aeq, label %bb.dg, label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.aer = getelementptr inbounds i8, ptr %i.aeb, i64 -36
  %.val13.i.i.i.i = load i32, ptr %i.aer, align 4, !alias.scope !52824, !noalias !52814, !noundef !56
  %i.aes = getelementptr inbounds i8, ptr %i.aeb, i64 -32
  %.val14.i.i.i.i = load i32, ptr %i.aes, align 4, !alias.scope !52824, !noalias !52814
  %i.aet = icmp eq i32 %.val13.i.i.i.i, %.sroa.5.0.copyload.i.i.i
  %i.aeu = icmp eq i32 %.val14.i.i.i.i, %.sroa.6.0.copyload.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.aet, i1 %i.aeu, i1 false
  br i1 %spec.select.i.i.i.i.i, label %.split.i.i.i.i, label %bb.dg

.split.i.i.i.i:                                   ; preds = %bb.dc
  %i.aev = getelementptr inbounds i8, ptr %i.aeb, i64 -28
  %.val9.i.i.i.i = load i32, ptr %i.aev, align 4, !alias.scope !52824, !noalias !52814, !noundef !56
  %i.aew = getelementptr inbounds i8, ptr %i.aeb, i64 -24
  %.val10.i.i.i.i = load i32, ptr %i.aew, align 4, !alias.scope !52824, !noalias !52814
  %i.aex = icmp eq i32 %.val9.i.i.i.i, %.sroa.7.0.copyload.i.i.i
  %i.aey = icmp eq i32 %.val10.i.i.i.i, %.sroa.8.0.copyload.i.i.i
  %spec.select.i17.i.i.i.i = select i1 %i.aex, i1 %i.aey, i1 false
  br i1 %spec.select.i17.i.i.i.i, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %.split.i.i.i.i, %bb.db
  %i.aez = getelementptr inbounds i8, ptr %i.aeb, i64 -20
  %i.afa = load i32, ptr %i.aez, align 4, !range !65, !alias.scope !52824, !noalias !52814, !noundef !56
  %i.afb = trunc nuw i32 %i.afa to i1
  %i.afc = trunc nuw i32 %.sroa.9.0.copyload.i.i.i to i1 ; 2 uses
  br i1 %i.afb, label %bb.de, label %_RNvXsd_NtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planarINtB5_12ConflictPairTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1f_EENtNtCslwFuT2d6ECx_4core3cmp9PartialEq2eqCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.de:                                            ; preds = %bb.dd
  br i1 %i.afc, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.afd = getelementptr inbounds i8, ptr %i.aeb, i64 -16
  %i.afe = load <2 x i32>, ptr %i.afd, align 4, !alias.scope !52824, !noalias !52814
  %i.aff = icmp eq <2 x i32> %i.afe, %i.adc       ; 2 uses
  %2 = extractelement <2 x i1> %i.aff, i64 0
  %3 = extractelement <2 x i1> %i.aff, i64 1
  %spec.select.i18.i.i.i.i = select i1 %2, i1 %3, i1 false
  br i1 %spec.select.i18.i.i.i.i, label %.split.i.i.i, label %bb.dg

.split.i.i.i:                                     ; preds = %bb.df
  %i.afg = getelementptr inbounds i8, ptr %i.aeb, i64 -8
  %.val.i8.i.i.i = load i32, ptr %i.afg, align 4, !alias.scope !52824, !noalias !52814, !noundef !56
  %i.afh = getelementptr inbounds i8, ptr %i.aeb, i64 -4
  %.val2.i.i.i208.i = load i32, ptr %i.afh, align 4, !alias.scope !52824, !noalias !52814
  %i.afi = icmp eq i32 %.val.i8.i.i.i, %.sroa.12.0.copyload.i.i.i
  %i.afj = icmp eq i32 %.val2.i.i.i208.i, %.sroa.13.0.copyload.i.i.i
  %spec.select.i19.i.i.i.i = select i1 %i.afi, i1 %i.afj, i1 false
  br i1 %spec.select.i19.i.i.i.i, label %_RNvMs4_NtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planarINtB5_7LRStateRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2l_5types3any5PyAnyEB2g_NtB1g_10UndirectedEE31until_top_of_stack_hits_emarkerCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %bb.dg

_RNvXsd_NtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planarINtB5_12ConflictPairTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1f_EENtNtCslwFuT2d6ECx_4core3cmp9PartialEq2eqCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.dd
  br i1 %i.afc, label %bb.dg, label %_RNvMs4_NtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planarINtB5_7LRStateRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2l_5types3any5PyAnyEB2g_NtB1g_10UndirectedEE31until_top_of_stack_hits_emarkerCskcxRuJ53GpR_9rustworkx.exit.thread.i.i

select.unfold.i.i199.i:                           ; preds = %bb.cv, %._crit_edge.i.i.i.i198.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1764) #60, !noalias !52814
  unreachable

bb.dg:                                            ; preds = %_RNvXsd_NtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planarINtB5_12ConflictPairTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1f_EENtNtCslwFuT2d6ECx_4core3cmp9PartialEq2eqCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %.split.i.i.i, %bb.df, %bb.de, %.split.i.i.i.i, %bb.dc, %bb.db, %bb.da
  %i.afk = add nsw i64 %i.acy, -1                 ; 3 uses
  store i64 %i.afk, ptr %i.acq, align 8, !alias.scope !52813
  %i.afl = load i64, ptr %i.acp, align 8, !range !59, !alias.scope !52813, !noundef !56
  %i.afm = icmp ult i64 %i.afk, %i.afl
  tail call void @llvm.assume(i1 %i.afm)
  %i.afn = icmp ult i64 %i.acy, 230584300921369397
  tail call void @llvm.assume(i1 %i.afn)
  %i.afo = getelementptr inbounds nuw [40 x i8], ptr %i.acz, i64 %i.afk ; 3 uses
  %.sroa.8106.sroa.8.0..sroa.8106.0..sroa_idx107.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.afo, i64 20
  %.sroa.8106.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8106.sroa.8.0..sroa.8106.0..sroa_idx107.sroa_idx.i.i, align 4, !noalias !52825 ; 3 uses
  %.not18.i.i = icmp eq i32 %.sroa.09.0.copyload.i.i.i, 0
  br i1 %.not18.i.i, label %bb.di, label %bb.dh

_RNvMs4_NtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planarINtB5_7LRStateRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2l_5types3any5PyAnyEB2g_NtB1g_10UndirectedEE31until_top_of_stack_hits_emarkerCskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %_RNvXsd_NtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planarINtB5_12ConflictPairTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1f_EENtNtCslwFuT2d6ECx_4core3cmp9PartialEq2eqCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %.split.i.i.i
  %.sroa.8143.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 6 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.afr = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.afs = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 3 uses
  %i.afu = trunc nuw i32 %.sroa.1299.0258.i.i to i1
  %i.afv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.afw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.9147.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  br label %bb.ea

bb.dh:                                            ; preds = %bb.dg
  %.sroa.8106.sroa.6.0..sroa.8106.0..sroa_idx107.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %i.afx = and i64 %.sroa.8106.sroa.8.0.copyload.i.i, 4294967295
  %.not19.i.i = icmp eq i64 %i.afx, 0
  br i1 %.not19.i.i, label %.thread.i.i, label %_RNvMs4_NtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planarINtB5_7LRStateRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2l_5types3any5PyAnyEB2g_NtB1g_10UndirectedEE18lr_testing_visitorCskcxRuJ53GpR_9rustworkx.exit

bb.di:                                            ; preds = %bb.dg
  %.sroa.13.sroa.8.0.extract.shift.i.i = lshr i64 %.sroa.8106.sroa.8.0.copyload.i.i, 32
  %.sroa.13.sroa.8.0.extract.trunc.i.i = trunc nuw i64 %.sroa.13.sroa.8.0.extract.shift.i.i to i32
  %.sroa.8106.sroa.9.0..sroa.8106.0..sroa_idx107.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.afo, i64 28
  %i.afy = trunc i64 %.sroa.8106.sroa.8.0.copyload.i.i to i1
  br i1 %i.afy, label %.thread.i.i, label %bb.dn, !prof !52826

.thread.i.i:                                      ; preds = %bb.di, %bb.dh
  %.sroa.23.0349.i.i = phi i32 [ %.sroa.13.0.copyload.i.i.i, %bb.di ], [ %.sroa.8.0.copyload.i.i.i, %bb.dh ] ; 2 uses
  %.sroa.19.sroa.9.0.in.in348.i.in.i = phi ptr [ %.sroa.8106.sroa.9.0..sroa.8106.0..sroa_idx107.sroa_idx.i.i, %bb.di ], [ %.sroa.8106.sroa.6.0..sroa.8106.0..sroa_idx107.sroa_idx.i.i, %bb.dh ]
  %.sroa.13.sroa.8.0347.i.i = phi i32 [ %.sroa.13.sroa.8.0.extract.trunc.i.i, %bb.di ], [ %.sroa.5.0.copyload.i.i.i, %bb.dh ] ; 4 uses
  %.sroa.19.sroa.9.0.in.in348.i.i = load i64, ptr %.sroa.19.sroa.9.0.in.in348.i.in.i, align 4, !noalias !52825 ; 4 uses
  %.sroa.19.sroa.0.0350.i.i = trunc i64 %.sroa.19.sroa.9.0.in.in348.i.i to i32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52827)
  %i.afz = load i64, ptr %i.bt, align 8, !alias.scope !52828, !noundef !56
  %i.aga = icmp eq i64 %i.afz, 0
  br i1 %i.aga, label %select.unfold.i.i, label %bb.dj

bb.dj:                                            ; preds = %.thread.i.i
  %.val.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !52829, !noundef !56 ; 2 uses
  %i.agb = zext i32 %.sroa.13.sroa.8.0347.i.i to i64
  %i.agc = shl i64 %.sroa.19.sroa.9.0.in.in348.i.i, 32
  %i.agd = or disjoint i64 %i.agc, %i.agb
  %i.age = xor i64 %.val.i.i.i, %i.agd
  %i.agf = zext i64 %i.age to i128
  %i.agg = mul nuw i128 %i.agf, %i.adi            ; 2 uses
  %i.agh = lshr i128 %i.agg, 64
  %i.agi = xor i128 %i.agh, %i.agg
  %i.agj = trunc i128 %i.agi to i64               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52831)
  %i.agk = lshr i64 %i.agj, 57
  %i.agl = trunc nuw nsw i64 %i.agk to i8
  %i.agm = load i64, ptr %i.ch, align 8, !alias.scope !52832, !noundef !56 ; 4 uses
  %i.agn = load ptr, ptr %i.bs, align 8, !alias.scope !52832, !nonnull !56, !noundef !56 ; 4 uses
  %i.ago = insertelement <16 x i8> poison, i8 %i.agl, i64 0
  %i.agp = shufflevector <16 x i8> %i.ago, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dm, %bb.dj
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.dj ], [ %i.ahi, %bb.dm ]
  %.pn.i.i.i.i = phi i64 [ %i.agj, %bb.dj ], [ %i.ahj, %bb.dm ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.agm ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agn, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.agq, align 1, !noalias !52833 ; 2 uses
  %i.agr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.agp
  %i.ags = bitcast <16 x i1> %i.agr to i16        ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.ags, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dk, %bb.dl
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.ahh, %bb.dl ], [ %i.ags, %bb.dk ] ; 3 uses
  %i.agt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.agu = zext nneg i16 %i.agt to i64
  %i.agv = add i64 %.sroa.01.0.i.i.i.i.i, %i.agu
  %i.agw = and i64 %i.agv, %i.agm
  %i.agx = sub nsw i64 0, %i.agw
  %i.agy = getelementptr inbounds [16 x i8], ptr %i.agn, i64 %i.agx ; 3 uses
  %i.agz = getelementptr inbounds i8, ptr %i.agy, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.agz, align 4, !noalias !52834, !noundef !56
  %i.aha = getelementptr i8, ptr %i.agy, i64 -12
  %.val3.i.i.i.i.i = load i32, ptr %i.aha, align 4, !noalias !52834
  %i.ahb = icmp eq i32 %.sroa.13.sroa.8.0347.i.i, %.val2.i.i.i.i.i
  %i.ahc = icmp eq i32 %.val3.i.i.i.i.i, %.sroa.19.sroa.0.0350.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.ahb, i1 %i.ahc, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.dl, !prof !66

._crit_edge.i.i.i.i:                              ; preds = %bb.dl, %bb.dk
  %i.ahd = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ahe = bitcast <16 x i1> %i.ahd to i16
  %i.ahf = icmp eq i16 %i.ahe, 0
  br i1 %i.ahf, label %bb.dm, label %select.unfold.i.i, !prof !60

bb.dl:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ahg = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.ahh = and i16 %i.ahg, %.sroa.05.0.i31.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ahh, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.dm:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ahi = add i64 %.sroa.011.0.i.i.i.i.i, 16     ; 2 uses
  %i.ahj = add i64 %.sroa.01.0.i.i.i.i.i, %i.ahi
  br label %bb.dk

bb.dn:                                            ; preds = %bb.di
  tail call void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1736) #60, !noalias !52835
  unreachable

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ahk = getelementptr inbounds i8, ptr %i.agy, i64 -8
  %i.ahl = load i64, ptr %i.ahk, align 8, !noalias !52835, !noundef !56
  %i.ahm = xor i64 %.val.i.i.i, %i.yf
  %i.ahn = zext i64 %i.ahm to i128
  %i.aho = mul nuw i128 %i.ahn, %i.adi            ; 2 uses
  %i.ahp = lshr i128 %i.aho, 64
  %i.ahq = xor i128 %i.ahp, %i.aho
  %i.ahr = trunc i128 %i.ahq to i64               ; 2 uses
  %i.ahs = lshr i64 %i.ahr, 57
  %i.aht = trunc nuw nsw i64 %i.ahs to i8
  %i.ahu = insertelement <16 x i8> poison, i8 %i.aht, i64 0
  %i.ahv = shufflevector <16 x i8> %i.ahu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.do

bb.do:                                            ; preds = %bb.dq, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.011.0.i.i.i32.i.i = phi i64 [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.aio, %bb.dq ]
  %.pn.i.i33.i.i = phi i64 [ %i.ahr, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.aip, %bb.dq ]
  %.sroa.01.0.i.i.i34.i.i = and i64 %.pn.i.i33.i.i, %i.agm ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agn, i64 %.sroa.01.0.i.i.i34.i.i
  %.sroa.0.0.copyload.i24.i.i35.i.i = load <16 x i8>, ptr %i.ahw, align 1, !noalias !52836 ; 2 uses
  %i.ahx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i35.i.i, %i.ahv
  %i.ahy = bitcast <16 x i1> %i.ahx to i16        ; 2 uses
  %.not.i.not30.i.i36.i.i = icmp eq i16 %i.ahy, 0
  br i1 %.not.i.not30.i.i36.i.i, label %._crit_edge.i.i43.i.i, label %.lr.ph.i.i37.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %bb.do, %bb.dp
  %.sroa.05.0.i31.i.i38.i.i = phi i16 [ %i.ain, %bb.dp ], [ %i.ahy, %bb.do ] ; 3 uses
  %i.ahz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i38.i.i, i1 true)
  %i.aia = zext nneg i16 %i.ahz to i64
  %i.aib = add i64 %.sroa.01.0.i.i.i34.i.i, %i.aia
  %i.aic = and i64 %i.aib, %i.agm
  %i.aid = sub nsw i64 0, %i.aic
  %i.aie = getelementptr inbounds [16 x i8], ptr %i.agn, i64 %i.aid ; 3 uses
  %i.aif = getelementptr inbounds i8, ptr %i.aie, i64 -16
  %.val2.i.i.i39.i.i = load i32, ptr %i.aif, align 4, !noalias !52837, !noundef !56
  %i.aig = getelementptr i8, ptr %i.aie, i64 -12
  %.val3.i.i.i40.i.i = load i32, ptr %i.aig, align 4, !noalias !52837
  %i.aih = icmp eq i32 %.val2.i.i.i39.i.i, %i.yg
  %i.aii = icmp eq i32 %.val3.i.i.i40.i.i, %i.yi
  %spec.select.i.i.i.i.i.i41.i.i = select i1 %i.aih, i1 %i.aii, i1 false
  br i1 %spec.select.i.i.i.i.i.i41.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit48.i.i, label %bb.dp, !prof !66

._crit_edge.i.i43.i.i:                            ; preds = %bb.dp, %bb.do
  %i.aij = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i35.i.i, splat (i8 -1)
  %i.aik = bitcast <16 x i1> %i.aij to i16
  %i.ail = icmp eq i16 %i.aik, 0
  br i1 %i.ail, label %bb.dq, label %select.unfold165.i.i, !prof !60

bb.dp:                                            ; preds = %.lr.ph.i.i37.i.i
  %i.aim = add i16 %.sroa.05.0.i31.i.i38.i.i, -1
  %i.ain = and i16 %i.aim, %.sroa.05.0.i31.i.i38.i.i ; 2 uses
  %.not.i.not.i.i42.i.i = icmp eq i16 %i.ain, 0
  br i1 %.not.i.not.i.i42.i.i, label %._crit_edge.i.i43.i.i, label %.lr.ph.i.i37.i.i

bb.dq:                                            ; preds = %._crit_edge.i.i43.i.i
  %i.aio = add i64 %.sroa.011.0.i.i.i32.i.i, 16   ; 2 uses
  %i.aip = add i64 %.sroa.01.0.i.i.i34.i.i, %i.aio
  br label %bb.do

end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx6planar22___pyfunction_is_planar:bb.a
  %i.rw = shufflevector <16 x i8> %i.rv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.di

bb.di:                                            ; preds = %bb.dk, %bb.dh
  %.sroa.011.0.i.i.i.i.i.i77.i.i = phi i64 [ 0, %bb.dh ], [ %i.sp, %bb.dk ]
  %.pn.i.i.i.i.i78.i.i = phi i64 [ %i.rq, %bb.dh ], [ %i.sq, %bb.dk ]
  %.sroa.01.0.i.i.i.i.i.i79.i.i = and i64 %.pn.i.i.i.i.i78.i.i, %i.rt ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.sroa.01.0.i.i.i.i.i.i79.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i80.i.i = load <16 x i8>, ptr %i.rx, align 1, !noalias !135225 ; 2 uses
  %i.ry = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i80.i.i, %i.rw
  %i.rz = bitcast <16 x i1> %i.ry to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i81.i.i = icmp eq i16 %i.rz, 0
  br i1 %.not.i.not30.i.i.i.i.i81.i.i, label %._crit_edge.i.i.i.i.i88.i.i, label %.lr.ph.i.i.i.i.i82.i.i

.lr.ph.i.i.i.i.i82.i.i:                           ; preds = %bb.di, %bb.dj
  %.sroa.05.0.i31.i.i.i.i.i83.i.i = phi i16 [ %i.so, %bb.dj ], [ %i.rz, %bb.di ] ; 3 uses
  %i.sa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i83.i.i, i1 true)
  %i.sb = zext nneg i16 %i.sa to i64
  %i.sc = add i64 %.sroa.01.0.i.i.i.i.i.i79.i.i, %i.sb
  %i.sd = and i64 %i.sc, %i.rt
  %i.se = sub nsw i64 0, %i.sd
  %i.sf = getelementptr inbounds [16 x i8], ptr %i.ru, i64 %i.se ; 3 uses
  %i.sg = getelementptr inbounds i8, ptr %i.sf, i64 -16
  %.val2.i.i.i.i.i.i84.i.i = load i32, ptr %i.sg, align 4, !noalias !135226, !noundef !56
  %i.sh = getelementptr i8, ptr %i.sf, i64 -12
  %.val3.i.i.i.i.i.i85.i.i = load i32, ptr %i.sh, align 4, !noalias !135226
  %i.si = icmp eq i32 %.val2.i.i.i.i.i.i84.i.i, %i.qw
  %i.sj = icmp eq i32 %i.qx, %.val3.i.i.i.i.i.i85.i.i
  %spec.select.i.i.i.i.i.i.i.i.i86.i.i = select i1 %i.si, i1 %i.sj, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i86.i.i, label %bb.dl, label %bb.dj, !prof !66

._crit_edge.i.i.i.i.i88.i.i:                      ; preds = %bb.dj, %bb.di
  %i.sk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i80.i.i, splat (i8 -1)
  %i.sl = bitcast <16 x i1> %i.sk to i16
  %i.sm = icmp eq i16 %i.sl, 0
  br i1 %i.sm, label %bb.dk, label %select.unfold.i19.i.i103.i.i.invoke, !prof !60

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i.i82.i.i
  %i.sn = add i16 %.sroa.05.0.i31.i.i.i.i.i83.i.i, -1
  %i.so = and i16 %i.sn, %.sroa.05.0.i31.i.i.i.i.i83.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i87.i.i = icmp eq i16 %i.so, 0
  br i1 %.not.i.not.i.i.i.i.i87.i.i, label %._crit_edge.i.i.i.i.i88.i.i, label %.lr.ph.i.i.i.i.i82.i.i

bb.dk:                                            ; preds = %._crit_edge.i.i.i.i.i88.i.i
  %i.sp = add i64 %.sroa.011.0.i.i.i.i.i.i77.i.i, 16 ; 2 uses
  %i.sq = add i64 %.sroa.01.0.i.i.i.i.i.i79.i.i, %i.sp
  br label %bb.di

bb.dl:                                            ; preds = %.lr.ph.i.i.i.i.i82.i.i
  %i.sr = getelementptr inbounds i8, ptr %i.sf, i64 -8
  %i.ss = load i64, ptr %i.sr, align 8, !noalias !135220, !noundef !56
  %i.st = xor i64 %.val.i.i.i.i76.i.i, %.val10.i.i74.i.i
  %i.su = zext i64 %i.st to i128
  %i.sv = mul nuw i128 %i.su, %i.rb               ; 2 uses
  %i.sw = lshr i128 %i.sv, 64
  %i.sx = xor i128 %i.sw, %i.sv
  %i.sy = trunc i128 %i.sx to i64                 ; 2 uses
  %i.sz = lshr i64 %i.sy, 57
  %i.ta = trunc nuw nsw i64 %i.sz to i8
  %i.tb = insertelement <16 x i8> poison, i8 %i.ta, i64 0
  %i.tc = shufflevector <16 x i8> %i.tb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dm

bb.dm:                                            ; preds = %bb.do, %bb.dl
  %.sroa.011.0.i.i.i.i7.i.i91.i.i = phi i64 [ 0, %bb.dl ], [ %i.tv, %bb.do ]
  %.pn.i.i.i8.i.i92.i.i = phi i64 [ %i.sy, %bb.dl ], [ %i.tw, %bb.do ]
  %.sroa.01.0.i.i.i.i9.i.i93.i.i = and i64 %.pn.i.i.i8.i.i92.i.i, %i.rt ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.sroa.01.0.i.i.i.i9.i.i93.i.i
  %.sroa.0.0.copyload.i24.i.i.i10.i.i94.i.i = load <16 x i8>, ptr %i.td, align 1, !noalias !135227 ; 2 uses
  %i.te = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i.i94.i.i, %i.tc
  %i.tf = bitcast <16 x i1> %i.te to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i.i95.i.i = icmp eq i16 %i.tf, 0
  br i1 %.not.i.not30.i.i.i11.i.i95.i.i, label %._crit_edge.i.i.i18.i.i102.i.i, label %.lr.ph.i.i.i12.i.i96.i.i

.lr.ph.i.i.i12.i.i96.i.i:                         ; preds = %bb.dm, %bb.dn
  %.sroa.05.0.i31.i.i.i13.i.i97.i.i = phi i16 [ %i.tu, %bb.dn ], [ %i.tf, %bb.dm ] ; 3 uses
  %i.tg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i.i97.i.i, i1 true)
  %i.th = zext nneg i16 %i.tg to i64
  %i.ti = add i64 %.sroa.01.0.i.i.i.i9.i.i93.i.i, %i.th
  %i.tj = and i64 %i.ti, %i.rt
  %i.tk = sub nsw i64 0, %i.tj
  %i.tl = getelementptr inbounds [16 x i8], ptr %i.ru, i64 %i.tk ; 3 uses
  %i.tm = getelementptr inbounds i8, ptr %i.tl, i64 -16
  %.val2.i.i.i.i14.i.i98.i.i = load i32, ptr %i.tm, align 4, !noalias !135228, !noundef !56
  %i.tn = getelementptr i8, ptr %i.tl, i64 -12
  %.val3.i.i.i.i15.i.i99.i.i = load i32, ptr %i.tn, align 4, !noalias !135228
  %i.to = icmp eq i32 %.val2.i.i.i.i14.i.i98.i.i, %i.ri
  %i.tp = icmp eq i32 %.val3.i.i.i.i15.i.i99.i.i, %i.rk
  %spec.select.i.i.i.i.i.i.i16.i.i100.i.i = select i1 %i.to, i1 %i.tp, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i16.i.i100.i.i, label %bb.dp, label %bb.dn, !prof !66

._crit_edge.i.i.i18.i.i102.i.i:                   ; preds = %bb.dn, %bb.dm
  %i.tq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i.i94.i.i, splat (i8 -1)
  %i.tr = bitcast <16 x i1> %i.tq to i16
  %i.ts = icmp eq i16 %i.tr, 0
  br i1 %i.ts, label %bb.do, label %select.unfold.i19.i.i103.i.i.invoke, !prof !60

bb.dn:                                            ; preds = %.lr.ph.i.i.i12.i.i96.i.i
  %i.tt = add i16 %.sroa.05.0.i31.i.i.i13.i.i97.i.i, -1
  %i.tu = and i16 %i.tt, %.sroa.05.0.i31.i.i.i13.i.i97.i.i ; 2 uses
  %.not.i.not.i.i.i17.i.i101.i.i = icmp eq i16 %i.tu, 0
  br i1 %.not.i.not.i.i.i17.i.i101.i.i, label %._crit_edge.i.i.i18.i.i102.i.i, label %.lr.ph.i.i.i12.i.i96.i.i

bb.do:                                            ; preds = %._crit_edge.i.i.i18.i.i102.i.i
  %i.tv = add i64 %.sroa.011.0.i.i.i.i7.i.i91.i.i, 16 ; 2 uses
  %i.tw = add i64 %.sroa.01.0.i.i.i.i9.i.i93.i.i, %i.tv
  br label %bb.dm

select.unfold.i19.i.i103.i.i.invoke:              ; preds = %.lr.ph932, %._crit_edge.i.i.i.i.i88.i.i, %._crit_edge.i.i.i18.i.i102.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1255) #60
          to label %select.unfold.i19.i.i103.i.i.cont unwind label %bb.dq, !noalias !135220

select.unfold.i19.i.i103.i.i.cont:                ; preds = %select.unfold.i19.i.i103.i.i.invoke
  unreachable

bb.dp:                                            ; preds = %.lr.ph.i.i.i12.i.i96.i.i
  %i.tx = getelementptr inbounds i8, ptr %i.tl, i64 -8
  %i.ty = load i64, ptr %i.tx, align 8, !noalias !135220, !noundef !56
  %i.tz = icmp ult i64 %i.ss, %i.ty
  br i1 %i.tz, label %bb.dg, label %._crit_edge

._crit_edge:                                      ; preds = %bb.dg, %bb.dp, %bb.df
  %.sroa.0.0.i.lcssa.i105.i.i = phi ptr [ %.sroa.9.1.i.i, %bb.df ], [ %.sroa.9.1.i.i, %bb.dg ], [ %.sroa.0.0.i.i73.i.i931, %bb.dp ]
  store i64 %i.qv, ptr %.sroa.0.0.i.lcssa.i105.i.i, align 4, !alias.scope !135218, !noalias !135229
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB18_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4T_5types3any5PyAnyEB4O_NtB1d_10UndirectedENCINvB2X_9is_planarB4d_Es_0NtB2X_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.dq:                                            ; preds = %select.unfold.i19.i.i103.i.i.invoke
  %i.ua = landingpad { ptr, i32 }
          cleanup
  store i64 %i.qv, ptr %.sroa.0.0.i.i73.i.i931, align 4, !alias.scope !135218, !noalias !135230
  br label %.body107.i.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB18_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4T_5types3any5PyAnyEB4O_NtB1d_10UndirectedENCINvB2X_9is_planarB4d_Es_0NtB2X_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %._crit_edge, %.noexc106.i.i
  %.sroa.0.0.i69.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i63.i.i, i64 8 ; 2 uses
  %.not.i70.i.i = icmp eq ptr %.sroa.0.0.i69.i.i, %i.qr
  br i1 %.not.i70.i.i, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1n_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1m_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1p_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB57_5types3any5PyAnyEB52_NtB1r_10UndirectedENCINvB3b_9is_planarB4r_Es_0NtB3b_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.de

.loopexit.split-lp156.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.de, %bb.dc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body107.i.i

.body107.i.i:                                     ; preds = %.loopexit.split-lp156.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.dq
  %eh.lpad-body108.i.i = phi { ptr, i32 } [ %i.ua, %bb.dq ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp156.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ub = icmp eq i64 %.sroa.0121.1.i.i, 0
  br i1 %i.ub, label %.body.i31.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i39.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i39.i.i: ; preds = %.body107.i.i
  %i.uc = shl nuw i64 %.sroa.0121.1.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.1.i.i, i64 noundef %i.uc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !135217
  br label %.body.i31.i.i

.thread.sink.split.i.i.i.i:                       ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarEs0_0NCB6V_s1_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread34.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarEs0_0NCB6V_s1_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i
  %.sroa.0.018.ph.ph.i.i.i.i = phi i64 [ 4, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarEs0_0NCB6V_s1_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread34.i.i.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarEs0_0NCB6V_s1_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i ]
  %.sroa.6.017.ph.ph.i.i.i.i = phi ptr [ %i.mt, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarEs0_0NCB6V_s1_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread34.i.i.i.i ], [ inttoptr (i64 4 to ptr), %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarEs0_0NCB6V_s1_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i ]
  %.sroa.11.016.ph.ph.i.i.i.i = phi i64 [ 1, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarEs0_0NCB6V_s1_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread34.i.i.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarEs0_0NCB6V_s1_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !135177
  br label %.loopexit202.i.i.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1n_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1m_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1p_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB57_5types3any5PyAnyEB52_NtB1r_10UndirectedENCINvB3b_9is_planarB4r_Es_0NtB3b_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB18_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4T_5types3any5PyAnyEB4O_NtB1d_10UndirectedENCINvB2X_9is_planarB4d_Es_0NtB2X_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !135215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !135177
  %i.ud = icmp ne i64 %i.nb, 1152921504606846975
  call void @llvm.assume(i1 %i.ud)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dt, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1n_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1m_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1p_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB57_5types3any5PyAnyEB52_NtB1r_10UndirectedENCINvB3b_9is_planarB4r_Es_0NtB3b_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %indvar = phi i64 [ %indvar.next, %bb.dt ], [ 0, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1n_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1m_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1p_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB57_5types3any5PyAnyEB52_NtB1r_10UndirectedENCINvB3b_9is_planarB4r_Es_0NtB3b_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 3 uses
  %.sroa.0.027.i.i.i.i.i = phi i64 [ %i.ux, %bb.dt ], [ 1, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1n_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1m_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1p_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB57_5types3any5PyAnyEB52_NtB1r_10UndirectedENCINvB3b_9is_planarB4r_Es_0NtB3b_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 12 uses
  %i.ue = getelementptr [8 x i8], ptr %.sroa.9.1.i.i, i64 %.sroa.0.027.i.i.i.i.i ; 4 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 -8
  %.val13.i.i.i.i.i = load i32, ptr %i.ue, align 4, !noalias !135231, !noundef !56
  %i.ug = getelementptr i8, ptr %i.ue, i64 4
  %.val14.i.i.i.i.i = load i32, ptr %i.ug, align 4, !noalias !135231
  %.val15.i.i.i.i.i = load i32, ptr %i.uf, align 4, !noalias !135231, !noundef !56
  %i.uh = getelementptr i8, ptr %i.ue, i64 -4
  %.val16.i.i.i.i.i = load i32, ptr %i.uh, align 4, !noalias !135231
  %i.ui = icmp eq i32 %.val13.i.i.i.i.i, %.val15.i.i.i.i.i
  %i.uj = icmp eq i32 %.val14.i.i.i.i.i, %.val16.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ui, i1 %i.uj, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %bb.dt

.preheader.i.i.i.i.i:                             ; preds = %bb.dr
  %i.uk = icmp samesign ult i64 %.sroa.0.027.i.i.i.i.i, %i.nb
  br i1 %i.uk, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit202.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i.i
  %i.ul = add nsw i64 %i.nb, -2
  %i.um = sub i64 %indvar, %i.nb
  %i.un = and i64 %i.um, 1
  %lcmp.mod.not.not = icmp eq i64 %i.un, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %.sroa.5.030.i.i.i.i.i.prol = add nuw nsw i64 %.sroa.0.027.i.i.i.i.i, 1 ; 3 uses
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.9.1.i.i, i64 %.sroa.5.030.i.i.i.i.i.prol ; 2 uses
  %i.up = getelementptr [8 x i8], ptr %.sroa.9.1.i.i, i64 %.sroa.0.027.i.i.i.i.i ; 2 uses
  %i.uq = getelementptr i8, ptr %i.up, i64 -8
  %i.ur = load <2 x i32>, ptr %i.uo, align 4, !noalias !135231
  %i.us = load <2 x i32>, ptr %i.uq, align 4, !noalias !135231
  %i.ut = icmp eq <2 x i32> %i.ur, %i.us          ; 2 uses
  %5 = extractelement <2 x i1> %i.ut, i64 0
  %6 = extractelement <2 x i1> %i.ut, i64 1
  %spec.select.i.i17.i.i.i.i.i.prol = select i1 %5, i1 %6, i1 false
  br i1 %spec.select.i.i17.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.uu = load i64, ptr %i.uo, align 4, !noalias !135231
  store i64 %i.uu, ptr %i.up, align 4, !noalias !135231
  %i.uv = add nuw i64 %.sroa.0.027.i.i.i.i.i, 1   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %bb.ds, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.11.1.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.uv, %bb.ds ], [ %.sroa.0.027.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.5.030.i.in.i.i.i.i.unr = phi i64 [ %.sroa.0.027.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.5.030.i.i.i.i.i.prol, %bb.ds ], [ %.sroa.5.030.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.11.029.i.i.i.i.i.unr = phi i64 [ %.sroa.0.027.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.uv, %bb.ds ], [ %.sroa.0.027.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol ]
  %i.uw = icmp eq i64 %i.ul, %indvar
  br i1 %i.uw, label %.loopexit202.i.i.i, label %.lr.ph.i.i.i.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.ux = add nuw nsw i64 %.sroa.0.027.i.i.i.i.i, 1
  %.not.i.i.i40.i.i = icmp eq i64 %.sroa.0.027.i.i.i.i.i, %i.nb
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i40.i.i, label %.loopexit202.i.i.i, label %bb.dr

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %bb.dw
  %.sroa.5.030.i.in.i.i.i.i = phi i64 [ %.sroa.5.030.i.i.i.i.i.1, %bb.dw ], [ %.sroa.5.030.i.in.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.11.029.i.i.i.i.i = phi i64 [ %.sroa.11.1.i.i.i.i.i.1, %bb.dw ], [ %.sroa.11.029.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.9.1.i.i, i64 %.sroa.5.030.i.in.i.i.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8 ; 2 uses
  %i.va = getelementptr [8 x i8], ptr %.sroa.9.1.i.i, i64 %.sroa.11.029.i.i.i.i.i ; 2 uses
  %i.vb = getelementptr i8, ptr %i.va, i64 -8
  %i.vc = load <2 x i32>, ptr %i.uz, align 4, !noalias !135231
  %i.vd = load <2 x i32>, ptr %i.vb, align 4, !noalias !135231
  %i.ve = icmp eq <2 x i32> %i.vc, %i.vd          ; 2 uses
  %7 = extractelement <2 x i1> %i.ve, i64 0
  %8 = extractelement <2 x i1> %i.ve, i64 1
  %spec.select.i.i17.i.i.i.i.i = select i1 %7, i1 %8, i1 false
  br i1 %spec.select.i.i17.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.1, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.vf = load i64, ptr %i.uz, align 4, !noalias !135231
  store i64 %i.vf, ptr %i.va, align 4, !noalias !135231
  %i.vg = add i64 %.sroa.11.029.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %bb.du, %.lr.ph.i.i.i.i.i
  %.sroa.11.1.i.i.i.i.i = phi i64 [ %i.vg, %bb.du ], [ %.sroa.11.029.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.sroa.5.030.i.i.i.i.i.1 = add nuw nsw i64 %.sroa.5.030.i.in.i.i.i.i, 2 ; 3 uses
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.9.1.i.i, i64 %.sroa.5.030.i.i.i.i.i.1 ; 2 uses
  %i.vi = getelementptr [8 x i8], ptr %.sroa.9.1.i.i, i64 %.sroa.11.1.i.i.i.i.i ; 2 uses
  %i.vj = getelementptr i8, ptr %i.vi, i64 -8
  %i.vk = load <2 x i32>, ptr %i.vh, align 4, !noalias !135231
  %i.vl = load <2 x i32>, ptr %i.vj, align 4, !noalias !135231
  %i.vm = icmp eq <2 x i32> %i.vk, %i.vl          ; 2 uses
  %9 = extractelement <2 x i1> %i.vm, i64 0
  %10 = extractelement <2 x i1> %i.vm, i64 1
  %spec.select.i.i17.i.i.i.i.i.1 = select i1 %9, i1 %10, i1 false
  br i1 %spec.select.i.i17.i.i.i.i.i.1, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i.i.1
  %i.vn = load i64, ptr %i.vh, align 4, !noalias !135231
  store i64 %i.vn, ptr %i.vi, align 4, !noalias !135231
  %i.vo = add i64 %.sroa.11.1.i.i.i.i.i, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph.i.i.i.i.i.1
  %.sroa.11.1.i.i.i.i.i.1 = phi i64 [ %i.vo, %bb.dv ], [ %.sroa.11.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1 ] ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %.sroa.5.030.i.i.i.i.i.1, %i.nb
  br i1 %exitcond.not.i.i.i.i.i.1, label %.loopexit202.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.split-lp162.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.ck
  %lpad.loopexit.split-lp962 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i31.i.i

.body.i31.i.i:                                    ; preds = %.loopexit.split-lp162.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i39.i.i, %.body107.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i
  %eh.lpad-body.i32.i.i = phi { ptr, i32 } [ %eh.lpad-body108.i.i, %.body107.i.i ], [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ], [ %lpad.phi22.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i ], [ %eh.lpad-body108.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i39.i.i ], [ %lpad.loopexit.split-lp962, %.loopexit.split-lp162.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ma, i64 noundef 40, i64 noundef 8) #59
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

.loopexit202.i.i.i:                               ; preds = %bb.dt, %.lr.ph.i.i.i.i.i.prol.loopexit, %bb.dw, %.preheader.i.i.i.i.i, %.thread.sink.split.i.i.i.i
  %.sroa.6.01723.i.i.i.i = phi ptr [ %.sroa.6.017.ph.ph.i.i.i.i, %.thread.sink.split.i.i.i.i ], [ %.sroa.9.1.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.sroa.9.1.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.9.1.i.i, %bb.dw ], [ %.sroa.9.1.i.i, %bb.dt ] ; 3 uses
  %.sroa.0.01822.i.i.i.i = phi i64 [ %.sroa.0.018.ph.ph.i.i.i.i, %.thread.sink.split.i.i.i.i ], [ %.sroa.0121.1.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.sroa.0121.1.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.0121.1.i.i, %bb.dw ], [ %.sroa.0121.1.i.i, %bb.dt ]
  %.sroa.11.1.i.i.i.i = phi i64 [ %.sroa.11.016.ph.ph.i.i.i.i, %.thread.sink.split.i.i.i.i ], [ %.sroa.11.1.i.i.i.i.i.1, %bb.dw ], [ %.sroa.0.027.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.11.1.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.nu, %bb.dt ] ; 2 uses
  %i.vp = icmp ult i64 %.sroa.11.1.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.vp)
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.01723.i.i.i.i, i64 %.sroa.11.1.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !135175
  store i32 %i.lz, ptr %i.ma, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store ptr %.sroa.6.01723.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store ptr %.sroa.6.01723.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  store i64 %.sroa.0.01822.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  store ptr %i.vq, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8
  store i64 1, ptr %i.u, align 8, !noalias !135175
  store ptr %i.ma, ptr %i.lk, align 8, !noalias !135175
  store i64 1, ptr %i.ll, align 8, !noalias !135175
  br label %bb.dx

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB5_9into_iter8IntoIterTBG_BG_EEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTBO_BO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit69.thread.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !135232, !noalias !135175 ; 2 uses
  %i.vr = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.vr, label %.backedge.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtBE_9into_iter8IntoIterTB19_B19_EEEEECskcxRuJ53GpR_9rustworkx.exit81.sink.split.i.i.i

bb.dx:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTBO_BO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit69.thread.i.i.i, %.loopexit202.i.i.i
  %i.vs = phi ptr [ %i.ma, %.loopexit202.i.i.i ], [ %.val.i.i38.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTBO_BO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit69.thread.i.i.i ] ; 7 uses
  %i.vt = phi i64 [ 1, %.loopexit202.i.i.i ], [ %.pr.i.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTBO_BO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit69.thread.i.i.i ] ; 3 uses
  %i.vu = getelementptr [40 x i8], ptr %i.vs, i64 %i.vt ; 3 uses
  %i.vv = getelementptr i8, ptr %i.vu, i64 -40
  %i.vw = load i32, ptr %i.vv, align 8, !noundef !56 ; 3 uses
  %i.vx = getelementptr i8, ptr %i.vu, i64 -8
  %i.vy = getelementptr i8, ptr %i.vu, i64 -24    ; 2 uses
  br label %bb.dy

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtBE_9into_iter8IntoIterTB19_B19_EEEEECskcxRuJ53GpR_9rustworkx.exit81.sink.split.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB5_9into_iter8IntoIterTBG_BG_EEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.vz = mul nuw i64 %.val2.i.i.i.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i38.i.i, i64 noundef %i.vz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !56
  br label %.backedge.i.i

bb.dy:                                            ; preds = %bb.er, %bb.dx
  call void @llvm.experimental.noalias.scope.decl(metadata !135233)
  %i.wa = load ptr, ptr %i.vx, align 8, !alias.scope !135233, !nonnull !56, !noundef !56
  %i.wb = load ptr, ptr %i.vy, align 8, !alias.scope !135233, !nonnull !56, !noundef !56 ; 4 uses
  %i.wc = icmp eq ptr %i.wb, %i.wa
  br i1 %i.wc, label %bb.ee, label %bb.dz

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.eq, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTBO_BO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i83.i.i.i, %bb.eo, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTBO_BO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit69.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTBY_BY_EEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.ew
  %lpad.loopexit.split-lp955 = landingpad { ptr, i32 }
          cleanup
  br label %.body150.i.i.i

.body150.i.i.i:                                   ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i153.i.i.i, %bb.fv, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i118.i.i.i, %.body59.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i102.i.i.i, %.loopexit.split-lp.i.i.i110.i.i.i
  %eh.lpad-body151.i.i.i = phi { ptr, i32 } [ %eh.lpad-body60.i.i, %.body59.i.i ], [ %i.ago, %bb.fv ], [ %lpad.loopexit.i.i.i111.i.i.i, %.loopexit.split-lp.i.i.i110.i.i.i ], [ %lpad.phi22.i.i.i104.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i102.i.i.i ], [ %eh.lpad-body60.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i118.i.i.i ], [ %i.ago, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i153.i.i.i ], [ %lpad.loopexit.split-lp955, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtBE_9into_iter8IntoIterTB19_B19_EEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #63
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

bb.dz:                                            ; preds = %bb.dy
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store ptr %i.wd, ptr %i.vy, align 8, !alias.scope !135233
  %i.we = load i32, ptr %i.wb, align 4, !noalias !135234, !noundef !56 ; 4 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.wg = load i32, ptr %i.wf, align 4, !noalias !135234, !noundef !56 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135235)
  %i.wh = load i64, ptr %i.lm, align 8, !alias.scope !135236, !noalias !135104, !noundef !56
  %i.wi = icmp eq i64 %i.wh, 0
  br i1 %i.wi, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTBO_BO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.val.i52.i.i.i = load i64, ptr %i.ln, align 8, !alias.scope !135237, !noalias !135104, !noundef !56
  %i.wj = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !135238, !noundef !56
  %i.wk = zext i32 %i.wg to i64                   ; 3 uses
  %i.wl = xor i64 %.val.i52.i.i.i, %i.wk
  %i.wm = zext i64 %i.wl to i128
  %i.wn = zext i64 %i.wj to i128
  %i.wo = mul nuw i128 %i.wn, %i.wm               ; 2 uses
  %i.wp = lshr i128 %i.wo, 64
  %i.wq = xor i128 %i.wp, %i.wo
  %i.wr = trunc i128 %i.wq to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135239)
  call void @llvm.experimental.noalias.scope.decl(metadata !135240)
  %i.ws = lshr i64 %i.wr, 57
  %i.wt = trunc nuw nsw i64 %i.ws to i8
  %i.wu = load i64, ptr %i.lo, align 8, !alias.scope !135241, !noalias !135104, !noundef !56 ; 2 uses
  %i.wv = load ptr, ptr %i.ei, align 8, !alias.scope !135241, !noalias !135104, !nonnull !56, !noundef !56 ; 2 uses
  %i.ww = insertelement <16 x i8> poison, i8 %i.wt, i64 0
  %i.wx = shufflevector <16 x i8> %i.ww, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ed, %bb.ea
  %.sroa.011.0.i.i.i.i.i.i = phi i64 [ 0, %bb.ea ], [ %i.xo, %bb.ed ]
  %.pn.i.i.i.i.i = phi i64 [ %i.wr, %bb.ea ], [ %i.xp, %bb.ed ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.wu ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wv, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.wy, align 1, !noalias !135242 ; 2 uses
  %i.wz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.wx
  %i.xa = bitcast <16 x i1> %i.wz to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.xa, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i37.i.i, label %.lr.ph.i.i53.i.i.i

.lr.ph.i.i53.i.i.i:                               ; preds = %bb.eb, %bb.ec
  %.sroa.05.0.i31.i.i.i.i.i = phi i16 [ %i.xn, %bb.ec ], [ %i.xa, %bb.eb ] ; 3 uses
  %i.xb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i, i1 true)
  %i.xc = zext nneg i16 %i.xb to i64
  %i.xd = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.xc
  %i.xe = and i64 %i.xd, %i.wu
  %i.xf = sub nsw i64 0, %i.xe
  %i.xg = getelementptr inbounds [12 x i8], ptr %i.wv, i64 %i.xf ; 3 uses
  %i.xh = getelementptr inbounds i8, ptr %i.xg, i64 -12
  %.val2.i.i.i.i.i.i = load i32, ptr %i.xh, align 4, !noalias !135243, !noundef !56
  %i.xi = icmp eq i32 %i.wg, %.val2.i.i.i.i.i.i
  br i1 %i.xi, label %bb.em, label %bb.ec, !prof !66

._crit_edge.i.i.i37.i.i:                          ; preds = %bb.ec, %bb.eb
  %i.xj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.xk = bitcast <16 x i1> %i.xj to i16
  %i.xl = icmp eq i16 %i.xk, 0
  br i1 %i.xl, label %bb.ed, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTBO_BO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i, !prof !60

bb.ec:                                            ; preds = %.lr.ph.i.i53.i.i.i
  %i.xm = add i16 %.sroa.05.0.i31.i.i.i.i.i, -1
  %i.xn = and i16 %i.xm, %.sroa.05.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i36.i.i = icmp eq i16 %i.xn, 0
  br i1 %.not.i.not.i.i.i36.i.i, label %._crit_edge.i.i.i37.i.i, label %.lr.ph.i.i53.i.i.i

bb.ed:                                            ; preds = %._crit_edge.i.i.i37.i.i
  %i.xo = add i64 %.sroa.011.0.i.i.i.i.i.i, 16    ; 2 uses
  %i.xp = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.xo
  br label %bb.eb

bb.ee:                                            ; preds = %bb.dy
  %i.xq = add nsw i64 %i.vt, -1                   ; 6 uses
  store i64 %i.xq, ptr %i.ll, align 8, !noalias !135175
  %i.xr = load i64, ptr %i.u, align 8, !range !59, !noalias !135175, !noundef !56
  %i.xs = icmp ult i64 %i.xq, %i.xr
  call void @llvm.assume(i1 %i.xs)
  %i.xt = icmp ult i64 %i.vt, 230584300921369397
  call void @llvm.assume(i1 %i.xt)
  %i.xu = getelementptr inbounds nuw [40 x i8], ptr %i.vs, i64 %i.xq ; 2 uses
  %.sroa.4179.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %.sroa.4179.0.copyload.i.i.i = load ptr, ptr %.sroa.4179.0..sroa_idx.i.i.i, align 8 ; 3 uses
  %.sroa.6181.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.xu, i64 24
  %.sroa.6181.0.copyload.i.i.i = load i64, ptr %.sroa.6181.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.xv = icmp eq ptr %.sroa.4179.0.copyload.i.i.i, null
  %i.xw = icmp eq i64 %.sroa.6181.0.copyload.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.xv, i1 true, i1 %i.xw
  br i1 %or.cond.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTBY_BY_EEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i: ; preds = %bb.ee
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4179.0.copyload.i.i.i) ]
  %i.xx = shl nuw i64 %.sroa.6181.0.copyload.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4179.0.copyload.i.i.i, i64 noundef %i.xx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !135244
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTBY_BY_EEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTBY_BY_EEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !135175
  store ptr %i.at, ptr %i.q, align 8, !noalias !135175
  store i32 0, ptr %i.lv, align 8, !noalias !135175
  store i32 %i.vw, ptr %.sroa.423.0..sroa_idx.i.i.i, align 4, !noalias !135175
  %i.xy = invoke fastcc noundef zeroext i1 @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar9is_planarRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEB2b_NtB1b_10UndirectedEEs_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(416) %i.at, ptr noalias nofree noundef align 4 captures(address) dereferenceable(12) %i.lv)
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ef:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTBY_BY_EEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !135175
  br i1 %i.xy, label %.loopexit197.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.experimental.noalias.scope.decl(metadata !135245)
  %i.xz = load i64, ptr %i.lm, align 8, !alias.scope !135246, !noalias !135104, !noundef !56
  %i.ya = icmp eq i64 %i.xz, 0
  br i1 %i.ya, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTBO_BO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit69.thread.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.val.i54.i.i.i = load i64, ptr %i.ln, align 8, !alias.scope !135247, !noalias !135104, !noundef !56
  %i.yb = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !135248, !noundef !56
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx6planar22___pyfunction_is_planar:bb.a
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fh, %bb.fe
  %.sroa.011.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.fe ], [ %i.adj, %bb.fh ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.ack, %bb.fe ], [ %i.adk, %bb.fh ]
  %.sroa.01.0.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.acn ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aco, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.acr, align 1, !noalias !135287 ; 2 uses
  %i.acs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, %i.acq
  %i.act = bitcast <16 x i1> %i.acs to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i = icmp eq i16 %i.act, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ff, %bb.fg
  %.sroa.05.0.i31.i.i.i.i.i.i.i = phi i16 [ %i.adi, %bb.fg ], [ %i.act, %bb.ff ] ; 3 uses
  %i.acu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i, i1 true)
  %i.acv = zext nneg i16 %i.acu to i64
  %i.acw = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.acv
  %i.acx = and i64 %i.acw, %i.acn
  %i.acy = sub nsw i64 0, %i.acx
  %i.acz = getelementptr inbounds [16 x i8], ptr %i.aco, i64 %i.acy ; 3 uses
  %i.ada = getelementptr inbounds i8, ptr %i.acz, i64 -16
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.ada, align 4, !noalias !135288, !noundef !56
  %i.adb = getelementptr i8, ptr %i.acz, i64 -12
  %.val3.i.i.i.i.i.i.i.i = load i32, ptr %i.adb, align 4, !noalias !135288
  %i.adc = icmp eq i32 %.val2.i.i.i.i.i.i.i.i, %i.abq
  %i.add = icmp eq i32 %i.abr, %.val3.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.adc, i1 %i.add, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %bb.fi, label %bb.fg, !prof !66

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.fg, %bb.ff
  %i.ade = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, splat (i8 -1)
  %i.adf = bitcast <16 x i1> %i.ade to i16
  %i.adg = icmp eq i16 %i.adf, 0
  br i1 %i.adg, label %bb.fh, label %select.unfold.i19.i.i.i.i.invoke, !prof !60

bb.fg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.adh = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i, -1
  %i.adi = and i16 %i.adh, %.sroa.05.0.i31.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i56.i.i = icmp eq i16 %i.adi, 0
  br i1 %.not.i.not.i.i.i.i.i56.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.fh:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.adj = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.adk = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.adj
  br label %bb.ff

bb.fi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.adl = getelementptr inbounds i8, ptr %i.acz, i64 -8
  %i.adm = load i64, ptr %i.adl, align 8, !noalias !135282, !noundef !56
  %i.adn = xor i64 %.val.i.i.i.i55.i.i, %.val10.i.i.i.i
  %i.ado = zext i64 %i.adn to i128
  %i.adp = mul nuw i128 %i.ado, %i.abv            ; 2 uses
  %i.adq = lshr i128 %i.adp, 64
  %i.adr = xor i128 %i.adq, %i.adp
  %i.ads = trunc i128 %i.adr to i64               ; 2 uses
  %i.adt = lshr i64 %i.ads, 57
  %i.adu = trunc nuw nsw i64 %i.adt to i8
  %i.adv = insertelement <16 x i8> poison, i8 %i.adu, i64 0
  %i.adw = shufflevector <16 x i8> %i.adv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fl, %bb.fi
  %.sroa.011.0.i.i.i.i7.i.i.i.i = phi i64 [ 0, %bb.fi ], [ %i.aep, %bb.fl ]
  %.pn.i.i.i8.i.i.i.i = phi i64 [ %i.ads, %bb.fi ], [ %i.aeq, %bb.fl ]
  %.sroa.01.0.i.i.i.i9.i.i.i.i = and i64 %.pn.i.i.i8.i.i.i.i, %i.acn ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.aco, i64 %.sroa.01.0.i.i.i.i9.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i10.i.i.i.i = load <16 x i8>, ptr %i.adx, align 1, !noalias !135289 ; 2 uses
  %i.ady = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i.i.i.i, %i.adw
  %i.adz = bitcast <16 x i1> %i.ady to i16        ; 2 uses
  %.not.i.not30.i.i.i11.i.i.i.i = icmp eq i16 %i.adz, 0
  br i1 %.not.i.not30.i.i.i11.i.i.i.i, label %._crit_edge.i.i.i18.i.i.i.i, label %.lr.ph.i.i.i12.i.i.i.i

.lr.ph.i.i.i12.i.i.i.i:                           ; preds = %bb.fj, %bb.fk
  %.sroa.05.0.i31.i.i.i13.i.i.i.i = phi i16 [ %i.aeo, %bb.fk ], [ %i.adz, %bb.fj ] ; 3 uses
  %i.aea = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i.i.i.i, i1 true)
  %i.aeb = zext nneg i16 %i.aea to i64
  %i.aec = add i64 %.sroa.01.0.i.i.i.i9.i.i.i.i, %i.aeb
  %i.aed = and i64 %i.aec, %i.acn
  %i.aee = sub nsw i64 0, %i.aed
  %i.aef = getelementptr inbounds [16 x i8], ptr %i.aco, i64 %i.aee ; 3 uses
  %i.aeg = getelementptr inbounds i8, ptr %i.aef, i64 -16
  %.val2.i.i.i.i14.i.i.i.i = load i32, ptr %i.aeg, align 4, !noalias !135290, !noundef !56
  %i.aeh = getelementptr i8, ptr %i.aef, i64 -12
  %.val3.i.i.i.i15.i.i.i.i = load i32, ptr %i.aeh, align 4, !noalias !135290
  %i.aei = icmp eq i32 %.val2.i.i.i.i14.i.i.i.i, %i.acc
  %i.aej = icmp eq i32 %.val3.i.i.i.i15.i.i.i.i, %i.ace
  %spec.select.i.i.i.i.i.i.i16.i.i.i.i = select i1 %i.aei, i1 %i.aej, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i16.i.i.i.i, label %bb.fm, label %bb.fk, !prof !66

._crit_edge.i.i.i18.i.i.i.i:                      ; preds = %bb.fk, %bb.fj
  %i.aek = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i.i.i.i, splat (i8 -1)
  %i.ael = bitcast <16 x i1> %i.aek to i16
  %i.aem = icmp eq i16 %i.ael, 0
  br i1 %i.aem, label %bb.fl, label %select.unfold.i19.i.i.i.i.invoke, !prof !60

bb.fk:                                            ; preds = %.lr.ph.i.i.i12.i.i.i.i
  %i.aen = add i16 %.sroa.05.0.i31.i.i.i13.i.i.i.i, -1
  %i.aeo = and i16 %i.aen, %.sroa.05.0.i31.i.i.i13.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i17.i.i.i.i = icmp eq i16 %i.aeo, 0
  br i1 %.not.i.not.i.i.i17.i.i.i.i, label %._crit_edge.i.i.i18.i.i.i.i, label %.lr.ph.i.i.i12.i.i.i.i

bb.fl:                                            ; preds = %._crit_edge.i.i.i18.i.i.i.i
  %i.aep = add i64 %.sroa.011.0.i.i.i.i7.i.i.i.i, 16 ; 2 uses
  %i.aeq = add i64 %.sroa.01.0.i.i.i.i9.i.i.i.i, %i.aep
  br label %bb.fj

select.unfold.i19.i.i.i.i.invoke:                 ; preds = %.lr.ph937, %._crit_edge.i.i.i.i.i.i.i, %._crit_edge.i.i.i18.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1256) #60
          to label %select.unfold.i19.i.i.i.i.cont unwind label %bb.fn, !noalias !135282

select.unfold.i19.i.i.i.i.cont:                   ; preds = %select.unfold.i19.i.i.i.i.invoke
  unreachable

bb.fm:                                            ; preds = %.lr.ph.i.i.i12.i.i.i.i
  %i.aer = getelementptr inbounds i8, ptr %i.aef, i64 -8
  %i.aes = load i64, ptr %i.aer, align 8, !noalias !135282, !noundef !56
  %i.aet = icmp ult i64 %i.adm, %i.aes
  br i1 %i.aet, label %bb.fd, label %._crit_edge938

._crit_edge938:                                   ; preds = %bb.fd, %bb.fm, %bb.fc
  %.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %.sroa.6.0.copyload.pre.i117.i.i.i, %bb.fc ], [ %.sroa.6.0.copyload.pre.i117.i.i.i, %bb.fd ], [ %.sroa.0.0.i.i.i.i935, %bb.fm ]
  store i64 %i.abp, ptr %.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !135280, !noalias !135291
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB18_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4T_5types3any5PyAnyEB4O_NtB1d_10UndirectedENCINvB2X_9is_planarB4d_Es_0NtB2X_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.fn:                                            ; preds = %select.unfold.i19.i.i.i.i.invoke
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  store i64 %i.abp, ptr %.sroa.0.0.i.i.i.i935, align 4, !alias.scope !135280, !noalias !135292
  br label %.body59.i.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB18_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4T_5types3any5PyAnyEB4O_NtB1d_10UndirectedENCINvB2X_9is_planarB4d_Es_0NtB2X_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %._crit_edge938, %.noexc58.i.i
  %.sroa.0.0.i54.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %.sroa.0.0.i54.i.i, %i.abl
  br i1 %.not.i.i.i27, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1n_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1m_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1p_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB57_5types3any5PyAnyEB52_NtB1r_10UndirectedENCINvB3b_9is_planarB4r_Es_0NtB3b_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.fb

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fb, %bb.ez
  %lpad.loopexit.split-lp949 = landingpad { ptr, i32 }
          cleanup
  br label %.body59.i.i

.body59.i.i:                                      ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.fn
  %eh.lpad-body60.i.i = phi { ptr, i32 } [ %i.aeu, %bb.fn ], [ %lpad.loopexit.split-lp949, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aev = icmp eq i64 %.sroa.0.0.copyload.pre.i116.i.i.i, 0
  br i1 %i.aev, label %.body150.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i118.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i118.i.i.i: ; preds = %.body59.i.i
  %i.aew = shl nuw i64 %.sroa.0.0.copyload.pre.i116.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.pre.i117.i.i.i, i64 noundef %i.aew, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !135279
  br label %.body150.i.i.i

.thread.sink.split.i91.i.i.i:                     ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarE0NCB6V_s_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread34.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarE0NCB6V_s_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i
  %.sroa.0.018.ph.ph.i92.i.i.i = phi i64 [ 4, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarE0NCB6V_s_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread34.i.i.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarE0NCB6V_s_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i ]
  %.sroa.6.017.ph.ph.i93.i.i.i = phi ptr [ %i.aas, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarE0NCB6V_s_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread34.i.i.i.i ], [ inttoptr (i64 4 to ptr), %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarE0NCB6V_s_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i ]
  %.sroa.11.016.ph.ph.i94.i.i.i = phi i64 [ 1, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarE0NCB6V_s_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread34.i.i.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtBX_12stable_graph5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3J_5types3any5PyAnyENtBZ_10UndirectedENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar28edges_filtered_and_sorted_byRINtB3f_11StableGraphB3E_B3E_B4F_ENCINvB52_25lr_visit_ordered_dfs_treeB6l_NCINvB52_9is_planarB6l_Es_0NtB52_9NonPlanarE0NCB6V_s_0jE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !135267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !135259
  br label %.loopexit.i.i.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1n_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1m_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1p_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB57_5types3any5PyAnyEB52_NtB1r_10UndirectedENCINvB3b_9is_planarB4r_Es_0NtB3b_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB18_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4T_5types3any5PyAnyEB4O_NtB1d_10UndirectedENCINvB2X_9is_planarB4d_Es_0NtB2X_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !135277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !135259
  %i.aex = icmp ne i64 %i.aay, 1152921504606846975
  call void @llvm.assume(i1 %i.aex)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fq, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1n_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1m_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1p_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB57_5types3any5PyAnyEB52_NtB1r_10UndirectedENCINvB3b_9is_planarB4r_Es_0NtB3b_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %indvar1162 = phi i64 [ %indvar.next1163, %bb.fq ], [ 0, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1n_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1m_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1p_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB57_5types3any5PyAnyEB52_NtB1r_10UndirectedENCINvB3b_9is_planarB4r_Es_0NtB3b_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 3 uses
  %.sroa.0.027.i.i119.i.i.i = phi i64 [ %i.afp, %bb.fq ], [ 1, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1n_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1m_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1p_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB57_5types3any5PyAnyEB52_NtB1r_10UndirectedENCINvB3b_9is_planarB4r_Es_0NtB3b_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 12 uses
  %i.aey = getelementptr [8 x i8], ptr %.sroa.6.0.copyload.pre.i117.i.i.i, i64 %.sroa.0.027.i.i119.i.i.i ; 4 uses
  %i.aez = getelementptr i8, ptr %i.aey, i64 -8
  %.val13.i.i120.i.i.i = load i32, ptr %i.aey, align 4, !noalias !135293, !noundef !56
  %i.afa = getelementptr i8, ptr %i.aey, i64 4
  %.val14.i.i121.i.i.i = load i32, ptr %i.afa, align 4, !noalias !135293
  %.val15.i.i122.i.i.i = load i32, ptr %i.aez, align 4, !noalias !135293, !noundef !56
  %i.afb = getelementptr i8, ptr %i.aey, i64 -4
  %.val16.i.i123.i.i.i = load i32, ptr %i.afb, align 4, !noalias !135293
  %i.afc = icmp eq i32 %.val13.i.i120.i.i.i, %.val15.i.i122.i.i.i
  %i.afd = icmp eq i32 %.val14.i.i121.i.i.i, %.val16.i.i123.i.i.i
  %spec.select.i.i.i.i124.i.i.i = select i1 %i.afc, i1 %i.afd, i1 false
  br i1 %spec.select.i.i.i.i124.i.i.i, label %.preheader.i.i126.i.i.i, label %bb.fq

.preheader.i.i126.i.i.i:                          ; preds = %bb.fo
  %i.afe = icmp samesign ult i64 %.sroa.0.027.i.i119.i.i.i, %i.aay
  br i1 %i.afe, label %.lr.ph.i.i127.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph.i.i127.i.i.i.preheader:                    ; preds = %.preheader.i.i126.i.i.i
  %i.aff = sub i64 %indvar1159, %indvar1162
  %.neg = add i64 %indvar1162, 1
  %xtraiter1165 = and i64 %i.aff, 1
  %lcmp.mod1166.not = icmp eq i64 %xtraiter1165, 0
  br i1 %lcmp.mod1166.not, label %.lr.ph.i.i127.i.i.i.prol.loopexit, label %.lr.ph.i.i127.i.i.i.prol

.lr.ph.i.i127.i.i.i.prol:                         ; preds = %.lr.ph.i.i127.i.i.i.preheader
  %.sroa.5.030.i.i130.i.i.i.prol = add nuw nsw i64 %.sroa.0.027.i.i119.i.i.i, 1 ; 3 uses
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload.pre.i117.i.i.i, i64 %.sroa.5.030.i.i130.i.i.i.prol ; 2 uses
  %i.afh = getelementptr [8 x i8], ptr %.sroa.6.0.copyload.pre.i117.i.i.i, i64 %.sroa.0.027.i.i119.i.i.i ; 2 uses
  %i.afi = getelementptr i8, ptr %i.afh, i64 -8
  %i.afj = load <2 x i32>, ptr %i.afg, align 4, !noalias !135293
  %i.afk = load <2 x i32>, ptr %i.afi, align 4, !noalias !135293
  %i.afl = icmp eq <2 x i32> %i.afj, %i.afk       ; 2 uses
  %11 = extractelement <2 x i1> %i.afl, i64 0
  %12 = extractelement <2 x i1> %i.afl, i64 1
  %spec.select.i.i17.i.i135.i.i.i.prol = select i1 %11, i1 %12, i1 false
  br i1 %spec.select.i.i17.i.i135.i.i.i.prol, label %.lr.ph.i.i127.i.i.i.prol.loopexit, label %bb.fp

bb.fp:                                            ; preds = %.lr.ph.i.i127.i.i.i.prol
  %i.afm = load i64, ptr %i.afg, align 4, !noalias !135293
  store i64 %i.afm, ptr %i.afh, align 4, !noalias !135293
  %i.afn = add nuw i64 %.sroa.0.027.i.i119.i.i.i, 1 ; 2 uses
  br label %.lr.ph.i.i127.i.i.i.prol.loopexit

.lr.ph.i.i127.i.i.i.prol.loopexit:                ; preds = %.lr.ph.i.i127.i.i.i.prol, %bb.fp, %.lr.ph.i.i127.i.i.i.preheader
  %.sroa.11.1.i.i136.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i127.i.i.i.preheader ], [ %i.afn, %bb.fp ], [ %.sroa.0.027.i.i119.i.i.i, %.lr.ph.i.i127.i.i.i.prol ]
  %.sroa.5.030.i.in.i128.i.i.i.unr = phi i64 [ %.sroa.0.027.i.i119.i.i.i, %.lr.ph.i.i127.i.i.i.preheader ], [ %.sroa.5.030.i.i130.i.i.i.prol, %bb.fp ], [ %.sroa.5.030.i.i130.i.i.i.prol, %.lr.ph.i.i127.i.i.i.prol ]
  %.sroa.11.029.i.i129.i.i.i.unr = phi i64 [ %.sroa.0.027.i.i119.i.i.i, %.lr.ph.i.i127.i.i.i.preheader ], [ %i.afn, %bb.fp ], [ %.sroa.0.027.i.i119.i.i.i, %.lr.ph.i.i127.i.i.i.prol ]
  %i.afo = icmp eq i64 %indvar1159, %.neg
  br i1 %i.afo, label %.loopexit.i.i.i, label %.lr.ph.i.i127.i.i.i

bb.fq:                                            ; preds = %bb.fo
  %i.afp = add nuw nsw i64 %.sroa.0.027.i.i119.i.i.i, 1
  %.not.i.i125.i.i.i = icmp eq i64 %.sroa.0.027.i.i119.i.i.i, %i.aay
  %indvar.next1163 = add i64 %indvar1162, 1
  br i1 %.not.i.i125.i.i.i, label %.loopexit.i.i.i, label %bb.fo

.lr.ph.i.i127.i.i.i:                              ; preds = %.lr.ph.i.i127.i.i.i.prol.loopexit, %bb.ft
  %.sroa.5.030.i.in.i128.i.i.i = phi i64 [ %.sroa.5.030.i.i130.i.i.i.1, %bb.ft ], [ %.sroa.5.030.i.in.i128.i.i.i.unr, %.lr.ph.i.i127.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.11.029.i.i129.i.i.i = phi i64 [ %.sroa.11.1.i.i136.i.i.i.1, %bb.ft ], [ %.sroa.11.029.i.i129.i.i.i.unr, %.lr.ph.i.i127.i.i.i.prol.loopexit ] ; 3 uses
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload.pre.i117.i.i.i, i64 %.sroa.5.030.i.in.i128.i.i.i
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 8 ; 2 uses
  %i.afs = getelementptr [8 x i8], ptr %.sroa.6.0.copyload.pre.i117.i.i.i, i64 %.sroa.11.029.i.i129.i.i.i ; 2 uses
  %i.aft = getelementptr i8, ptr %i.afs, i64 -8
  %i.afu = load <2 x i32>, ptr %i.afr, align 4, !noalias !135293
  %i.afv = load <2 x i32>, ptr %i.aft, align 4, !noalias !135293
  %i.afw = icmp eq <2 x i32> %i.afu, %i.afv       ; 2 uses
  %13 = extractelement <2 x i1> %i.afw, i64 0
  %14 = extractelement <2 x i1> %i.afw, i64 1
  %spec.select.i.i17.i.i135.i.i.i = select i1 %13, i1 %14, i1 false
  br i1 %spec.select.i.i17.i.i135.i.i.i, label %.lr.ph.i.i127.i.i.i.1, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph.i.i127.i.i.i
  %i.afx = load i64, ptr %i.afr, align 4, !noalias !135293
  store i64 %i.afx, ptr %i.afs, align 4, !noalias !135293
  %i.afy = add i64 %.sroa.11.029.i.i129.i.i.i, 1
  br label %.lr.ph.i.i127.i.i.i.1

.lr.ph.i.i127.i.i.i.1:                            ; preds = %bb.fr, %.lr.ph.i.i127.i.i.i
  %.sroa.11.1.i.i136.i.i.i = phi i64 [ %i.afy, %bb.fr ], [ %.sroa.11.029.i.i129.i.i.i, %.lr.ph.i.i127.i.i.i ] ; 3 uses
  %.sroa.5.030.i.i130.i.i.i.1 = add nuw nsw i64 %.sroa.5.030.i.in.i128.i.i.i, 2 ; 3 uses
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload.pre.i117.i.i.i, i64 %.sroa.5.030.i.i130.i.i.i.1 ; 2 uses
  %i.aga = getelementptr [8 x i8], ptr %.sroa.6.0.copyload.pre.i117.i.i.i, i64 %.sroa.11.1.i.i136.i.i.i ; 2 uses
  %i.agb = getelementptr i8, ptr %i.aga, i64 -8
  %i.agc = load <2 x i32>, ptr %i.afz, align 4, !noalias !135293
  %i.agd = load <2 x i32>, ptr %i.agb, align 4, !noalias !135293
  %i.age = icmp eq <2 x i32> %i.agc, %i.agd       ; 2 uses
  %15 = extractelement <2 x i1> %i.age, i64 0
  %16 = extractelement <2 x i1> %i.age, i64 1
  %spec.select.i.i17.i.i135.i.i.i.1 = select i1 %15, i1 %16, i1 false
  br i1 %spec.select.i.i17.i.i135.i.i.i.1, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph.i.i127.i.i.i.1
  %i.agf = load i64, ptr %i.afz, align 4, !noalias !135293
  store i64 %i.agf, ptr %i.aga, align 4, !noalias !135293
  %i.agg = add i64 %.sroa.11.1.i.i136.i.i.i, 1
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.lr.ph.i.i127.i.i.i.1
  %.sroa.11.1.i.i136.i.i.i.1 = phi i64 [ %i.agg, %bb.fs ], [ %.sroa.11.1.i.i136.i.i.i, %.lr.ph.i.i127.i.i.i.1 ] ; 2 uses
  %exitcond.not.i.i137.i.i.i.1 = icmp eq i64 %.sroa.5.030.i.i130.i.i.i.1, %i.aay
  br i1 %exitcond.not.i.i137.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph.i.i127.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.fq, %.lr.ph.i.i127.i.i.i.prol.loopexit, %bb.ft, %.preheader.i.i126.i.i.i, %.thread.sink.split.i91.i.i.i
  %.sroa.6.01723.i95.i.i.i = phi ptr [ %.sroa.6.017.ph.ph.i93.i.i.i, %.thread.sink.split.i91.i.i.i ], [ %.sroa.6.0.copyload.pre.i117.i.i.i, %.lr.ph.i.i127.i.i.i.prol.loopexit ], [ %.sroa.6.0.copyload.pre.i117.i.i.i, %.preheader.i.i126.i.i.i ], [ %.sroa.6.0.copyload.pre.i117.i.i.i, %bb.ft ], [ %.sroa.6.0.copyload.pre.i117.i.i.i, %bb.fq ] ; 5 uses
  %.sroa.0.01822.i96.i.i.i = phi i64 [ %.sroa.0.018.ph.ph.i92.i.i.i, %.thread.sink.split.i91.i.i.i ], [ %.sroa.0.0.copyload.pre.i116.i.i.i, %.lr.ph.i.i127.i.i.i.prol.loopexit ], [ %.sroa.0.0.copyload.pre.i116.i.i.i, %.preheader.i.i126.i.i.i ], [ %.sroa.0.0.copyload.pre.i116.i.i.i, %bb.ft ], [ %.sroa.0.0.copyload.pre.i116.i.i.i, %bb.fq ] ; 3 uses
  %.sroa.11.1.i97.i.i.i = phi i64 [ %.sroa.11.016.ph.ph.i94.i.i.i, %.thread.sink.split.i91.i.i.i ], [ %.sroa.11.1.i.i136.i.i.i.1, %bb.ft ], [ %.sroa.0.027.i.i119.i.i.i, %.preheader.i.i126.i.i.i ], [ %.sroa.11.1.i.i136.i.i.i.lcssa.unr, %.lr.ph.i.i127.i.i.i.prol.loopexit ], [ %i.abf, %bb.fq ] ; 2 uses
  %i.agh = icmp ult i64 %.sroa.11.1.i97.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.agh)
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.01723.i95.i.i.i, i64 %.sroa.11.1.i97.i.i.i
  %i.agj = ptrtoint ptr %.sroa.6.01723.i95.i.i.i to i64
  %i.agk = ptrtoint ptr %i.agi to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !135175
  call void @llvm.experimental.noalias.scope.decl(metadata !135294)
  %i.agl = load i64, ptr %i.ll, align 8, !alias.scope !135294, !noalias !135175, !noundef !56 ; 3 uses
  %i.agm = load i64, ptr %i.u, align 8, !range !59, !alias.scope !135294, !noalias !135175, !noundef !56
  %i.agn = icmp eq i64 %i.agl, %i.agm
  br i1 %i.agn, label %bb.fu, label %bb.fw

bb.fu:                                            ; preds = %.loopexit.i.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtNtB7_3vec9into_iter8IntoIterTBN_BN_EEEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.fw unwind label %bb.fv, !noalias !135295

bb.fv:                                            ; preds = %bb.fu
  %i.ago = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agp = icmp eq i64 %.sroa.0.01822.i96.i.i.i, 0
  br i1 %i.agp, label %.body150.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i153.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i153.i.i.i: ; preds = %bb.fv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.01723.i95.i.i.i) ]
  %i.agq = shl nuw i64 %.sroa.0.01822.i96.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.01723.i95.i.i.i, i64 noundef %i.agq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !135296
  br label %.body150.i.i.i

bb.fw:                                            ; preds = %bb.fu, %.loopexit.i.i.i
  %i.agr = load ptr, ptr %i.lk, align 8, !alias.scope !135294, !noalias !135175, !nonnull !56, !noundef !56 ; 2 uses
  %i.ags = getelementptr inbounds nuw [40 x i8], ptr %i.agr, i64 %i.agl ; 5 uses
  store i32 %i.wg, ptr %i.ags, align 8, !noalias !135294
  %.sroa.4167.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  store ptr %.sroa.6.01723.i95.i.i.i, ptr %.sroa.4167.0..sroa_idx.i.i.i, align 8, !noalias !135294
  %.sroa.6168.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ags, i64 16
  store i64 %i.agj, ptr %.sroa.6168.0..sroa_idx.i.i.i, align 8, !noalias !135294
  %.sroa.6169.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ags, i64 24
  store i64 %.sroa.0.01822.i96.i.i.i, ptr %.sroa.6169.0..sroa_idx.i.i.i, align 8, !noalias !135294
  %.sroa.7170.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ags, i64 32
  store i64 %i.agk, ptr %.sroa.7170.0..sroa_idx.i.i.i, align 8, !noalias !135294
  %i.agt = add i64 %i.agl, 1                      ; 2 uses
  store i64 %i.agt, ptr %i.ll, align 8, !alias.scope !135294, !noalias !135175
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTBO_BO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit69.thread.i.i.i

.backedge.i.i:                                    ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtBE_9into_iter8IntoIterTB19_B19_EEEEECskcxRuJ53GpR_9rustworkx.exit81.sink.split.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB5_9into_iter8IntoIterTBG_BG_EEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !135175
  %.not.i.i = icmp eq ptr %i.ly, %i.kz
  br i1 %.not.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31.sink.split, label %bb.cg

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit53.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtBE_9into_iter8IntoIterTB19_B19_EEEEECskcxRuJ53GpR_9rustworkx.exit81.sink.split.i.thread.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB5_9into_iter8IntoIterTBG_BG_EEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i78.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !135175
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31.sink.split

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31.sink.split: ; preds = %.backedge.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit53.i.i
  %.ph = phi ptr [ @_Py_FalseStruct, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit53.i.i ], [ @_Py_TrueStruct, %.backedge.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ka, i64 noundef %i.jy, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !56
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31.sink.split, %bb.cb
  %i.agu = phi ptr [ @_Py_TrueStruct, %bb.cb ], [ %.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31.sink.split ] ; 2 uses
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar7LRStateRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2O_5types3any5PyAnyEB2J_NtB1J_10UndirectedEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(416) %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !135104
  call void @_Py_IncRef(ptr noundef nonnull %i.agu) #59, !noalias !135297
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.agu, ptr %i.agv, align 8
  store i64 0, ptr %0, align 8
  %i.agw = atomicrmw add ptr %i.bj, i64 -1 release, align 8 ; 0 uses
  br label %bb.fx

bb.fx:                                            ; preds = %bb.b, %.noexc21, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx7graphml12read_graphml(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 16               ; 3 uses
  %i.l = alloca [16 x i8], align 16               ; 3 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 3 uses
  %i.o = alloca [16 x i8], align 16               ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 3 uses
  %i.t = alloca [16 x i8], align 16               ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [72 x i8], align 8                ; 7 uses
  %i.x = alloca [64 x i8], align 8                ; 4 uses
  %i.y = alloca [72 x i8], align 8                ; 7 uses
  %i.z = alloca [48 x i8], align 8                ; 11 uses
  %i.aa = alloca [72 x i8], align 8               ; 6 uses
  %i.ab = alloca [136 x i8], align 8              ; 10 uses
  %i.ac = alloca [64 x i8], align 8               ; 4 uses
  %i.ad = alloca [72 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [136 x i8], align 8              ; 15 uses
  %.sroa.8644.i = alloca [128 x i8], align 8      ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 10 uses
  %i.ai = alloca [64 x i8], align 8               ; 4 uses
  %i.aj = alloca [72 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 11 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [88 x i8], align 8               ; 9 uses
  %.sroa.8637.i = alloca [80 x i8], align 8       ; 8 uses
  %i.ap = alloca [32 x i8], align 8               ; 14 uses
  %i.aq = alloca [64 x i8], align 8               ; 20 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 7 uses
  %i.av = alloca [72 x i8], align 8               ; 20 uses
  %i.aw = alloca [72 x i8], align 8               ; 7 uses
  %i.ax = alloca [64 x i8], align 8               ; 4 uses
  %i.ay = alloca [72 x i8], align 8               ; 7 uses
  %i.az = alloca [72 x i8], align 8               ; 6 uses
  %i.ba = alloca [88 x i8], align 8               ; 8 uses
  %i.bb = alloca [64 x i8], align 8               ; 4 uses
  %i.bc = alloca [72 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [136 x i8], align 8              ; 15 uses
  %.sroa.8616.i = alloca [128 x i8], align 8      ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 10 uses
  %i.bh = alloca [64 x i8], align 8               ; 4 uses
  %i.bi = alloca [72 x i8], align 8               ; 7 uses
  %i.bj = alloca [24 x i8], align 8               ; 11 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [88 x i8], align 8               ; 9 uses
  %.sroa.8.i = alloca [80 x i8], align 8          ; 8 uses
  %i.bo = alloca [32 x i8], align 8               ; 14 uses
  %i.bp = alloca [64 x i8], align 8               ; 20 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 7 uses
  %i.bu = alloca [72 x i8], align 8               ; 19 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [24 x i8], align 8               ; 4 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [24 x i8], align 8               ; 4 uses
  %i.bz = alloca [24 x i8], align 8               ; 4 uses
  %i.ca = alloca [16 x i8], align 8               ; 4 uses
  %i.cb = alloca [24 x i8], align 8               ; 4 uses
  %i.cc = alloca [48 x i8], align 8               ; 5 uses
  %i.cd = alloca [72 x i8], align 8               ; 6 uses
  %i.ce = alloca [96 x i8], align 8               ; 5 uses
  %i.cf = alloca [104 x i8], align 8              ; 10 uses
  %i.cg = alloca [104 x i8], align 8              ; 4 uses
  %i.ch = alloca [80 x i8], align 8               ; 4 uses
  %i.ci = alloca [8 x i8], align 8                ; 4 uses
  %i.cj = alloca [104 x i8], align 8              ; 15 uses
  %i.ck = alloca [16 x i8], align 16              ; 4 uses
  %.sroa.6.i.i = alloca [215 x i8], align 1       ; 5 uses
  %i.cl = alloca [208 x i8], align 8              ; 7 uses
  %i.cm = alloca [48 x i8], align 8               ; 9 uses
  %i.cn = alloca [16 x i8], align 8               ; 7 uses
  %i.co = alloca [16 x i8], align 16              ; 4 uses
  %i.cp = alloca [16 x i8], align 8               ; 7 uses
  %i.cq = alloca [48 x i8], align 8               ; 9 uses
  %i.cr = alloca [48 x i8], align 8               ; 9 uses
  %i.cs = alloca [120 x i8], align 8              ; 16 uses
  %i.ct = alloca [320 x i8], align 8              ; 16 uses
  %.sroa.26 = alloca [56 x i8], align 8           ; 12 uses
  %i.cu = alloca [144 x i8], align 8              ; 16 uses
  %.sroa.8111 = alloca [136 x i8], align 8        ; 8 uses
end_hunk_3
