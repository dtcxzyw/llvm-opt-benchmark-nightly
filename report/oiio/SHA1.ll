inline.NumInlined: 40
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11OpenImageIO4v3_15CSHA15FinalEv:bb.a
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !23
  %i.bc = lshr i32 %i.aw, 8
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 %i.bd, ptr %i.be, align 2, !tbaa !23
  %i.bf = trunc i32 %i.aw to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 99
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3  ; 4 uses
  %i.bj = lshr i32 %i.bi, 24
  %i.bk = trunc nuw i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %i.bk, ptr %i.bl, align 4, !tbaa !23
  %i.bm = lshr i32 %i.bi, 16
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !23
  %i.bp = lshr i32 %i.bi, 8
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 %i.bq, ptr %i.br, align 2, !tbaa !23
  %i.bs = trunc i32 %i.bi to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !3  ; 4 uses
  %i.bw = lshr i32 %i.bv, 24
  %i.bx = trunc nuw i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.bx, ptr %i.by, align 8, !tbaa !23
  %i.bz = lshr i32 %i.bv, 16
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !23
  %i.cc = lshr i32 %i.bv, 8
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %i.cd, ptr %i.ce, align 2, !tbaa !23
  %i.cf = trunc i32 %i.bv to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3  ; 4 uses
  %i.cj = lshr i32 %i.ci, 24
  %i.ck = trunc nuw i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 %i.ck, ptr %i.cl, align 4, !tbaa !23
  %i.cm = lshr i32 %i.ci, 16
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !23
  %i.cp = lshr i32 %i.ci, 8
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 %i.cq, ptr %i.cr, align 2, !tbaa !23
  %i.cs = trunc i32 %i.ci to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 111
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !3  ; 4 uses
  %i.cw = lshr i32 %i.cv, 24
  %i.cx = trunc nuw i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.cx, ptr %i.cy, align 8, !tbaa !23
  %i.cz = lshr i32 %i.cv, 16
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.da, ptr %i.db, align 1, !tbaa !23
  %i.dc = lshr i32 %i.cv, 8
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.dd, ptr %i.de, align 2, !tbaa !23
  %i.df = trunc i32 %i.cv to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA17GetHashEPh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i64 20, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_14SHA16digestB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [84 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14, !range !15, !noundef !16
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !10
  tail call void @_ZN11OpenImageIO4v3_15CSHA15FinalEv(ptr noundef nonnull align 8 dereferenceable(200) %i.e)
  store i8 1, ptr %i.b, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !23
  %i.h = load ptr, ptr %1, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.i = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA110ReportHashEPcNS1_11REPORT_TYPEE(ptr noundef nonnull readonly align 8 dereferenceable(200) %i.h, ptr noundef nonnull %i.a, i32 noundef 2)
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.g, align 8, !tbaa !27
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull %i.a, i64 noundef %i.k)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.f, align 8, !tbaa !23
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA113ReportHashStlERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11REPORT_TYPEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [84 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA110ReportHashEPcNS1_11REPORT_TYPEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef %2) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.f = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA1C2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.a, ptr %i.b, align 8, !tbaa !7
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 8, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.c, align 8, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA15ResetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(200) initializes((0, 28)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 8, !tbaa !3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.a, align 8, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 81 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.k, ptr noundef nonnull align 1 dereferenceable(64) %2, i64 64, i1 false)
  %i.l = xor i32 %i.g, %i.e
  %i.m = and i32 %i.l, %i.c
  %i.n = xor i32 %i.m, %i.g
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !7    ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)  ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !tbaa !23
  %i.r = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 5)
  %i.s = add i32 %i.r, 1518500249
  %i.t = add i32 %i.s, %i.i
  %i.u = add i32 %i.t, %i.n
  %i.v = add i32 %i.u, %i.q                       ; 5 uses
  %i.w = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 30) ; 4 uses
  %i.x = xor i32 %i.w, %i.e
  %i.y = and i32 %i.x, %i.a
  %i.z = xor i32 %i.y, %i.e
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !23
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac) ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !23
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 5)
  %i.af = add i32 %i.g, 1518500249
  %i.ag = add i32 %i.af, %i.z
  %i.ah = add i32 %i.ag, %i.ad
  %i.ai = add i32 %i.ah, %i.ae                    ; 5 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 30) ; 4 uses
  %i.ak = xor i32 %i.w, %i.aj
  %i.al = and i32 %i.v, %i.ak
  %i.am = xor i32 %i.al, %i.w
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !23
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap) ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !23
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 5)
  %i.as = add i32 %i.e, 1518500249
  %i.at = add i32 %i.as, %i.aq
  %i.au = add i32 %i.at, %i.am
  %i.av = add i32 %i.au, %i.ar                    ; 5 uses
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 30) ; 4 uses
  %i.ax = xor i32 %i.aw, %i.aj
  %i.ay = and i32 %i.ai, %i.ax
  %i.az = xor i32 %i.ay, %i.aj
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc) ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !23
  %i.be = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 5)
  %i.bf = add i32 %i.w, 1518500249
  %i.bg = add i32 %i.bf, %i.bd
  %i.bh = add i32 %i.bg, %i.az
  %i.bi = add i32 %i.bh, %i.be                    ; 5 uses
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 30) ; 4 uses
  %i.bk = xor i32 %i.bj, %i.aw
  %i.bl = and i32 %i.av, %i.bk
  %i.bm = xor i32 %i.bl, %i.aw
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !23
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp) ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !23
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 5)
  %i.bs = add i32 %i.aj, 1518500249
  %i.bt = add i32 %i.bs, %i.bq
  %i.bu = add i32 %i.bt, %i.bm
  %i.bv = add i32 %i.bu, %i.br                    ; 5 uses
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 30) ; 4 uses
  %i.bx = xor i32 %i.bw, %i.bj
  %i.by = and i32 %i.bi, %i.bx
  %i.bz = xor i32 %i.by, %i.bj
  %i.ca = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !23
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cc) ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !23
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 5)
  %i.cf = add i32 %i.aw, 1518500249
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = add i32 %i.cg, %i.bz
  %i.ci = add i32 %i.ch, %i.ce                    ; 5 uses
  %i.cj = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 30) ; 4 uses
  %i.ck = xor i32 %i.cj, %i.bw
  %i.cl = and i32 %i.bv, %i.ck
  %i.cm = xor i32 %i.cl, %i.bw
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !23
  %i.cq = tail call i32 @llvm.bswap.i32(i32 %i.cp) ; 2 uses
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !23
  %i.cr = tail call i32 @llvm.fshl.i32(i32 %i.ci, i32 %i.ci, i32 5)
  %i.cs = add i32 %i.bj, 1518500249
  %i.ct = add i32 %i.cs, %i.cq
  %i.cu = add i32 %i.ct, %i.cm
  %i.cv = add i32 %i.cu, %i.cr                    ; 5 uses
  %i.cw = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 30) ; 4 uses
  %i.cx = xor i32 %i.cw, %i.cj
  %i.cy = and i32 %i.ci, %i.cx
  %i.cz = xor i32 %i.cy, %i.cj
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !23
  %i.dd = tail call i32 @llvm.bswap.i32(i32 %i.dc) ; 2 uses
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !23
  %i.de = tail call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 5)
  %i.df = add i32 %i.bw, 1518500249
  %i.dg = add i32 %i.df, %i.dd
  %i.dh = add i32 %i.dg, %i.cz
  %i.di = add i32 %i.dh, %i.de                    ; 5 uses
  %i.dj = tail call i32 @llvm.fshl.i32(i32 %i.ci, i32 %i.ci, i32 30) ; 4 uses
  %i.dk = xor i32 %i.dj, %i.cw
  %i.dl = and i32 %i.cv, %i.dk
  %i.dm = xor i32 %i.dl, %i.cw
  %i.dn = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !23
  %i.dq = tail call i32 @llvm.bswap.i32(i32 %i.dp) ; 2 uses
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !23
  %i.dr = tail call i32 @llvm.fshl.i32(i32 %i.di, i32 %i.di, i32 5)
  %i.ds = add i32 %i.cj, 1518500249
  %i.dt = add i32 %i.ds, %i.dq
  %i.du = add i32 %i.dt, %i.dm
  %i.dv = add i32 %i.du, %i.dr                    ; 5 uses
  %i.dw = tail call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 30) ; 4 uses
  %i.dx = xor i32 %i.dw, %i.dj
  %i.dy = and i32 %i.di, %i.dx
  %i.dz = xor i32 %i.dy, %i.dj
  %i.ea = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 36 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !23
  %i.ed = tail call i32 @llvm.bswap.i32(i32 %i.ec) ; 2 uses
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !23
  %i.ee = tail call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 5)
  %i.ef = add i32 %i.cw, 1518500249
  %i.eg = add i32 %i.ef, %i.ed
  %i.eh = add i32 %i.eg, %i.dz
  %i.ei = add i32 %i.eh, %i.ee                    ; 5 uses
  %i.ej = tail call i32 @llvm.fshl.i32(i32 %i.di, i32 %i.di, i32 30) ; 4 uses
  %i.ek = xor i32 %i.ej, %i.dw
  %i.el = and i32 %i.dv, %i.ek
  %i.em = xor i32 %i.el, %i.dw
  %i.en = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !23
  %i.eq = tail call i32 @llvm.bswap.i32(i32 %i.ep) ; 2 uses
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !23
  %i.er = tail call i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 5)
  %i.es = add i32 %i.dj, 1518500249
  %i.et = add i32 %i.es, %i.eq
  %i.eu = add i32 %i.et, %i.em
  %i.ev = add i32 %i.eu, %i.er                    ; 5 uses
  %i.ew = tail call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 30) ; 4 uses
  %i.ex = xor i32 %i.ew, %i.ej
  %i.ey = and i32 %i.ei, %i.ex
  %i.ez = xor i32 %i.ey, %i.ej
  %i.fa = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 44 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !23
  %i.fd = tail call i32 @llvm.bswap.i32(i32 %i.fc) ; 2 uses
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !23
  %i.fe = tail call i32 @llvm.fshl.i32(i32 %i.ev, i32 %i.ev, i32 5)
  %i.ff = add i32 %i.dw, 1518500249
  %i.fg = add i32 %i.ff, %i.fd
  %i.fh = add i32 %i.fg, %i.ez
  %i.fi = add i32 %i.fh, %i.fe                    ; 5 uses
  %i.fj = tail call i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 30) ; 4 uses
  %i.fk = xor i32 %i.fj, %i.ew
  %i.fl = and i32 %i.ev, %i.fk
  %i.fm = xor i32 %i.fl, %i.ew
  %i.fn = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 48 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !23
  %i.fq = tail call i32 @llvm.bswap.i32(i32 %i.fp) ; 2 uses
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !23
  %i.fr = tail call i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fi, i32 5)
  %i.fs = add i32 %i.ej, 1518500249
  %i.ft = add i32 %i.fs, %i.fq
  %i.fu = add i32 %i.ft, %i.fm
  %i.fv = add i32 %i.fu, %i.fr                    ; 5 uses
  %i.fw = tail call i32 @llvm.fshl.i32(i32 %i.ev, i32 %i.ev, i32 30) ; 4 uses
  %i.fx = xor i32 %i.fw, %i.fj
  %i.fy = and i32 %i.fi, %i.fx
  %i.fz = xor i32 %i.fy, %i.fj
  %i.ga = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 52 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !23
  %i.gd = tail call i32 @llvm.bswap.i32(i32 %i.gc) ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !23
  %i.ge = tail call i32 @llvm.fshl.i32(i32 %i.fv, i32 %i.fv, i32 5)
  %i.gf = add i32 %i.ew, 1518500249
  %i.gg = add i32 %i.gf, %i.gd
  %i.gh = add i32 %i.gg, %i.fz
  %i.gi = add i32 %i.gh, %i.ge                    ; 5 uses
  %i.gj = tail call i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fi, i32 30) ; 4 uses
  %i.gk = xor i32 %i.gj, %i.fw
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh:bb.a
  %i.awr = xor i32 %i.awo, %i.awq                 ; 2 uses
  %i.aws = tail call i32 @llvm.fshl.i32(i32 %i.awr, i32 %i.awr, i32 1) ; 2 uses
  store i32 %i.aws, ptr %i.awp, align 4, !tbaa !23
  %i.awt = tail call i32 @llvm.fshl.i32(i32 %i.awc, i32 %i.awc, i32 5)
  %i.awu = add i32 %i.auo, -899497514
  %i.awv = add i32 %i.awu, %i.awf
  %i.aww = add i32 %i.awv, %i.awt
  %i.awx = add i32 %i.aww, %i.aws                 ; 5 uses
  %i.awy = tail call i32 @llvm.fshl.i32(i32 %i.avi, i32 %i.avi, i32 30) ; 3 uses
  %i.awz = xor i32 %i.awy, %i.awd
  %i.axa = xor i32 %i.awz, %i.awc
  %i.axb = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 60
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !23
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axb, i64 40
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !23
  %i.axg = xor i32 %i.axf, %i.axd
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axb, i64 16
  %i.axi = load i32, ptr %i.axh, align 4, !tbaa !23
  %i.axj = xor i32 %i.axg, %i.axi
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axb, i64 8 ; 2 uses
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !23
  %i.axm = xor i32 %i.axj, %i.axl                 ; 2 uses
  %i.axn = tail call i32 @llvm.fshl.i32(i32 %i.axm, i32 %i.axm, i32 1) ; 2 uses
  store i32 %i.axn, ptr %i.axk, align 4, !tbaa !23
  %i.axo = tail call i32 @llvm.fshl.i32(i32 %i.awx, i32 %i.awx, i32 5)
  %i.axp = add i32 %i.avj, -899497514
  %i.axq = add i32 %i.axp, %i.axa
  %i.axr = add i32 %i.axq, %i.axo
  %i.axs = add i32 %i.axr, %i.axn                 ; 5 uses
  %i.axt = tail call i32 @llvm.fshl.i32(i32 %i.awc, i32 %i.awc, i32 30) ; 3 uses
  %i.axu = xor i32 %i.axt, %i.awy
  %i.axv = xor i32 %i.axu, %i.awx
  %i.axw = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.axx = load i32, ptr %i.axw, align 4, !tbaa !23
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axw, i64 44
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !23
  %i.aya = xor i32 %i.axz, %i.axx
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axw, i64 20
  %i.ayc = load i32, ptr %i.ayb, align 4, !tbaa !23
  %i.ayd = xor i32 %i.aya, %i.ayc
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axw, i64 12 ; 2 uses
  %i.ayf = load i32, ptr %i.aye, align 4, !tbaa !23
  %i.ayg = xor i32 %i.ayd, %i.ayf                 ; 2 uses
  %i.ayh = tail call i32 @llvm.fshl.i32(i32 %i.ayg, i32 %i.ayg, i32 1) ; 2 uses
  store i32 %i.ayh, ptr %i.aye, align 4, !tbaa !23
  %i.ayi = tail call i32 @llvm.fshl.i32(i32 %i.axs, i32 %i.axs, i32 5)
  %i.ayj = add i32 %i.awd, -899497514
  %i.ayk = add i32 %i.ayj, %i.axv
  %i.ayl = add i32 %i.ayk, %i.ayi
  %i.aym = add i32 %i.ayl, %i.ayh                 ; 5 uses
  %i.ayn = tail call i32 @llvm.fshl.i32(i32 %i.awx, i32 %i.awx, i32 30) ; 3 uses
  %i.ayo = xor i32 %i.ayn, %i.axt
  %i.ayp = xor i32 %i.ayo, %i.axs
  %i.ayq = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 4
  %i.ays = load i32, ptr %i.ayr, align 4, !tbaa !23
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayq, i64 48
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !23
  %i.ayv = xor i32 %i.ayu, %i.ays
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayq, i64 24
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !23
  %i.ayy = xor i32 %i.ayv, %i.ayx
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayq, i64 16 ; 2 uses
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !23
  %i.azb = xor i32 %i.ayy, %i.aza                 ; 2 uses
  %i.azc = tail call i32 @llvm.fshl.i32(i32 %i.azb, i32 %i.azb, i32 1) ; 2 uses
  store i32 %i.azc, ptr %i.ayz, align 4, !tbaa !23
  %i.azd = tail call i32 @llvm.fshl.i32(i32 %i.aym, i32 %i.aym, i32 5)
  %i.aze = add i32 %i.awy, -899497514
  %i.azf = add i32 %i.aze, %i.ayp
  %i.azg = add i32 %i.azf, %i.azd
  %i.azh = add i32 %i.azg, %i.azc                 ; 5 uses
  %i.azi = tail call i32 @llvm.fshl.i32(i32 %i.axs, i32 %i.axs, i32 30) ; 3 uses
  %i.azj = xor i32 %i.azi, %i.ayn
  %i.azk = xor i32 %i.azj, %i.aym
  %i.azl = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 8
  %i.azn = load i32, ptr %i.azm, align 4, !tbaa !23
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azl, i64 52
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !23
  %i.azq = xor i32 %i.azp, %i.azn
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azl, i64 28
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !23
  %i.azt = xor i32 %i.azq, %i.azs
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azl, i64 20 ; 2 uses
  %i.azv = load i32, ptr %i.azu, align 4, !tbaa !23
  %i.azw = xor i32 %i.azt, %i.azv                 ; 2 uses
  %i.azx = tail call i32 @llvm.fshl.i32(i32 %i.azw, i32 %i.azw, i32 1) ; 2 uses
  store i32 %i.azx, ptr %i.azu, align 4, !tbaa !23
  %i.azy = tail call i32 @llvm.fshl.i32(i32 %i.azh, i32 %i.azh, i32 5)
  %i.azz = add i32 %i.axt, -899497514
  %i.baa = add i32 %i.azz, %i.azk
  %i.bab = add i32 %i.baa, %i.azy
  %i.bac = add i32 %i.bab, %i.azx                 ; 5 uses
  %i.bad = tail call i32 @llvm.fshl.i32(i32 %i.aym, i32 %i.aym, i32 30) ; 3 uses
  %i.bae = xor i32 %i.bad, %i.azi
  %i.baf = xor i32 %i.bae, %i.azh
  %i.bag = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 12
  %i.bai = load i32, ptr %i.bah, align 4, !tbaa !23
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bag, i64 56
  %i.bak = load i32, ptr %i.baj, align 4, !tbaa !23
  %i.bal = xor i32 %i.bak, %i.bai
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bag, i64 32
  %i.ban = load i32, ptr %i.bam, align 4, !tbaa !23
  %i.bao = xor i32 %i.bal, %i.ban
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bag, i64 24 ; 2 uses
  %i.baq = load i32, ptr %i.bap, align 4, !tbaa !23
  %i.bar = xor i32 %i.bao, %i.baq                 ; 2 uses
  %i.bas = tail call i32 @llvm.fshl.i32(i32 %i.bar, i32 %i.bar, i32 1) ; 2 uses
  store i32 %i.bas, ptr %i.bap, align 4, !tbaa !23
  %i.bat = tail call i32 @llvm.fshl.i32(i32 %i.bac, i32 %i.bac, i32 5)
  %i.bau = add i32 %i.ayn, -899497514
  %i.bav = add i32 %i.bau, %i.baf
  %i.baw = add i32 %i.bav, %i.bat
  %i.bax = add i32 %i.baw, %i.bas                 ; 5 uses
  %i.bay = tail call i32 @llvm.fshl.i32(i32 %i.azh, i32 %i.azh, i32 30) ; 3 uses
  %i.baz = xor i32 %i.bay, %i.bad
  %i.bba = xor i32 %i.baz, %i.bac
  %i.bbb = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 16
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !23
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbb, i64 60
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !23
  %i.bbg = xor i32 %i.bbf, %i.bbd
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbb, i64 36
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !23
  %i.bbj = xor i32 %i.bbg, %i.bbi
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbb, i64 28 ; 2 uses
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !23
  %i.bbm = xor i32 %i.bbj, %i.bbl                 ; 2 uses
  %i.bbn = tail call i32 @llvm.fshl.i32(i32 %i.bbm, i32 %i.bbm, i32 1) ; 2 uses
  store i32 %i.bbn, ptr %i.bbk, align 4, !tbaa !23
  %i.bbo = tail call i32 @llvm.fshl.i32(i32 %i.bax, i32 %i.bax, i32 5)
  %i.bbp = add i32 %i.azi, -899497514
  %i.bbq = add i32 %i.bbp, %i.bba
  %i.bbr = add i32 %i.bbq, %i.bbo
  %i.bbs = add i32 %i.bbr, %i.bbn                 ; 5 uses
  %i.bbt = tail call i32 @llvm.fshl.i32(i32 %i.bac, i32 %i.bac, i32 30) ; 3 uses
  %i.bbu = xor i32 %i.bbt, %i.bay
  %i.bbv = xor i32 %i.bbu, %i.bax
  %i.bbw = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 20
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !23
  %i.bbz = load i32, ptr %i.bbw, align 4, !tbaa !23
  %i.bca = xor i32 %i.bbz, %i.bby
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbw, i64 40
  %i.bcc = load i32, ptr %i.bcb, align 4, !tbaa !23
  %i.bcd = xor i32 %i.bca, %i.bcc
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bbw, i64 32 ; 2 uses
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !23
  %i.bcg = xor i32 %i.bcd, %i.bcf                 ; 2 uses
  %i.bch = tail call i32 @llvm.fshl.i32(i32 %i.bcg, i32 %i.bcg, i32 1) ; 2 uses
  store i32 %i.bch, ptr %i.bce, align 4, !tbaa !23
  %i.bci = tail call i32 @llvm.fshl.i32(i32 %i.bbs, i32 %i.bbs, i32 5)
  %i.bcj = add i32 %i.bad, -899497514
  %i.bck = add i32 %i.bcj, %i.bbv
  %i.bcl = add i32 %i.bck, %i.bci
  %i.bcm = add i32 %i.bcl, %i.bch                 ; 5 uses
  %i.bcn = tail call i32 @llvm.fshl.i32(i32 %i.bax, i32 %i.bax, i32 30) ; 3 uses
  %i.bco = xor i32 %i.bcn, %i.bbt
  %i.bcp = xor i32 %i.bco, %i.bbs
  %i.bcq = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 24
  %i.bcs = load i32, ptr %i.bcr, align 4, !tbaa !23
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcq, i64 4
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !23
  %i.bcv = xor i32 %i.bcu, %i.bcs
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcq, i64 44
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !23
  %i.bcy = xor i32 %i.bcv, %i.bcx
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcq, i64 36 ; 2 uses
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !23
  %i.bdb = xor i32 %i.bcy, %i.bda                 ; 2 uses
  %i.bdc = tail call i32 @llvm.fshl.i32(i32 %i.bdb, i32 %i.bdb, i32 1) ; 2 uses
  store i32 %i.bdc, ptr %i.bcz, align 4, !tbaa !23
  %i.bdd = tail call i32 @llvm.fshl.i32(i32 %i.bcm, i32 %i.bcm, i32 5)
  %i.bde = add i32 %i.bay, -899497514
  %i.bdf = add i32 %i.bde, %i.bcp
  %i.bdg = add i32 %i.bdf, %i.bdd
  %i.bdh = add i32 %i.bdg, %i.bdc                 ; 5 uses
  %i.bdi = tail call i32 @llvm.fshl.i32(i32 %i.bbs, i32 %i.bbs, i32 30) ; 3 uses
  %i.bdj = xor i32 %i.bdi, %i.bcn
  %i.bdk = xor i32 %i.bdj, %i.bcm
  %i.bdl = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 28
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !23
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdl, i64 8
  %i.bdp = load i32, ptr %i.bdo, align 4, !tbaa !23
  %i.bdq = xor i32 %i.bdp, %i.bdn
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdl, i64 48
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !23
  %i.bdt = xor i32 %i.bdq, %i.bds
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdl, i64 40 ; 2 uses
  %i.bdv = load i32, ptr %i.bdu, align 4, !tbaa !23
  %i.bdw = xor i32 %i.bdt, %i.bdv                 ; 2 uses
  %i.bdx = tail call i32 @llvm.fshl.i32(i32 %i.bdw, i32 %i.bdw, i32 1) ; 2 uses
  store i32 %i.bdx, ptr %i.bdu, align 4, !tbaa !23
  %i.bdy = tail call i32 @llvm.fshl.i32(i32 %i.bdh, i32 %i.bdh, i32 5)
  %3 = add i32 %i.bbt, -899497514
  %4 = add i32 %3, %i.bdk
  %i.bdz = add i32 %4, %i.bdy
  %i.bea = add i32 %i.bdz, %i.bdx                 ; 5 uses
  %i.beb = tail call i32 @llvm.fshl.i32(i32 %i.bcm, i32 %i.bcm, i32 30) ; 3 uses
  %i.bec = xor i32 %i.beb, %i.bdi
  %i.bed = xor i32 %i.bec, %i.bdh
  %i.bee = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 32
  %i.beg = load i32, ptr %i.bef, align 4, !tbaa !23
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bee, i64 12
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !23
  %i.bej = xor i32 %i.bei, %i.beg
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bee, i64 52
  %i.bel = load i32, ptr %i.bek, align 4, !tbaa !23
  %i.bem = xor i32 %i.bej, %i.bel
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bee, i64 44 ; 2 uses
  %i.beo = load i32, ptr %i.ben, align 4, !tbaa !23
  %i.bep = xor i32 %i.bem, %i.beo                 ; 2 uses
  %i.beq = tail call i32 @llvm.fshl.i32(i32 %i.bep, i32 %i.bep, i32 1) ; 2 uses
  store i32 %i.beq, ptr %i.ben, align 4, !tbaa !23
  %5 = tail call i32 @llvm.fshl.i32(i32 %i.bea, i32 %i.bea, i32 5)
  %i.ber = add i32 %i.bcn, -899497514
  %6 = add i32 %i.ber, %i.bed
  %7 = add i32 %6, %5
  %8 = add i32 %7, %i.beq                         ; 5 uses
  %9 = tail call i32 @llvm.fshl.i32(i32 %i.bdh, i32 %i.bdh, i32 30) ; 3 uses
  %10 = xor i32 %9, %i.beb
  %11 = xor i32 %10, %i.bea
  %12 = load ptr, ptr %i.j, align 8, !tbaa !7     ; 4 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.bet = load i32, ptr %i.bes, align 4, !tbaa !23
  %i.beu = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bev = load i32, ptr %i.beu, align 4, !tbaa !23
  %i.bew = xor i32 %i.bev, %i.bet
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %14 = load i32, ptr %13, align 4, !tbaa !23
  %15 = xor i32 %i.bew, %14
  %i.bex = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.bey = load i32, ptr %i.bex, align 4, !tbaa !23
  %16 = xor i32 %15, %i.bey                       ; 2 uses
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 1) ; 2 uses
  store i32 %17, ptr %i.bex, align 4, !tbaa !23
  %18 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 5)
  %19 = add i32 %i.bdi, -899497514
  %20 = add i32 %19, %11
  %21 = add i32 %20, %18
  %22 = add i32 %21, %17                          ; 5 uses
  %i.bez = tail call i32 @llvm.fshl.i32(i32 %i.bea, i32 %i.bea, i32 30) ; 3 uses
  %23 = xor i32 %i.bez, %9
  %24 = xor i32 %23, %8
  %i.bfa = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 40
  %i.bfc = load i32, ptr %i.bfb, align 4, !tbaa !23
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfa, i64 20
  %i.bfe = load i32, ptr %i.bfd, align 4, !tbaa !23
  %i.bff = xor i32 %i.bfe, %i.bfc
  %25 = getelementptr inbounds nuw i8, ptr %i.bfa, i64 60
  %i.bfg = load i32, ptr %25, align 4, !tbaa !23
  %i.bfh = xor i32 %i.bff, %i.bfg
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfa, i64 52 ; 2 uses
  %i.bfj = load i32, ptr %i.bfi, align 4, !tbaa !23
  %26 = xor i32 %i.bfh, %i.bfj                    ; 2 uses
  %i.bfk = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 1) ; 2 uses
  store i32 %i.bfk, ptr %i.bfi, align 4, !tbaa !23
  %i.bfl = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 5)
  %i.bfm = add i32 %i.beb, -899497514
  %i.bfn = add i32 %i.bfm, %24
  %i.bfo = add i32 %i.bfn, %i.bfl
  %i.bfp = add i32 %i.bfo, %i.bfk                 ; 5 uses
  %i.bfq = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 30) ; 3 uses
  %i.bfr = xor i32 %i.bfq, %i.bez
  %i.bfs = xor i32 %i.bfr, %22
  %27 = load ptr, ptr %i.j, align 8, !tbaa !7     ; 4 uses
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 44
  %29 = load i32, ptr %28, align 4, !tbaa !23
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 24
  %31 = load i32, ptr %30, align 4, !tbaa !23
  %i.bft = xor i32 %31, %29
  %32 = load i32, ptr %27, align 4, !tbaa !23
  %33 = xor i32 %i.bft, %32
  %34 = getelementptr inbounds nuw i8, ptr %27, i64 56 ; 2 uses
  %35 = load i32, ptr %34, align 4, !tbaa !23
  %i.bfu = xor i32 %33, %35                       ; 2 uses
  %36 = tail call i32 @llvm.fshl.i32(i32 %i.bfu, i32 %i.bfu, i32 1) ; 2 uses
  store i32 %36, ptr %34, align 4, !tbaa !23
  %i.bfv = tail call i32 @llvm.fshl.i32(i32 %i.bfp, i32 %i.bfp, i32 5)
  %37 = add i32 %9, -899497514
  %i.bfw = add i32 %37, %i.bfs
  %i.bfx = add i32 %i.bfw, %i.bfv
  %i.bfy = add i32 %i.bfx, %36                    ; 3 uses
  %38 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 30) ; 2 uses
  %i.bfz = xor i32 %38, %i.bfq
  %i.bga = xor i32 %i.bfz, %i.bfp
  %i.bgb = load ptr, ptr %i.j, align 8, !tbaa !7  ; 4 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 48
  %i.bgd = load i32, ptr %i.bgc, align 4, !tbaa !23
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgb, i64 28
  %i.bgf = load i32, ptr %i.bge, align 4, !tbaa !23
  %i.bgg = xor i32 %i.bgf, %i.bgd
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgb, i64 4
  %i.bgi = load i32, ptr %i.bgh, align 4, !tbaa !23
  %i.bgj = xor i32 %i.bgg, %i.bgi
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgb, i64 60 ; 2 uses
  %i.bgl = load i32, ptr %i.bgk, align 4, !tbaa !23
  %i.bgm = xor i32 %i.bgj, %i.bgl                 ; 2 uses
  %i.bgn = tail call i32 @llvm.fshl.i32(i32 %i.bgm, i32 %i.bgm, i32 1) ; 2 uses
  store i32 %i.bgn, ptr %i.bgk, align 4, !tbaa !23
  %39 = tail call i32 @llvm.fshl.i32(i32 %i.bfy, i32 %i.bfy, i32 5)
  %i.bgo = tail call i32 @llvm.fshl.i32(i32 %i.bfp, i32 %i.bfp, i32 30)
  %40 = add i32 %i.bez, -899497514
  %i.bgp = add i32 %40, %i.bga
  %i.bgq = add i32 %i.bgp, %39
  %i.bgr = add i32 %i.bgq, %i.bgn
  %41 = load <4 x i32>, ptr %1, align 4, !tbaa !3
  %42 = insertelement <4 x i32> poison, i32 %i.bgr, i64 0
  %43 = insertelement <4 x i32> %42, i32 %i.bfy, i64 1
  %44 = insertelement <4 x i32> %43, i32 %i.bgo, i64 2
  %i.bgs = insertelement <4 x i32> %44, i32 %38, i64 3
  %45 = add <4 x i32> %i.bgs, %41
  store <4 x i32> %45, ptr %1, align 4, !tbaa !3
  %46 = load i32, ptr %i.h, align 4, !tbaa !3
  %47 = add i32 %46, %i.bfq
  store i32 %47, ptr %i.h, align 4, !tbaa !3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_15CSHA18HashFileEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias noundef nonnull dereferenceable(524800) ptr @_Znam(i64 noundef 524800) #16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit, %bb.c
  %i.h = tail call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 524800, ptr noundef nonnull %i.b) ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = trunc i64 %i.h to i32                    ; 7 uses
  %i.j = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 63                         ; 5 uses
  %i.m = shl i32 %i.i, 3                          ; 2 uses
  %i.n = add i32 %i.j, %i.m                       ; 2 uses
  store i32 %i.n, ptr %i.e, align 4, !tbaa !3
  %i.o = icmp ult i32 %i.n, %i.m
  %i.p = load i32, ptr %i.f, align 8, !tbaa !3
  %i.q = zext i1 %i.o to i32
  %i.r = lshr i32 %i.i, 29
  %i.s = add i32 %i.p, %i.r
  %i.t = add i32 %i.s, %i.q
  store i32 %i.t, ptr %i.f, align 8, !tbaa !3
  %i.u = add i32 %i.l, %i.i
  %i.v = icmp ugt i32 %i.u, 63
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = sub nuw nsw i32 64, %i.l                 ; 3 uses
  %i.x = zext nneg i32 %i.l to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.x
  %i.z = zext nneg i32 %i.w to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.d, i64 %i.z, i1 false)
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.g)
  %i.aa = xor i32 %i.l, 127
  %i.ab = icmp ult i32 %i.aa, %i.i
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.023.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.w, %bb.f ] ; 3 uses
  %i.ac = zext i32 %.023.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull readonly %i.ad)
  %i.ae = add i32 %.023.i, 64                     ; 2 uses
  %i.af = add i32 %.023.i, 127
  %i.ag = icmp ult i32 %i.af, %i.i
  br i1 %i.ag, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !20

bb.g:                                             ; preds = %bb.e
  %i.ah = zext nneg i32 %i.l to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.g, %bb.f
  %.021.i = phi i64 [ %i.ah, %bb.g ], [ 0, %bb.f ], [ 0, %.lr.ph.i ]
  %.1.i = phi i32 [ 0, %bb.g ], [ %i.w, %bb.f ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %.not.i = icmp eq i32 %.1.i, %i.i
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit.i
  %i.ai = sub i32 %i.i, %.1.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %.021.i
  %i.ak = zext i32 %.1.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ak
  %i.am = zext i32 %i.ai to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.al, i64 %i.am, i1 false)
  br label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit

_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit:     ; preds = %bb.h, %.loopexit.i
  %i.an = icmp ult i64 %i.h, 524800
  br i1 %i.an, label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit.thread, label %bb.d

_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit.thread: ; preds = %bb.d, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit
  %i.ao = tail call i32 @feof(ptr noundef nonnull %i.b) #19
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #18
  br label %bb.i

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit.thread, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ %i.ap, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit.thread ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA110ReportHashEPcNS1_11REPORT_TYPEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 179 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 77 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 39 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  switch i32 %2, label %.loopexit [
    i32 2, label %bb.c
    i32 0, label %bb.c
    i32 1, label %.loopexit.loopexit26
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = icmp eq i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i8, ptr %i.d, align 8, !tbaa !23
  %i.f = zext i8 %i.e to i32
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.7, i32 noundef %i.f) #19 ; 0 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !31
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !33
  %i.j = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %3, i64 noundef 83) #19 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 38 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.m = load i8, ptr %i.l, align 1, !tbaa !23
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 98 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 99 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  br i1 %i.c, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.7, i32 noundef %i.n) #19 ; 0 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !31
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.s, ptr %i.k, align 8, !tbaa !33
  %i.t = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %4, i64 noundef 83) #19 ; 0 uses
  %i.u = load i8, ptr %i.o, align 2, !tbaa !23
  %i.v = zext i8 %i.u to i32
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.7, i32 noundef %i.v) #19 ; 0 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !31
  %i.x = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.x, ptr %i.k, align 8, !tbaa !33
  %i.y = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %4, i64 noundef 83) #19 ; 0 uses
  %i.z = load i8, ptr %i.p, align 1, !tbaa !23
  %i.aa = zext i8 %i.z to i32
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.7, i32 noundef %i.aa) #19 ; 0 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !31
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !33
  %i.ad = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %4, i64 noundef 83) #19 ; 0 uses
  %i.ae = load i8, ptr %i.q, align 4, !tbaa !23
  %i.af = zext i8 %i.ae to i32
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.7, i32 noundef %i.af) #19 ; 0 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !31
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !33
  %i.ai = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %4, i64 noundef 83) #19 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23
  %i.al = zext i8 %i.ak to i32
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.7, i32 noundef %i.al) #19 ; 0 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !31
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
end_hunk_1
