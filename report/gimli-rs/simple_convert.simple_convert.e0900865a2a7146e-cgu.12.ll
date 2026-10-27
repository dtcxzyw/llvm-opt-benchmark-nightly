Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple_convert.simple_convert.e0900865a2a7146e-cgu.12?download=true
inline.NumInlined: 80
inline.NumDeleted: 41
begin_hunk_0_@_RINvMNtNtCsi68uqYEhoRA_5gimli5write2opNtB3_10Expression5writeINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert:bb.a
  br label %bb.ay

bb.ho:                                            ; preds = %.noexc70
  %.sroa.41594.0.extract.shift.i = lshr i64 %i.fu, 8
  %.sroa.41594.0.extract.trunc.i = trunc nuw i64 %.sroa.41594.0.extract.shift.i to i56
  br label %bb.ay

bb.hp:                                            ; preds = %.noexc70
  %i.pn = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Csjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fr)
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23 ; 3 uses

.noexc148:                                        ; preds = %bb.hp
  %i.po = and i64 %i.pn, 255
  %.not1862.i = icmp eq i64 %i.po, 255
  br i1 %.not1862.i, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %.noexc148
  %.sroa.41600.0.extract.shift.i = lshr i64 %i.pn, 8
  %.sroa.41600.0.extract.trunc.i = trunc nuw i64 %.sroa.41600.0.extract.shift.i to i56
  br label %bb.ay

bb.hr:                                            ; preds = %.noexc148
  %i.pp = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Csjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ft)
          to label %.noexc149 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23 ; 3 uses

.noexc149:                                        ; preds = %bb.hr
  %i.pq = and i64 %i.pp, 255
  %.not1863.i = icmp eq i64 %i.pq, 255
  br i1 %.not1863.i, label %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB5_9Operation5writeINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert.exit, label %bb.hs

bb.hs:                                            ; preds = %.noexc149
  %.sroa.41606.0.extract.shift.i = lshr i64 %i.pp, 8
  %.sroa.41606.0.extract.trunc.i = trunc nuw i64 %.sroa.41606.0.extract.shift.i to i56
  br label %bb.ay

bb.ht:                                            ; preds = %.noexc71
  %.sroa.41612.0.extract.shift.i = lshr i64 %i.fy, 8
  %.sroa.41612.0.extract.trunc.i = trunc nuw i64 %.sroa.41612.0.extract.shift.i to i56
  br label %bb.ay

bb.hu:                                            ; preds = %.noexc71
  br i1 %.not.i157, label %bb.ay, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.pr = load i64, ptr %i.bb, align 8, !noalias !64, !noundef !5 ; 2 uses
  %i.ps = icmp ult i64 %i.fx, %i.pr
  br i1 %i.ps, label %bb.hw, label %.invoke

bb.hw:                                            ; preds = %bb.hv
  %i.pt = load ptr, ptr %i.bc, align 8, !noalias !64, !nonnull !5, !noundef !5
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.fx
  %i.pv = load i64, ptr %i.pu, align 8, !noalias !64, !noundef !5 ; 2 uses
  %i.pw = icmp eq i64 %i.pv, 0
  br i1 %i.pw, label %bb.ay, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.px = load i64, ptr %i.bd, align 8, !noalias !64, !noundef !5
  %i.py = sub i64 %i.pv, %i.px
  %i.pz = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.py, i8 noundef 4)
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23 ; 3 uses

.noexc151:                                        ; preds = %bb.hx
  %i.qa = and i64 %i.pz, 255
  %.not1860.i = icmp eq i64 %i.qa, 255
  br i1 %.not1860.i, label %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB5_9Operation5writeINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert.exit, label %bb.hy

bb.hy:                                            ; preds = %.noexc151
  %.sroa.41625.0.extract.shift.i = lshr i64 %i.pz, 8
  %.sroa.41625.0.extract.trunc.i = trunc nuw i64 %.sroa.41625.0.extract.shift.i to i56
  br label %bb.ay

bb.hz:                                            ; preds = %.noexc72
  %.sroa.41631.0.extract.shift.i = lshr i64 %i.gc, 8
  %.sroa.41631.0.extract.trunc.i = trunc nuw i64 %.sroa.41631.0.extract.shift.i to i56
  br label %bb.ay

bb.ia:                                            ; preds = %.noexc72
  %i.qb = zext i32 %i.gb to i64
  %i.qc = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Csjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.qb)
          to label %.noexc152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23 ; 3 uses

.noexc152:                                        ; preds = %bb.ia
  %i.qd = and i64 %i.qc, 255
  %.not1858.i = icmp eq i64 %i.qd, 255
  br i1 %.not1858.i, label %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB5_9Operation5writeINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert.exit, label %bb.ib

bb.ib:                                            ; preds = %.noexc152
  %.sroa.41637.0.extract.shift.i = lshr i64 %i.qc, 8
  %.sroa.41637.0.extract.trunc.i = trunc nuw i64 %.sroa.41637.0.extract.shift.i to i56
  br label %bb.ay

bb.ic:                                            ; preds = %.noexc73
  %.sroa.41643.0.extract.shift.i = lshr i64 %i.gg, 8
  %.sroa.41643.0.extract.trunc.i = trunc nuw i64 %.sroa.41643.0.extract.shift.i to i56
  br label %bb.ay

bb.id:                                            ; preds = %.noexc73
  %i.qe = zext i32 %i.gf to i64
  %i.qf = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Csjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.qe)
          to label %.noexc153 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23 ; 3 uses

.noexc153:                                        ; preds = %bb.id
  %i.qg = and i64 %i.qf, 255
  %.not1856.i = icmp eq i64 %i.qg, 255
  br i1 %.not1856.i, label %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB5_9Operation5writeINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert.exit, label %bb.ie

bb.ie:                                            ; preds = %.noexc153
  %.sroa.41649.0.extract.shift.i = lshr i64 %i.qf, 8
  %.sroa.41649.0.extract.trunc.i = trunc nuw i64 %.sroa.41649.0.extract.shift.i to i56
  br label %bb.ay

bb.if:                                            ; preds = %.noexc74
  %.sroa.41655.0.extract.shift.i = lshr i64 %i.gk, 8
  %.sroa.41655.0.extract.trunc.i = trunc nuw i64 %.sroa.41655.0.extract.shift.i to i56
  br label %bb.ay

bb.ig:                                            ; preds = %.noexc74
  %i.qh = zext i32 %i.gj to i64
  %i.qi = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Csjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.qh)
          to label %.noexc154 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23 ; 3 uses

.noexc154:                                        ; preds = %bb.ig
  %i.qj = and i64 %i.qi, 255
  %.not1854.i = icmp eq i64 %i.qj, 255
  br i1 %.not1854.i, label %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB5_9Operation5writeINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert.exit, label %bb.ih

bb.ih:                                            ; preds = %.noexc154
  %.sroa.41661.0.extract.shift.i = lshr i64 %i.qi, 8
  %.sroa.41661.0.extract.trunc.i = trunc nuw i64 %.sroa.41661.0.extract.shift.i to i56
  br label %bb.ay

bb.ii:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECsjhlb6SMKfKY_14simple_convert.exit unwind label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.qk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.ql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.ii, %bb.k
  %.sroa.06.0.insert.insert = phi i64 [ %.sroa.4.sroa.0.0.in, %bb.k ], [ 255, %bb.ii ]
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i64 %.sroa.06.0.insert.insert

_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB5_9Operation5writeINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.ay, %.noexc154, %.noexc153, %.noexc152, %.noexc151, %.noexc149, %.noexc147, %.noexc146, %.noexc141, %.noexc139, %.noexc138, %.noexc136, %.noexc131, %.noexc130, %.noexc126, %.noexc125, %.noexc121, %.noexc119, %.noexc117, %.noexc114, %.noexc112, %.noexc111, %.noexc110, %.noexc104, %.noexc101, %.noexc100, %.noexc99, %.noexc98, %.noexc97, %.noexc95, %.noexc90, %.noexc86, %.noexc85, %.noexc79, %.noexc78, %.noexc77, %bb.bb, %.noexc58, %.noexc57
  %.sroa.029.0.insert.insert.i = phi i64 [ %i.gp, %bb.ay ], [ 255, %.noexc154 ], [ 255, %.noexc153 ], [ 255, %.noexc152 ], [ 255, %.noexc151 ], [ 255, %.noexc149 ], [ 255, %.noexc147 ], [ 255, %.noexc146 ], [ 255, %.noexc141 ], [ 255, %.noexc139 ], [ 255, %.noexc138 ], [ 255, %.noexc136 ], [ 255, %.noexc131 ], [ 255, %.noexc130 ], [ 255, %.noexc126 ], [ 255, %.noexc125 ], [ 255, %.noexc121 ], [ 255, %.noexc119 ], [ 255, %.noexc117 ], [ 255, %.noexc114 ], [ 255, %.noexc112 ], [ 255, %.noexc111 ], [ 255, %.noexc110 ], [ 255, %.noexc104 ], [ 255, %.noexc101 ], [ 255, %.noexc100 ], [ 255, %.noexc99 ], [ 255, %.noexc98 ], [ 255, %.noexc97 ], [ 255, %.noexc95 ], [ 255, %.noexc90 ], [ 255, %.noexc86 ], [ 255, %.noexc85 ], [ 255, %.noexc79 ], [ 255, %.noexc78 ], [ 255, %.noexc77 ], [ 255, %bb.bb ], [ 255, %.noexc58 ], [ 255, %.noexc57 ] ; 2 uses
  %i.qm = and i64 %.sroa.029.0.insert.insert.i, 255
  %.not51 = icmp eq i64 %i.qm, 255
  br i1 %.not51, label %bb.o, label %bb.il

bb.il:                                            ; preds = %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB5_9Operation5writeINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.im:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsi68uqYEhoRA_5gimli5write2op7convertNtB5_10Expression4fromINtNtNtB9_4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(424) %3, ptr %4, ptr noundef nonnull %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %6, ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6752 = alloca [16 x i8], align 8         ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6743 = alloca [16 x i8], align 8         ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6724 = alloca [16 x i8], align 8         ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6718 = alloca [16 x i8], align 8         ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 67 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 13 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.021 = alloca [24 x i8], align 8          ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 14 uses
  %.sroa.07.0.extract.trunc = trunc i32 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 6 uses
  store i64 0, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.af = load ptr, ptr %1, align 8, !alias.scope !86, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !86, !noundef !5 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load i8, ptr %i.ai, align 8, !range !11, !alias.scope !86, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  store ptr %i.af, ptr %i.ab, align 8, !alias.scope !88
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !88
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i8 %.val.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i32 %2, ptr %i.aj, align 8, !alias.scope !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  br label %bb.b

.body1118:                                        ; preds = %.loopexit.split-lp1183.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ez, %.body
  %.pn1091 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.he, %bb.ez ], [ %lpad.loopexit.split-lp1414, %.loopexit.split-lp1183.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #17
          to label %common.resume unwind label %bb.fe

bb.b:                                             ; preds = %bb.fh, %bb.a
  %.sroa.027.0 = phi i64 [ 0, %bb.a ], [ %i.ho, %bb.fh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.021)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMs1_NtNtCsi68uqYEhoRA_5gimli4read2opINtB5_13OperationIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE4nextCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.c unwind label %.loopexit.split-lp1183.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.al = load i8, ptr %i.ak, align 8, !range !90, !noundef !5 ; 2 uses
  %i.am = icmp eq i8 %i.al, -2
  br i1 %i.am, label %bb.fi, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.not = icmp eq i8 %i.al, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.021)
  %i.an = load i64, ptr %i.ae, align 8, !noundef !5 ; 5 uses
  %i.ao = load i64, ptr %i.ac, align 8, !range !9, !noundef !5
  %i.ap = icmp eq i64 %i.an, %i.ao                ; 2 uses
  br i1 %.not, label %bb.e, label %bb.ff

bb.e:                                             ; preds = %bb.d
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs4GFMLGV1pRI_6ruzstd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #18
          to label %bb.g unwind label %.loopexit.split-lp1183.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aq = load ptr, ptr %i.ad, align 8, !alias.scope !91, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.an
  store i64 %i.ah, ptr %i.ar, align 8
  %i.as = add i64 %i.an, 1
  store i64 %i.as, ptr %i.ae, align 8, !alias.scope !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  store ptr %i.af, ptr %i.z, align 8, !alias.scope !93
  %.sroa.41125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ah, ptr %.sroa.41125.0..sroa_idx, align 8, !alias.scope !93
  %.sroa.51126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i8 %.val.i.i, ptr %.sroa.51126.0..sroa_idx, align 8, !alias.scope !93
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i32 %2, ptr %i.at, align 8, !alias.scope !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.4894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 61 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !5 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 13 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %.not1077 = icmp eq ptr %3, null                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !5 ; 2 uses
  %.sroa.41000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.51001.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %.sroa.2819.sroa.2.0..sroa.2819.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 17 ; 2 uses
  %.sroa.4971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5972.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.5748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !5 ; 3 uses
  %.sroa.4958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.4949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.4947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  br label %bb.h

bb.h:                                             ; preds = %bb.fc, %bb.g
  %storemerge = phi i64 [ 0, %bb.g ], [ %i.hi, %bb.fc ]
  store i64 %storemerge, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvMs1_NtNtCsi68uqYEhoRA_5gimli4read2opINtB5_13OperationIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE4nextCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.ca = load i8, ptr %i.aw, align 8, !range !90, !noundef !5 ; 5 uses
  %i.cb = icmp eq i8 %i.ca, -2
  %.sroa.0899.0.copyload = load i64, ptr %i.x, align 8 ; 32 uses
  %.sroa.4900.0.copyload = load i64, ptr %.sroa.4894.0..sroa_idx, align 8 ; 17 uses
  br i1 %i.cb, label %bb.fd, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.5895.0.copyload = load i64, ptr %.sroa.5895.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.not1069 = icmp eq i8 %i.ca, -1
  br i1 %.not1069, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.036.sroa.0.sroa.0.sroa.30.0.extract.shift1070 = lshr i64 %.sroa.0899.0.copyload, 8 ; 6 uses
  %.sroa.036.sroa.0.sroa.30.0.extract.shift1071 = lshr i64 %.sroa.0899.0.copyload, 16 ; 3 uses
  %.sroa.30.sroa.0.0.extract.trunc = trunc i64 %.sroa.4900.0.copyload to i8 ; 2 uses
  %.sroa.30.sroa.13.0.extract.shift = lshr i64 %.sroa.4900.0.copyload, 8
  %.sroa.30.sroa.13.0.extract.trunc = trunc i64 %.sroa.30.sroa.13.0.extract.shift to i8
  %.sroa.38.sroa.0.0.extract.trunc = trunc i64 %.sroa.5895.0.copyload to i16 ; 2 uses
  %i.cc = icmp ne i8 %i.ca, 50
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nsw i8 %i.ca, -2
  %i.ce = icmp samesign ugt i8 %i.ca, 1
  %narrow = select i1 %i.ce, i8 %i.cd, i8 48
  switch i8 %narrow, label %bb.o [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
    i8 5, label %bb.u
    i8 6, label %bb.v
    i8 7, label %bb.w
    i8 8, label %bb.x
    i8 9, label %bb.y
    i8 10, label %bb.z
    i8 11, label %bb.aa
    i8 12, label %bb.ab
    i8 13, label %bb.ac
    i8 14, label %bb.ad
    i8 15, label %bb.ae
    i8 16, label %bb.af
    i8 17, label %bb.ag
    i8 18, label %bb.ah
    i8 19, label %bb.ai
    i8 20, label %bb.aj
    i8 21, label %bb.ak
    i8 22, label %bb.al
    i8 23, label %bb.am
    i8 24, label %bb.an
    i8 25, label %bb.ao
    i8 26, label %bb.ap
    i8 27, label %bb.aq
    i8 28, label %bb.ar
    i8 29, label %bb.as
    i8 30, label %bb.at
    i8 31, label %bb.au
    i8 32, label %bb.av
    i8 33, label %bb.aw
    i8 34, label %bb.ax
    i8 35, label %bb.ay
    i8 36, label %bb.az
end_hunk_0
begin_hunk_1_@_RINvMNtNtNtCsi68uqYEhoRA_5gimli5write2op7convertNtB5_10Expression4fromINtNtNtB9_4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert:bb.a

bb.ak:                                            ; preds = %bb.k
  store i8 41, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.al:                                            ; preds = %bb.k
  store i8 42, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.am:                                            ; preds = %bb.k
  store i8 43, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.an:                                            ; preds = %bb.k
  store i8 44, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.ao:                                            ; preds = %bb.k
  store i8 45, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.ap:                                            ; preds = %bb.k
  store i8 46, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.aq:                                            ; preds = %bb.k
  %i.cj = invoke noundef i64 @_RNvMs1_NtNtCsi68uqYEhoRA_5gimli4read2opINtB5_13OperationIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE11offset_fromCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.k
  store i64 %.sroa.0899.0.copyload, ptr %i.ax, align 8
  store i64 5, ptr %i.w, align 8
  br label %bb.bx

bb.as:                                            ; preds = %bb.k
  store i64 %.sroa.0899.0.copyload, ptr %i.ax, align 8
  store i64 6, ptr %i.w, align 8
  br label %bb.bx

bb.at:                                            ; preds = %bb.k
  %i.ck = trunc i64 %.sroa.036.sroa.0.sroa.0.sroa.30.0.extract.shift1070 to i16
  %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext540 = shl i16 %i.ck, 8
  %i.cl = trunc i64 %.sroa.0899.0.copyload to i16
  %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext467 = and i16 %i.cl, 255
  %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.insert469 = or disjoint i16 %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext540, %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext467
  store i16 %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.insert469, ptr %i.ax, align 8
  store i64 24, ptr %i.w, align 8
  br label %bb.bx

bb.au:                                            ; preds = %bb.k
  %i.cm = icmp eq i64 %.sroa.4900.0.copyload, 0
  br i1 %i.cm, label %bb.cf, label %bb.cg

bb.av:                                            ; preds = %bb.k
  store i64 %.sroa.0899.0.copyload, ptr %i.ax, align 8
  store i64 8, ptr %i.w, align 8
  br label %bb.bx

bb.aw:                                            ; preds = %bb.k
  store i8 -106, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.ax:                                            ; preds = %bb.k
  store i8 -105, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.ay:                                            ; preds = %bb.k
  %i.cn = trunc nuw i64 %.sroa.0899.0.copyload to i1
  br i1 %i.cn, label %bb.ck, label %bb.cl

bb.az:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6724)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void %i.br(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull %7, i64 noundef %.sroa.0899.0.copyload)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.k
  store i8 -101, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.bb:                                            ; preds = %bb.k
  store i8 -100, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.bc:                                            ; preds = %bb.k
  %i.co = trunc nuw i64 %.sroa.0899.0.copyload to i1
  br i1 %i.co, label %bb.cv, label %bb.cw

bb.bd:                                            ; preds = %bb.k
  store i8 -97, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.be:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6743)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void %i.br(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull %7, i64 noundef %.sroa.0899.0.copyload)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6752)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.0899.0.copyload, ptr %i.n, align 8
  store i64 %.sroa.4900.0.copyload, ptr %.sroa.5748.0..sroa_idx, align 8
  store i64 %.sroa.5895.0.copyload, ptr %.sroa.6749.0..sroa_idx, align 8
  invoke void @_RINvMNtNtNtCsi68uqYEhoRA_5gimli5write2op7convertNtB5_10Expression4fromINtNtNtB9_4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(424) %3, ptr %4, ptr noundef nonnull %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %6, ptr noundef nonnull %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %8)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void %i.az(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noundef nonnull %7, i64 noundef %.sroa.0899.0.copyload)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void %i.bo(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull %5, i64 noundef %.sroa.0899.0.copyload)
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br i1 %.not1077, label %bb.dr, label %bb.dq

bb.bj:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br i1 %.not1077, label %bb.ea, label %bb.dz

bb.bk:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void %i.az(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull %7, i64 noundef %.sroa.0899.0.copyload)
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.k
  %i.cp = icmp eq i64 %.sroa.0899.0.copyload, 0
  br i1 %i.cp, label %bb.eo, label %bb.ep

bb.bm:                                            ; preds = %bb.k
  %i.cq = icmp eq i64 %.sroa.0899.0.copyload, 0
  br i1 %i.cq, label %bb.et, label %bb.eu

bb.bn:                                            ; preds = %bb.k
  store i8 -16, ptr %i.ax, align 8
  store i64 3, ptr %i.w, align 8
  br label %bb.bx

bb.bo:                                            ; preds = %bb.k
  %i.cr = trunc i64 %.sroa.036.sroa.0.sroa.0.sroa.30.0.extract.shift1070 to i32
  %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext544 = shl i32 %i.cr, 8
  %i.cs = trunc i64 %.sroa.0899.0.copyload to i32
  %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext470 = and i32 %i.cs, 255
  %i.ct = trunc i64 %.sroa.036.sroa.0.sroa.30.0.extract.shift1071 to i32
  %.sroa.036.sroa.0.sroa.30.0.insert.ext = shl i32 %i.ct, 16
  %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext544.masked = and i32 %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext544, 65280
  %.sroa.036.sroa.0.sroa.0.0.insert.ext = or disjoint i32 %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext470, %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext544.masked
  %.sroa.036.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.036.sroa.0.sroa.0.0.insert.ext, %.sroa.036.sroa.0.sroa.30.0.insert.ext
  store i32 %.sroa.036.sroa.0.sroa.0.0.insert.insert, ptr %i.ax, align 8
  store i64 30, ptr %i.w, align 8
  br label %bb.bx

bb.bp:                                            ; preds = %bb.k
  %i.cu = trunc i64 %.sroa.036.sroa.0.sroa.0.sroa.30.0.extract.shift1070 to i32
  %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext548 = shl i32 %i.cu, 8
  %i.cv = trunc i64 %.sroa.0899.0.copyload to i32
  %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext473 = and i32 %i.cv, 255
  %i.cw = trunc i64 %.sroa.036.sroa.0.sroa.30.0.extract.shift1071 to i32
  %.sroa.036.sroa.0.sroa.30.0.insert.ext380 = shl i32 %i.cw, 16
  %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext548.masked = and i32 %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext548, 65280
  %.sroa.036.sroa.0.sroa.0.0.insert.ext317 = or disjoint i32 %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext473, %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext548.masked
  %.sroa.036.sroa.0.sroa.0.0.insert.insert319 = or disjoint i32 %.sroa.036.sroa.0.sroa.0.0.insert.ext317, %.sroa.036.sroa.0.sroa.30.0.insert.ext380
  store i32 %.sroa.036.sroa.0.sroa.0.0.insert.insert319, ptr %i.ax, align 8
  store i64 31, ptr %i.w, align 8
  br label %bb.bx

bb.bq:                                            ; preds = %bb.k
  %i.cx = trunc i64 %.sroa.036.sroa.0.sroa.0.sroa.30.0.extract.shift1070 to i32
  %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext552 = shl i32 %i.cx, 8
  %i.cy = trunc i64 %.sroa.0899.0.copyload to i32
  %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext476 = and i32 %i.cy, 255
  %i.cz = trunc i64 %.sroa.036.sroa.0.sroa.30.0.extract.shift1071 to i32
  %.sroa.036.sroa.0.sroa.30.0.insert.ext384 = shl i32 %i.cz, 16
  %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext552.masked = and i32 %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext552, 65280
  %.sroa.036.sroa.0.sroa.0.0.insert.ext320 = or disjoint i32 %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext476, %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext552.masked
  %.sroa.036.sroa.0.sroa.0.0.insert.insert322 = or disjoint i32 %.sroa.036.sroa.0.sroa.0.0.insert.ext320, %.sroa.036.sroa.0.sroa.30.0.insert.ext384
  store i32 %.sroa.036.sroa.0.sroa.0.0.insert.insert322, ptr %i.ax, align 8
  store i64 32, ptr %i.w, align 8
  br label %bb.bx

bb.br:                                            ; preds = %bb.p
  %.not1089 = icmp eq i8 %.sroa.30.sroa.0.0.extract.trunc, %.sroa.07.0.extract.trunc
  store i8 %.sroa.30.sroa.13.0.extract.trunc, ptr %i.ax, align 8
  br i1 %.not1089, label %.sink.split, label %bb.bt

bb.bs:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void %i.az(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.v, ptr noundef nonnull %7, i64 noundef %.sroa.0899.0.copyload)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.br
  store i8 %.sroa.30.sroa.0.0.extract.trunc, ptr %i.bz, align 1
  br label %.sink.split

bb.bu:                                            ; preds = %bb.bs
  %i.da = load i8, ptr %i.v, align 8, !range !95, !noundef !5 ; 2 uses
  %.not1088 = icmp eq i8 %i.da, -1
  br i1 %.not1088, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.sroa.4905.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.4908.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4908.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4905.0..sroa_idx, i64 7, i1 false)
  %.sroa.5906.0.copyload = load i64, ptr %i.by, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.da, ptr %i.db, align 8
  %.sroa.5909.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5906.0.copyload, ptr %.sroa.5909.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ey

bb.bw:                                            ; preds = %bb.bu
  %i.dc = load i64, ptr %i.by, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.dd = trunc i64 %.sroa.4900.0.copyload to i16
  store i16 %i.dd, ptr %i.bb, align 8
  store i64 %i.dc, ptr %i.ax, align 8
  store i64 14, ptr %i.w, align 8
  br label %bb.bx

.sink.split:                                      ; preds = %bb.br, %bb.bt
  %.sink = phi i64 [ 13, %bb.bt ], [ 12, %bb.br ]
  store i64 %.sink, ptr %i.w, align 8
  br label %bb.bx

.sink.split1271:                                  ; preds = %bb.cw, %bb.cv
  %.sink1272 = phi i64 [ 28, %bb.cv ], [ 27, %bb.cw ]
  store i64 %.sink1272, ptr %i.w, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split1271, %.sink.split, %bb.co, %bb.cr, %bb.et, %bb.ex, %bb.eo, %bb.es, %bb.cf, %bb.cj, %bb.bw, %bb.em, %bb.ed, %bb.dw, %bb.do, %bb.dm, %bb.dj, %bb.dg, %bb.dd, %bb.cu, %bb.ce, %bb.cc, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bd, %bb.bb, %bb.ba, %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.de = load i64, ptr %i.av, align 8, !alias.scope !96, !noundef !5 ; 3 uses
  %i.df = load i64, ptr %i.y, align 8, !range !9, !alias.scope !96, !noundef !5
  %i.dg = icmp eq i64 %i.de, %i.df
  br i1 %i.dg, label %bb.by, label %bb.fc

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.fc unwind label %bb.bz, !noalias !97

bb.bz:                                            ; preds = %bb.by
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w) #17
          to label %.body unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cb:                                            ; preds = %bb.aj
  %i.dj = trunc i64 %.sroa.036.sroa.0.sroa.0.sroa.30.0.extract.shift1070 to i16
  %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext = shl i16 %i.dj, 8
  %i.dk = trunc i64 %.sroa.0899.0.copyload to i16
  %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext = and i16 %i.dk, 255
  %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.insert = or disjoint i16 %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext, %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext
  %i.dl = sext i16 %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.insert to i64
  %i.dm = add i64 %i.ci, %i.dl                    ; 2 uses
  %i.dn = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.do = load i64, ptr %i.ae, align 8, !noundef !5 ; 3 uses
  switch i64 %i.do, label %.lr.ph.i [
    i64 0, label %.loopexit1181
    i64 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.cb
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.cb ], [ %i.dw, %.lr.ph.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i64, ptr %i.dp, align 8, !alias.scope !98, !noundef !5
  %i.dq = icmp eq i64 %.val14.i, %i.dm
  br i1 %i.dq, label %bb.cc, label %.loopexit1181

.lr.ph.i:                                         ; preds = %bb.cb, %.lr.ph.i
  %.sroa.01.017.i = phi i64 [ %i.dx, %.lr.ph.i ], [ %i.do, %bb.cb ] ; 2 uses
  %.sroa.05.016.i = phi i64 [ %i.dw, %.lr.ph.i ], [ 0, %bb.cb ] ; 2 uses
  %i.dr = lshr i64 %.sroa.01.017.i, 1             ; 2 uses
  %i.ds = add nuw nsw i64 %i.dr, %.sroa.05.016.i  ; 3 uses
  %i.dt = icmp ult i64 %i.ds, %i.do
  call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ds
  %.val12.i = load i64, ptr %i.du, align 8, !alias.scope !98, !noundef !5
  %i.dv = icmp ugt i64 %.val12.i, %i.dm
  %i.dw = select i1 %i.dv, i64 %.sroa.05.016.i, i64 %i.ds, !unpredictable !5 ; 2 uses
  %i.dx = sub nuw nsw i64 %.sroa.01.017.i, %i.dr  ; 2 uses
  %i.dy = icmp ugt i64 %i.dx, 1
  br i1 %i.dy, label %.lr.ph.i, label %._crit_edge.i

bb.cc:                                            ; preds = %._crit_edge.i
  store i64 %.sroa.05.0.lcssa.i, ptr %i.ax, align 8
  store i64 17, ptr %i.w, align 8
  br label %bb.bx

.loopexit1181:                                    ; preds = %bb.cb, %._crit_edge.i
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 97, ptr %i.dz, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ey

bb.cd:                                            ; preds = %bb.aq
  %i.ea = trunc i64 %.sroa.036.sroa.0.sroa.0.sroa.30.0.extract.shift1070 to i16
  %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext536 = shl i16 %i.ea, 8
  %i.eb = trunc i64 %.sroa.0899.0.copyload to i16
  %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext464 = and i16 %i.eb, 255
  %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.insert466 = or disjoint i16 %.sroa.036.sroa.0.sroa.0.sroa.30.0.insert.ext536, %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.ext464
  %i.ec = sext i16 %.sroa.036.sroa.0.sroa.0.sroa.0.0.insert.insert466 to i64
  %i.ed = add i64 %i.cj, %i.ec                    ; 2 uses
  %i.ee = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ef = load i64, ptr %i.ae, align 8, !noundef !5 ; 3 uses
  switch i64 %i.ef, label %.lr.ph.i1105 [
    i64 0, label %.loopexit1180
    i64 1, label %._crit_edge.i1109
  ]

._crit_edge.i1109:                                ; preds = %.lr.ph.i1105, %bb.cd
  %.sroa.05.0.lcssa.i1110 = phi i64 [ 0, %bb.cd ], [ %i.en, %.lr.ph.i1105 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.05.0.lcssa.i1110
  %.val14.i1111 = load i64, ptr %i.eg, align 8, !alias.scope !99, !noundef !5
  %i.eh = icmp eq i64 %.val14.i1111, %i.ed
  br i1 %i.eh, label %bb.ce, label %.loopexit1180

.lr.ph.i1105:                                     ; preds = %bb.cd, %.lr.ph.i1105
  %.sroa.01.017.i1106 = phi i64 [ %i.eo, %.lr.ph.i1105 ], [ %i.ef, %bb.cd ] ; 2 uses
  %.sroa.05.016.i1107 = phi i64 [ %i.en, %.lr.ph.i1105 ], [ 0, %bb.cd ] ; 2 uses
  %i.ei = lshr i64 %.sroa.01.017.i1106, 1         ; 2 uses
  %i.ej = add nuw nsw i64 %i.ei, %.sroa.05.016.i1107 ; 3 uses
  %i.ek = icmp ult i64 %i.ej, %i.ef
  call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ej
  %.val12.i1108 = load i64, ptr %i.el, align 8, !alias.scope !99, !noundef !5
  %i.em = icmp ugt i64 %.val12.i1108, %i.ed
  %i.en = select i1 %i.em, i64 %.sroa.05.016.i1107, i64 %i.ej, !unpredictable !5 ; 2 uses
  %i.eo = sub nuw nsw i64 %.sroa.01.017.i1106, %i.ei ; 2 uses
  %i.ep = icmp ugt i64 %i.eo, 1
  br i1 %i.ep, label %.lr.ph.i1105, label %._crit_edge.i1109

bb.ce:                                            ; preds = %._crit_edge.i1109
  store i64 %.sroa.05.0.lcssa.i1110, ptr %i.ax, align 8
  store i64 16, ptr %i.w, align 8
  br label %bb.bx

.loopexit1180:                                    ; preds = %bb.cd, %._crit_edge.i1109
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 97, ptr %i.eq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ey

bb.cf:                                            ; preds = %bb.au
  store i16 %.sroa.38.sroa.0.0.extract.trunc, ptr %i.bb, align 8
  store i64 %.sroa.0899.0.copyload, ptr %i.ax, align 8
  store i64 9, ptr %i.w, align 8
  br label %bb.bx

bb.cg:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void %i.az(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noundef nonnull %7, i64 noundef %.sroa.4900.0.copyload)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  %i.er = load i8, ptr %i.u, align 8, !range !95, !noundef !5 ; 2 uses
  %.not1087 = icmp eq i8 %i.er, -1
  br i1 %.not1087, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.sroa.4932.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.4935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4935.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4932.0..sroa_idx, i64 7, i1 false)
  %.sroa.5933.0.copyload = load i64, ptr %i.bx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.er, ptr %i.es, align 8
  %.sroa.5936.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5933.0.copyload, ptr %.sroa.5936.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ey

bb.cj:                                            ; preds = %bb.ch
  %i.et = load i64, ptr %i.bx, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i16 %.sroa.38.sroa.0.0.extract.trunc, ptr %i.bb, align 8
  store i64 %i.et, ptr %i.ax, align 8
  store i64 10, ptr %i.w, align 8
  br label %bb.bx

bb.ck:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6718)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void %i.br(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noundef nonnull %7, i64 noundef %.sroa.4900.0.copyload)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void %i.az(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noundef nonnull %7, i64 noundef %.sroa.4900.0.copyload)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %bb.cl
  %i.eu = load i8, ptr %i.t, align 8, !range !95, !noundef !5 ; 2 uses
  %.not1086 = icmp eq i8 %i.eu, -1
  br i1 %.not1086, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.sroa.4941.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.4944.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4944.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4941.0..sroa_idx, i64 7, i1 false)
  %.sroa.5942.0.copyload = load i64, ptr %i.bw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.eu, ptr %i.ev, align 8
  %.sroa.5945.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5942.0.copyload, ptr %.sroa.5945.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ey

bb.co:                                            ; preds = %bb.cm
  %i.ew = load i64, ptr %i.bw, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.ew, ptr %i.ax, align 8
  store i64 18, ptr %i.w, align 8
  br label %bb.bx

bb.cp:                                            ; preds = %bb.ck
  %i.ex = load i64, ptr %i.s, align 8, !range !100, !noundef !5 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6718, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4947.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.ey, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6718, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6718)
  br label %bb.ey

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6718, i64 16, i1 false)
  store i64 %i.ex, ptr %i.ax, align 8
  store i64 19, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6718)
  br label %bb.bx

bb.cs:                                            ; preds = %bb.az
  %i.fa = load i64, ptr %i.r, align 8, !range !100, !noundef !5 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6724, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4949.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %i.fb, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6724, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6724)
  br label %bb.ey

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6724, i64 16, i1 false)
  store i64 %i.fa, ptr %i.ax, align 8
  store i64 20, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6724)
  br label %bb.bx

bb.cv:                                            ; preds = %bb.bc
  store i64 %.sroa.5895.0.copyload, ptr %i.ax, align 8
  store i64 %.sroa.4900.0.copyload, ptr %i.bb, align 8
  br label %.sink.split1271

bb.cw:                                            ; preds = %bb.bc
  %i.fd = lshr i64 %.sroa.5895.0.copyload, 3
  store i64 %i.fd, ptr %i.ax, align 8
  br label %.sink.split1271

bb.cx:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.fe = inttoptr i64 %.sroa.0899.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4900.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  %i.ff = load i64, ptr %i.b, align 8, !range !6, !noundef !5
  %i.fg = trunc nuw i64 %i.ff to i1
  %i.fh = load i64, ptr %i.bs, align 8, !range !7, !noundef !5 ; 3 uses
  br i1 %i.fg, label %bb.cz, label %bb.da, !prof !8

bb.cz:                                            ; preds = %bb.cy
  %i.fi = load i64, ptr %i.bt, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.ei, %bb.cz
  %i.fj = phi i64 [ %i.fh, %bb.cz ], [ %i.gq, %bb.ei ]
  %i.fk = phi i64 [ %i.fi, %bb.cz ], [ %i.gr, %bb.ei ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.fj, i64 %i.fk) #16
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.fl = load ptr, ptr %i.bt, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fm = icmp ule i64 %.sroa.4900.0.copyload, %i.fh
  call void @llvm.assume(i1 %i.fm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.fh, ptr %i.q, align 8
  store ptr %i.fl, ptr %i.bu, align 8
  store i64 0, ptr %i.bv, align 8
  %.not1085 = icmp eq i64 %.sroa.4900.0.copyload, 0
  br i1 %.not1085, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr nonnull align 1 %i.fe, i64 %.sroa.4900.0.copyload, i1 false)
  store i64 %.sroa.4900.0.copyload, ptr %i.bv, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %i.fn = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dd:                                            ; preds = %bb.dc
  %i.fo = extractvalue { ptr, i64 } %i.fn, 0
  %i.fp = extractvalue { ptr, i64 } %i.fn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store ptr %i.fo, ptr %i.ax, align 8
  store i64 %i.fp, ptr %i.bb, align 8
  store i64 25, ptr %i.w, align 8
  br label %bb.bx

bb.de:                                            ; preds = %bb.be
  %i.fq = load i64, ptr %i.p, align 8, !range !100, !noundef !5 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6743, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4958.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.fr, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6743, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6743)
  br label %bb.ey

bb.dg:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6743, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6743)
  store i64 %i.fq, ptr %i.w, align 8
  store i64 %.sroa.4900.0.copyload, ptr %i.bi, align 8
  br label %bb.bx

bb.dh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ft = load i64, ptr %i.o, align 8, !range !101, !noundef !5 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6752, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4960.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.fu, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6752, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6752)
  br label %bb.ey

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6752, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6752)
  store i64 %i.ft, ptr %i.ax, align 8
  store i64 23, ptr %i.w, align 8
  br label %bb.bx

bb.dk:                                            ; preds = %bb.bg
  %i.fw = load i8, ptr %i.m, align 8, !range !95, !noundef !5 ; 2 uses
  %.not1083 = icmp eq i8 %i.fw, -1
  br i1 %.not1083, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %.sroa.4965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.4968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4968.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4965.0..sroa_idx, i64 7, i1 false)
  %.sroa.5966.0.copyload = load i64, ptr %i.bp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.fw, ptr %i.fx, align 8
  %.sroa.5969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5966.0.copyload, ptr %.sroa.5969.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ey

bb.dm:                                            ; preds = %bb.dk
  %i.fy = load i64, ptr %i.bp, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.fy, ptr %i.ax, align 8
  store i64 29, ptr %i.w, align 8
  br label %bb.bx

bb.dn:                                            ; preds = %bb.bh
  %i.fz = load i64, ptr %i.l, align 8, !range !100, !noundef !5 ; 2 uses
  %.not1082 = icmp eq i64 %i.fz, 2
  br i1 %.not1082, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.sroa.4971.0.copyload = load i8, ptr %.sroa.4971.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2819.sroa.2.0..sroa.2819.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5972.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.fz, ptr %i.ax, align 8
  store i8 %.sroa.4971.0.copyload, ptr %i.bb, align 8
  store i64 4, ptr %i.w, align 8
  br label %bb.bx

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 81, ptr %i.ga, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ey

bb.dq:                                            ; preds = %bb.bi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  store ptr %3, ptr %i.k, align 8
  store ptr %4, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE7addressCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, i64 noundef %.sroa.0899.0.copyload)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dr:                                            ; preds = %bb.bi
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 96 to ptr), ptr %i.gb, align 8
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dx, %bb.dy, %bb.dr
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ey

bb.dt:                                            ; preds = %bb.dq
  %i.gc = load i8, ptr %i.j, align 8, !range !102, !noundef !5 ; 2 uses
  %.not1080 = icmp eq i8 %i.gc, -1
  br i1 %.not1080, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  %i.gd = load i64, ptr %i.bm, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void %i.bo(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %5, i64 noundef %i.gd)
          to label %bb.dv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dv:                                            ; preds = %bb.du
  %i.ge = load i64, ptr %i.i, align 8, !range !100, !noundef !5 ; 2 uses
  %.not1081 = icmp eq i64 %i.ge, 2
  br i1 %.not1081, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.sroa.41000.0.copyload = load i8, ptr %.sroa.41000.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2819.sroa.2.0..sroa.2819.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.51001.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.ge, ptr %i.ax, align 8
  store i8 %.sroa.41000.0.copyload, ptr %i.bb, align 8
  store i64 4, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bx

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 81, ptr %i.gf, align 8
  br label %bb.ds

bb.dy:                                            ; preds = %bb.dt
  %.sroa.4997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.41162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
end_hunk_1
