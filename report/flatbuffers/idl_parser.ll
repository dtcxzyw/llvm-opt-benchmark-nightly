Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_parser?download=true
inline.NumInlined: 13536
inline.NumDeleted: 4031
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZSt22__merge_without_bufferIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_:bb.a

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr %0, align 4, !tbaa !221
  store i32 %i.o, ptr %1, align 4, !tbaa !221
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.ay = icmp sgt i64 %3, %4
  br i1 %i.ay, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit39

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.az = sdiv i64 %3, 2                          ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = load ptr, ptr %5, align 8, !tbaa !543, !nonnull !209, !align !446 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !396
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !387
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.ba, align 4, !tbaa !545
  %i.bn = zext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !221
  %i.br = sext i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i = icmp ne i16 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i)
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !221
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.be, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.cd = lshr i64 %.017.i, 1                     ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.01116.i, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !545
  %i.cg = zext i32 %i.cf to i64
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.bl, i64 %i.ch ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !221
  %i.ck = sext i32 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i16 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !221
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.cv)
  %i.cw = zext i32 %.sroa.speculated.i.i.i.i.i.i to i64
  %i.cx = tail call i32 @memcmp(ptr noundef nonnull readonly %i.cu, ptr noundef nonnull readonly %i.cb, i64 noundef %i.cw) #37 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = icmp ult i32 %i.cv, %i.cc
  %i.da = icmp slt i32 %i.cx, 0
  %i.db = select i1 %i.cy, i1 %i.cz, i1 %i.da     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.dd = xor i64 %i.cd, -1
  %i.de = add nsw i64 %.017.i, %i.dd
  %.112.i = select i1 %i.db, ptr %i.dc, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.db, i64 %i.de, i64 %i.cd   ; 2 uses
  %i.df = icmp sgt i64 %.1.i, 0
  br i1 %i.df, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !40

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bc, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.dg = sub i64 %.pre-phi, %i.bc
  %i.dh = ashr exact i64 %i.dg, 2
  br label %bb.f

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit39: ; preds = %bb.e
  %i.di = sdiv i64 %4, 2                          ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.di ; 2 uses
  %i.dk = ptrtoint ptr %1 to i64
  %i.dl = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %i.dp = load ptr, ptr %5, align 8, !tbaa !543, !nonnull !209, !align !446 ; 2 uses
  %i.dq = load i32, ptr %i.dj, align 4, !tbaa !545
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !396
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !387
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv ; 2 uses
  %i.dx = sub nsw i64 0, %i.dr
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !221
  %i.ea = sext i32 %i.dz to i64
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i42 = icmp ne i16 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i42)
  %i.ef = zext i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !221
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i43

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i43: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41
  %.017.i44 = phi i64 [ %i.dn, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.1.i51, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %.01116.i45 = phi ptr [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.112.i50, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %i.em = lshr i64 %.017.i44, 1                   ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.01116.i45, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !545
  %i.ep = zext i32 %i.eo to i64
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.dw, i64 %i.eq ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !221
  %i.et = sext i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i48 = icmp ne i16 %i.ex, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i48)
  %i.ey = zext i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !221
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i49 = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.el)
  %i.ff = zext i32 %.sroa.speculated.i.i.i.i.i.i49 to i64
  %i.fg = tail call i32 @memcmp(ptr noundef nonnull readonly %i.ek, ptr noundef nonnull readonly %i.fd, i64 noundef %i.ff) #37 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  %i.fi = icmp ult i32 %i.el, %i.fe
  %i.fj = icmp slt i32 %i.fg, 0
  %i.fk = select i1 %i.fh, i1 %i.fi, i1 %i.fj     ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fm = xor i64 %i.em, -1
  %i.fn = add nsw i64 %.017.i44, %i.fm
  %.112.i50 = select i1 %i.fk, ptr %.01116.i45, ptr %i.fl ; 3 uses
  %.1.i51 = select i1 %i.fk, i64 %i.em, i64 %i.fn ; 2 uses
  %i.fo = icmp sgt i64 %.1.i51, 0
  br i1 %i.fo, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !41

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i43
  %.pre70 = ptrtoint ptr %.112.i50 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %.pre-phi71 = phi i64 [ %.pre70, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.dl, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %.011.lcssa.i40 = phi ptr [ %.112.i50, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %i.fp = sub i64 %.pre-phi71, %i.dl
  %i.fq = ashr exact i64 %i.fp, 2
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.065 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dj, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 4 uses
  %.064 = phi ptr [ %i.ba, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i40, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 12 uses
  %.033 = phi i64 [ %i.dh, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.di, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.az, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.fq, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.fr = icmp eq ptr %.064, %1
  br i1 %i.fr, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fs = icmp eq ptr %.065, %1
  br i1 %i.fs, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ft = ptrtoint ptr %.065 to i64               ; 2 uses
  %i.fu = ptrtoint ptr %.064 to i64               ; 3 uses
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2                 ; 2 uses
  %i.fx = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.fy = sub i64 %i.fx, %i.fu
  %i.fz = ashr exact i64 %i.fy, 2                 ; 3 uses
  %i.ga = sub nsw i64 %i.fw, %i.fz
  %i.gb = icmp eq i64 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.i.i.i.preheader, label %bb.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.gc = add i64 %i.fx, -4
  %i.gd = sub i64 %i.gc, %i.fu                    ; 3 uses
  %i.ge = lshr i64 %i.gd, 2
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check120 = icmp ult i64 %i.gd, 60
  br i1 %min.iters.check120, label %.lr.ph.i.i.i.preheader136, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.gg = and i64 %i.gd, -4
  %i.gh = add i64 %i.gg, 4                        ; 2 uses
  %scevgep114 = getelementptr i8, ptr %.064, i64 %i.gh
  %scevgep115 = getelementptr i8, ptr %1, i64 %i.gh
  %bound0116 = icmp ult ptr %.064, %scevgep115
  %bound1117 = icmp ult ptr %1, %scevgep114
  %found.conflict118 = and i1 %bound0116, %bound1117
  br i1 %found.conflict118, label %.lr.ph.i.i.i.preheader136, label %vector.ph121

vector.ph121:                                     ; preds = %vector.memcheck113
  %n.vec122 = and i64 %i.gf, 9223372036854775800  ; 3 uses
  %i.gi = shl i64 %n.vec122, 2                    ; 2 uses
  %i.gj = getelementptr i8, ptr %1, i64 %i.gi
  %i.gk = getelementptr i8, ptr %.064, i64 %i.gi
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next131, %vector.body123 ] ; 2 uses
  %i.gl = shl i64 %index124, 2                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %1, i64 %i.gl ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.064, i64 %i.gl ; 3 uses
  %i.gm = getelementptr i8, ptr %next.gep126, i64 16 ; 2 uses
  %wide.load127 = load <4 x i32>, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !2748, !noalias !2749
  %wide.load128 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !221, !alias.scope !2748, !noalias !2749
  %i.gn = getelementptr i8, ptr %next.gep125, i64 16 ; 2 uses
  %wide.load129 = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !2749
  %wide.load130 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !221, !alias.scope !2749
  store <4 x i32> %wide.load129, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !2748, !noalias !2749
  store <4 x i32> %wide.load130, ptr %i.gm, align 4, !tbaa !221, !alias.scope !2748, !noalias !2749
  store <4 x i32> %wide.load127, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !2749
  store <4 x i32> %wide.load128, ptr %i.gn, align 4, !tbaa !221, !alias.scope !2749
  %index.next131 = add nuw i64 %index124, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next131, %n.vec122
  br i1 %i.go, label %middle.block132, label %vector.body123, !llvm.loop !2734

middle.block132:                                  ; preds = %vector.body123
  %cmp.n133 = icmp eq i64 %i.gf, %n.vec122
  br i1 %cmp.n133, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader136

.lr.ph.i.i.i.preheader136:                        ; preds = %vector.memcheck113, %.lr.ph.i.i.i.preheader, %middle.block132
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck113 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.gj, %middle.block132 ]
  %.079.i.i.i.ph = phi ptr [ %.064, %vector.memcheck113 ], [ %.064, %.lr.ph.i.i.i.preheader ], [ %i.gk, %middle.block132 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader136, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.gp = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.gp, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.gq, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2735

bb.i:                                             ; preds = %bb.h
  %i.gs = sub i64 %i.ft, %i.fx
  %i.gt = getelementptr inbounds i8, ptr %.064, i64 %i.gs ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.071.i.i = phi i64 [ %i.fw, %bb.i ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.fz, %bb.i ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %.064, %bb.i ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.gu = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.gv = icmp slt i64 %.067.i.i, %i.gu
  br i1 %i.gv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.gw = icmp sgt i64 %i.gu, 0
  br i1 %i.gw, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.k
  %i.gx = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.gu, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.gy = shl i64 %.071.i.i, 2
  %i.gz = sub i64 %.071.i.i, %.067.i.i
  %i.ha = shl i64 %i.gz, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.ha
  %scevgep83 = getelementptr i8, ptr %.041.i.i, i64 %i.gy
  %bound0 = icmp ult ptr %.041.i.i, %scevgep83
  %bound1 = icmp ult ptr %i.gx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gu, 9223372036854775800     ; 4 uses
  %i.hb = shl i64 %n.vec, 2                       ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gx, i64 %i.hb
  %i.hd = getelementptr i8, ptr %.041.i.i, i64 %i.hb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.he = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gx, i64 %i.he ; 3 uses
  %next.gep84 = getelementptr i8, ptr %.041.i.i, i64 %i.he ; 3 uses
  %i.hf = getelementptr i8, ptr %next.gep84, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !2750, !noalias !2751
  %wide.load85 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !221, !alias.scope !2750, !noalias !2751
  %i.hg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load86 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2751
  %wide.load87 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !221, !alias.scope !2751
  store <4 x i32> %wide.load86, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !2750, !noalias !2751
  store <4 x i32> %wide.load87, ptr %i.hf, align 4, !tbaa !221, !alias.scope !2750, !noalias !2751
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2751
  store <4 x i32> %wide.load85, ptr %i.hg, align 4, !tbaa !221, !alias.scope !2751
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !2739

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gu, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.gx, %vector.memcheck ], [ %i.gx, %.lr.ph90.preheader.i.i ], [ %i.hc, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.hd, %middle.block ] ; 2 uses
  %i.hi = sub i64 %.071.i.i, %.067.i.i
  %xtraiter139 = and i64 %i.hi, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.hm, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.hl, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.hk, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.hj = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.hj, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.hk = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.hm = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !2740

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hm, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hl, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %i.hn = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ho = add i64 %i.hn, %.067.i.i
  %i.hp = icmp ugt i64 %i.ho, -4
  br i1 %i.hp, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.k
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.k ], [ %i.hd, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.ib, %.lr.ph90.i.i ]
  %i.hq = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.hq, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %bb.l

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.id, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.ic, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.ib, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.hr = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.hr, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.hs = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.hs, align 4, !tbaa !221
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !221
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.ht, align 4, !tbaa !221
  %i.hv = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.hv, align 4, !tbaa !221
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !221
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.hw, align 4, !tbaa !221
  %i.hy = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.hy, align 4, !tbaa !221
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !221
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.hz, align 4, !tbaa !221
  %i.ib = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.id = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.id, %i.gu
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !2741

bb.l:                                             ; preds = %._crit_edge91.i.i
  %i.ie = sub nsw i64 %.067.i.i, %i.hq
  br label %.backedge

bb.m:                                             ; preds = %bb.j
  %i.if = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.ig = sub i64 0, %i.gu
  %i.ih = getelementptr [4 x i8], ptr %i.if, i64 %i.ig ; 6 uses
  %i.ii = icmp sgt i64 %.067.i.i, 0
end_hunk_0
begin_hunk_1_@_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_:bb.a
  %i.dl = icmp ult i32 %i.co, %i.dh
  %i.dm = icmp slt i32 %i.dj, 0
  %i.dn = select i1 %i.dk, i1 %i.dl, i1 %i.dm     ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.dp = xor i64 %i.cp, -1
  %i.dq = add nsw i64 %.017.i56, %i.dp
  %.112.i62 = select i1 %i.dn, ptr %.01116.i57, ptr %i.do ; 3 uses
  %.1.i63 = select i1 %i.dn, i64 %i.cp, i64 %i.dq ; 2 uses
  %i.dr = icmp sgt i64 %.1.i63, 0
  br i1 %i.dr, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !41

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.pre80 = ptrtoint ptr %.112.i62 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit51
  %.pre-phi81 = phi i64 [ %.pre80, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bo, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %.011.lcssa.i52 = phi ptr [ %.112.i62, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %i.ds = sub i64 %.pre-phi81, %i.bo
  %i.dt = ashr exact i64 %i.ds, 2
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.077 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bm, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.076 = phi ptr [ %i.d, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i52, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.bk, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bl, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.c, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dt, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.du = sub nsw i64 %3, %.0                     ; 2 uses
  %i.dv = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %.076, ptr noundef %1, ptr noundef %.077, i64 noundef %i.du, i64 noundef %.043, ptr noundef %5, i64 noundef %6) ; 2 uses
  %i.dw = load ptr, ptr %7, align 8, !tbaa !543, !nonnull !209, !align !446
  store ptr %i.dw, ptr %9, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %0, ptr noundef %.076, ptr noundef %i.dv, i64 noundef %.0, i64 noundef %.043, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %9)
  %i.dx = sub nsw i64 %4, %.043
  %i.dy = load ptr, ptr %7, align 8, !tbaa !543, !nonnull !209, !align !446
  store ptr %i.dy, ptr %10, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection8KeyValueEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %i.dv, ptr noundef %.077, ptr noundef %2, i64 noundef %i.du, i64 noundef %i.dx, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %10)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 4                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !434

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.g, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !434

bb.g:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit
  %i.n = icmp eq i64 %i.i, 4
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -4
  %i.p = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.p, ptr %i.o, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !434

bb.j:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit
  %i.q = icmp eq i64 %i.d, 4
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit36

bb.l:                                             ; preds = %bb.k
  %i.r = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.r, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit36

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.p, label %bb.q, !prof !434

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %bb.r, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.y, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit37

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 4
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !434

bb.s:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit37
  %i.ac = icmp eq i64 %i.aa, 4
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit38

bb.u:                                             ; preds = %bb.t
  %i.ad = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.ad, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit38

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 2                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !434

bb.v:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit38
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit38
  %i.ai = icmp eq i64 %i.v, 4
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit39

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -4
  %i.ak = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit39

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection8KeyValueEEES5_ET0_T_S7_S6_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit

bb.y:                                             ; preds = %bb.m
  %i.an = icmp eq ptr %0, %1
  br i1 %i.an, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = icmp eq ptr %2, %1
  br i1 %i.ao, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.aq = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.au = sub i64 %i.at, %i.aq
  %i.av = ashr exact i64 %i.au, 2                 ; 3 uses
  %i.aw = sub nsw i64 %i.as, %i.av
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i.i.preheader, label %bb.ab

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aa
  %i.ay = add i64 %i.at, -4
  %i.az = sub i64 %i.ay, %i.aq                    ; 3 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check98 = icmp ult i64 %i.az, 60
  br i1 %min.iters.check98, label %.lr.ph.i.i.i.preheader114, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.bc = and i64 %i.az, -4
  %i.bd = add i64 %i.bc, 4                        ; 2 uses
  %scevgep92 = getelementptr i8, ptr %0, i64 %i.bd
  %scevgep93 = getelementptr i8, ptr %1, i64 %i.bd
  %bound094 = icmp ult ptr %0, %scevgep93
  %bound195 = icmp ult ptr %1, %scevgep92
  %found.conflict96 = and i1 %bound094, %bound195
  br i1 %found.conflict96, label %.lr.ph.i.i.i.preheader114, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck91
  %n.vec100 = and i64 %i.bb, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec100, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = getelementptr i8, ptr %0, i64 %i.be
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next109, %vector.body101 ] ; 2 uses
  %i.bh = shl i64 %index102, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %1, i64 %i.bh ; 3 uses
  %next.gep104 = getelementptr i8, ptr %0, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep104, i64 16 ; 2 uses
  %wide.load105 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !2771, !noalias !2772
  %wide.load106 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !221, !alias.scope !2771, !noalias !2772
  %i.bj = getelementptr i8, ptr %next.gep103, i64 16 ; 2 uses
  %wide.load107 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !2772
  %wide.load108 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !221, !alias.scope !2772
  store <4 x i32> %wide.load107, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !2771, !noalias !2772
  store <4 x i32> %wide.load108, ptr %i.bi, align 4, !tbaa !221, !alias.scope !2771, !noalias !2772
  store <4 x i32> %wide.load105, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !2772
  store <4 x i32> %wide.load106, ptr %i.bj, align 4, !tbaa !221, !alias.scope !2772
  %index.next109 = add nuw i64 %index102, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next109, %n.vec100
  br i1 %i.bk, label %middle.block110, label %vector.body101, !llvm.loop !2757

middle.block110:                                  ; preds = %vector.body101
  %cmp.n111 = icmp eq i64 %i.bb, %n.vec100
  br i1 %cmp.n111, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader114

.lr.ph.i.i.i.preheader114:                        ; preds = %vector.memcheck91, %.lr.ph.i.i.i.preheader, %middle.block110
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck91 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block110 ]
  %.079.i.i.i.ph = phi ptr [ %0, %vector.memcheck91 ], [ %0, %.lr.ph.i.i.i.preheader ], [ %i.bg, %middle.block110 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader114, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.bl = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.bl, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.bm, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2758

bb.ab:                                            ; preds = %bb.aa
  %i.bo = sub i64 %i.ap, %i.at
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %bb.ab
  %.071.i.i = phi i64 [ %i.as, %bb.ab ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.av, %bb.ab ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %0, %bb.ab ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.bq = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.br = icmp slt i64 %.067.i.i, %i.bq
  br i1 %i.br, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bs = icmp sgt i64 %i.bq, 0
  br i1 %i.bs, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.ad
  %i.bt = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.bu = shl i64 %.071.i.i, 2
  %i.bv = sub i64 %.071.i.i, %.067.i.i
  %i.bw = shl i64 %i.bv, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.bw
  %scevgep61 = getelementptr i8, ptr %.041.i.i, i64 %i.bu
  %bound0 = icmp ult ptr %.041.i.i, %scevgep61
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 4 uses
  %i.bx = shl i64 %n.vec, 2                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr i8, ptr %.041.i.i, i64 %i.bx ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ca ; 3 uses
  %next.gep62 = getelementptr i8, ptr %.041.i.i, i64 %i.ca ; 3 uses
  %i.cb = getelementptr i8, ptr %next.gep62, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !2773, !noalias !2774
  %wide.load63 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !221, !alias.scope !2773, !noalias !2774
  %i.cc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load64 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2774
  %wide.load65 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !221, !alias.scope !2774
  store <4 x i32> %wide.load64, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !2773, !noalias !2774
  store <4 x i32> %wide.load65, ptr %i.cb, align 4, !tbaa !221, !alias.scope !2773, !noalias !2774
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2774
  store <4 x i32> %wide.load63, ptr %i.cc, align 4, !tbaa !221, !alias.scope !2774
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !2762

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph90.preheader.i.i ], [ %i.by, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.bz, %middle.block ] ; 2 uses
  %i.ce = sub i64 %.071.i.i, %.067.i.i
  %xtraiter117 = and i64 %i.ce, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.ci, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.ch, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.cg, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.cf = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.cf, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.cg = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.ci = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !2763

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ci, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ch, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %i.cj = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ck = add i64 %i.cj, %.067.i.i
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.ad
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.ad ], [ %i.bz, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.cx, %.lr.ph90.i.i ]
  %i.cm = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection8KeyValueEEEEET_S7_S7_S7_.exit, label %bb.ae

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.cz, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.cy, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.cx, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.cn = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.cn, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.co = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.co, align 4, !tbaa !221
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !221
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.cp, align 4, !tbaa !221
  %i.cr = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.cr, align 4, !tbaa !221
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !221
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.cs, align 4, !tbaa !221
  %i.cu = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.cu, align 4, !tbaa !221
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !221
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.cv, align 4, !tbaa !221
  %i.cx = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.cz = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.cz, %i.bq
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !2764

bb.ae:                                            ; preds = %._crit_edge91.i.i
  %i.da = sub nsw i64 %.067.i.i, %i.cm
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.db = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.dc = sub i64 0, %i.bq
  %i.dd = getelementptr [4 x i8], ptr %i.db, i64 %i.dc ; 6 uses
  %i.de = icmp sgt i64 %.067.i.i, 0
end_hunk_1
begin_hunk_2_@_ZSt22__merge_without_bufferIPN11flatbuffers6OffsetIN10reflection5FieldEEElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_:bb.a

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr %0, align 4, !tbaa !221
  store i32 %i.o, ptr %1, align 4, !tbaa !221
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.ay = icmp sgt i64 %3, %4
  br i1 %i.ay, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit39

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.az = sdiv i64 %3, 2                          ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = load ptr, ptr %5, align 8, !tbaa !552, !nonnull !209, !align !446 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !396
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !387
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.ba, align 4, !tbaa !554
  %i.bn = zext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !221
  %i.br = sext i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i = icmp ne i16 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i)
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !221
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.be, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.cd = lshr i64 %.017.i, 1                     ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.01116.i, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !554
  %i.cg = zext i32 %i.cf to i64
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.bl, i64 %i.ch ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !221
  %i.ck = sext i32 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i16 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !221
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.cv)
  %i.cw = zext i32 %.sroa.speculated.i.i.i.i.i.i to i64
  %i.cx = tail call i32 @memcmp(ptr noundef nonnull readonly %i.cu, ptr noundef nonnull readonly %i.cb, i64 noundef %i.cw) #37 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = icmp ult i32 %i.cv, %i.cc
  %i.da = icmp slt i32 %i.cx, 0
  %i.db = select i1 %i.cy, i1 %i.cz, i1 %i.da     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.dd = xor i64 %i.cd, -1
  %i.de = add nsw i64 %.017.i, %i.dd
  %.112.i = select i1 %i.db, ptr %i.dc, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.db, i64 %i.de, i64 %i.cd   ; 2 uses
  %i.df = icmp sgt i64 %.1.i, 0
  br i1 %i.df, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !43

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bc, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.dg = sub i64 %.pre-phi, %i.bc
  %i.dh = ashr exact i64 %i.dg, 2
  br label %bb.f

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit39: ; preds = %bb.e
  %i.di = sdiv i64 %4, 2                          ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.di ; 2 uses
  %i.dk = ptrtoint ptr %1 to i64
  %i.dl = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %i.dp = load ptr, ptr %5, align 8, !tbaa !552, !nonnull !209, !align !446 ; 2 uses
  %i.dq = load i32, ptr %i.dj, align 4, !tbaa !554
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !396
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !387
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv ; 2 uses
  %i.dx = sub nsw i64 0, %i.dr
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !221
  %i.ea = sext i32 %i.dz to i64
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i42 = icmp ne i16 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i42)
  %i.ef = zext i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !221
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i43

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i43: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41
  %.017.i44 = phi i64 [ %i.dn, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.1.i51, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %.01116.i45 = phi ptr [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.112.i50, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %i.em = lshr i64 %.017.i44, 1                   ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.01116.i45, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !554
  %i.ep = zext i32 %i.eo to i64
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.dw, i64 %i.eq ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !221
  %i.et = sext i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i48 = icmp ne i16 %i.ex, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i48)
  %i.ey = zext i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !221
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i49 = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.el)
  %i.ff = zext i32 %.sroa.speculated.i.i.i.i.i.i49 to i64
  %i.fg = tail call i32 @memcmp(ptr noundef nonnull readonly %i.ek, ptr noundef nonnull readonly %i.fd, i64 noundef %i.ff) #37 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  %i.fi = icmp ult i32 %i.el, %i.fe
  %i.fj = icmp slt i32 %i.fg, 0
  %i.fk = select i1 %i.fh, i1 %i.fi, i1 %i.fj     ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fm = xor i64 %i.em, -1
  %i.fn = add nsw i64 %.017.i44, %i.fm
  %.112.i50 = select i1 %i.fk, ptr %.01116.i45, ptr %i.fl ; 3 uses
  %.1.i51 = select i1 %i.fk, i64 %i.em, i64 %i.fn ; 2 uses
  %i.fo = icmp sgt i64 %.1.i51, 0
  br i1 %i.fo, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !44

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i43
  %.pre70 = ptrtoint ptr %.112.i50 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %.pre-phi71 = phi i64 [ %.pre70, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.dl, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %.011.lcssa.i40 = phi ptr [ %.112.i50, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %i.fp = sub i64 %.pre-phi71, %i.dl
  %i.fq = ashr exact i64 %i.fp, 2
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.065 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dj, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 4 uses
  %.064 = phi ptr [ %i.ba, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i40, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 12 uses
  %.033 = phi i64 [ %i.dh, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.di, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.az, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.fq, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.fr = icmp eq ptr %.064, %1
  br i1 %i.fr, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fs = icmp eq ptr %.065, %1
  br i1 %i.fs, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ft = ptrtoint ptr %.065 to i64               ; 2 uses
  %i.fu = ptrtoint ptr %.064 to i64               ; 3 uses
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2                 ; 2 uses
  %i.fx = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.fy = sub i64 %i.fx, %i.fu
  %i.fz = ashr exact i64 %i.fy, 2                 ; 3 uses
  %i.ga = sub nsw i64 %i.fw, %i.fz
  %i.gb = icmp eq i64 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.i.i.i.preheader, label %bb.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.gc = add i64 %i.fx, -4
  %i.gd = sub i64 %i.gc, %i.fu                    ; 3 uses
  %i.ge = lshr i64 %i.gd, 2
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check120 = icmp ult i64 %i.gd, 60
  br i1 %min.iters.check120, label %.lr.ph.i.i.i.preheader136, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.gg = and i64 %i.gd, -4
  %i.gh = add i64 %i.gg, 4                        ; 2 uses
  %scevgep114 = getelementptr i8, ptr %.064, i64 %i.gh
  %scevgep115 = getelementptr i8, ptr %1, i64 %i.gh
  %bound0116 = icmp ult ptr %.064, %scevgep115
  %bound1117 = icmp ult ptr %1, %scevgep114
  %found.conflict118 = and i1 %bound0116, %bound1117
  br i1 %found.conflict118, label %.lr.ph.i.i.i.preheader136, label %vector.ph121

vector.ph121:                                     ; preds = %vector.memcheck113
  %n.vec122 = and i64 %i.gf, 9223372036854775800  ; 3 uses
  %i.gi = shl i64 %n.vec122, 2                    ; 2 uses
  %i.gj = getelementptr i8, ptr %1, i64 %i.gi
  %i.gk = getelementptr i8, ptr %.064, i64 %i.gi
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next131, %vector.body123 ] ; 2 uses
  %i.gl = shl i64 %index124, 2                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %1, i64 %i.gl ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.064, i64 %i.gl ; 3 uses
  %i.gm = getelementptr i8, ptr %next.gep126, i64 16 ; 2 uses
  %wide.load127 = load <4 x i32>, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !2826, !noalias !2827
  %wide.load128 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !221, !alias.scope !2826, !noalias !2827
  %i.gn = getelementptr i8, ptr %next.gep125, i64 16 ; 2 uses
  %wide.load129 = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !2827
  %wide.load130 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !221, !alias.scope !2827
  store <4 x i32> %wide.load129, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !2826, !noalias !2827
  store <4 x i32> %wide.load130, ptr %i.gm, align 4, !tbaa !221, !alias.scope !2826, !noalias !2827
  store <4 x i32> %wide.load127, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !2827
  store <4 x i32> %wide.load128, ptr %i.gn, align 4, !tbaa !221, !alias.scope !2827
  %index.next131 = add nuw i64 %index124, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next131, %n.vec122
  br i1 %i.go, label %middle.block132, label %vector.body123, !llvm.loop !2812

middle.block132:                                  ; preds = %vector.body123
  %cmp.n133 = icmp eq i64 %i.gf, %n.vec122
  br i1 %cmp.n133, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader136

.lr.ph.i.i.i.preheader136:                        ; preds = %vector.memcheck113, %.lr.ph.i.i.i.preheader, %middle.block132
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck113 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.gj, %middle.block132 ]
  %.079.i.i.i.ph = phi ptr [ %.064, %vector.memcheck113 ], [ %.064, %.lr.ph.i.i.i.preheader ], [ %i.gk, %middle.block132 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader136, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.gp = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.gp, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.gq, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2813

bb.i:                                             ; preds = %bb.h
  %i.gs = sub i64 %i.ft, %i.fx
  %i.gt = getelementptr inbounds i8, ptr %.064, i64 %i.gs ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.071.i.i = phi i64 [ %i.fw, %bb.i ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.fz, %bb.i ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %.064, %bb.i ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.gu = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.gv = icmp slt i64 %.067.i.i, %i.gu
  br i1 %i.gv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.gw = icmp sgt i64 %i.gu, 0
  br i1 %i.gw, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.k
  %i.gx = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.gu, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.gy = shl i64 %.071.i.i, 2
  %i.gz = sub i64 %.071.i.i, %.067.i.i
  %i.ha = shl i64 %i.gz, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.ha
  %scevgep83 = getelementptr i8, ptr %.041.i.i, i64 %i.gy
  %bound0 = icmp ult ptr %.041.i.i, %scevgep83
  %bound1 = icmp ult ptr %i.gx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gu, 9223372036854775800     ; 4 uses
  %i.hb = shl i64 %n.vec, 2                       ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gx, i64 %i.hb
  %i.hd = getelementptr i8, ptr %.041.i.i, i64 %i.hb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.he = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gx, i64 %i.he ; 3 uses
  %next.gep84 = getelementptr i8, ptr %.041.i.i, i64 %i.he ; 3 uses
  %i.hf = getelementptr i8, ptr %next.gep84, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !2828, !noalias !2829
  %wide.load85 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !221, !alias.scope !2828, !noalias !2829
  %i.hg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load86 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2829
  %wide.load87 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !221, !alias.scope !2829
  store <4 x i32> %wide.load86, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !2828, !noalias !2829
  store <4 x i32> %wide.load87, ptr %i.hf, align 4, !tbaa !221, !alias.scope !2828, !noalias !2829
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2829
  store <4 x i32> %wide.load85, ptr %i.hg, align 4, !tbaa !221, !alias.scope !2829
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !2817

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gu, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.gx, %vector.memcheck ], [ %i.gx, %.lr.ph90.preheader.i.i ], [ %i.hc, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.hd, %middle.block ] ; 2 uses
  %i.hi = sub i64 %.071.i.i, %.067.i.i
  %xtraiter139 = and i64 %i.hi, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.hm, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.hl, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.hk, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.hj = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.hj, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.hk = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.hm = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !2818

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hm, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hl, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %i.hn = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ho = add i64 %i.hn, %.067.i.i
  %i.hp = icmp ugt i64 %i.ho, -4
  br i1 %i.hp, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.k
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.k ], [ %i.hd, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.ib, %.lr.ph90.i.i ]
  %i.hq = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.hq, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %bb.l

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.id, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.ic, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.ib, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.hr = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.hr, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.hs = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.hs, align 4, !tbaa !221
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !221
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.ht, align 4, !tbaa !221
  %i.hv = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.hv, align 4, !tbaa !221
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !221
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.hw, align 4, !tbaa !221
  %i.hy = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.hy, align 4, !tbaa !221
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !221
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.hz, align 4, !tbaa !221
  %i.ib = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.id = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.id, %i.gu
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !2819

bb.l:                                             ; preds = %._crit_edge91.i.i
  %i.ie = sub nsw i64 %.067.i.i, %i.hq
  br label %.backedge

bb.m:                                             ; preds = %bb.j
  %i.if = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.ig = sub i64 0, %i.gu
  %i.ih = getelementptr [4 x i8], ptr %i.if, i64 %i.ig ; 6 uses
  %i.ii = icmp sgt i64 %.067.i.i, 0
end_hunk_2
begin_hunk_3_@_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection5FieldEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_:bb.a
  %i.dl = icmp ult i32 %i.co, %i.dh
  %i.dm = icmp slt i32 %i.dj, 0
  %i.dn = select i1 %i.dk, i1 %i.dl, i1 %i.dm     ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.dp = xor i64 %i.cp, -1
  %i.dq = add nsw i64 %.017.i56, %i.dp
  %.112.i62 = select i1 %i.dn, ptr %.01116.i57, ptr %i.do ; 3 uses
  %.1.i63 = select i1 %i.dn, i64 %i.cp, i64 %i.dq ; 2 uses
  %i.dr = icmp sgt i64 %.1.i63, 0
  br i1 %i.dr, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !44

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.pre80 = ptrtoint ptr %.112.i62 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit51
  %.pre-phi81 = phi i64 [ %.pre80, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bo, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %.011.lcssa.i52 = phi ptr [ %.112.i62, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection5FieldEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %i.ds = sub i64 %.pre-phi81, %i.bo
  %i.dt = ashr exact i64 %i.ds, 2
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.077 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bm, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.076 = phi ptr [ %i.d, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i52, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.bk, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bl, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.c, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dt, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection5FieldEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.du = sub nsw i64 %3, %.0                     ; 2 uses
  %i.dv = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %.076, ptr noundef %1, ptr noundef %.077, i64 noundef %i.du, i64 noundef %.043, ptr noundef %5, i64 noundef %6) ; 2 uses
  %i.dw = load ptr, ptr %7, align 8, !tbaa !552, !nonnull !209, !align !446
  store ptr %i.dw, ptr %9, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection5FieldEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %0, ptr noundef %.076, ptr noundef %i.dv, i64 noundef %.0, i64 noundef %.043, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %9)
  %i.dx = sub nsw i64 %4, %.043
  %i.dy = load ptr, ptr %7, align 8, !tbaa !552, !nonnull !209, !align !446
  store ptr %i.dy, ptr %10, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection5FieldEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %i.dv, ptr noundef %.077, ptr noundef %2, i64 noundef %i.du, i64 noundef %i.dx, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %10)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 4                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !434

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.g, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !434

bb.g:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit
  %i.n = icmp eq i64 %i.i, 4
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -4
  %i.p = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.p, ptr %i.o, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !434

bb.j:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit
  %i.q = icmp eq i64 %i.d, 4
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit36

bb.l:                                             ; preds = %bb.k
  %i.r = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.r, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit36

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.p, label %bb.q, !prof !434

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %bb.r, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.y, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit37

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 4
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !434

bb.s:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit37
  %i.ac = icmp eq i64 %i.aa, 4
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit38

bb.u:                                             ; preds = %bb.t
  %i.ad = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.ad, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit38

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 2                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !434

bb.v:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit38
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit38
  %i.ai = icmp eq i64 %i.v, 4
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit39

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -4
  %i.ak = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit39

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection5FieldEEES5_ET0_T_S7_S6_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit

bb.y:                                             ; preds = %bb.m
  %i.an = icmp eq ptr %0, %1
  br i1 %i.an, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = icmp eq ptr %2, %1
  br i1 %i.ao, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.aq = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.au = sub i64 %i.at, %i.aq
  %i.av = ashr exact i64 %i.au, 2                 ; 3 uses
  %i.aw = sub nsw i64 %i.as, %i.av
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i.i.preheader, label %bb.ab

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aa
  %i.ay = add i64 %i.at, -4
  %i.az = sub i64 %i.ay, %i.aq                    ; 3 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check98 = icmp ult i64 %i.az, 60
  br i1 %min.iters.check98, label %.lr.ph.i.i.i.preheader114, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.bc = and i64 %i.az, -4
  %i.bd = add i64 %i.bc, 4                        ; 2 uses
  %scevgep92 = getelementptr i8, ptr %0, i64 %i.bd
  %scevgep93 = getelementptr i8, ptr %1, i64 %i.bd
  %bound094 = icmp ult ptr %0, %scevgep93
  %bound195 = icmp ult ptr %1, %scevgep92
  %found.conflict96 = and i1 %bound094, %bound195
  br i1 %found.conflict96, label %.lr.ph.i.i.i.preheader114, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck91
  %n.vec100 = and i64 %i.bb, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec100, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = getelementptr i8, ptr %0, i64 %i.be
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next109, %vector.body101 ] ; 2 uses
  %i.bh = shl i64 %index102, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %1, i64 %i.bh ; 3 uses
  %next.gep104 = getelementptr i8, ptr %0, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep104, i64 16 ; 2 uses
  %wide.load105 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !2849, !noalias !2850
  %wide.load106 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !221, !alias.scope !2849, !noalias !2850
  %i.bj = getelementptr i8, ptr %next.gep103, i64 16 ; 2 uses
  %wide.load107 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !2850
  %wide.load108 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !221, !alias.scope !2850
  store <4 x i32> %wide.load107, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !2849, !noalias !2850
  store <4 x i32> %wide.load108, ptr %i.bi, align 4, !tbaa !221, !alias.scope !2849, !noalias !2850
  store <4 x i32> %wide.load105, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !2850
  store <4 x i32> %wide.load106, ptr %i.bj, align 4, !tbaa !221, !alias.scope !2850
  %index.next109 = add nuw i64 %index102, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next109, %n.vec100
  br i1 %i.bk, label %middle.block110, label %vector.body101, !llvm.loop !2835

middle.block110:                                  ; preds = %vector.body101
  %cmp.n111 = icmp eq i64 %i.bb, %n.vec100
  br i1 %cmp.n111, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader114

.lr.ph.i.i.i.preheader114:                        ; preds = %vector.memcheck91, %.lr.ph.i.i.i.preheader, %middle.block110
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck91 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block110 ]
  %.079.i.i.i.ph = phi ptr [ %0, %vector.memcheck91 ], [ %0, %.lr.ph.i.i.i.preheader ], [ %i.bg, %middle.block110 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader114, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.bl = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.bl, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.bm, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2836

bb.ab:                                            ; preds = %bb.aa
  %i.bo = sub i64 %i.ap, %i.at
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %bb.ab
  %.071.i.i = phi i64 [ %i.as, %bb.ab ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.av, %bb.ab ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %0, %bb.ab ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.bq = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.br = icmp slt i64 %.067.i.i, %i.bq
  br i1 %i.br, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bs = icmp sgt i64 %i.bq, 0
  br i1 %i.bs, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.ad
  %i.bt = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.bu = shl i64 %.071.i.i, 2
  %i.bv = sub i64 %.071.i.i, %.067.i.i
  %i.bw = shl i64 %i.bv, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.bw
  %scevgep61 = getelementptr i8, ptr %.041.i.i, i64 %i.bu
  %bound0 = icmp ult ptr %.041.i.i, %scevgep61
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 4 uses
  %i.bx = shl i64 %n.vec, 2                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr i8, ptr %.041.i.i, i64 %i.bx ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ca ; 3 uses
  %next.gep62 = getelementptr i8, ptr %.041.i.i, i64 %i.ca ; 3 uses
  %i.cb = getelementptr i8, ptr %next.gep62, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !2851, !noalias !2852
  %wide.load63 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !221, !alias.scope !2851, !noalias !2852
  %i.cc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load64 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2852
  %wide.load65 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !221, !alias.scope !2852
  store <4 x i32> %wide.load64, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !2851, !noalias !2852
  store <4 x i32> %wide.load65, ptr %i.cb, align 4, !tbaa !221, !alias.scope !2851, !noalias !2852
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2852
  store <4 x i32> %wide.load63, ptr %i.cc, align 4, !tbaa !221, !alias.scope !2852
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !2840

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph90.preheader.i.i ], [ %i.by, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.bz, %middle.block ] ; 2 uses
  %i.ce = sub i64 %.071.i.i, %.067.i.i
  %xtraiter117 = and i64 %i.ce, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.ci, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.ch, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.cg, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.cf = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.cf, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.cg = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.ci = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !2841

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ci, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ch, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %i.cj = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ck = add i64 %i.cj, %.067.i.i
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.ad
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.ad ], [ %i.bz, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.cx, %.lr.ph90.i.i ]
  %i.cm = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection5FieldEEEEET_S7_S7_S7_.exit, label %bb.ae

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.cz, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.cy, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.cx, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.cn = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.cn, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.co = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.co, align 4, !tbaa !221
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !221
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.cp, align 4, !tbaa !221
  %i.cr = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.cr, align 4, !tbaa !221
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !221
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.cs, align 4, !tbaa !221
  %i.cu = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.cu, align 4, !tbaa !221
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !221
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.cv, align 4, !tbaa !221
  %i.cx = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.cz = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.cz, %i.bq
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !2842

bb.ae:                                            ; preds = %._crit_edge91.i.i
  %i.da = sub nsw i64 %.067.i.i, %i.cm
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.db = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.dc = sub i64 0, %i.bq
  %i.dd = getelementptr [4 x i8], ptr %i.db, i64 %i.dc ; 6 uses
  %i.de = icmp sgt i64 %.067.i.i, 0
end_hunk_3
begin_hunk_4_@_ZSt22__merge_without_bufferIPN11flatbuffers6OffsetIN10reflection6ObjectEEElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_:bb.a

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr %0, align 4, !tbaa !221
  store i32 %i.o, ptr %1, align 4, !tbaa !221
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.ay = icmp sgt i64 %3, %4
  br i1 %i.ay, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit39

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.az = sdiv i64 %3, 2                          ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = load ptr, ptr %5, align 8, !tbaa !556, !nonnull !209, !align !446 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !396
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !387
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.ba, align 4, !tbaa !558
  %i.bn = zext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !221
  %i.br = sext i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i = icmp ne i16 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i)
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !221
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.be, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.cd = lshr i64 %.017.i, 1                     ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.01116.i, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !558
  %i.cg = zext i32 %i.cf to i64
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.bl, i64 %i.ch ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !221
  %i.ck = sext i32 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i16 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !221
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.cv)
  %i.cw = zext i32 %.sroa.speculated.i.i.i.i.i.i to i64
  %i.cx = tail call i32 @memcmp(ptr noundef nonnull readonly %i.cu, ptr noundef nonnull readonly %i.cb, i64 noundef %i.cw) #37 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = icmp ult i32 %i.cv, %i.cc
  %i.da = icmp slt i32 %i.cx, 0
  %i.db = select i1 %i.cy, i1 %i.cz, i1 %i.da     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.dd = xor i64 %i.cd, -1
  %i.de = add nsw i64 %.017.i, %i.dd
  %.112.i = select i1 %i.db, ptr %i.dc, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.db, i64 %i.de, i64 %i.cd   ; 2 uses
  %i.df = icmp sgt i64 %.1.i, 0
  br i1 %i.df, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !46

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bc, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.dg = sub i64 %.pre-phi, %i.bc
  %i.dh = ashr exact i64 %i.dg, 2
  br label %bb.f

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit39: ; preds = %bb.e
  %i.di = sdiv i64 %4, 2                          ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.di ; 2 uses
  %i.dk = ptrtoint ptr %1 to i64
  %i.dl = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %i.dp = load ptr, ptr %5, align 8, !tbaa !556, !nonnull !209, !align !446 ; 2 uses
  %i.dq = load i32, ptr %i.dj, align 4, !tbaa !558
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !396
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !387
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv ; 2 uses
  %i.dx = sub nsw i64 0, %i.dr
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !221
  %i.ea = sext i32 %i.dz to i64
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i42 = icmp ne i16 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i42)
  %i.ef = zext i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !221
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i43

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i43: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41
  %.017.i44 = phi i64 [ %i.dn, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.1.i51, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %.01116.i45 = phi ptr [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.112.i50, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %i.em = lshr i64 %.017.i44, 1                   ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.01116.i45, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !558
  %i.ep = zext i32 %i.eo to i64
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.dw, i64 %i.eq ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !221
  %i.et = sext i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i48 = icmp ne i16 %i.ex, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i48)
  %i.ey = zext i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !221
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i49 = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.el)
  %i.ff = zext i32 %.sroa.speculated.i.i.i.i.i.i49 to i64
  %i.fg = tail call i32 @memcmp(ptr noundef nonnull readonly %i.ek, ptr noundef nonnull readonly %i.fd, i64 noundef %i.ff) #37 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  %i.fi = icmp ult i32 %i.el, %i.fe
  %i.fj = icmp slt i32 %i.fg, 0
  %i.fk = select i1 %i.fh, i1 %i.fi, i1 %i.fj     ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fm = xor i64 %i.em, -1
  %i.fn = add nsw i64 %.017.i44, %i.fm
  %.112.i50 = select i1 %i.fk, ptr %.01116.i45, ptr %i.fl ; 3 uses
  %.1.i51 = select i1 %i.fk, i64 %i.em, i64 %i.fn ; 2 uses
  %i.fo = icmp sgt i64 %.1.i51, 0
  br i1 %i.fo, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !47

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i43
  %.pre70 = ptrtoint ptr %.112.i50 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %.pre-phi71 = phi i64 [ %.pre70, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.dl, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %.011.lcssa.i40 = phi ptr [ %.112.i50, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %i.fp = sub i64 %.pre-phi71, %i.dl
  %i.fq = ashr exact i64 %i.fp, 2
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.065 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dj, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 4 uses
  %.064 = phi ptr [ %i.ba, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i40, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 12 uses
  %.033 = phi i64 [ %i.dh, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.di, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.az, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.fq, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.fr = icmp eq ptr %.064, %1
  br i1 %i.fr, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fs = icmp eq ptr %.065, %1
  br i1 %i.fs, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ft = ptrtoint ptr %.065 to i64               ; 2 uses
  %i.fu = ptrtoint ptr %.064 to i64               ; 3 uses
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2                 ; 2 uses
  %i.fx = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.fy = sub i64 %i.fx, %i.fu
  %i.fz = ashr exact i64 %i.fy, 2                 ; 3 uses
  %i.ga = sub nsw i64 %i.fw, %i.fz
  %i.gb = icmp eq i64 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.i.i.i.preheader, label %bb.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.gc = add i64 %i.fx, -4
  %i.gd = sub i64 %i.gc, %i.fu                    ; 3 uses
  %i.ge = lshr i64 %i.gd, 2
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check120 = icmp ult i64 %i.gd, 60
  br i1 %min.iters.check120, label %.lr.ph.i.i.i.preheader136, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.gg = and i64 %i.gd, -4
  %i.gh = add i64 %i.gg, 4                        ; 2 uses
  %scevgep114 = getelementptr i8, ptr %.064, i64 %i.gh
  %scevgep115 = getelementptr i8, ptr %1, i64 %i.gh
  %bound0116 = icmp ult ptr %.064, %scevgep115
  %bound1117 = icmp ult ptr %1, %scevgep114
  %found.conflict118 = and i1 %bound0116, %bound1117
  br i1 %found.conflict118, label %.lr.ph.i.i.i.preheader136, label %vector.ph121

vector.ph121:                                     ; preds = %vector.memcheck113
  %n.vec122 = and i64 %i.gf, 9223372036854775800  ; 3 uses
  %i.gi = shl i64 %n.vec122, 2                    ; 2 uses
  %i.gj = getelementptr i8, ptr %1, i64 %i.gi
  %i.gk = getelementptr i8, ptr %.064, i64 %i.gi
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next131, %vector.body123 ] ; 2 uses
  %i.gl = shl i64 %index124, 2                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %1, i64 %i.gl ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.064, i64 %i.gl ; 3 uses
  %i.gm = getelementptr i8, ptr %next.gep126, i64 16 ; 2 uses
  %wide.load127 = load <4 x i32>, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !2887, !noalias !2888
  %wide.load128 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !221, !alias.scope !2887, !noalias !2888
  %i.gn = getelementptr i8, ptr %next.gep125, i64 16 ; 2 uses
  %wide.load129 = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !2888
  %wide.load130 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !221, !alias.scope !2888
  store <4 x i32> %wide.load129, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !2887, !noalias !2888
  store <4 x i32> %wide.load130, ptr %i.gm, align 4, !tbaa !221, !alias.scope !2887, !noalias !2888
  store <4 x i32> %wide.load127, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !2888
  store <4 x i32> %wide.load128, ptr %i.gn, align 4, !tbaa !221, !alias.scope !2888
  %index.next131 = add nuw i64 %index124, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next131, %n.vec122
  br i1 %i.go, label %middle.block132, label %vector.body123, !llvm.loop !2873

middle.block132:                                  ; preds = %vector.body123
  %cmp.n133 = icmp eq i64 %i.gf, %n.vec122
  br i1 %cmp.n133, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader136

.lr.ph.i.i.i.preheader136:                        ; preds = %vector.memcheck113, %.lr.ph.i.i.i.preheader, %middle.block132
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck113 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.gj, %middle.block132 ]
  %.079.i.i.i.ph = phi ptr [ %.064, %vector.memcheck113 ], [ %.064, %.lr.ph.i.i.i.preheader ], [ %i.gk, %middle.block132 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader136, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.gp = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.gp, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.gq, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2874

bb.i:                                             ; preds = %bb.h
  %i.gs = sub i64 %i.ft, %i.fx
  %i.gt = getelementptr inbounds i8, ptr %.064, i64 %i.gs ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.071.i.i = phi i64 [ %i.fw, %bb.i ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.fz, %bb.i ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %.064, %bb.i ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.gu = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.gv = icmp slt i64 %.067.i.i, %i.gu
  br i1 %i.gv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.gw = icmp sgt i64 %i.gu, 0
  br i1 %i.gw, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.k
  %i.gx = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.gu, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.gy = shl i64 %.071.i.i, 2
  %i.gz = sub i64 %.071.i.i, %.067.i.i
  %i.ha = shl i64 %i.gz, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.ha
  %scevgep83 = getelementptr i8, ptr %.041.i.i, i64 %i.gy
  %bound0 = icmp ult ptr %.041.i.i, %scevgep83
  %bound1 = icmp ult ptr %i.gx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gu, 9223372036854775800     ; 4 uses
  %i.hb = shl i64 %n.vec, 2                       ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gx, i64 %i.hb
  %i.hd = getelementptr i8, ptr %.041.i.i, i64 %i.hb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.he = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gx, i64 %i.he ; 3 uses
  %next.gep84 = getelementptr i8, ptr %.041.i.i, i64 %i.he ; 3 uses
  %i.hf = getelementptr i8, ptr %next.gep84, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !2889, !noalias !2890
  %wide.load85 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !221, !alias.scope !2889, !noalias !2890
  %i.hg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load86 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2890
  %wide.load87 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !221, !alias.scope !2890
  store <4 x i32> %wide.load86, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !2889, !noalias !2890
  store <4 x i32> %wide.load87, ptr %i.hf, align 4, !tbaa !221, !alias.scope !2889, !noalias !2890
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2890
  store <4 x i32> %wide.load85, ptr %i.hg, align 4, !tbaa !221, !alias.scope !2890
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !2878

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gu, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.gx, %vector.memcheck ], [ %i.gx, %.lr.ph90.preheader.i.i ], [ %i.hc, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.hd, %middle.block ] ; 2 uses
  %i.hi = sub i64 %.071.i.i, %.067.i.i
  %xtraiter139 = and i64 %i.hi, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.hm, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.hl, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.hk, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.hj = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.hj, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.hk = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.hm = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !2879

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hm, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hl, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %i.hn = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ho = add i64 %i.hn, %.067.i.i
  %i.hp = icmp ugt i64 %i.ho, -4
  br i1 %i.hp, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.k
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.k ], [ %i.hd, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.ib, %.lr.ph90.i.i ]
  %i.hq = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.hq, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %bb.l

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.id, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.ic, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.ib, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.hr = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.hr, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.hs = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.hs, align 4, !tbaa !221
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !221
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.ht, align 4, !tbaa !221
  %i.hv = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.hv, align 4, !tbaa !221
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !221
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.hw, align 4, !tbaa !221
  %i.hy = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.hy, align 4, !tbaa !221
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !221
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.hz, align 4, !tbaa !221
  %i.ib = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.id = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.id, %i.gu
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !2880

bb.l:                                             ; preds = %._crit_edge91.i.i
  %i.ie = sub nsw i64 %.067.i.i, %i.hq
  br label %.backedge

bb.m:                                             ; preds = %bb.j
  %i.if = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.ig = sub i64 0, %i.gu
  %i.ih = getelementptr [4 x i8], ptr %i.if, i64 %i.ig ; 6 uses
  %i.ii = icmp sgt i64 %.067.i.i, 0
end_hunk_4
begin_hunk_5_@_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection6ObjectEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_:bb.a
  %i.dl = icmp ult i32 %i.co, %i.dh
  %i.dm = icmp slt i32 %i.dj, 0
  %i.dn = select i1 %i.dk, i1 %i.dl, i1 %i.dm     ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.dp = xor i64 %i.cp, -1
  %i.dq = add nsw i64 %.017.i56, %i.dp
  %.112.i62 = select i1 %i.dn, ptr %.01116.i57, ptr %i.do ; 3 uses
  %.1.i63 = select i1 %i.dn, i64 %i.cp, i64 %i.dq ; 2 uses
  %i.dr = icmp sgt i64 %.1.i63, 0
  br i1 %i.dr, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !47

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.pre80 = ptrtoint ptr %.112.i62 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit51
  %.pre-phi81 = phi i64 [ %.pre80, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bo, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %.011.lcssa.i52 = phi ptr [ %.112.i62, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection6ObjectEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %i.ds = sub i64 %.pre-phi81, %i.bo
  %i.dt = ashr exact i64 %i.ds, 2
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.077 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bm, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.076 = phi ptr [ %i.d, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i52, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.bk, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bl, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.c, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dt, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection6ObjectEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.du = sub nsw i64 %3, %.0                     ; 2 uses
  %i.dv = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %.076, ptr noundef %1, ptr noundef %.077, i64 noundef %i.du, i64 noundef %.043, ptr noundef %5, i64 noundef %6) ; 2 uses
  %i.dw = load ptr, ptr %7, align 8, !tbaa !556, !nonnull !209, !align !446
  store ptr %i.dw, ptr %9, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection6ObjectEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %0, ptr noundef %.076, ptr noundef %i.dv, i64 noundef %.0, i64 noundef %.043, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %9)
  %i.dx = sub nsw i64 %4, %.043
  %i.dy = load ptr, ptr %7, align 8, !tbaa !556, !nonnull !209, !align !446
  store ptr %i.dy, ptr %10, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection6ObjectEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %i.dv, ptr noundef %.077, ptr noundef %2, i64 noundef %i.du, i64 noundef %i.dx, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %10)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 4                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !434

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.g, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !434

bb.g:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit
  %i.n = icmp eq i64 %i.i, 4
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -4
  %i.p = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.p, ptr %i.o, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !434

bb.j:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit
  %i.q = icmp eq i64 %i.d, 4
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit36

bb.l:                                             ; preds = %bb.k
  %i.r = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.r, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit36

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.p, label %bb.q, !prof !434

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %bb.r, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.y, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit37

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 4
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !434

bb.s:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit37
  %i.ac = icmp eq i64 %i.aa, 4
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit38

bb.u:                                             ; preds = %bb.t
  %i.ad = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.ad, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit38

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 2                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !434

bb.v:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit38
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit38
  %i.ai = icmp eq i64 %i.v, 4
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit39

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -4
  %i.ak = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit39

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection6ObjectEEES5_ET0_T_S7_S6_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit

bb.y:                                             ; preds = %bb.m
  %i.an = icmp eq ptr %0, %1
  br i1 %i.an, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = icmp eq ptr %2, %1
  br i1 %i.ao, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.aq = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.au = sub i64 %i.at, %i.aq
  %i.av = ashr exact i64 %i.au, 2                 ; 3 uses
  %i.aw = sub nsw i64 %i.as, %i.av
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i.i.preheader, label %bb.ab

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aa
  %i.ay = add i64 %i.at, -4
  %i.az = sub i64 %i.ay, %i.aq                    ; 3 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check98 = icmp ult i64 %i.az, 60
  br i1 %min.iters.check98, label %.lr.ph.i.i.i.preheader114, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.bc = and i64 %i.az, -4
  %i.bd = add i64 %i.bc, 4                        ; 2 uses
  %scevgep92 = getelementptr i8, ptr %0, i64 %i.bd
  %scevgep93 = getelementptr i8, ptr %1, i64 %i.bd
  %bound094 = icmp ult ptr %0, %scevgep93
  %bound195 = icmp ult ptr %1, %scevgep92
  %found.conflict96 = and i1 %bound094, %bound195
  br i1 %found.conflict96, label %.lr.ph.i.i.i.preheader114, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck91
  %n.vec100 = and i64 %i.bb, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec100, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = getelementptr i8, ptr %0, i64 %i.be
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next109, %vector.body101 ] ; 2 uses
  %i.bh = shl i64 %index102, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %1, i64 %i.bh ; 3 uses
  %next.gep104 = getelementptr i8, ptr %0, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep104, i64 16 ; 2 uses
  %wide.load105 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !2910, !noalias !2911
  %wide.load106 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !221, !alias.scope !2910, !noalias !2911
  %i.bj = getelementptr i8, ptr %next.gep103, i64 16 ; 2 uses
  %wide.load107 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !2911
  %wide.load108 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !221, !alias.scope !2911
  store <4 x i32> %wide.load107, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !2910, !noalias !2911
  store <4 x i32> %wide.load108, ptr %i.bi, align 4, !tbaa !221, !alias.scope !2910, !noalias !2911
  store <4 x i32> %wide.load105, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !2911
  store <4 x i32> %wide.load106, ptr %i.bj, align 4, !tbaa !221, !alias.scope !2911
  %index.next109 = add nuw i64 %index102, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next109, %n.vec100
  br i1 %i.bk, label %middle.block110, label %vector.body101, !llvm.loop !2896

middle.block110:                                  ; preds = %vector.body101
  %cmp.n111 = icmp eq i64 %i.bb, %n.vec100
  br i1 %cmp.n111, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader114

.lr.ph.i.i.i.preheader114:                        ; preds = %vector.memcheck91, %.lr.ph.i.i.i.preheader, %middle.block110
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck91 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block110 ]
  %.079.i.i.i.ph = phi ptr [ %0, %vector.memcheck91 ], [ %0, %.lr.ph.i.i.i.preheader ], [ %i.bg, %middle.block110 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader114, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.bl = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.bl, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.bm, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2897

bb.ab:                                            ; preds = %bb.aa
  %i.bo = sub i64 %i.ap, %i.at
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %bb.ab
  %.071.i.i = phi i64 [ %i.as, %bb.ab ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.av, %bb.ab ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %0, %bb.ab ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.bq = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.br = icmp slt i64 %.067.i.i, %i.bq
  br i1 %i.br, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bs = icmp sgt i64 %i.bq, 0
  br i1 %i.bs, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.ad
  %i.bt = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.bu = shl i64 %.071.i.i, 2
  %i.bv = sub i64 %.071.i.i, %.067.i.i
  %i.bw = shl i64 %i.bv, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.bw
  %scevgep61 = getelementptr i8, ptr %.041.i.i, i64 %i.bu
  %bound0 = icmp ult ptr %.041.i.i, %scevgep61
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 4 uses
  %i.bx = shl i64 %n.vec, 2                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr i8, ptr %.041.i.i, i64 %i.bx ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ca ; 3 uses
  %next.gep62 = getelementptr i8, ptr %.041.i.i, i64 %i.ca ; 3 uses
  %i.cb = getelementptr i8, ptr %next.gep62, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !2912, !noalias !2913
  %wide.load63 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !221, !alias.scope !2912, !noalias !2913
  %i.cc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load64 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2913
  %wide.load65 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !221, !alias.scope !2913
  store <4 x i32> %wide.load64, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !2912, !noalias !2913
  store <4 x i32> %wide.load65, ptr %i.cb, align 4, !tbaa !221, !alias.scope !2912, !noalias !2913
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2913
  store <4 x i32> %wide.load63, ptr %i.cc, align 4, !tbaa !221, !alias.scope !2913
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !2901

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph90.preheader.i.i ], [ %i.by, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.bz, %middle.block ] ; 2 uses
  %i.ce = sub i64 %.071.i.i, %.067.i.i
  %xtraiter117 = and i64 %i.ce, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.ci, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.ch, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.cg, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.cf = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.cf, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.cg = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.ci = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !2902

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ci, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ch, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %i.cj = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ck = add i64 %i.cj, %.067.i.i
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.ad
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.ad ], [ %i.bz, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.cx, %.lr.ph90.i.i ]
  %i.cm = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection6ObjectEEEEET_S7_S7_S7_.exit, label %bb.ae

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.cz, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.cy, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.cx, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.cn = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.cn, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.co = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.co, align 4, !tbaa !221
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !221
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.cp, align 4, !tbaa !221
  %i.cr = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.cr, align 4, !tbaa !221
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !221
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.cs, align 4, !tbaa !221
  %i.cu = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.cu, align 4, !tbaa !221
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !221
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.cv, align 4, !tbaa !221
  %i.cx = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.cz = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.cz, %i.bq
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !2903

bb.ae:                                            ; preds = %._crit_edge91.i.i
  %i.da = sub nsw i64 %.067.i.i, %i.cm
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.db = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.dc = sub i64 0, %i.bq
  %i.dd = getelementptr [4 x i8], ptr %i.db, i64 %i.dc ; 6 uses
  %i.de = icmp sgt i64 %.067.i.i, 0
end_hunk_5
begin_hunk_6_@_ZSt22__merge_without_bufferIPN11flatbuffers6OffsetIN10reflection4EnumEEElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_:bb.a

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr %0, align 4, !tbaa !221
  store i32 %i.o, ptr %1, align 4, !tbaa !221
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.ay = icmp sgt i64 %3, %4
  br i1 %i.ay, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit39

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.az = sdiv i64 %3, 2                          ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = load ptr, ptr %5, align 8, !tbaa !560, !nonnull !209, !align !446 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !396
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !387
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.ba, align 4, !tbaa !562
  %i.bn = zext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !221
  %i.br = sext i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i = icmp ne i16 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i)
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !221
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.be, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.cd = lshr i64 %.017.i, 1                     ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.01116.i, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !562
  %i.cg = zext i32 %i.cf to i64
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.bl, i64 %i.ch ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !221
  %i.ck = sext i32 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i16 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !221
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.cv)
  %i.cw = zext i32 %.sroa.speculated.i.i.i.i.i.i to i64
  %i.cx = tail call i32 @memcmp(ptr noundef nonnull readonly %i.cu, ptr noundef nonnull readonly %i.cb, i64 noundef %i.cw) #37 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = icmp ult i32 %i.cv, %i.cc
  %i.da = icmp slt i32 %i.cx, 0
  %i.db = select i1 %i.cy, i1 %i.cz, i1 %i.da     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.dd = xor i64 %i.cd, -1
  %i.de = add nsw i64 %.017.i, %i.dd
  %.112.i = select i1 %i.db, ptr %i.dc, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.db, i64 %i.de, i64 %i.cd   ; 2 uses
  %i.df = icmp sgt i64 %.1.i, 0
  br i1 %i.df, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !49

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bc, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.dg = sub i64 %.pre-phi, %i.bc
  %i.dh = ashr exact i64 %i.dg, 2
  br label %bb.f

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit39: ; preds = %bb.e
  %i.di = sdiv i64 %4, 2                          ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.di ; 2 uses
  %i.dk = ptrtoint ptr %1 to i64
  %i.dl = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %i.dp = load ptr, ptr %5, align 8, !tbaa !560, !nonnull !209, !align !446 ; 2 uses
  %i.dq = load i32, ptr %i.dj, align 4, !tbaa !562
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !396
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !387
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv ; 2 uses
  %i.dx = sub nsw i64 0, %i.dr
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !221
  %i.ea = sext i32 %i.dz to i64
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i42 = icmp ne i16 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i42)
  %i.ef = zext i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !221
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i43

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i43: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41
  %.017.i44 = phi i64 [ %i.dn, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.1.i51, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %.01116.i45 = phi ptr [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.112.i50, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %i.em = lshr i64 %.017.i44, 1                   ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.01116.i45, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !562
  %i.ep = zext i32 %i.eo to i64
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.dw, i64 %i.eq ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !221
  %i.et = sext i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i48 = icmp ne i16 %i.ex, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i48)
  %i.ey = zext i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !221
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i49 = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.el)
  %i.ff = zext i32 %.sroa.speculated.i.i.i.i.i.i49 to i64
  %i.fg = tail call i32 @memcmp(ptr noundef nonnull readonly %i.ek, ptr noundef nonnull readonly %i.fd, i64 noundef %i.ff) #37 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  %i.fi = icmp ult i32 %i.el, %i.fe
  %i.fj = icmp slt i32 %i.fg, 0
  %i.fk = select i1 %i.fh, i1 %i.fi, i1 %i.fj     ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fm = xor i64 %i.em, -1
  %i.fn = add nsw i64 %.017.i44, %i.fm
  %.112.i50 = select i1 %i.fk, ptr %.01116.i45, ptr %i.fl ; 3 uses
  %.1.i51 = select i1 %i.fk, i64 %i.em, i64 %i.fn ; 2 uses
  %i.fo = icmp sgt i64 %.1.i51, 0
  br i1 %i.fo, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !50

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i43
  %.pre70 = ptrtoint ptr %.112.i50 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %.pre-phi71 = phi i64 [ %.pre70, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.dl, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %.011.lcssa.i40 = phi ptr [ %.112.i50, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %i.fp = sub i64 %.pre-phi71, %i.dl
  %i.fq = ashr exact i64 %i.fp, 2
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.065 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dj, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 4 uses
  %.064 = phi ptr [ %i.ba, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i40, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 12 uses
  %.033 = phi i64 [ %i.dh, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.di, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.az, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.fq, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.fr = icmp eq ptr %.064, %1
  br i1 %i.fr, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fs = icmp eq ptr %.065, %1
  br i1 %i.fs, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ft = ptrtoint ptr %.065 to i64               ; 2 uses
  %i.fu = ptrtoint ptr %.064 to i64               ; 3 uses
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2                 ; 2 uses
  %i.fx = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.fy = sub i64 %i.fx, %i.fu
  %i.fz = ashr exact i64 %i.fy, 2                 ; 3 uses
  %i.ga = sub nsw i64 %i.fw, %i.fz
  %i.gb = icmp eq i64 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.i.i.i.preheader, label %bb.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.gc = add i64 %i.fx, -4
  %i.gd = sub i64 %i.gc, %i.fu                    ; 3 uses
  %i.ge = lshr i64 %i.gd, 2
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check120 = icmp ult i64 %i.gd, 60
  br i1 %min.iters.check120, label %.lr.ph.i.i.i.preheader136, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.gg = and i64 %i.gd, -4
  %i.gh = add i64 %i.gg, 4                        ; 2 uses
  %scevgep114 = getelementptr i8, ptr %.064, i64 %i.gh
  %scevgep115 = getelementptr i8, ptr %1, i64 %i.gh
  %bound0116 = icmp ult ptr %.064, %scevgep115
  %bound1117 = icmp ult ptr %1, %scevgep114
  %found.conflict118 = and i1 %bound0116, %bound1117
  br i1 %found.conflict118, label %.lr.ph.i.i.i.preheader136, label %vector.ph121

vector.ph121:                                     ; preds = %vector.memcheck113
  %n.vec122 = and i64 %i.gf, 9223372036854775800  ; 3 uses
  %i.gi = shl i64 %n.vec122, 2                    ; 2 uses
  %i.gj = getelementptr i8, ptr %1, i64 %i.gi
  %i.gk = getelementptr i8, ptr %.064, i64 %i.gi
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next131, %vector.body123 ] ; 2 uses
  %i.gl = shl i64 %index124, 2                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %1, i64 %i.gl ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.064, i64 %i.gl ; 3 uses
  %i.gm = getelementptr i8, ptr %next.gep126, i64 16 ; 2 uses
  %wide.load127 = load <4 x i32>, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !2948, !noalias !2949
  %wide.load128 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !221, !alias.scope !2948, !noalias !2949
  %i.gn = getelementptr i8, ptr %next.gep125, i64 16 ; 2 uses
  %wide.load129 = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !2949
  %wide.load130 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !221, !alias.scope !2949
  store <4 x i32> %wide.load129, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !2948, !noalias !2949
  store <4 x i32> %wide.load130, ptr %i.gm, align 4, !tbaa !221, !alias.scope !2948, !noalias !2949
  store <4 x i32> %wide.load127, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !2949
  store <4 x i32> %wide.load128, ptr %i.gn, align 4, !tbaa !221, !alias.scope !2949
  %index.next131 = add nuw i64 %index124, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next131, %n.vec122
  br i1 %i.go, label %middle.block132, label %vector.body123, !llvm.loop !2934

middle.block132:                                  ; preds = %vector.body123
  %cmp.n133 = icmp eq i64 %i.gf, %n.vec122
  br i1 %cmp.n133, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader136

.lr.ph.i.i.i.preheader136:                        ; preds = %vector.memcheck113, %.lr.ph.i.i.i.preheader, %middle.block132
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck113 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.gj, %middle.block132 ]
  %.079.i.i.i.ph = phi ptr [ %.064, %vector.memcheck113 ], [ %.064, %.lr.ph.i.i.i.preheader ], [ %i.gk, %middle.block132 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader136, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.gp = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.gp, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.gq, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2935

bb.i:                                             ; preds = %bb.h
  %i.gs = sub i64 %i.ft, %i.fx
  %i.gt = getelementptr inbounds i8, ptr %.064, i64 %i.gs ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.071.i.i = phi i64 [ %i.fw, %bb.i ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.fz, %bb.i ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %.064, %bb.i ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.gu = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.gv = icmp slt i64 %.067.i.i, %i.gu
  br i1 %i.gv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.gw = icmp sgt i64 %i.gu, 0
  br i1 %i.gw, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.k
  %i.gx = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.gu, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.gy = shl i64 %.071.i.i, 2
  %i.gz = sub i64 %.071.i.i, %.067.i.i
  %i.ha = shl i64 %i.gz, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.ha
  %scevgep83 = getelementptr i8, ptr %.041.i.i, i64 %i.gy
  %bound0 = icmp ult ptr %.041.i.i, %scevgep83
  %bound1 = icmp ult ptr %i.gx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gu, 9223372036854775800     ; 4 uses
  %i.hb = shl i64 %n.vec, 2                       ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gx, i64 %i.hb
  %i.hd = getelementptr i8, ptr %.041.i.i, i64 %i.hb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.he = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gx, i64 %i.he ; 3 uses
  %next.gep84 = getelementptr i8, ptr %.041.i.i, i64 %i.he ; 3 uses
  %i.hf = getelementptr i8, ptr %next.gep84, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !2950, !noalias !2951
  %wide.load85 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !221, !alias.scope !2950, !noalias !2951
  %i.hg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load86 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2951
  %wide.load87 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !221, !alias.scope !2951
  store <4 x i32> %wide.load86, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !2950, !noalias !2951
  store <4 x i32> %wide.load87, ptr %i.hf, align 4, !tbaa !221, !alias.scope !2950, !noalias !2951
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2951
  store <4 x i32> %wide.load85, ptr %i.hg, align 4, !tbaa !221, !alias.scope !2951
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !2939

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gu, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.gx, %vector.memcheck ], [ %i.gx, %.lr.ph90.preheader.i.i ], [ %i.hc, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.hd, %middle.block ] ; 2 uses
  %i.hi = sub i64 %.071.i.i, %.067.i.i
  %xtraiter139 = and i64 %i.hi, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.hm, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.hl, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.hk, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.hj = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.hj, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.hk = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.hm = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !2940

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hm, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hl, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %i.hn = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ho = add i64 %i.hn, %.067.i.i
  %i.hp = icmp ugt i64 %i.ho, -4
  br i1 %i.hp, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.k
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.k ], [ %i.hd, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.ib, %.lr.ph90.i.i ]
  %i.hq = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.hq, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %bb.l

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.id, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.ic, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.ib, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.hr = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.hr, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.hs = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.hs, align 4, !tbaa !221
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !221
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.ht, align 4, !tbaa !221
  %i.hv = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.hv, align 4, !tbaa !221
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !221
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.hw, align 4, !tbaa !221
  %i.hy = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.hy, align 4, !tbaa !221
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !221
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.hz, align 4, !tbaa !221
  %i.ib = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.id = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.id, %i.gu
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !2941

bb.l:                                             ; preds = %._crit_edge91.i.i
  %i.ie = sub nsw i64 %.067.i.i, %i.hq
  br label %.backedge

bb.m:                                             ; preds = %bb.j
  %i.if = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.ig = sub i64 0, %i.gu
  %i.ih = getelementptr [4 x i8], ptr %i.if, i64 %i.ig ; 6 uses
  %i.ii = icmp sgt i64 %.067.i.i, 0
end_hunk_6
begin_hunk_7_@_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection4EnumEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_:bb.a
  %i.dl = icmp ult i32 %i.co, %i.dh
  %i.dm = icmp slt i32 %i.dj, 0
  %i.dn = select i1 %i.dk, i1 %i.dl, i1 %i.dm     ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.dp = xor i64 %i.cp, -1
  %i.dq = add nsw i64 %.017.i56, %i.dp
  %.112.i62 = select i1 %i.dn, ptr %.01116.i57, ptr %i.do ; 3 uses
  %.1.i63 = select i1 %i.dn, i64 %i.cp, i64 %i.dq ; 2 uses
  %i.dr = icmp sgt i64 %.1.i63, 0
  br i1 %i.dr, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !50

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.pre80 = ptrtoint ptr %.112.i62 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit51
  %.pre-phi81 = phi i64 [ %.pre80, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bo, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %.011.lcssa.i52 = phi ptr [ %.112.i62, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection4EnumEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %i.ds = sub i64 %.pre-phi81, %i.bo
  %i.dt = ashr exact i64 %i.ds, 2
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.077 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bm, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.076 = phi ptr [ %i.d, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i52, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.bk, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bl, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.c, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dt, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection4EnumEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.du = sub nsw i64 %3, %.0                     ; 2 uses
  %i.dv = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %.076, ptr noundef %1, ptr noundef %.077, i64 noundef %i.du, i64 noundef %.043, ptr noundef %5, i64 noundef %6) ; 2 uses
  %i.dw = load ptr, ptr %7, align 8, !tbaa !560, !nonnull !209, !align !446
  store ptr %i.dw, ptr %9, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection4EnumEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %0, ptr noundef %.076, ptr noundef %i.dv, i64 noundef %.0, i64 noundef %.043, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %9)
  %i.dx = sub nsw i64 %4, %.043
  %i.dy = load ptr, ptr %7, align 8, !tbaa !560, !nonnull !209, !align !446
  store ptr %i.dy, ptr %10, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection4EnumEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %i.dv, ptr noundef %.077, ptr noundef %2, i64 noundef %i.du, i64 noundef %i.dx, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %10)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 4                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !434

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.g, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !434

bb.g:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit
  %i.n = icmp eq i64 %i.i, 4
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -4
  %i.p = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.p, ptr %i.o, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !434

bb.j:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit
  %i.q = icmp eq i64 %i.d, 4
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit36

bb.l:                                             ; preds = %bb.k
  %i.r = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.r, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit36

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.p, label %bb.q, !prof !434

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %bb.r, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.y, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit37

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 4
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !434

bb.s:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit37
  %i.ac = icmp eq i64 %i.aa, 4
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit38

bb.u:                                             ; preds = %bb.t
  %i.ad = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.ad, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit38

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 2                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !434

bb.v:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit38
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit38
  %i.ai = icmp eq i64 %i.v, 4
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit39

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -4
  %i.ak = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit39

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection4EnumEEES5_ET0_T_S7_S6_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit

bb.y:                                             ; preds = %bb.m
  %i.an = icmp eq ptr %0, %1
  br i1 %i.an, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = icmp eq ptr %2, %1
  br i1 %i.ao, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.aq = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.au = sub i64 %i.at, %i.aq
  %i.av = ashr exact i64 %i.au, 2                 ; 3 uses
  %i.aw = sub nsw i64 %i.as, %i.av
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i.i.preheader, label %bb.ab

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aa
  %i.ay = add i64 %i.at, -4
  %i.az = sub i64 %i.ay, %i.aq                    ; 3 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check98 = icmp ult i64 %i.az, 60
  br i1 %min.iters.check98, label %.lr.ph.i.i.i.preheader114, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.bc = and i64 %i.az, -4
  %i.bd = add i64 %i.bc, 4                        ; 2 uses
  %scevgep92 = getelementptr i8, ptr %0, i64 %i.bd
  %scevgep93 = getelementptr i8, ptr %1, i64 %i.bd
  %bound094 = icmp ult ptr %0, %scevgep93
  %bound195 = icmp ult ptr %1, %scevgep92
  %found.conflict96 = and i1 %bound094, %bound195
  br i1 %found.conflict96, label %.lr.ph.i.i.i.preheader114, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck91
  %n.vec100 = and i64 %i.bb, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec100, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = getelementptr i8, ptr %0, i64 %i.be
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next109, %vector.body101 ] ; 2 uses
  %i.bh = shl i64 %index102, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %1, i64 %i.bh ; 3 uses
  %next.gep104 = getelementptr i8, ptr %0, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep104, i64 16 ; 2 uses
  %wide.load105 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !2971, !noalias !2972
  %wide.load106 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !221, !alias.scope !2971, !noalias !2972
  %i.bj = getelementptr i8, ptr %next.gep103, i64 16 ; 2 uses
  %wide.load107 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !2972
  %wide.load108 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !221, !alias.scope !2972
  store <4 x i32> %wide.load107, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !2971, !noalias !2972
  store <4 x i32> %wide.load108, ptr %i.bi, align 4, !tbaa !221, !alias.scope !2971, !noalias !2972
  store <4 x i32> %wide.load105, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !2972
  store <4 x i32> %wide.load106, ptr %i.bj, align 4, !tbaa !221, !alias.scope !2972
  %index.next109 = add nuw i64 %index102, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next109, %n.vec100
  br i1 %i.bk, label %middle.block110, label %vector.body101, !llvm.loop !2957

middle.block110:                                  ; preds = %vector.body101
  %cmp.n111 = icmp eq i64 %i.bb, %n.vec100
  br i1 %cmp.n111, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader114

.lr.ph.i.i.i.preheader114:                        ; preds = %vector.memcheck91, %.lr.ph.i.i.i.preheader, %middle.block110
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck91 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block110 ]
  %.079.i.i.i.ph = phi ptr [ %0, %vector.memcheck91 ], [ %0, %.lr.ph.i.i.i.preheader ], [ %i.bg, %middle.block110 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader114, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.bl = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.bl, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.bm, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2958

bb.ab:                                            ; preds = %bb.aa
  %i.bo = sub i64 %i.ap, %i.at
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %bb.ab
  %.071.i.i = phi i64 [ %i.as, %bb.ab ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.av, %bb.ab ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %0, %bb.ab ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.bq = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.br = icmp slt i64 %.067.i.i, %i.bq
  br i1 %i.br, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bs = icmp sgt i64 %i.bq, 0
  br i1 %i.bs, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.ad
  %i.bt = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.bu = shl i64 %.071.i.i, 2
  %i.bv = sub i64 %.071.i.i, %.067.i.i
  %i.bw = shl i64 %i.bv, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.bw
  %scevgep61 = getelementptr i8, ptr %.041.i.i, i64 %i.bu
  %bound0 = icmp ult ptr %.041.i.i, %scevgep61
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 4 uses
  %i.bx = shl i64 %n.vec, 2                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr i8, ptr %.041.i.i, i64 %i.bx ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ca ; 3 uses
  %next.gep62 = getelementptr i8, ptr %.041.i.i, i64 %i.ca ; 3 uses
  %i.cb = getelementptr i8, ptr %next.gep62, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !2973, !noalias !2974
  %wide.load63 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !221, !alias.scope !2973, !noalias !2974
  %i.cc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load64 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2974
  %wide.load65 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !221, !alias.scope !2974
  store <4 x i32> %wide.load64, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !2973, !noalias !2974
  store <4 x i32> %wide.load65, ptr %i.cb, align 4, !tbaa !221, !alias.scope !2973, !noalias !2974
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !2974
  store <4 x i32> %wide.load63, ptr %i.cc, align 4, !tbaa !221, !alias.scope !2974
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !2962

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph90.preheader.i.i ], [ %i.by, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.bz, %middle.block ] ; 2 uses
  %i.ce = sub i64 %.071.i.i, %.067.i.i
  %xtraiter117 = and i64 %i.ce, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.ci, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.ch, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.cg, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.cf = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.cf, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.cg = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.ci = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !2963

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ci, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ch, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %i.cj = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ck = add i64 %i.cj, %.067.i.i
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.ad
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.ad ], [ %i.bz, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.cx, %.lr.ph90.i.i ]
  %i.cm = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection4EnumEEEEET_S7_S7_S7_.exit, label %bb.ae

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.cz, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.cy, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.cx, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.cn = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.cn, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.co = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.co, align 4, !tbaa !221
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !221
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.cp, align 4, !tbaa !221
  %i.cr = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.cr, align 4, !tbaa !221
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !221
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.cs, align 4, !tbaa !221
  %i.cu = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.cu, align 4, !tbaa !221
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !221
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.cv, align 4, !tbaa !221
  %i.cx = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.cz = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.cz, %i.bq
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !2964

bb.ae:                                            ; preds = %._crit_edge91.i.i
  %i.da = sub nsw i64 %.067.i.i, %i.cm
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.db = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.dc = sub i64 0, %i.bq
  %i.dd = getelementptr [4 x i8], ptr %i.db, i64 %i.dc ; 6 uses
  %i.de = icmp sgt i64 %.067.i.i, 0
end_hunk_7
begin_hunk_8_@_ZSt22__merge_without_bufferIPN11flatbuffers6OffsetIN10reflection7ServiceEEElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_:bb.a

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr %0, align 4, !tbaa !221
  store i32 %i.o, ptr %1, align 4, !tbaa !221
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.ay = icmp sgt i64 %3, %4
  br i1 %i.ay, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit39

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.az = sdiv i64 %3, 2                          ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = load ptr, ptr %5, align 8, !tbaa !564, !nonnull !209, !align !446 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !396
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !387
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.ba, align 4, !tbaa !566
  %i.bn = zext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !221
  %i.br = sext i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i = icmp ne i16 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i)
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !221
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.be, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.cd = lshr i64 %.017.i, 1                     ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.01116.i, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !566
  %i.cg = zext i32 %i.cf to i64
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.bl, i64 %i.ch ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !221
  %i.ck = sext i32 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i16 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !221
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.cv)
  %i.cw = zext i32 %.sroa.speculated.i.i.i.i.i.i to i64
  %i.cx = tail call i32 @memcmp(ptr noundef nonnull readonly %i.cu, ptr noundef nonnull readonly %i.cb, i64 noundef %i.cw) #37 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = icmp ult i32 %i.cv, %i.cc
  %i.da = icmp slt i32 %i.cx, 0
  %i.db = select i1 %i.cy, i1 %i.cz, i1 %i.da     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.dd = xor i64 %i.cd, -1
  %i.de = add nsw i64 %.017.i, %i.dd
  %.112.i = select i1 %i.db, ptr %i.dc, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.db, i64 %i.de, i64 %i.cd   ; 2 uses
  %i.df = icmp sgt i64 %.1.i, 0
  br i1 %i.df, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !52

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bc, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.dg = sub i64 %.pre-phi, %i.bc
  %i.dh = ashr exact i64 %i.dg, 2
  br label %bb.f

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit39: ; preds = %bb.e
  %i.di = sdiv i64 %4, 2                          ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.di ; 2 uses
  %i.dk = ptrtoint ptr %1 to i64
  %i.dl = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %i.dp = load ptr, ptr %5, align 8, !tbaa !564, !nonnull !209, !align !446 ; 2 uses
  %i.dq = load i32, ptr %i.dj, align 4, !tbaa !566
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !396
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !387
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv ; 2 uses
  %i.dx = sub nsw i64 0, %i.dr
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !221
  %i.ea = sext i32 %i.dz to i64
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i42 = icmp ne i16 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i42)
  %i.ef = zext i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !221
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i43

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i43: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41
  %.017.i44 = phi i64 [ %i.dn, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.1.i51, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %.01116.i45 = phi ptr [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.112.i50, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %i.em = lshr i64 %.017.i44, 1                   ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.01116.i45, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !566
  %i.ep = zext i32 %i.eo to i64
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.dw, i64 %i.eq ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !221
  %i.et = sext i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i48 = icmp ne i16 %i.ex, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i48)
  %i.ey = zext i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !221
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i49 = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.el)
  %i.ff = zext i32 %.sroa.speculated.i.i.i.i.i.i49 to i64
  %i.fg = tail call i32 @memcmp(ptr noundef nonnull readonly %i.ek, ptr noundef nonnull readonly %i.fd, i64 noundef %i.ff) #37 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  %i.fi = icmp ult i32 %i.el, %i.fe
  %i.fj = icmp slt i32 %i.fg, 0
  %i.fk = select i1 %i.fh, i1 %i.fi, i1 %i.fj     ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fm = xor i64 %i.em, -1
  %i.fn = add nsw i64 %.017.i44, %i.fm
  %.112.i50 = select i1 %i.fk, ptr %.01116.i45, ptr %i.fl ; 3 uses
  %.1.i51 = select i1 %i.fk, i64 %i.em, i64 %i.fn ; 2 uses
  %i.fo = icmp sgt i64 %.1.i51, 0
  br i1 %i.fo, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !53

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i43
  %.pre70 = ptrtoint ptr %.112.i50 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %.pre-phi71 = phi i64 [ %.pre70, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.dl, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %.011.lcssa.i40 = phi ptr [ %.112.i50, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %i.fp = sub i64 %.pre-phi71, %i.dl
  %i.fq = ashr exact i64 %i.fp, 2
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.065 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dj, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 4 uses
  %.064 = phi ptr [ %i.ba, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i40, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 12 uses
  %.033 = phi i64 [ %i.dh, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.di, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.az, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.fq, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.fr = icmp eq ptr %.064, %1
  br i1 %i.fr, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fs = icmp eq ptr %.065, %1
  br i1 %i.fs, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ft = ptrtoint ptr %.065 to i64               ; 2 uses
  %i.fu = ptrtoint ptr %.064 to i64               ; 3 uses
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2                 ; 2 uses
  %i.fx = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.fy = sub i64 %i.fx, %i.fu
  %i.fz = ashr exact i64 %i.fy, 2                 ; 3 uses
  %i.ga = sub nsw i64 %i.fw, %i.fz
  %i.gb = icmp eq i64 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.i.i.i.preheader, label %bb.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.gc = add i64 %i.fx, -4
  %i.gd = sub i64 %i.gc, %i.fu                    ; 3 uses
  %i.ge = lshr i64 %i.gd, 2
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check120 = icmp ult i64 %i.gd, 60
  br i1 %min.iters.check120, label %.lr.ph.i.i.i.preheader136, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.gg = and i64 %i.gd, -4
  %i.gh = add i64 %i.gg, 4                        ; 2 uses
  %scevgep114 = getelementptr i8, ptr %.064, i64 %i.gh
  %scevgep115 = getelementptr i8, ptr %1, i64 %i.gh
  %bound0116 = icmp ult ptr %.064, %scevgep115
  %bound1117 = icmp ult ptr %1, %scevgep114
  %found.conflict118 = and i1 %bound0116, %bound1117
  br i1 %found.conflict118, label %.lr.ph.i.i.i.preheader136, label %vector.ph121

vector.ph121:                                     ; preds = %vector.memcheck113
  %n.vec122 = and i64 %i.gf, 9223372036854775800  ; 3 uses
  %i.gi = shl i64 %n.vec122, 2                    ; 2 uses
  %i.gj = getelementptr i8, ptr %1, i64 %i.gi
  %i.gk = getelementptr i8, ptr %.064, i64 %i.gi
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next131, %vector.body123 ] ; 2 uses
  %i.gl = shl i64 %index124, 2                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %1, i64 %i.gl ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.064, i64 %i.gl ; 3 uses
  %i.gm = getelementptr i8, ptr %next.gep126, i64 16 ; 2 uses
  %wide.load127 = load <4 x i32>, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !3009, !noalias !3010
  %wide.load128 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !221, !alias.scope !3009, !noalias !3010
  %i.gn = getelementptr i8, ptr %next.gep125, i64 16 ; 2 uses
  %wide.load129 = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !3010
  %wide.load130 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !221, !alias.scope !3010
  store <4 x i32> %wide.load129, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !3009, !noalias !3010
  store <4 x i32> %wide.load130, ptr %i.gm, align 4, !tbaa !221, !alias.scope !3009, !noalias !3010
  store <4 x i32> %wide.load127, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !3010
  store <4 x i32> %wide.load128, ptr %i.gn, align 4, !tbaa !221, !alias.scope !3010
  %index.next131 = add nuw i64 %index124, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next131, %n.vec122
  br i1 %i.go, label %middle.block132, label %vector.body123, !llvm.loop !2995

middle.block132:                                  ; preds = %vector.body123
  %cmp.n133 = icmp eq i64 %i.gf, %n.vec122
  br i1 %cmp.n133, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader136

.lr.ph.i.i.i.preheader136:                        ; preds = %vector.memcheck113, %.lr.ph.i.i.i.preheader, %middle.block132
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck113 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.gj, %middle.block132 ]
  %.079.i.i.i.ph = phi ptr [ %.064, %vector.memcheck113 ], [ %.064, %.lr.ph.i.i.i.preheader ], [ %i.gk, %middle.block132 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader136, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.gp = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.gp, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.gq, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2996

bb.i:                                             ; preds = %bb.h
  %i.gs = sub i64 %i.ft, %i.fx
  %i.gt = getelementptr inbounds i8, ptr %.064, i64 %i.gs ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.071.i.i = phi i64 [ %i.fw, %bb.i ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.fz, %bb.i ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %.064, %bb.i ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.gu = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.gv = icmp slt i64 %.067.i.i, %i.gu
  br i1 %i.gv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.gw = icmp sgt i64 %i.gu, 0
  br i1 %i.gw, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.k
  %i.gx = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.gu, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.gy = shl i64 %.071.i.i, 2
  %i.gz = sub i64 %.071.i.i, %.067.i.i
  %i.ha = shl i64 %i.gz, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.ha
  %scevgep83 = getelementptr i8, ptr %.041.i.i, i64 %i.gy
  %bound0 = icmp ult ptr %.041.i.i, %scevgep83
  %bound1 = icmp ult ptr %i.gx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gu, 9223372036854775800     ; 4 uses
  %i.hb = shl i64 %n.vec, 2                       ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gx, i64 %i.hb
  %i.hd = getelementptr i8, ptr %.041.i.i, i64 %i.hb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.he = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gx, i64 %i.he ; 3 uses
  %next.gep84 = getelementptr i8, ptr %.041.i.i, i64 %i.he ; 3 uses
  %i.hf = getelementptr i8, ptr %next.gep84, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !3011, !noalias !3012
  %wide.load85 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !221, !alias.scope !3011, !noalias !3012
  %i.hg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load86 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !3012
  %wide.load87 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !221, !alias.scope !3012
  store <4 x i32> %wide.load86, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !3011, !noalias !3012
  store <4 x i32> %wide.load87, ptr %i.hf, align 4, !tbaa !221, !alias.scope !3011, !noalias !3012
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !3012
  store <4 x i32> %wide.load85, ptr %i.hg, align 4, !tbaa !221, !alias.scope !3012
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !3000

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gu, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.gx, %vector.memcheck ], [ %i.gx, %.lr.ph90.preheader.i.i ], [ %i.hc, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.hd, %middle.block ] ; 2 uses
  %i.hi = sub i64 %.071.i.i, %.067.i.i
  %xtraiter139 = and i64 %i.hi, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.hm, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.hl, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.hk, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.hj = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.hj, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.hk = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.hm = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !3001

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hm, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hl, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %i.hn = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ho = add i64 %i.hn, %.067.i.i
  %i.hp = icmp ugt i64 %i.ho, -4
  br i1 %i.hp, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.k
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.k ], [ %i.hd, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.ib, %.lr.ph90.i.i ]
  %i.hq = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.hq, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %bb.l

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.id, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.ic, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.ib, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.hr = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.hr, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.hs = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.hs, align 4, !tbaa !221
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !221
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.ht, align 4, !tbaa !221
  %i.hv = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.hv, align 4, !tbaa !221
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !221
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.hw, align 4, !tbaa !221
  %i.hy = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.hy, align 4, !tbaa !221
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !221
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.hz, align 4, !tbaa !221
  %i.ib = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.id = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.id, %i.gu
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !3002

bb.l:                                             ; preds = %._crit_edge91.i.i
  %i.ie = sub nsw i64 %.067.i.i, %i.hq
  br label %.backedge

bb.m:                                             ; preds = %bb.j
  %i.if = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.ig = sub i64 0, %i.gu
  %i.ih = getelementptr [4 x i8], ptr %i.if, i64 %i.ig ; 6 uses
  %i.ii = icmp sgt i64 %.067.i.i, 0
end_hunk_8
begin_hunk_9_@_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection7ServiceEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_:bb.a
  %i.dl = icmp ult i32 %i.co, %i.dh
  %i.dm = icmp slt i32 %i.dj, 0
  %i.dn = select i1 %i.dk, i1 %i.dl, i1 %i.dm     ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.dp = xor i64 %i.cp, -1
  %i.dq = add nsw i64 %.017.i56, %i.dp
  %.112.i62 = select i1 %i.dn, ptr %.01116.i57, ptr %i.do ; 3 uses
  %.1.i63 = select i1 %i.dn, i64 %i.cp, i64 %i.dq ; 2 uses
  %i.dr = icmp sgt i64 %.1.i63, 0
  br i1 %i.dr, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !53

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.pre80 = ptrtoint ptr %.112.i62 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit51
  %.pre-phi81 = phi i64 [ %.pre80, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bo, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %.011.lcssa.i52 = phi ptr [ %.112.i62, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection7ServiceEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %i.ds = sub i64 %.pre-phi81, %i.bo
  %i.dt = ashr exact i64 %i.ds, 2
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.077 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bm, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.076 = phi ptr [ %i.d, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i52, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.bk, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bl, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.c, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dt, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection7ServiceEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.du = sub nsw i64 %3, %.0                     ; 2 uses
  %i.dv = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %.076, ptr noundef %1, ptr noundef %.077, i64 noundef %i.du, i64 noundef %.043, ptr noundef %5, i64 noundef %6) ; 2 uses
  %i.dw = load ptr, ptr %7, align 8, !tbaa !564, !nonnull !209, !align !446
  store ptr %i.dw, ptr %9, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection7ServiceEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %0, ptr noundef %.076, ptr noundef %i.dv, i64 noundef %.0, i64 noundef %.043, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %9)
  %i.dx = sub nsw i64 %4, %.043
  %i.dy = load ptr, ptr %7, align 8, !tbaa !564, !nonnull !209, !align !446
  store ptr %i.dy, ptr %10, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection7ServiceEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %i.dv, ptr noundef %.077, ptr noundef %2, i64 noundef %i.du, i64 noundef %i.dx, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %10)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 4                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !434

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.g, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !434

bb.g:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit
  %i.n = icmp eq i64 %i.i, 4
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -4
  %i.p = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.p, ptr %i.o, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !434

bb.j:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit
  %i.q = icmp eq i64 %i.d, 4
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit36

bb.l:                                             ; preds = %bb.k
  %i.r = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.r, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit36

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.p, label %bb.q, !prof !434

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %bb.r, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.y, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit37

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 4
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !434

bb.s:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit37
  %i.ac = icmp eq i64 %i.aa, 4
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit38

bb.u:                                             ; preds = %bb.t
  %i.ad = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.ad, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit38

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 2                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !434

bb.v:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit38
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit38
  %i.ai = icmp eq i64 %i.v, 4
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit39

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -4
  %i.ak = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit39

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection7ServiceEEES5_ET0_T_S7_S6_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit

bb.y:                                             ; preds = %bb.m
  %i.an = icmp eq ptr %0, %1
  br i1 %i.an, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = icmp eq ptr %2, %1
  br i1 %i.ao, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.aq = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.au = sub i64 %i.at, %i.aq
  %i.av = ashr exact i64 %i.au, 2                 ; 3 uses
  %i.aw = sub nsw i64 %i.as, %i.av
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i.i.preheader, label %bb.ab

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aa
  %i.ay = add i64 %i.at, -4
  %i.az = sub i64 %i.ay, %i.aq                    ; 3 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check98 = icmp ult i64 %i.az, 60
  br i1 %min.iters.check98, label %.lr.ph.i.i.i.preheader114, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.bc = and i64 %i.az, -4
  %i.bd = add i64 %i.bc, 4                        ; 2 uses
  %scevgep92 = getelementptr i8, ptr %0, i64 %i.bd
  %scevgep93 = getelementptr i8, ptr %1, i64 %i.bd
  %bound094 = icmp ult ptr %0, %scevgep93
  %bound195 = icmp ult ptr %1, %scevgep92
  %found.conflict96 = and i1 %bound094, %bound195
  br i1 %found.conflict96, label %.lr.ph.i.i.i.preheader114, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck91
  %n.vec100 = and i64 %i.bb, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec100, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = getelementptr i8, ptr %0, i64 %i.be
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next109, %vector.body101 ] ; 2 uses
  %i.bh = shl i64 %index102, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %1, i64 %i.bh ; 3 uses
  %next.gep104 = getelementptr i8, ptr %0, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep104, i64 16 ; 2 uses
  %wide.load105 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !3032, !noalias !3033
  %wide.load106 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !221, !alias.scope !3032, !noalias !3033
  %i.bj = getelementptr i8, ptr %next.gep103, i64 16 ; 2 uses
  %wide.load107 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !3033
  %wide.load108 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !221, !alias.scope !3033
  store <4 x i32> %wide.load107, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !3032, !noalias !3033
  store <4 x i32> %wide.load108, ptr %i.bi, align 4, !tbaa !221, !alias.scope !3032, !noalias !3033
  store <4 x i32> %wide.load105, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !3033
  store <4 x i32> %wide.load106, ptr %i.bj, align 4, !tbaa !221, !alias.scope !3033
  %index.next109 = add nuw i64 %index102, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next109, %n.vec100
  br i1 %i.bk, label %middle.block110, label %vector.body101, !llvm.loop !3018

middle.block110:                                  ; preds = %vector.body101
  %cmp.n111 = icmp eq i64 %i.bb, %n.vec100
  br i1 %cmp.n111, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader114

.lr.ph.i.i.i.preheader114:                        ; preds = %vector.memcheck91, %.lr.ph.i.i.i.preheader, %middle.block110
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck91 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block110 ]
  %.079.i.i.i.ph = phi ptr [ %0, %vector.memcheck91 ], [ %0, %.lr.ph.i.i.i.preheader ], [ %i.bg, %middle.block110 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader114, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.bl = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.bl, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.bm, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !3019

bb.ab:                                            ; preds = %bb.aa
  %i.bo = sub i64 %i.ap, %i.at
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %bb.ab
  %.071.i.i = phi i64 [ %i.as, %bb.ab ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.av, %bb.ab ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %0, %bb.ab ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.bq = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.br = icmp slt i64 %.067.i.i, %i.bq
  br i1 %i.br, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bs = icmp sgt i64 %i.bq, 0
  br i1 %i.bs, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.ad
  %i.bt = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.bu = shl i64 %.071.i.i, 2
  %i.bv = sub i64 %.071.i.i, %.067.i.i
  %i.bw = shl i64 %i.bv, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.bw
  %scevgep61 = getelementptr i8, ptr %.041.i.i, i64 %i.bu
  %bound0 = icmp ult ptr %.041.i.i, %scevgep61
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 4 uses
  %i.bx = shl i64 %n.vec, 2                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr i8, ptr %.041.i.i, i64 %i.bx ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ca ; 3 uses
  %next.gep62 = getelementptr i8, ptr %.041.i.i, i64 %i.ca ; 3 uses
  %i.cb = getelementptr i8, ptr %next.gep62, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !3034, !noalias !3035
  %wide.load63 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !221, !alias.scope !3034, !noalias !3035
  %i.cc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load64 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !3035
  %wide.load65 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !221, !alias.scope !3035
  store <4 x i32> %wide.load64, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !3034, !noalias !3035
  store <4 x i32> %wide.load65, ptr %i.cb, align 4, !tbaa !221, !alias.scope !3034, !noalias !3035
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !3035
  store <4 x i32> %wide.load63, ptr %i.cc, align 4, !tbaa !221, !alias.scope !3035
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !3023

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph90.preheader.i.i ], [ %i.by, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.bz, %middle.block ] ; 2 uses
  %i.ce = sub i64 %.071.i.i, %.067.i.i
  %xtraiter117 = and i64 %i.ce, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.ci, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.ch, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.cg, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.cf = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.cf, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.cg = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.ci = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !3024

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ci, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ch, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %i.cj = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ck = add i64 %i.cj, %.067.i.i
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.ad
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.ad ], [ %i.bz, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.cx, %.lr.ph90.i.i ]
  %i.cm = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection7ServiceEEEEET_S7_S7_S7_.exit, label %bb.ae

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.cz, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.cy, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.cx, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.cn = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.cn, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.co = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.co, align 4, !tbaa !221
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !221
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.cp, align 4, !tbaa !221
  %i.cr = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.cr, align 4, !tbaa !221
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !221
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.cs, align 4, !tbaa !221
  %i.cu = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.cu, align 4, !tbaa !221
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !221
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.cv, align 4, !tbaa !221
  %i.cx = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.cz = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.cz, %i.bq
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !3025

bb.ae:                                            ; preds = %._crit_edge91.i.i
  %i.da = sub nsw i64 %.067.i.i, %i.cm
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.db = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.dc = sub i64 0, %i.bq
  %i.dd = getelementptr [4 x i8], ptr %i.db, i64 %i.dc ; 6 uses
  %i.de = icmp sgt i64 %.067.i.i, 0
end_hunk_9
begin_hunk_10_@_ZSt22__merge_without_bufferIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_:bb.a

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr %0, align 4, !tbaa !221
  store i32 %i.o, ptr %1, align 4, !tbaa !221
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.ay = icmp sgt i64 %3, %4
  br i1 %i.ay, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit39

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.az = sdiv i64 %3, 2                          ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = load ptr, ptr %5, align 8, !tbaa !568, !nonnull !209, !align !446 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !396
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !387
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.ba, align 4, !tbaa !570
  %i.bn = zext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !221
  %i.br = sext i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i = icmp ne i16 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i)
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !221
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.be, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.cd = lshr i64 %.017.i, 1                     ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.01116.i, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !570
  %i.cg = zext i32 %i.cf to i64
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.bl, i64 %i.ch ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !221
  %i.ck = sext i32 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i16 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !221
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.cv)
  %i.cw = zext i32 %.sroa.speculated.i.i.i.i.i.i to i64
  %i.cx = tail call i32 @memcmp(ptr noundef nonnull readonly %i.cu, ptr noundef nonnull readonly %i.cb, i64 noundef %i.cw) #37 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = icmp ult i32 %i.cv, %i.cc
  %i.da = icmp slt i32 %i.cx, 0
  %i.db = select i1 %i.cy, i1 %i.cz, i1 %i.da     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.dd = xor i64 %i.cd, -1
  %i.de = add nsw i64 %.017.i, %i.dd
  %.112.i = select i1 %i.db, ptr %i.dc, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.db, i64 %i.de, i64 %i.cd   ; 2 uses
  %i.df = icmp sgt i64 %.1.i, 0
  br i1 %i.df, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !55

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bc, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.dg = sub i64 %.pre-phi, %i.bc
  %i.dh = ashr exact i64 %i.dg, 2
  br label %bb.f

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit39: ; preds = %bb.e
  %i.di = sdiv i64 %4, 2                          ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.di ; 2 uses
  %i.dk = ptrtoint ptr %1 to i64
  %i.dl = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %i.dp = load ptr, ptr %5, align 8, !tbaa !568, !nonnull !209, !align !446 ; 2 uses
  %i.dq = load i32, ptr %i.dj, align 4, !tbaa !570
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !396
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !387
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv ; 2 uses
  %i.dx = sub nsw i64 0, %i.dr
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !221
  %i.ea = sext i32 %i.dz to i64
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i.i.i42 = icmp ne i16 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i42)
  %i.ef = zext i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !221
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !401 ; 2 uses
  br label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i43

_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i43: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41
  %.017.i44 = phi i64 [ %i.dn, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.1.i51, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %.01116.i45 = phi ptr [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.112.i50, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %i.em = lshr i64 %.017.i44, 1                   ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.01116.i45, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !570
  %i.ep = zext i32 %i.eo to i64
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.dw, i64 %i.eq ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !221
  %i.et = sext i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i3.i.i.i.i48 = icmp ne i16 %i.ex, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i48)
  %i.ey = zext i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !221
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i49 = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.el)
  %i.ff = zext i32 %.sroa.speculated.i.i.i.i.i.i49 to i64
  %i.fg = tail call i32 @memcmp(ptr noundef nonnull readonly %i.ek, ptr noundef nonnull readonly %i.fd, i64 noundef %i.ff) #37 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  %i.fi = icmp ult i32 %i.el, %i.fe
  %i.fj = icmp slt i32 %i.fg, 0
  %i.fk = select i1 %i.fh, i1 %i.fi, i1 %i.fj     ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fm = xor i64 %i.em, -1
  %i.fn = add nsw i64 %.017.i44, %i.fm
  %.112.i50 = select i1 %i.fk, ptr %.01116.i45, ptr %i.fl ; 3 uses
  %.1.i51 = select i1 %i.fk, i64 %i.em, i64 %i.fn ; 2 uses
  %i.fo = icmp sgt i64 %.1.i51, 0
  br i1 %i.fo, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i43, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !56

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i43
  %.pre70 = ptrtoint ptr %.112.i50 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit39
  %.pre-phi71 = phi i64 [ %.pre70, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.dl, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %.011.lcssa.i40 = phi ptr [ %.112.i50, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %i.fp = sub i64 %.pre-phi71, %i.dl
  %i.fq = ashr exact i64 %i.fp, 2
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.065 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dj, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 4 uses
  %.064 = phi ptr [ %i.ba, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i40, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 12 uses
  %.033 = phi i64 [ %i.dh, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.di, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.az, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.fq, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.fr = icmp eq ptr %.064, %1
  br i1 %i.fr, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fs = icmp eq ptr %.065, %1
  br i1 %i.fs, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ft = ptrtoint ptr %.065 to i64               ; 2 uses
  %i.fu = ptrtoint ptr %.064 to i64               ; 3 uses
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2                 ; 2 uses
  %i.fx = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.fy = sub i64 %i.fx, %i.fu
  %i.fz = ashr exact i64 %i.fy, 2                 ; 3 uses
  %i.ga = sub nsw i64 %i.fw, %i.fz
  %i.gb = icmp eq i64 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.i.i.i.preheader, label %bb.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.gc = add i64 %i.fx, -4
  %i.gd = sub i64 %i.gc, %i.fu                    ; 3 uses
  %i.ge = lshr i64 %i.gd, 2
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check120 = icmp ult i64 %i.gd, 60
  br i1 %min.iters.check120, label %.lr.ph.i.i.i.preheader136, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.gg = and i64 %i.gd, -4
  %i.gh = add i64 %i.gg, 4                        ; 2 uses
  %scevgep114 = getelementptr i8, ptr %.064, i64 %i.gh
  %scevgep115 = getelementptr i8, ptr %1, i64 %i.gh
  %bound0116 = icmp ult ptr %.064, %scevgep115
  %bound1117 = icmp ult ptr %1, %scevgep114
  %found.conflict118 = and i1 %bound0116, %bound1117
  br i1 %found.conflict118, label %.lr.ph.i.i.i.preheader136, label %vector.ph121

vector.ph121:                                     ; preds = %vector.memcheck113
  %n.vec122 = and i64 %i.gf, 9223372036854775800  ; 3 uses
  %i.gi = shl i64 %n.vec122, 2                    ; 2 uses
  %i.gj = getelementptr i8, ptr %1, i64 %i.gi
  %i.gk = getelementptr i8, ptr %.064, i64 %i.gi
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next131, %vector.body123 ] ; 2 uses
  %i.gl = shl i64 %index124, 2                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %1, i64 %i.gl ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.064, i64 %i.gl ; 3 uses
  %i.gm = getelementptr i8, ptr %next.gep126, i64 16 ; 2 uses
  %wide.load127 = load <4 x i32>, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !3070, !noalias !3071
  %wide.load128 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !221, !alias.scope !3070, !noalias !3071
  %i.gn = getelementptr i8, ptr %next.gep125, i64 16 ; 2 uses
  %wide.load129 = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !3071
  %wide.load130 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !221, !alias.scope !3071
  store <4 x i32> %wide.load129, ptr %next.gep126, align 4, !tbaa !221, !alias.scope !3070, !noalias !3071
  store <4 x i32> %wide.load130, ptr %i.gm, align 4, !tbaa !221, !alias.scope !3070, !noalias !3071
  store <4 x i32> %wide.load127, ptr %next.gep125, align 4, !tbaa !221, !alias.scope !3071
  store <4 x i32> %wide.load128, ptr %i.gn, align 4, !tbaa !221, !alias.scope !3071
  %index.next131 = add nuw i64 %index124, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next131, %n.vec122
  br i1 %i.go, label %middle.block132, label %vector.body123, !llvm.loop !3056

middle.block132:                                  ; preds = %vector.body123
  %cmp.n133 = icmp eq i64 %i.gf, %n.vec122
  br i1 %cmp.n133, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader136

.lr.ph.i.i.i.preheader136:                        ; preds = %vector.memcheck113, %.lr.ph.i.i.i.preheader, %middle.block132
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck113 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.gj, %middle.block132 ]
  %.079.i.i.i.ph = phi ptr [ %.064, %vector.memcheck113 ], [ %.064, %.lr.ph.i.i.i.preheader ], [ %i.gk, %middle.block132 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader136, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader136 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.gp = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.gp, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.gq, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !3057

bb.i:                                             ; preds = %bb.h
  %i.gs = sub i64 %i.ft, %i.fx
  %i.gt = getelementptr inbounds i8, ptr %.064, i64 %i.gs ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.071.i.i = phi i64 [ %i.fw, %bb.i ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.fz, %bb.i ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %.064, %bb.i ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.gu = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.gv = icmp slt i64 %.067.i.i, %i.gu
  br i1 %i.gv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.gw = icmp sgt i64 %i.gu, 0
  br i1 %i.gw, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.k
  %i.gx = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.gu, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.gy = shl i64 %.071.i.i, 2
  %i.gz = sub i64 %.071.i.i, %.067.i.i
  %i.ha = shl i64 %i.gz, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.ha
  %scevgep83 = getelementptr i8, ptr %.041.i.i, i64 %i.gy
  %bound0 = icmp ult ptr %.041.i.i, %scevgep83
  %bound1 = icmp ult ptr %i.gx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gu, 9223372036854775800     ; 4 uses
  %i.hb = shl i64 %n.vec, 2                       ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gx, i64 %i.hb
  %i.hd = getelementptr i8, ptr %.041.i.i, i64 %i.hb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.he = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gx, i64 %i.he ; 3 uses
  %next.gep84 = getelementptr i8, ptr %.041.i.i, i64 %i.he ; 3 uses
  %i.hf = getelementptr i8, ptr %next.gep84, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !3072, !noalias !3073
  %wide.load85 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !221, !alias.scope !3072, !noalias !3073
  %i.hg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load86 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !3073
  %wide.load87 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !221, !alias.scope !3073
  store <4 x i32> %wide.load86, ptr %next.gep84, align 4, !tbaa !221, !alias.scope !3072, !noalias !3073
  store <4 x i32> %wide.load87, ptr %i.hf, align 4, !tbaa !221, !alias.scope !3072, !noalias !3073
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !3073
  store <4 x i32> %wide.load85, ptr %i.hg, align 4, !tbaa !221, !alias.scope !3073
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !3061

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gu, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.gx, %vector.memcheck ], [ %i.gx, %.lr.ph90.preheader.i.i ], [ %i.hc, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.hd, %middle.block ] ; 2 uses
  %i.hi = sub i64 %.071.i.i, %.067.i.i
  %xtraiter139 = and i64 %i.hi, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.hm, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.hl, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.hk, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.hj = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.hj, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.hk = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.hm = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !3062

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hm, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hl, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.hk, %.lr.ph90.i.i.prol ]
  %i.hn = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ho = add i64 %i.hn, %.067.i.i
  %i.hp = icmp ugt i64 %i.ho, -4
  br i1 %i.hp, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.k
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.k ], [ %i.hd, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.ib, %.lr.ph90.i.i ]
  %i.hq = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.hq, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %bb.l

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.id, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.ic, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.ib, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.hr = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.hr, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.hs = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.hs, align 4, !tbaa !221
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !221
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.ht, align 4, !tbaa !221
  %i.hv = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.hv, align 4, !tbaa !221
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !221
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.hw, align 4, !tbaa !221
  %i.hy = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.hy, align 4, !tbaa !221
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !221
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.hz, align 4, !tbaa !221
  %i.ib = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.id = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.id, %i.gu
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !3063

bb.l:                                             ; preds = %._crit_edge91.i.i
  %i.ie = sub nsw i64 %.067.i.i, %i.hq
  br label %.backedge

bb.m:                                             ; preds = %bb.j
  %i.if = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.ig = sub i64 0, %i.gu
  %i.ih = getelementptr [4 x i8], ptr %i.if, i64 %i.ig ; 6 uses
  %i.ii = icmp sgt i64 %.067.i.i, 0
end_hunk_10
begin_hunk_11_@_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_:bb.a
  %i.dl = icmp ult i32 %i.co, %i.dh
  %i.dm = icmp slt i32 %i.dj, 0
  %i.dn = select i1 %i.dk, i1 %i.dl, i1 %i.dm     ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.dp = xor i64 %i.cp, -1
  %i.dq = add nsw i64 %.017.i56, %i.dp
  %.112.i62 = select i1 %i.dn, ptr %.01116.i57, ptr %i.do ; 3 uses
  %.1.i63 = select i1 %i.dn, i64 %i.cp, i64 %i.dq ; 2 uses
  %i.dr = icmp sgt i64 %.1.i63, 0
  br i1 %i.dr, label %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !56

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.pre80 = ptrtoint ptr %.112.i62 to i64
  br label %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit51
  %.pre-phi81 = phi i64 [ %.pre80, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.bo, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %.011.lcssa.i52 = phi ptr [ %.112.i62, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElEvRT_T0_St26random_access_iterator_tag.exit51 ]
  %i.ds = sub i64 %.pre-phi81, %i.bo
  %i.dt = ashr exact i64 %i.ds, 2
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit
  %.077 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bm, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.076 = phi ptr [ %i.d, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i52, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.bk, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bl, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.c, %_ZSt13__lower_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Iter_comp_valINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ], [ %i.dt, %_ZSt13__upper_boundIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES4_N9__gnu_cxx5__ops14_Val_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.du = sub nsw i64 %3, %.0                     ; 2 uses
  %i.dv = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %.076, ptr noundef %1, ptr noundef %.077, i64 noundef %i.du, i64 noundef %.043, ptr noundef %5, i64 noundef %6) ; 2 uses
  %i.dw = load ptr, ptr %7, align 8, !tbaa !568, !nonnull !209, !align !446
  store ptr %i.dw, ptr %9, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %0, ptr noundef %.076, ptr noundef %i.dv, i64 noundef %.0, i64 noundef %.043, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %9)
  %i.dx = sub nsw i64 %4, %.043
  %i.dy = load ptr, ptr %7, align 8, !tbaa !568, !nonnull !209, !align !446
  store ptr %i.dy, ptr %10, align 8, !tbaa !494
  call void @_ZSt23__merge_adaptive_resizeIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_21FlatBufferBuilderImplILb0EE18TableKeyComparatorIS3_EEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %i.dv, ptr noundef %.077, ptr noundef %2, i64 noundef %i.du, i64 noundef %i.dx, ptr noundef %5, i64 noundef %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %10)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt17__rotate_adaptiveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_lET_S6_S6_S6_T1_S7_T0_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 4                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !434

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.g, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !434

bb.g:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit
  %i.n = icmp eq i64 %i.i, 4
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -4
  %i.p = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.p, ptr %i.o, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !434

bb.j:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit
  %i.q = icmp eq i64 %i.d, 4
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit36

bb.l:                                             ; preds = %bb.k
  %i.r = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.r, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit36

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.p, label %bb.q, !prof !434

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %bb.r, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load i32, ptr %0, align 4, !tbaa !221
  store i32 %i.y, ptr %5, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit37

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 4
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !434

bb.s:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit37
  %i.ac = icmp eq i64 %i.aa, 4
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit38

bb.u:                                             ; preds = %bb.t
  %i.ad = load i32, ptr %1, align 4, !tbaa !221
  store i32 %i.ad, ptr %0, align 4, !tbaa !221
  br label %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit38

_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 2                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !434

bb.v:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit38
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit38
  %i.ai = icmp eq i64 %i.v, 4
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit39

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -4
  %i.ak = load i32, ptr %5, align 4, !tbaa !221
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !221
  br label %_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit39

_ZSt13move_backwardIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEES5_ET0_T_S7_S6_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  br label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit

bb.y:                                             ; preds = %bb.m
  %i.an = icmp eq ptr %0, %1
  br i1 %i.an, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = icmp eq ptr %2, %1
  br i1 %i.ao, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.aq = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.au = sub i64 %i.at, %i.aq
  %i.av = ashr exact i64 %i.au, 2                 ; 3 uses
  %i.aw = sub nsw i64 %i.as, %i.av
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i.i.preheader, label %bb.ab

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aa
  %i.ay = add i64 %i.at, -4
  %i.az = sub i64 %i.ay, %i.aq                    ; 3 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check98 = icmp ult i64 %i.az, 60
  br i1 %min.iters.check98, label %.lr.ph.i.i.i.preheader114, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.bc = and i64 %i.az, -4
  %i.bd = add i64 %i.bc, 4                        ; 2 uses
  %scevgep92 = getelementptr i8, ptr %0, i64 %i.bd
  %scevgep93 = getelementptr i8, ptr %1, i64 %i.bd
  %bound094 = icmp ult ptr %0, %scevgep93
  %bound195 = icmp ult ptr %1, %scevgep92
  %found.conflict96 = and i1 %bound094, %bound195
  br i1 %found.conflict96, label %.lr.ph.i.i.i.preheader114, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck91
  %n.vec100 = and i64 %i.bb, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec100, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = getelementptr i8, ptr %0, i64 %i.be
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next109, %vector.body101 ] ; 2 uses
  %i.bh = shl i64 %index102, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %1, i64 %i.bh ; 3 uses
  %next.gep104 = getelementptr i8, ptr %0, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep104, i64 16 ; 2 uses
  %wide.load105 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !3093, !noalias !3094
  %wide.load106 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !221, !alias.scope !3093, !noalias !3094
  %i.bj = getelementptr i8, ptr %next.gep103, i64 16 ; 2 uses
  %wide.load107 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !3094
  %wide.load108 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !221, !alias.scope !3094
  store <4 x i32> %wide.load107, ptr %next.gep104, align 4, !tbaa !221, !alias.scope !3093, !noalias !3094
  store <4 x i32> %wide.load108, ptr %i.bi, align 4, !tbaa !221, !alias.scope !3093, !noalias !3094
  store <4 x i32> %wide.load105, ptr %next.gep103, align 4, !tbaa !221, !alias.scope !3094
  store <4 x i32> %wide.load106, ptr %i.bj, align 4, !tbaa !221, !alias.scope !3094
  %index.next109 = add nuw i64 %index102, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next109, %n.vec100
  br i1 %i.bk, label %middle.block110, label %vector.body101, !llvm.loop !3079

middle.block110:                                  ; preds = %vector.body101
  %cmp.n111 = icmp eq i64 %i.bb, %n.vec100
  br i1 %cmp.n111, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i.preheader114

.lr.ph.i.i.i.preheader114:                        ; preds = %vector.memcheck91, %.lr.ph.i.i.i.preheader, %middle.block110
  %.010.i.i.i.ph = phi ptr [ %1, %vector.memcheck91 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block110 ]
  %.079.i.i.i.ph = phi ptr [ %0, %vector.memcheck91 ], [ %0, %.lr.ph.i.i.i.preheader ], [ %i.bg, %middle.block110 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader114, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader114 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.079.i.i.i, align 4, !tbaa !221
  %i.bl = load i32, ptr %.010.i.i.i, align 4, !tbaa !221
  store i32 %i.bl, ptr %.079.i.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.010.i.i.i, align 4, !tbaa !221
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.bm, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !3080

bb.ab:                                            ; preds = %bb.aa
  %i.bo = sub i64 %i.ap, %i.at
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %bb.ab
  %.071.i.i = phi i64 [ %i.as, %bb.ab ], [ %.071.i.i.be, %.backedge ] ; 9 uses
  %.067.i.i = phi i64 [ %i.av, %bb.ab ], [ %.067.i.i.be, %.backedge ] ; 17 uses
  %.041.i.i = phi ptr [ %0, %bb.ab ], [ %.041.i.i.be, %.backedge ] ; 15 uses
  %i.bq = sub nsw i64 %.071.i.i, %.067.i.i        ; 9 uses
  %i.br = icmp slt i64 %.067.i.i, %i.bq
  br i1 %i.br, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bs = icmp sgt i64 %i.bq, 0
  br i1 %i.bs, label %.lr.ph90.preheader.i.i, label %._crit_edge91.i.i

.lr.ph90.preheader.i.i:                           ; preds = %bb.ad
  %i.bt = getelementptr [4 x i8], ptr %.041.i.i, i64 %.067.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check, label %.lr.ph90.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph90.preheader.i.i
  %i.bu = shl i64 %.071.i.i, 2
  %i.bv = sub i64 %.071.i.i, %.067.i.i
  %i.bw = shl i64 %i.bv, 2
  %scevgep = getelementptr i8, ptr %.041.i.i, i64 %i.bw
  %scevgep61 = getelementptr i8, ptr %.041.i.i, i64 %i.bu
  %bound0 = icmp ult ptr %.041.i.i, %scevgep61
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 4 uses
  %i.bx = shl i64 %n.vec, 2                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr i8, ptr %.041.i.i, i64 %i.bx ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ca ; 3 uses
  %next.gep62 = getelementptr i8, ptr %.041.i.i, i64 %i.ca ; 3 uses
  %i.cb = getelementptr i8, ptr %next.gep62, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !3095, !noalias !3096
  %wide.load63 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !221, !alias.scope !3095, !noalias !3096
  %i.cc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load64 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !221, !alias.scope !3096
  %wide.load65 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !221, !alias.scope !3096
  store <4 x i32> %wide.load64, ptr %next.gep62, align 4, !tbaa !221, !alias.scope !3095, !noalias !3096
  store <4 x i32> %wide.load65, ptr %i.cb, align 4, !tbaa !221, !alias.scope !3095, !noalias !3096
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !221, !alias.scope !3096
  store <4 x i32> %wide.load63, ptr %i.cc, align 4, !tbaa !221, !alias.scope !3096
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !3084

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %._crit_edge91.i.i, label %.lr.ph90.i.i.preheader

.lr.ph90.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph90.preheader.i.i, %middle.block
  %.03988.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph90.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.04087.i.i.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph90.preheader.i.i ], [ %i.by, %middle.block ] ; 2 uses
  %.186.i.i.ph = phi ptr [ %.041.i.i, %vector.memcheck ], [ %.041.i.i, %.lr.ph90.preheader.i.i ], [ %i.bz, %middle.block ] ; 2 uses
  %i.ce = sub i64 %.071.i.i, %.067.i.i
  %xtraiter117 = and i64 %i.ce, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader, %.lr.ph90.i.i.prol
  %.03988.i.i.prol = phi i64 [ %i.ci, %.lr.ph90.i.i.prol ], [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ]
  %.04087.i.i.prol = phi ptr [ %i.ch, %.lr.ph90.i.i.prol ], [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %.186.i.i.prol = phi ptr [ %i.cg, %.lr.ph90.i.i.prol ], [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ] ; 3 uses
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph90.i.i.prol ], [ 0, %.lr.ph90.i.i.preheader ]
  %.sroa.0.0.copyload.i.i.i.i.prol = load i32, ptr %.186.i.i.prol, align 4, !tbaa !221
  %i.cf = load i32, ptr %.04087.i.i.prol, align 4, !tbaa !221
  store i32 %i.cf, ptr %.186.i.i.prol, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %.04087.i.i.prol, align 4, !tbaa !221
  %i.cg = getelementptr inbounds nuw i8, ptr %.186.i.i.prol, i64 4 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04087.i.i.prol, i64 4 ; 2 uses
  %i.ci = add nuw nsw i64 %.03988.i.i.prol, 1     ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol, !llvm.loop !3085

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %.03988.i.i.unr = phi i64 [ %.03988.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ci, %.lr.ph90.i.i.prol ]
  %.04087.i.i.unr = phi ptr [ %.04087.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.ch, %.lr.ph90.i.i.prol ]
  %.186.i.i.unr = phi ptr [ %.186.i.i.ph, %.lr.ph90.i.i.preheader ], [ %i.cg, %.lr.ph90.i.i.prol ]
  %i.cj = sub i64 %.03988.i.i.ph, %.071.i.i
  %i.ck = add i64 %i.cj, %.067.i.i
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge91.i.i, label %.lr.ph90.i.i

._crit_edge91.i.i:                                ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i, %middle.block, %bb.ad
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.ad ], [ %i.bz, %middle.block ], [ %.lcssa.unr, %.lr.ph90.i.i.prol.loopexit ], [ %i.cx, %.lr.ph90.i.i ]
  %i.cm = srem i64 %.071.i.i, %.067.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN11flatbuffers6OffsetIN10reflection10SchemaFileEEEEET_S7_S7_S7_.exit, label %bb.ae

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.03988.i.i = phi i64 [ %i.cz, %.lr.ph90.i.i ], [ %.03988.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.04087.i.i = phi ptr [ %i.cy, %.lr.ph90.i.i ], [ %.04087.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.186.i.i = phi ptr [ %i.cx, %.lr.ph90.i.i ], [ %.186.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.186.i.i, align 4, !tbaa !221
  %i.cn = load i32, ptr %.04087.i.i, align 4, !tbaa !221
  store i32 %i.cn, ptr %.186.i.i, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.04087.i.i, align 4, !tbaa !221
  %i.co = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.co, align 4, !tbaa !221
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !221
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.cp, align 4, !tbaa !221
  %i.cr = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.cr, align 4, !tbaa !221
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !221
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.cs, align 4, !tbaa !221
  %i.cu = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 12 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.cu, align 4, !tbaa !221
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !221
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.cv, align 4, !tbaa !221
  %i.cx = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.04087.i.i, i64 16
  %i.cz = add nuw nsw i64 %.03988.i.i, 4          ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %i.cz, %i.bq
  br i1 %exitcond95.not.i.i.3, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !3086

bb.ae:                                            ; preds = %._crit_edge91.i.i
  %i.da = sub nsw i64 %.067.i.i, %i.cm
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.db = getelementptr [4 x i8], ptr %.041.i.i, i64 %.071.i.i ; 6 uses
  %i.dc = sub i64 0, %i.bq
  %i.dd = getelementptr [4 x i8], ptr %i.db, i64 %i.dc ; 6 uses
  %i.de = icmp sgt i64 %.067.i.i, 0
end_hunk_11
