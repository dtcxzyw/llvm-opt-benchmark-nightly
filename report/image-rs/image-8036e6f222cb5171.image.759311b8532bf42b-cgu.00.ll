Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.00?download=true
inline.NumInlined: 1965
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d14make_arena_rowtKj4_EB6_:bb.a
  %.sroa.4198.0.copyload = load ptr, ptr %.sroa.4198.0..sroa_idx, align 8 ; 9 uses
  %.sroa.5200.0.copyload = load i64, ptr %.sroa.5200.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7201.0.copyload = load i64, ptr %.sroa.7201.0..sroa_idx, align 8 ; 5 uses
  %i.ea = icmp ult i64 %.sroa.5200.0.copyload, %.sroa.7201.0.copyload
  br i1 %i.ea, label %iter.check30, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit

iter.check30:                                     ; preds = %bb.s
  %.sroa.4198.0.copyload16 = ptrtoaddr ptr %.sroa.4198.0.copyload to i64
  %.sroa.0196.0.copyload15 = ptrtoaddr ptr %.sroa.0196.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0196.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4198.0.copyload) ]
  %i.eb = sub nuw i64 %.sroa.7201.0.copyload, %.sroa.5200.0.copyload ; 7 uses
  %min.iters.check18 = icmp ult i64 %i.eb, 4
  %i.ec = sub i64 %.sroa.4198.0.copyload16, %.sroa.0196.0.copyload15
  %diff.check17 = icmp ugt i64 %i.ec, -32
  %or.cond76 = select i1 %min.iters.check18, i1 true, i1 %diff.check17
  br i1 %or.cond76, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader, label %vector.main.loop.iter.check19

vector.main.loop.iter.check19:                    ; preds = %iter.check30
  %min.iters.check20 = icmp ult i64 %i.eb, 16
  br i1 %min.iters.check20, label %vec.epilog.ph34, label %vector.ph21

vector.ph21:                                      ; preds = %vector.main.loop.iter.check19
  %i.ed = and i64 %i.eb, 12
  %n.vec22 = and i64 %i.eb, -16                   ; 4 uses
  %i.ee = add i64 %.sroa.5200.0.copyload, %n.vec22
  br label %vector.body23

vector.body23:                                    ; preds = %vector.ph21, %vector.body23
  %index24 = phi i64 [ 0, %vector.ph21 ], [ %index.next27, %vector.body23 ] ; 2 uses
  %i.ef = add nuw i64 %.sroa.5200.0.copyload, %index24 ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.ef ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load25 = load <8 x i16>, ptr %i.eh, align 2
  %wide.load26 = load <8 x i16>, ptr %i.ei, align 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <8 x i16> %wide.load25, ptr %i.eg, align 2
  store <8 x i16> %wide.load26, ptr %i.ej, align 2
  %index.next27 = add nuw i64 %index24, 16        ; 2 uses
  %i.ek = icmp eq i64 %index.next27, %n.vec22
  br i1 %i.ek, label %middle.block28, label %vector.body23, !llvm.loop !146

middle.block28:                                   ; preds = %vector.body23
  %cmp.n29 = icmp eq i64 %i.eb, %n.vec22
  br i1 %cmp.n29, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit, label %vec.epilog.iter.check31

vec.epilog.iter.check31:                          ; preds = %middle.block28
  %min.epilog.iters.check33 = icmp eq i64 %i.ed, 0
  br i1 %min.epilog.iters.check33, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader, label %vec.epilog.ph34, !prof !13

vec.epilog.ph34:                                  ; preds = %vector.main.loop.iter.check19, %vec.epilog.iter.check31
  %vec.epilog.resume.val35 = phi i64 [ %n.vec22, %vec.epilog.iter.check31 ], [ 0, %vector.main.loop.iter.check19 ]
  %n.vec36 = and i64 %i.eb, -4                    ; 3 uses
  %i.el = add i64 %.sroa.5200.0.copyload, %n.vec36
  br label %vec.epilog.vector.body37

vec.epilog.vector.body37:                         ; preds = %vec.epilog.vector.body37, %vec.epilog.ph34
  %index38 = phi i64 [ %vec.epilog.resume.val35, %vec.epilog.ph34 ], [ %index.next40, %vec.epilog.vector.body37 ] ; 2 uses
  %i.em = add nuw i64 %.sroa.5200.0.copyload, %index38 ; 2 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.em
  %wide.load39 = load <4 x i16>, ptr %i.eo, align 2
  store <4 x i16> %wide.load39, ptr %i.en, align 2
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.ep = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.ep, label %vec.epilog.middle.block41, label %vec.epilog.vector.body37, !llvm.loop !147

vec.epilog.middle.block41:                        ; preds = %vec.epilog.vector.body37
  %cmp.n42 = icmp eq i64 %i.eb, %n.vec36
  br i1 %cmp.n42, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader: ; preds = %iter.check30, %vec.epilog.iter.check31, %vec.epilog.middle.block41
  %.sroa.5200.0240.ph = phi i64 [ %.sroa.5200.0.copyload, %iter.check30 ], [ %i.ee, %vec.epilog.iter.check31 ], [ %i.el, %vec.epilog.middle.block41 ] ; 4 uses
  %i.eq = sub i64 %.sroa.7201.0.copyload, %.sroa.5200.0240.ph
  %xtraiter79 = and i64 %i.eq, 3                  ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol
  %.sroa.5200.0240.prol = phi i64 [ %i.et, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol ], [ %.sroa.5200.0240.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader ]
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %.sroa.5200.0240.prol
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %.sroa.5200.0240.prol
  %i.et = add nuw i64 %.sroa.5200.0240.prol, 1    ; 2 uses
  %i.eu = load i16, ptr %i.es, align 2, !noundef !9
  store i16 %i.eu, ptr %i.er, align 2
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol, !llvm.loop !148

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader
  %.sroa.5200.0240.unr = phi i64 [ %.sroa.5200.0240.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader ], [ %i.et, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol ]
  %i.ev = sub i64 %.sroa.5200.0240.ph, %.sroa.7201.0.copyload
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184
  %.sroa.5200.0240 = phi i64 [ %i.fl, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184 ], [ %.sroa.5200.0240.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %.sroa.5200.0240
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %.sroa.5200.0240
  %i.ez = add nuw i64 %.sroa.5200.0240, 1         ; 2 uses
  %i.fa = load i16, ptr %i.ey, align 2, !noundef !9
  store i16 %i.fa, ptr %i.ex, align 2
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.ez
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.ez
  %i.fd = add nuw i64 %.sroa.5200.0240, 2         ; 2 uses
  %i.fe = load i16, ptr %i.fc, align 2, !noundef !9
  store i16 %i.fe, ptr %i.fb, align 2
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.fd
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.fd
  %i.fh = add nuw i64 %.sroa.5200.0240, 3         ; 2 uses
  %i.fi = load i16, ptr %i.fg, align 2, !noundef !9
  store i16 %i.fi, ptr %i.ff, align 2
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.fh
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.fh
  %i.fl = add nuw i64 %.sroa.5200.0240, 4         ; 2 uses
  %i.fm = load i16, ptr %i.fk, align 2, !noundef !9
  store i16 %i.fm, ptr %i.fj, align 2
  %exitcond249.not.3 = icmp eq i64 %i.fl, %.sroa.7201.0.copyload
  br i1 %exitcond249.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184, !llvm.loop !149

bb.t:                                             ; preds = %bb.d, %bb.c
  store i8 7, ptr %0, align 8
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.5138.0..sroa_idx, align 8
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj1_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 13 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !9 ; 6 uses
  %i.d = and i64 %3, 2305843009213693948          ; 7 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 3 uses
  %.idx = and i64 %i.f, 9223372036854775792       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.b
  %i.i = add nuw nsw i64 %i.a, 4                  ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.k = icmp eq i64 %i.a, 0
  br i1 %i.k, label %.lr.ph168.split.us, label %.lr.ph168.split.preheader

.lr.ph168.split.preheader:                        ; preds = %.lr.ph168
  %i.l = add nuw nsw i64 %5, 3
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph168.split

.lr.ph168.split.us:                               ; preds = %.lr.ph168
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph168.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx372 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %0, i64 %.idx372  ; 4 uses
  %.idx373 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %0, i64 %.idx373  ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx374 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %0, i64 %.idx374  ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx375 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %0, i64 %.idx375  ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4
  %i.ao = load float, ptr %i.ai, align 4
  %i.ap = load float, ptr %i.ak, align 4
  %i.aq = load float, ptr %i.am, align 4
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4
  %i.ba = load float, ptr %i.aw, align 4
  %i.bb = load float, ptr %i.ax, align 4
  %i.bc = load float, ptr %i.ay, align 4
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4
  %i.bm = load float, ptr %i.bi, align 4
  %i.bn = load float, ptr %i.bj, align 4
  %i.bo = load float, ptr %i.bk, align 4
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4
  %i.by = load float, ptr %i.bu, align 4
  %i.bz = load float, ptr %i.bv, align 4
  %i.ca = load float, ptr %i.bw, align 4
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !150

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph168.split.us
  %.sroa.079.0166.us.ph = phi ptr [ %2, %.lr.ph168.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0165.us.ph = phi i64 [ 0, %.lr.ph168.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.079.0166.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.079.0166.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0165.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0165.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.079.0166.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0165.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0165.us, 2     ; 3 uses
  %exitcond242 = icmp eq i64 %.sroa.7.0165.us, %i.r
  br i1 %exitcond242, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not65.us = icmp samesign ugt i64 %i.i, %i.cp
  br i1 %.not65.us, label %.split171.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %0, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.079.0166.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge169, label %scalar.ph, !llvm.loop !151

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph168.split:                                  ; preds = %.lr.ph168.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %1, %.lr.ph168.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.079.0166 = phi ptr [ %2, %.lr.ph168.split.preheader ], [ %i.ct, %._crit_edge ] ; 2 uses
  %.sroa.7.0165 = phi i64 [ 0, %.lr.ph168.split.preheader ], [ %i.cu, %._crit_edge ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.079.0166, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0165, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0165, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0165, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge169:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx194 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx194 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx194, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge169
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.cz = icmp eq i64 %i.a, 0
  br i1 %i.cz, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.da = add nsw i64 %.idx194, -4
  %i.db = lshr exact i64 %i.da, 2
  %i.dc = sub nsw i64 %1, %i.d
  %i.dd = add nuw nsw i64 %1, 1
  %i.de = tail call i64 @llvm.usub.sat.i64(i64 %i.dd, i64 %i.d)
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.db, i64 %i.dc)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.de) ; 2 uses
  %min.iters.check359 = icmp samesign ult i64 %i.dg, 8
  br i1 %min.iters.check359, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376, label %vector.ph360

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376: ; preds = %vector.body364, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.083.0185.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.dm, %vector.body364 ]
  %.sroa.785.0184.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %n.vec361, %vector.body364 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

vector.ph360:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %i.di = and i64 %i.dh, 7                        ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  %i.dk = select i1 %i.dj, i64 8, i64 %i.di
  %n.vec361 = sub nsw i64 %i.dh, %i.dk            ; 3 uses
  %i.dl = shl i64 %n.vec361, 2
  %i.dm = getelementptr i8, ptr %i.e, i64 %i.dl
  %broadcast.splatinsert362 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat363 = shufflevector <4 x float> %broadcast.splatinsert362, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.d
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph360
  %index365 = phi i64 [ 0, %vector.ph360 ], [ %index.next368, %vector.body364 ] ; 3 uses
  %i.dn = shl i64 %index365, 2
  %next.gep366 = getelementptr i8, ptr %i.e, i64 %i.dn ; 2 uses
  %gep461 = getelementptr [4 x i8], ptr %invariant.gep, i64 %index365 ; 2 uses
  %i.do = getelementptr i8, ptr %gep461, i64 16
  %wide.load = load <4 x float>, ptr %gep461, align 4
  %wide.load367 = load <4 x float>, ptr %i.do, align 4
  %i.dp = fmul <4 x float> %broadcast.splat363, %wide.load
  %i.dq = fmul <4 x float> %broadcast.splat363, %wide.load367
  %i.dr = getelementptr i8, ptr %next.gep366, i64 16
  store <4 x float> %i.dp, ptr %next.gep366, align 4
  store <4 x float> %i.dq, ptr %i.dr, align 4
  %index.next368 = add nuw i64 %index365, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next368, %n.vec361
  br i1 %i.ds, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376, label %vector.body364, !llvm.loop !152

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.dt = sub nsw i64 %1, %i.d                    ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.dt)
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376, %bb.g
  %.sroa.083.0185.us = phi ptr [ %i.du, %bb.g ], [ %.sroa.083.0185.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376 ] ; 2 uses
  %.sroa.785.0184.us = phi i64 [ %i.dv, %bb.g ], [ %.sroa.785.0184.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376 ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.083.0185.us, i64 4 ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.785.0184.us, 1
  %i.dw = add nuw nsw i64 %.sroa.785.0184.us, %i.d ; 4 uses
  %i.dx = icmp samesign ugt i64 %i.dw, %1
  br i1 %i.dx, label %.split187.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.not266 = icmp eq i64 %1, %i.dw
  br i1 %.not266, label %.split190.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %gep193 = getelementptr [4 x i8], ptr %0, i64 %i.dw
  %i.dy = load float, ptr %gep193, align 4, !noundef !9
  %i.dz = fmul float %i.c, %i.dy
  store float %i.dz, ptr %.sroa.083.0185.us, align 4
  %i.ea = icmp eq ptr %i.du, %i.cw
  br i1 %i.ea, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !153

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader, %._crit_edge180
  %indvars.iv243 = phi i64 [ %i.dt, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %indvars.iv.next244, %._crit_edge180 ] ; 5 uses
  %.sroa.083.0185 = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.eb, %._crit_edge180 ] ; 2 uses
  %.sroa.785.0184 = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.ec, %._crit_edge180 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.083.0185, i64 4 ; 2 uses
  %i.ec = add nuw nsw i64 %.sroa.785.0184, 1
  %i.ed = add nuw nsw i64 %.sroa.785.0184, %i.d   ; 4 uses
  %i.ee = icmp samesign ugt i64 %i.ed, %1
  br i1 %i.ee, label %.split187.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge180, %bb.g, %._crit_edge169
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.ef = sub nuw nsw i64 %1, %i.ed               ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ed ; 3 uses
  %i.eh = icmp samesign ult i64 %i.a, %i.ef
  br i1 %i.eh, label %.lr.ph179, label %.split190.us

.split187.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi188 = phi i64 [ %i.dw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ed, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi188, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph179:                                        ; preds = %bb.h
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.a
  %i.ej = load float, ptr %i.ei, align 4, !noundef !9
  %i.ek = fmul float %i.c, %i.ej
  %.not64.first_iter = icmp ugt i64 %5, %indvars.iv243
  br label %bb.i

.split190.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi191 = phi i64 [ 0, %bb.f ], [ %umin, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %.us-phi191, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph179, %bb.n
  %.sroa.026.0177 = phi float [ %i.ek, %.lr.ph179 ], [ %i.fb, %bb.n ] ; 2 uses
  %.sroa.1089.0176 = phi i64 [ 0, %.lr.ph179 ], [ %i.eo, %bb.n ] ; 5 uses
  %.sroa.788.0175 = phi i64 [ %i.a, %.lr.ph179 ], [ %i.el, %bb.n ]
  %.sroa.086.0174 = phi ptr [ %4, %.lr.ph179 ], [ %i.en, %bb.n ] ; 3 uses
  %i.el = add nsw i64 %.sroa.788.0175, -1         ; 2 uses
  %i.em = icmp eq ptr %.sroa.086.0174, %i.cy
  br i1 %i.em, label %._crit_edge180, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.086.0174, i64 4
  %i.eo = add nuw nsw i64 %.sroa.1089.0176, 1
  %i.ep = load float, ptr %.sroa.086.0174, align 4, !noundef !9
  %i.eq = sub nsw i64 %5, %.sroa.1089.0176        ; 2 uses
  %i.er = add nsw i64 %i.eq, -1                   ; 2 uses
  %exitcond246.not = icmp eq i64 %.sroa.1089.0176, %indvars.iv243
  br i1 %exitcond246.not, label %bb.k, label %bb.l, !prof !6

._crit_edge180:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.fb, %bb.n ], [ %.sroa.026.0177, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.083.0185, align 4
  %i.es = icmp eq ptr %i.eb, %i.cw
  %indvars.iv.next244 = add nsw i64 %indvars.iv243, -1
  br i1 %i.es, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.et = add i64 %indvars.iv243, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %indvars.iv243, i64 noundef %i.et, i64 noundef %i.ef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.eu = icmp eq i64 %5, %.sroa.1089.0176
  %or.cond69 = or i1 %i.eu, %.not64.first_iter
  br i1 %or.cond69, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.er, i64 noundef %i.eq, i64 noundef %i.ef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.sroa.1089.0176
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.er
  %i.ex = load float, ptr %i.ev, align 4, !noundef !9
  %i.ey = load float, ptr %i.ew, align 4, !noundef !9
  %i.ez = fadd float %i.ex, %i.ey
  %i.fa = fmul float %i.ep, %i.ez
  %i.fb = fadd float %.sroa.026.0177, %i.fa       ; 2 uses
  %i.fc = icmp eq i64 %i.el, 0
  br i1 %i.fc, label %._crit_edge180, label %bb.i

bb.o:                                             ; preds = %.lr.ph168.split
  %i.fd = sub nuw nsw i64 %1, %i.cv               ; 5 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 3 uses
  %.not65 = icmp samesign ugt i64 %i.i, %i.fd
  br i1 %.not65, label %.split171.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph168.split, %scalar.ph
  %.us-phi = phi i64 [ %i.co, %scalar.ph ], [ %i.cv, %.lr.ph168.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split171.us:                                     ; preds = %bb.o, %bb.c
  %.us-phi172 = phi i64 [ %i.cp, %bb.c ], [ %i.fd, %bb.o ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.i, i64 noundef %.us-phi172, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.o
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.a
  %i.fg = load <4 x float>, ptr %i.ff, align 4
  %i.fh = fmul <4 x float> %i.p, %i.fg
  %.not68.first_iter = icmp ugt i64 %i.l, %indvars.iv
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.080.0152 = phi ptr [ %4, %.lr.ph ], [ %i.fl, %bb.u ] ; 3 uses
  %.sroa.782.0151 = phi i64 [ %i.a, %.lr.ph ], [ %i.fj, %bb.u ]
  %.sroa.10.0150 = phi i64 [ 0, %.lr.ph ], [ %i.fm, %bb.u ] ; 5 uses
  %i.fi = phi <4 x float> [ %i.fh, %.lr.ph ], [ %i.gd, %bb.u ] ; 2 uses
  %i.fj = add nsw i64 %.sroa.782.0151, -1         ; 2 uses
  %i.fk = icmp eq ptr %.sroa.080.0152, %i.j
  br i1 %i.fk, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.080.0152, i64 4
  %i.fm = add nuw nsw i64 %.sroa.10.0150, 1
  %i.fn = load float, ptr %.sroa.080.0152, align 4, !noundef !9
  %i.fo = xor i64 %.sroa.10.0150, -1
  %i.fp = add nsw i64 %5, %i.fo                   ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.10.0150, 4       ; 2 uses
  %.not67 = icmp samesign ugt i64 %i.fq, %i.fd
  br i1 %.not67, label %bb.r, label %bb.s, !prof !6

._crit_edge:                                      ; preds = %bb.p, %bb.u
  %i.fr = phi <4 x float> [ %i.gd, %bb.u ], [ %i.fi, %bb.p ]
  store <4 x float> %i.fr, ptr %.sroa.079.0166, align 4
  %i.fs = icmp eq ptr %i.ct, %i.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  br i1 %i.fs, label %._crit_edge169, label %.lr.ph168.split

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.10.0150, i64 noundef %i.fq, i64 noundef %i.fd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ft = icmp ugt i64 %i.fp, -5
  %or.cond71 = or i1 %i.ft, %.not68.first_iter
  br i1 %or.cond71, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.fu = add nsw i64 %i.fp, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fp, i64 noundef %i.fu, i64 noundef %i.fd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.sroa.10.0150
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fp
  %i.fx = load <4 x float>, ptr %i.fv, align 4
  %i.fy = load <4 x float>, ptr %i.fw, align 4
  %i.fz = fadd <4 x float> %i.fx, %i.fy
  %i.ga = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = fmul <4 x float> %i.gb, %i.fz
  %i.gd = fadd <4 x float> %i.fi, %i.gc           ; 2 uses
  %i.ge = icmp eq i64 %i.fj, 0
  br i1 %i.ge, label %._crit_edge, label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj2_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 6 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !9 ; 6 uses
  %i.d = and i64 %3, 2305843009213693948          ; 6 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 3 uses
  %.idx = and i64 %i.f, 9223372036854775792       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge174, label %.lr.ph173

.lr.ph173:                                        ; preds = %bb.b
  %i.i = and i64 %5, 2305843009213693950          ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph173.split.us, label %.lr.ph173.split.preheader

.lr.ph173.split.preheader:                        ; preds = %.lr.ph173
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph173.split

.lr.ph173.split.us:                               ; preds = %.lr.ph173
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.i ; 5 uses
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph173.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx370 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx370 ; 4 uses
  %.idx371 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %invariant.gep, i64 %.idx371 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx372 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %invariant.gep, i64 %.idx372 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx373 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %invariant.gep, i64 %.idx373 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4
  %i.ao = load float, ptr %i.ai, align 4
  %i.ap = load float, ptr %i.ak, align 4
  %i.aq = load float, ptr %i.am, align 4
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4
  %i.ba = load float, ptr %i.aw, align 4
  %i.bb = load float, ptr %i.ax, align 4
  %i.bc = load float, ptr %i.ay, align 4
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4
  %i.bm = load float, ptr %i.bi, align 4
  %i.bn = load float, ptr %i.bj, align 4
  %i.bo = load float, ptr %i.bk, align 4
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4
  %i.by = load float, ptr %i.bu, align 4
  %i.bz = load float, ptr %i.bv, align 4
  %i.ca = load float, ptr %i.bw, align 4
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !154

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph173.split.us
  %.sroa.081.0171.us.ph = phi ptr [ %2, %.lr.ph173.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0170.us.ph = phi i64 [ 0, %.lr.ph173.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.081.0171.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.081.0171.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0170.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0170.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.081.0171.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0170.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0170.us, 2     ; 3 uses
  %exitcond244 = icmp eq i64 %.sroa.7.0170.us, %i.r
  br i1 %exitcond244, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.cp
  br i1 %.not69.us, label %.split176.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.081.0171.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge174, label %scalar.ph, !llvm.loop !155

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph173.split:                                  ; preds = %.lr.ph173.split.preheader, %._crit_edge
  %.sroa.081.0171 = phi ptr [ %i.ct, %._crit_edge ], [ %2, %.lr.ph173.split.preheader ] ; 2 uses
  %.sroa.7.0170 = phi i64 [ %i.cu, %._crit_edge ], [ 0, %.lr.ph173.split.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.081.0171, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0170, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0170, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0170, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge174:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx201 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx201 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx201, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge174
  %i.cy = and i64 %5, 2305843009213693950         ; 5 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.da = icmp eq i64 %i.a, 0
  br i1 %i.da, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep199 = getelementptr [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.db = add nsw i64 %.idx201, -4
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = sub nsw i64 %1, %i.d
  %i.de = add nuw nsw i64 %1, 1
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.de, i64 %i.d)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.dd)
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.df) ; 2 uses
  %min.iters.check357 = icmp samesign ult i64 %i.dh, 8
  br i1 %min.iters.check357, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph358

vector.ph358:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = and i64 %i.di, 7                        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = select i1 %i.dk, i64 8, i64 %i.dj
  %n.vec359 = sub nsw i64 %i.di, %i.dl            ; 3 uses
  %i.dm = shl i64 %n.vec359, 2
  %i.dn = getelementptr i8, ptr %i.e, i64 %i.dm
  %broadcast.splatinsert360 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat361 = shufflevector <4 x float> %broadcast.splatinsert360, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep452 = getelementptr [4 x i8], ptr %invariant.gep199, i64 %i.d
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph358
  %index363 = phi i64 [ 0, %vector.ph358 ], [ %index.next366, %vector.body362 ] ; 3 uses
  %i.do = shl i64 %index363, 2
  %next.gep364 = getelementptr i8, ptr %i.e, i64 %i.do ; 2 uses
  %gep453 = getelementptr [4 x i8], ptr %invariant.gep452, i64 %index363 ; 2 uses
  %i.dp = getelementptr i8, ptr %gep453, i64 16
  %wide.load = load <4 x float>, ptr %gep453, align 4
  %wide.load365 = load <4 x float>, ptr %i.dp, align 4
  %i.dq = fmul <4 x float> %broadcast.splat361, %wide.load
  %i.dr = fmul <4 x float> %broadcast.splat361, %wide.load365
  %i.ds = getelementptr i8, ptr %next.gep364, i64 16
  store <4 x float> %i.dq, ptr %next.gep364, align 4
  store <4 x float> %i.dr, ptr %i.ds, align 4
  %index.next366 = add nuw i64 %index363, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.dt, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body362, !llvm.loop !156

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body362, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.085.0191.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dn, %vector.body362 ]
  %.sroa.787.0190.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec359, %vector.body362 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.g
  %.sroa.085.0191.us = phi ptr [ %i.du, %bb.g ], [ %.sroa.085.0191.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.787.0190.us = phi i64 [ %i.dv, %bb.g ], [ %.sroa.787.0190.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.085.0191.us, i64 4 ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.787.0190.us, 1
  %i.dw = add nuw nsw i64 %.sroa.787.0190.us, %i.d ; 4 uses
  %i.dx = icmp samesign ugt i64 %i.dw, %1
  br i1 %i.dx, label %.split193.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.dy = sub nuw nsw i64 %1, %i.dw               ; 2 uses
  %i.dz = icmp samesign ult i64 %i.cy, %i.dy
  br i1 %i.dz, label %bb.g, label %.split196.us

bb.g:                                             ; preds = %bb.f
  %gep200 = getelementptr [4 x i8], ptr %invariant.gep199, i64 %i.dw
  %i.ea = load float, ptr %gep200, align 4, !noundef !9
  %i.eb = fmul float %i.c, %i.ea
  store float %i.eb, ptr %.sroa.085.0191.us, align 4
  %i.ec = icmp eq ptr %i.du, %i.cw
  br i1 %i.ec, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !157

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge186
  %.sroa.085.0191 = phi ptr [ %i.ed, %._crit_edge186 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.787.0190 = phi i64 [ %i.ee, %._crit_edge186 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.085.0191, i64 4 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.787.0190, 1
  %i.ef = add nuw nsw i64 %.sroa.787.0190, %i.d   ; 4 uses
  %i.eg = icmp samesign ugt i64 %i.ef, %1
  br i1 %i.eg, label %.split193.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge186, %bb.g, %._crit_edge174
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.eh = sub nuw nsw i64 %1, %i.ef               ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef ; 3 uses
  %i.ej = icmp samesign ult i64 %i.cy, %i.eh
  br i1 %i.ej, label %.lr.ph185, label %.split196.us

.split193.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi194 = phi i64 [ %i.dw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ef, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi194, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph185:                                        ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cy
  %i.el = load float, ptr %i.ek, align 4, !noundef !9
  %i.em = fmul float %i.c, %i.el
  br label %bb.i

.split196.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi197 = phi i64 [ %i.dy, %bb.f ], [ %i.eh, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %.us-phi197, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph185, %bb.n
  %.sroa.026.0183 = phi float [ %i.em, %.lr.ph185 ], [ %i.ff, %bb.n ] ; 2 uses
  %.sroa.1091.0182 = phi i64 [ 0, %.lr.ph185 ], [ %i.eq, %bb.n ] ; 3 uses
  %.sroa.790.0181 = phi i64 [ %i.a, %.lr.ph185 ], [ %i.en, %bb.n ]
  %.sroa.088.0180 = phi ptr [ %4, %.lr.ph185 ], [ %i.ep, %bb.n ] ; 3 uses
  %i.en = add nsw i64 %.sroa.790.0181, -1         ; 2 uses
  %i.eo = icmp eq ptr %.sroa.088.0180, %i.cz
  br i1 %i.eo, label %._crit_edge186, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.088.0180, i64 4
  %i.eq = add nuw nsw i64 %.sroa.1091.0182, 1
  %i.er = load float, ptr %.sroa.088.0180, align 4, !noundef !9
  %i.es = shl nuw nsw i64 %.sroa.1091.0182, 1     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.es, %i.eh
  br i1 %.not67.not, label %bb.l, label %bb.k, !prof !4

._crit_edge186:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.ff, %bb.n ], [ %.sroa.026.0183, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.085.0191, align 4
  %i.et = icmp eq ptr %i.ed, %i.cw
  br i1 %i.et, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.eu = or disjoint i64 %i.es, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ev = xor i64 %.sroa.1091.0182, -1
  %i.ew = add nsw i64 %5, %i.ev
  %i.ex = shl nsw i64 %i.ew, 1                    ; 4 uses
  %.not68.not = icmp ult i64 %i.ex, %i.eh
  br i1 %.not68.not, label %bb.n, label %bb.m, !prof !4

bb.m:                                             ; preds = %bb.l
  %i.ey = or disjoint i64 %i.ex, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ex, i64 noundef %i.ey, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.es
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ex
  %i.fb = load float, ptr %i.ez, align 4, !noundef !9
  %i.fc = load float, ptr %i.fa, align 4, !noundef !9
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = fmul float %i.er, %i.fd
  %i.ff = fadd float %.sroa.026.0183, %i.fe       ; 2 uses
  %i.fg = icmp eq i64 %i.en, 0
  br i1 %i.fg, label %._crit_edge186, label %bb.i

bb.o:                                             ; preds = %.lr.ph173.split
  %i.fh = sub nuw nsw i64 %1, %i.cv               ; 6 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.fh
  br i1 %.not69, label %.split176.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph173.split, %scalar.ph
  %.us-phi = phi i64 [ %i.co, %scalar.ph ], [ %i.cv, %.lr.ph173.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split176.us:                                     ; preds = %bb.o, %bb.c
  %.us-phi177 = phi i64 [ %i.cp, %bb.c ], [ %i.fh, %bb.o ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi177, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.i
  %i.fk = load <4 x float>, ptr %i.fj, align 4
  %i.fl = fmul <4 x float> %i.p, %i.fk
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.082.0157 = phi ptr [ %4, %.lr.ph ], [ %i.fp, %bb.u ] ; 3 uses
  %.sroa.784.0156 = phi i64 [ %i.a, %.lr.ph ], [ %i.fn, %bb.u ]
  %.sroa.10.0155 = phi i64 [ 0, %.lr.ph ], [ %i.fq, %bb.u ] ; 3 uses
  %i.fm = phi <4 x float> [ %i.fl, %.lr.ph ], [ %i.gj, %bb.u ] ; 2 uses
  %i.fn = add nsw i64 %.sroa.784.0156, -1         ; 2 uses
  %i.fo = icmp eq ptr %.sroa.082.0157, %i.k
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.082.0157, i64 4
  %i.fq = add nuw nsw i64 %.sroa.10.0155, 1
  %i.fr = load float, ptr %.sroa.082.0157, align 4, !noundef !9
  %i.fs = shl nuw nsw i64 %.sroa.10.0155, 1       ; 3 uses
  %i.ft = add nuw nsw i64 %i.fs, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.ft, %i.fh
  br i1 %.not71, label %bb.r, label %bb.s, !prof !6

._crit_edge:                                      ; preds = %bb.p, %bb.u
  %i.fu = phi <4 x float> [ %i.gj, %bb.u ], [ %i.fm, %bb.p ]
  store <4 x float> %i.fu, ptr %.sroa.081.0171, align 4
  %i.fv = icmp eq ptr %i.ct, %i.g
  br i1 %i.fv, label %._crit_edge174, label %.lr.ph173.split

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fs, i64 noundef %i.ft, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fw = xor i64 %.sroa.10.0155, -1
  %i.fx = add nsw i64 %5, %i.fw
  %i.fy = shl nsw i64 %i.fx, 1                    ; 4 uses
  %i.fz = add nsw i64 %i.fy, 4                    ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, -5
  %.not72 = icmp ugt i64 %i.fz, %i.fh
  %or.cond73 = or i1 %i.ga, %.not72
  br i1 %or.cond73, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fy, i64 noundef %i.fz, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fs
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fy
  %i.gd = load <4 x float>, ptr %i.gb, align 4
  %i.ge = load <4 x float>, ptr %i.gc, align 4
  %i.gf = fadd <4 x float> %i.gd, %i.ge
  %i.gg = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul <4 x float> %i.gh, %i.gf
  %i.gj = fadd <4 x float> %i.fm, %i.gi           ; 2 uses
  %i.gk = icmp eq i64 %i.fn, 0
  br i1 %i.gk, label %._crit_edge, label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj3_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !9 ; 6 uses
  %i.d = and i64 %3, 2305843009213693948          ; 6 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 3 uses
  %.idx = and i64 %i.f, 9223372036854775792       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.b
  %i.i = mul nuw nsw i64 %i.a, 3                  ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph178.split.us, label %.lr.ph178.split.preheader

.lr.ph178.split.preheader:                        ; preds = %.lr.ph178
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph178.split

.lr.ph178.split.us:                               ; preds = %.lr.ph178
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.i ; 5 uses
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph178.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx378 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx378 ; 4 uses
  %.idx379 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %invariant.gep, i64 %.idx379 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx380 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %invariant.gep, i64 %.idx380 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx381 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %invariant.gep, i64 %.idx381 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4
  %i.ao = load float, ptr %i.ai, align 4
  %i.ap = load float, ptr %i.ak, align 4
  %i.aq = load float, ptr %i.am, align 4
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4
  %i.ba = load float, ptr %i.aw, align 4
  %i.bb = load float, ptr %i.ax, align 4
  %i.bc = load float, ptr %i.ay, align 4
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4
  %i.bm = load float, ptr %i.bi, align 4
  %i.bn = load float, ptr %i.bj, align 4
  %i.bo = load float, ptr %i.bk, align 4
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4
  %i.by = load float, ptr %i.bu, align 4
  %i.bz = load float, ptr %i.bv, align 4
  %i.ca = load float, ptr %i.bw, align 4
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !158

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph178.split.us
  %.sroa.083.0176.us.ph = phi ptr [ %2, %.lr.ph178.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0175.us.ph = phi i64 [ 0, %.lr.ph178.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.083.0176.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.083.0176.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0175.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0175.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.083.0176.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0175.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0175.us, 2     ; 3 uses
  %exitcond252 = icmp eq i64 %.sroa.7.0175.us, %i.r
  br i1 %exitcond252, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.cp
  br i1 %.not69.us, label %.split181.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.083.0176.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge179, label %scalar.ph, !llvm.loop !159

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph178.split:                                  ; preds = %.lr.ph178.split.preheader, %._crit_edge
  %.sroa.083.0176 = phi ptr [ %i.ct, %._crit_edge ], [ %2, %.lr.ph178.split.preheader ] ; 2 uses
  %.sroa.7.0175 = phi i64 [ %i.cu, %._crit_edge ], [ 0, %.lr.ph178.split.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.083.0176, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0175, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0175, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0175, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge179:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx206 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx206 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx206, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge179
  %i.cy = mul nuw nsw i64 %i.a, 3                 ; 5 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.da = icmp eq i64 %i.a, 0
  br i1 %i.da, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep204 = getelementptr [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.db = add nsw i64 %.idx206, -4
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = sub nsw i64 %1, %i.d
  %i.de = add nuw nsw i64 %1, 1
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.de, i64 %i.d)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.dd)
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.df) ; 2 uses
  %min.iters.check365 = icmp samesign ult i64 %i.dh, 8
  br i1 %min.iters.check365, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph366

vector.ph366:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = and i64 %i.di, 7                        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = select i1 %i.dk, i64 8, i64 %i.dj
  %n.vec367 = sub nsw i64 %i.di, %i.dl            ; 3 uses
  %i.dm = shl i64 %n.vec367, 2
  %i.dn = getelementptr i8, ptr %i.e, i64 %i.dm
  %broadcast.splatinsert368 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat369 = shufflevector <4 x float> %broadcast.splatinsert368, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep462 = getelementptr [4 x i8], ptr %invariant.gep204, i64 %i.d
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph366
  %index371 = phi i64 [ 0, %vector.ph366 ], [ %index.next374, %vector.body370 ] ; 3 uses
  %i.do = shl i64 %index371, 2
  %next.gep372 = getelementptr i8, ptr %i.e, i64 %i.do ; 2 uses
  %gep463 = getelementptr [4 x i8], ptr %invariant.gep462, i64 %index371 ; 2 uses
  %i.dp = getelementptr i8, ptr %gep463, i64 16
  %wide.load = load <4 x float>, ptr %gep463, align 4
  %wide.load373 = load <4 x float>, ptr %i.dp, align 4
  %i.dq = fmul <4 x float> %broadcast.splat369, %wide.load
  %i.dr = fmul <4 x float> %broadcast.splat369, %wide.load373
  %i.ds = getelementptr i8, ptr %next.gep372, i64 16
  store <4 x float> %i.dq, ptr %next.gep372, align 4
  store <4 x float> %i.dr, ptr %i.ds, align 4
  %index.next374 = add nuw i64 %index371, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next374, %n.vec367
  br i1 %i.dt, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body370, !llvm.loop !160

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body370, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.087.0196.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dn, %vector.body370 ]
  %.sroa.789.0195.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec367, %vector.body370 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.g
  %.sroa.087.0196.us = phi ptr [ %i.du, %bb.g ], [ %.sroa.087.0196.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.789.0195.us = phi i64 [ %i.dv, %bb.g ], [ %.sroa.789.0195.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.087.0196.us, i64 4 ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.789.0195.us, 1
  %i.dw = add nuw nsw i64 %.sroa.789.0195.us, %i.d ; 4 uses
  %i.dx = icmp samesign ugt i64 %i.dw, %1
  br i1 %i.dx, label %.split198.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.dy = sub nuw nsw i64 %1, %i.dw               ; 2 uses
  %i.dz = icmp samesign ult i64 %i.cy, %i.dy
  br i1 %i.dz, label %bb.g, label %.split201.us

bb.g:                                             ; preds = %bb.f
  %gep205 = getelementptr [4 x i8], ptr %invariant.gep204, i64 %i.dw
  %i.ea = load float, ptr %gep205, align 4, !noundef !9
  %i.eb = fmul float %i.c, %i.ea
  store float %i.eb, ptr %.sroa.087.0196.us, align 4
  %i.ec = icmp eq ptr %i.du, %i.cw
  br i1 %i.ec, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !161

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge191
  %.sroa.087.0196 = phi ptr [ %i.ed, %._crit_edge191 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.789.0195 = phi i64 [ %i.ee, %._crit_edge191 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.087.0196, i64 4 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.789.0195, 1
  %i.ef = add nuw nsw i64 %.sroa.789.0195, %i.d   ; 4 uses
  %i.eg = icmp samesign ugt i64 %i.ef, %1
  br i1 %i.eg, label %.split198.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge191, %bb.g, %._crit_edge179
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.eh = sub nuw nsw i64 %1, %i.ef               ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef ; 3 uses
  %i.ej = icmp samesign ult i64 %i.cy, %i.eh
  br i1 %i.ej, label %.lr.ph190, label %.split201.us

.split198.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi199 = phi i64 [ %i.dw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ef, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi199, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph190:                                        ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cy
  %i.el = load float, ptr %i.ek, align 4, !noundef !9
  %i.em = fmul float %i.c, %i.el
  br label %bb.i

.split201.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi202 = phi i64 [ %i.dy, %bb.f ], [ %i.eh, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %.us-phi202, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph190, %bb.n
  %.sroa.026.0188 = phi float [ %i.em, %.lr.ph190 ], [ %i.ff, %bb.n ] ; 2 uses
  %.sroa.1093.0187 = phi i64 [ 0, %.lr.ph190 ], [ %i.eq, %bb.n ] ; 3 uses
  %.sroa.792.0186 = phi i64 [ %i.a, %.lr.ph190 ], [ %i.en, %bb.n ]
  %.sroa.090.0185 = phi ptr [ %4, %.lr.ph190 ], [ %i.ep, %bb.n ] ; 3 uses
  %i.en = add nsw i64 %.sroa.792.0186, -1         ; 2 uses
  %i.eo = icmp eq ptr %.sroa.090.0185, %i.cz
  br i1 %i.eo, label %._crit_edge191, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.090.0185, i64 4
  %i.eq = add nuw nsw i64 %.sroa.1093.0187, 1
  %i.er = load float, ptr %.sroa.090.0185, align 4, !noundef !9
  %i.es = mul nuw nsw i64 %.sroa.1093.0187, 3     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.es, %i.eh
  br i1 %.not67.not, label %bb.l, label %bb.k, !prof !11

._crit_edge191:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.ff, %bb.n ], [ %.sroa.026.0188, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.087.0196, align 4
  %i.et = icmp eq ptr %i.ed, %i.cw
  br i1 %i.et, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.eu = add nuw nsw i64 %i.es, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ev = xor i64 %.sroa.1093.0187, -1
  %i.ew = add nsw i64 %5, %i.ev
  %i.ex = mul nsw i64 %i.ew, 3                    ; 3 uses
  %i.ey = add nsw i64 %i.ex, 1                    ; 2 uses
  %.not68 = icmp ugt i64 %i.ey, %i.eh
  br i1 %.not68, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ex, i64 noundef %i.ey, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.es
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ex
  %i.fb = load float, ptr %i.ez, align 4, !noundef !9
  %i.fc = load float, ptr %i.fa, align 4, !noundef !9
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = fmul float %i.er, %i.fd
  %i.ff = fadd float %.sroa.026.0188, %i.fe       ; 2 uses
  %i.fg = icmp eq i64 %i.en, 0
  br i1 %i.fg, label %._crit_edge191, label %bb.i

bb.o:                                             ; preds = %.lr.ph178.split
  %i.fh = sub nuw nsw i64 %1, %i.cv               ; 6 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.fh
  br i1 %.not69, label %.split181.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph178.split, %scalar.ph
  %.us-phi = phi i64 [ %i.co, %scalar.ph ], [ %i.cv, %.lr.ph178.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split181.us:                                     ; preds = %bb.o, %bb.c
  %.us-phi182 = phi i64 [ %i.cp, %bb.c ], [ %i.fh, %bb.o ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi182, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.i
  %i.fk = load <4 x float>, ptr %i.fj, align 4
  %i.fl = fmul <4 x float> %i.p, %i.fk
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.084.0162 = phi ptr [ %4, %.lr.ph ], [ %i.fp, %bb.u ] ; 3 uses
  %.sroa.786.0161 = phi i64 [ %i.a, %.lr.ph ], [ %i.fn, %bb.u ]
  %.sroa.10.0160 = phi i64 [ 0, %.lr.ph ], [ %i.fq, %bb.u ] ; 3 uses
  %i.fm = phi <4 x float> [ %i.fl, %.lr.ph ], [ %i.gj, %bb.u ] ; 2 uses
  %i.fn = add nsw i64 %.sroa.786.0161, -1         ; 2 uses
  %i.fo = icmp eq ptr %.sroa.084.0162, %i.k
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.084.0162, i64 4
  %i.fq = add nuw nsw i64 %.sroa.10.0160, 1
  %i.fr = load float, ptr %.sroa.084.0162, align 4, !noundef !9
  %i.fs = mul nuw nsw i64 %.sroa.10.0160, 3       ; 3 uses
  %i.ft = add nuw nsw i64 %i.fs, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.ft, %i.fh
  br i1 %.not71, label %bb.r, label %bb.s, !prof !6

._crit_edge:                                      ; preds = %bb.p, %bb.u
  %i.fu = phi <4 x float> [ %i.gj, %bb.u ], [ %i.fm, %bb.p ]
  store <4 x float> %i.fu, ptr %.sroa.083.0176, align 4
  %i.fv = icmp eq ptr %i.ct, %i.g
  br i1 %i.fv, label %._crit_edge179, label %.lr.ph178.split

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fs, i64 noundef %i.ft, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fw = xor i64 %.sroa.10.0160, -1
  %i.fx = add nsw i64 %5, %i.fw
  %i.fy = mul nsw i64 %i.fx, 3                    ; 4 uses
  %i.fz = add nsw i64 %i.fy, 4                    ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, -5
  %.not72 = icmp ugt i64 %i.fz, %i.fh
  %or.cond75 = or i1 %i.ga, %.not72
  br i1 %or.cond75, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fy, i64 noundef %i.fz, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fs
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fy
  %i.gd = load <4 x float>, ptr %i.gb, align 4
  %i.ge = load <4 x float>, ptr %i.gc, align 4
  %i.gf = fadd <4 x float> %i.gd, %i.ge
  %i.gg = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul <4 x float> %i.gh, %i.gf
  %i.gj = fadd <4 x float> %i.fm, %i.gi           ; 2 uses
  %i.gk = icmp eq i64 %i.fn, 0
  br i1 %i.gk, label %._crit_edge, label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj4_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !9 ; 6 uses
  %i.d = and i64 %3, 2305843009213693948          ; 6 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 3 uses
  %.idx = and i64 %i.f, 9223372036854775792       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.a, 2                  ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph170.split.us, label %.lr.ph170.split.preheader

.lr.ph170.split.preheader:                        ; preds = %.lr.ph170
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph170.split

.lr.ph170.split.us:                               ; preds = %.lr.ph170
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.i ; 5 uses
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph170.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx358 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx358 ; 4 uses
  %.idx359 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %invariant.gep, i64 %.idx359 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx360 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %invariant.gep, i64 %.idx360 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx361 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %invariant.gep, i64 %.idx361 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4
  %i.ao = load float, ptr %i.ai, align 4
  %i.ap = load float, ptr %i.ak, align 4
  %i.aq = load float, ptr %i.am, align 4
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4
  %i.ba = load float, ptr %i.aw, align 4
  %i.bb = load float, ptr %i.ax, align 4
  %i.bc = load float, ptr %i.ay, align 4
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4
  %i.bm = load float, ptr %i.bi, align 4
  %i.bn = load float, ptr %i.bj, align 4
  %i.bo = load float, ptr %i.bk, align 4
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4
  %i.by = load float, ptr %i.bu, align 4
  %i.bz = load float, ptr %i.bv, align 4
  %i.ca = load float, ptr %i.bw, align 4
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !162

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph170.split.us
  %.sroa.081.0168.us.ph = phi ptr [ %2, %.lr.ph170.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0167.us.ph = phi i64 [ 0, %.lr.ph170.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.081.0168.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.081.0168.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0167.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0167.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.081.0168.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0167.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0167.us, 2     ; 3 uses
  %exitcond238 = icmp eq i64 %.sroa.7.0167.us, %i.r
  br i1 %exitcond238, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.cp
  br i1 %.not69.us, label %.split173.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.081.0168.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge171, label %scalar.ph, !llvm.loop !163

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph170.split:                                  ; preds = %.lr.ph170.split.preheader, %._crit_edge
  %.sroa.081.0168 = phi ptr [ %i.ct, %._crit_edge ], [ %2, %.lr.ph170.split.preheader ] ; 2 uses
  %.sroa.7.0167 = phi i64 [ %i.cu, %._crit_edge ], [ 0, %.lr.ph170.split.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.081.0168, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0167, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0167, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0167, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge171:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx198 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx198 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx198, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge171
  %i.cy = shl nuw nsw i64 %i.a, 2                 ; 5 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.da = icmp eq i64 %i.a, 0
  br i1 %i.da, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep196 = getelementptr [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.db = add nsw i64 %.idx198, -4
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = sub nsw i64 %1, %i.d
  %i.de = add nuw nsw i64 %1, 1
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.de, i64 %i.d)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.dd)
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.df) ; 2 uses
  %min.iters.check345 = icmp samesign ult i64 %i.dh, 8
  br i1 %min.iters.check345, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph346

vector.ph346:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = and i64 %i.di, 7                        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = select i1 %i.dk, i64 8, i64 %i.dj
  %n.vec347 = sub nsw i64 %i.di, %i.dl            ; 3 uses
  %i.dm = shl i64 %n.vec347, 2
  %i.dn = getelementptr i8, ptr %i.e, i64 %i.dm
  %broadcast.splatinsert348 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat349 = shufflevector <4 x float> %broadcast.splatinsert348, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep434 = getelementptr [4 x i8], ptr %invariant.gep196, i64 %i.d
  br label %vector.body350

vector.body350:                                   ; preds = %vector.body350, %vector.ph346
  %index351 = phi i64 [ 0, %vector.ph346 ], [ %index.next354, %vector.body350 ] ; 3 uses
  %i.do = shl i64 %index351, 2
  %next.gep352 = getelementptr i8, ptr %i.e, i64 %i.do ; 2 uses
  %gep435 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %index351 ; 2 uses
  %i.dp = getelementptr i8, ptr %gep435, i64 16
  %wide.load = load <4 x float>, ptr %gep435, align 4
  %wide.load353 = load <4 x float>, ptr %i.dp, align 4
  %i.dq = fmul <4 x float> %broadcast.splat349, %wide.load
  %i.dr = fmul <4 x float> %broadcast.splat349, %wide.load353
  %i.ds = getelementptr i8, ptr %next.gep352, i64 16
  store <4 x float> %i.dq, ptr %next.gep352, align 4
  store <4 x float> %i.dr, ptr %i.ds, align 4
  %index.next354 = add nuw i64 %index351, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next354, %n.vec347
  br i1 %i.dt, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body350, !llvm.loop !164

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body350, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.085.0188.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dn, %vector.body350 ]
  %.sroa.787.0187.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec347, %vector.body350 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.g
  %.sroa.085.0188.us = phi ptr [ %i.du, %bb.g ], [ %.sroa.085.0188.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.787.0187.us = phi i64 [ %i.dv, %bb.g ], [ %.sroa.787.0187.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.085.0188.us, i64 4 ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.787.0187.us, 1
  %i.dw = add nuw nsw i64 %.sroa.787.0187.us, %i.d ; 4 uses
  %i.dx = icmp samesign ugt i64 %i.dw, %1
  br i1 %i.dx, label %.split190.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.dy = sub nuw nsw i64 %1, %i.dw               ; 2 uses
  %i.dz = icmp samesign ult i64 %i.cy, %i.dy
  br i1 %i.dz, label %bb.g, label %.split193.us

bb.g:                                             ; preds = %bb.f
  %gep197 = getelementptr [4 x i8], ptr %invariant.gep196, i64 %i.dw
  %i.ea = load float, ptr %gep197, align 4, !noundef !9
  %i.eb = fmul float %i.c, %i.ea
  store float %i.eb, ptr %.sroa.085.0188.us, align 4
  %i.ec = icmp eq ptr %i.du, %i.cw
  br i1 %i.ec, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !165

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge183
  %.sroa.085.0188 = phi ptr [ %i.ed, %._crit_edge183 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.787.0187 = phi i64 [ %i.ee, %._crit_edge183 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.085.0188, i64 4 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.787.0187, 1
  %i.ef = add nuw nsw i64 %.sroa.787.0187, %i.d   ; 4 uses
  %i.eg = icmp samesign ugt i64 %i.ef, %1
  br i1 %i.eg, label %.split190.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge183, %bb.g, %._crit_edge171
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.eh = sub nuw nsw i64 %1, %i.ef               ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef ; 3 uses
  %i.ej = icmp samesign ult i64 %i.cy, %i.eh
  br i1 %i.ej, label %.lr.ph182, label %.split193.us

.split190.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi191 = phi i64 [ %i.dw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ef, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi191, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph182:                                        ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cy
  %i.el = load float, ptr %i.ek, align 4, !noundef !9
  %i.em = fmul float %i.c, %i.el
  br label %bb.i

.split193.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi194 = phi i64 [ %i.dy, %bb.f ], [ %i.eh, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %.us-phi194, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph182, %bb.n
  %.sroa.026.0180 = phi float [ %i.em, %.lr.ph182 ], [ %i.ff, %bb.n ] ; 2 uses
  %.sroa.1091.0179 = phi i64 [ 0, %.lr.ph182 ], [ %i.eq, %bb.n ] ; 3 uses
  %.sroa.790.0178 = phi i64 [ %i.a, %.lr.ph182 ], [ %i.en, %bb.n ]
  %.sroa.088.0177 = phi ptr [ %4, %.lr.ph182 ], [ %i.ep, %bb.n ] ; 3 uses
  %i.en = add nsw i64 %.sroa.790.0178, -1         ; 2 uses
  %i.eo = icmp eq ptr %.sroa.088.0177, %i.cz
  br i1 %i.eo, label %._crit_edge183, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.088.0177, i64 4
  %i.eq = add nuw nsw i64 %.sroa.1091.0179, 1
  %i.er = load float, ptr %.sroa.088.0177, align 4, !noundef !9
  %i.es = shl nuw nsw i64 %.sroa.1091.0179, 2     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.es, %i.eh
  br i1 %.not67.not, label %bb.l, label %bb.k, !prof !4

._crit_edge183:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.ff, %bb.n ], [ %.sroa.026.0180, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.085.0188, align 4
  %i.et = icmp eq ptr %i.ed, %i.cw
  br i1 %i.et, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.eu = or disjoint i64 %i.es, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
end_hunk_0
