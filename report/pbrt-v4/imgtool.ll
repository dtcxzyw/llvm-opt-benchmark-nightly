Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/imgtool?download=true
inline.NumInlined: 9676
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 216
begin_hunk_0_@_Z7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
  br i1 %.not.i.i.i.i.i2200.us, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i2201.us, label %bb.js

bb.js:                                            ; preds = %._crit_edge.i.i2197.us
  %i.bek = load i64, ptr %i.bcf, align 8, !tbaa !194
  %i.bel = shl i64 %i.bek, 2
  %i.bem = load ptr, ptr %i.bbw, align 8, !tbaa !120 ; 2 uses
  %i.ben = load ptr, ptr %i.bem, align 8, !tbaa !122
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 24
  %i.bep = load ptr, ptr %i.beo, align 8
  invoke void %i.bep(ptr noundef nonnull align 8 dereferenceable(8) %i.bem, ptr noundef nonnull %.pre.i45.i2199.us, i64 noundef %i.bel, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i2201.us unwind label %.split4387.us, !inline_history !292

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i2201.us: ; preds = %bb.js, %._crit_edge.i.i2197.us
  store i64 %i.bcc, ptr %i.bcf, align 8, !tbaa !194
  store ptr %.0.i.i.i.i46.i2198.us, ptr %i.bcd, align 8, !tbaa !192
  %.pre34.i2202.us = load i64, ptr %i.axg, align 8, !tbaa !193
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i2180.us

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i2180.us: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i2201.us, %bb.jq
  %i.beq = phi ptr [ %i.bce, %bb.jq ], [ %.0.i.i.i.i46.i2198.us, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i2201.us ] ; 2 uses
  %i.ber = phi i64 [ %i.bcc, %bb.jq ], [ %.pre34.i2202.us, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i2201.us ] ; 12 uses
  %.not31.i2181.us = icmp eq i64 %i.ber, 0
  br i1 %.not31.i2181.us, label %._crit_edge.i2187.us, label %iter.check7137

iter.check7137:                                   ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i2180.us
  %.not.i27.i2183.us = icmp eq ptr %i.beq, null
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bbw, i64 16
  %i.bet = select i1 %.not.i27.i2183.us, ptr %i.bes, ptr %i.beq ; 12 uses
  %i.beu = load ptr, ptr %i.axh, align 8, !tbaa !192 ; 2 uses
  %.not.i.i28.i2184.us = icmp eq ptr %i.beu, null
  %i.bev = select i1 %.not.i.i28.i2184.us, ptr %i.axi, ptr %i.beu ; 12 uses
  %min.iters.check7123 = icmp ult i64 %i.ber, 4
  %i.bew = ptrtoaddr ptr %i.bev to i64
  %i.bex = ptrtoaddr ptr %i.bet to i64
  %i.bey = sub i64 %i.bew, %i.bex
  %diff.check7121 = icmp ugt i64 %i.bey, -128
  %or.cond7198 = select i1 %min.iters.check7123, i1 true, i1 %diff.check7121
  br i1 %or.cond7198, label %vec.epilog.scalar.ph7139.preheader, label %vector.main.loop.iter.check7124

vector.main.loop.iter.check7124:                  ; preds = %iter.check7137
  %min.iters.check7125 = icmp ult i64 %i.ber, 32
  br i1 %min.iters.check7125, label %vec.epilog.ph7141, label %vector.ph7126

vector.ph7126:                                    ; preds = %vector.main.loop.iter.check7124
  %i.bez = and i64 %i.ber, 28
  %n.vec7127 = and i64 %i.ber, -32                ; 4 uses
  br label %vector.body7128

vector.body7128:                                  ; preds = %vector.ph7126, %vector.body7128
  %index7129 = phi i64 [ 0, %vector.ph7126 ], [ %index.next7134, %vector.body7128 ] ; 3 uses
  %i.bfa = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %index7129 ; 4 uses
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %index7129 ; 4 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 32
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfb, i64 64
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfb, i64 96
  %wide.load7130 = load <8 x float>, ptr %i.bfb, align 4, !tbaa !66
  %wide.load7131 = load <8 x float>, ptr %i.bfc, align 4, !tbaa !66
  %wide.load7132 = load <8 x float>, ptr %i.bfd, align 4, !tbaa !66
  %wide.load7133 = load <8 x float>, ptr %i.bfe, align 4, !tbaa !66
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfa, i64 32
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfa, i64 64
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfa, i64 96
  store <8 x float> %wide.load7130, ptr %i.bfa, align 4, !tbaa !66
  store <8 x float> %wide.load7131, ptr %i.bff, align 4, !tbaa !66
  store <8 x float> %wide.load7132, ptr %i.bfg, align 4, !tbaa !66
  store <8 x float> %wide.load7133, ptr %i.bfh, align 4, !tbaa !66
  %index.next7134 = add nuw i64 %index7129, 32    ; 2 uses
  %i.bfi = icmp eq i64 %index.next7134, %n.vec7127
  br i1 %i.bfi, label %middle.block7135, label %vector.body7128, !llvm.loop !865

middle.block7135:                                 ; preds = %vector.body7128
  %cmp.n7136 = icmp eq i64 %i.ber, %n.vec7127
  br i1 %cmp.n7136, label %._crit_edge.i2187.us, label %vec.epilog.iter.check7138

vec.epilog.iter.check7138:                        ; preds = %middle.block7135
  %min.epilog.iters.check7140 = icmp eq i64 %i.bez, 0
  br i1 %min.epilog.iters.check7140, label %vec.epilog.scalar.ph7139.preheader, label %vec.epilog.ph7141, !prof !199

vec.epilog.ph7141:                                ; preds = %vector.main.loop.iter.check7124, %vec.epilog.iter.check7138
  %vec.epilog.resume.val7142 = phi i64 [ %n.vec7127, %vec.epilog.iter.check7138 ], [ 0, %vector.main.loop.iter.check7124 ]
  %n.vec7143 = and i64 %i.ber, -4                 ; 3 uses
  br label %vec.epilog.vector.body7144

vec.epilog.vector.body7144:                       ; preds = %vec.epilog.vector.body7144, %vec.epilog.ph7141
  %index7145 = phi i64 [ %vec.epilog.resume.val7142, %vec.epilog.ph7141 ], [ %index.next7147, %vec.epilog.vector.body7144 ] ; 3 uses
  %i.bfj = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %index7145
  %i.bfk = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %index7145
  %wide.load7146 = load <4 x float>, ptr %i.bfk, align 4, !tbaa !66
  store <4 x float> %wide.load7146, ptr %i.bfj, align 4, !tbaa !66
  %index.next7147 = add nuw i64 %index7145, 4     ; 2 uses
  %i.bfl = icmp eq i64 %index.next7147, %n.vec7143
  br i1 %i.bfl, label %vec.epilog.middle.block7148, label %vec.epilog.vector.body7144, !llvm.loop !866

vec.epilog.middle.block7148:                      ; preds = %vec.epilog.vector.body7144
  %cmp.n7149 = icmp eq i64 %i.ber, %n.vec7143
  br i1 %cmp.n7149, label %._crit_edge.i2187.us, label %vec.epilog.scalar.ph7139.preheader

vec.epilog.scalar.ph7139.preheader:               ; preds = %iter.check7137, %vec.epilog.iter.check7138, %vec.epilog.middle.block7148
  %.029.i2185.us.ph = phi i64 [ 0, %iter.check7137 ], [ %n.vec7127, %vec.epilog.iter.check7138 ], [ %n.vec7143, %vec.epilog.middle.block7148 ] ; 4 uses
  %i.bfm = sub i64 %i.ber, %.029.i2185.us.ph
  %xtraiter7404 = and i64 %i.bfm, 7               ; 2 uses
  %lcmp.mod7405.not = icmp eq i64 %xtraiter7404, 0
  br i1 %lcmp.mod7405.not, label %vec.epilog.scalar.ph7139.prol.loopexit, label %vec.epilog.scalar.ph7139.prol

vec.epilog.scalar.ph7139.prol:                    ; preds = %vec.epilog.scalar.ph7139.preheader, %vec.epilog.scalar.ph7139.prol
  %.029.i2185.us.prol = phi i64 [ %i.bfq, %vec.epilog.scalar.ph7139.prol ], [ %.029.i2185.us.ph, %vec.epilog.scalar.ph7139.preheader ] ; 3 uses
  %prol.iter7406 = phi i64 [ %prol.iter7406.next, %vec.epilog.scalar.ph7139.prol ], [ 0, %vec.epilog.scalar.ph7139.preheader ]
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %.029.i2185.us.prol
  %i.bfo = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %.029.i2185.us.prol
  %i.bfp = load float, ptr %i.bfo, align 4, !tbaa !66
  store float %i.bfp, ptr %i.bfn, align 4, !tbaa !66
  %i.bfq = add nuw i64 %.029.i2185.us.prol, 1     ; 2 uses
  %prol.iter7406.next = add i64 %prol.iter7406, 1 ; 2 uses
  %prol.iter7406.cmp.not = icmp eq i64 %prol.iter7406.next, %xtraiter7404
  br i1 %prol.iter7406.cmp.not, label %vec.epilog.scalar.ph7139.prol.loopexit, label %vec.epilog.scalar.ph7139.prol, !llvm.loop !867

vec.epilog.scalar.ph7139.prol.loopexit:           ; preds = %vec.epilog.scalar.ph7139.prol, %vec.epilog.scalar.ph7139.preheader
  %.029.i2185.us.unr = phi i64 [ %.029.i2185.us.ph, %vec.epilog.scalar.ph7139.preheader ], [ %i.bfq, %vec.epilog.scalar.ph7139.prol ]
  %i.bfr = sub i64 %.029.i2185.us.ph, %i.ber
  %i.bfs = icmp ugt i64 %i.bfr, -8
  br i1 %i.bfs, label %._crit_edge.i2187.us, label %vec.epilog.scalar.ph7139

vec.epilog.scalar.ph7139:                         ; preds = %vec.epilog.scalar.ph7139.prol.loopexit, %vec.epilog.scalar.ph7139
  %.029.i2185.us = phi i64 [ %i.bgy, %vec.epilog.scalar.ph7139 ], [ %.029.i2185.us.unr, %vec.epilog.scalar.ph7139.prol.loopexit ] ; 10 uses
  %i.bft = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %.029.i2185.us
  %i.bfu = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %.029.i2185.us
  %i.bfv = load float, ptr %i.bfu, align 4, !tbaa !66
  store float %i.bfv, ptr %i.bft, align 4, !tbaa !66
  %i.bfw = add nuw i64 %.029.i2185.us, 1          ; 2 uses
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %i.bfw
  %i.bfy = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %i.bfw
  %i.bfz = load float, ptr %i.bfy, align 4, !tbaa !66
  store float %i.bfz, ptr %i.bfx, align 4, !tbaa !66
  %i.bga = add nuw i64 %.029.i2185.us, 2          ; 2 uses
  %i.bgb = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %i.bga
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %i.bga
  %i.bgd = load float, ptr %i.bgc, align 4, !tbaa !66
  store float %i.bgd, ptr %i.bgb, align 4, !tbaa !66
  %i.bge = add nuw i64 %.029.i2185.us, 3          ; 2 uses
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %i.bge
  %i.bgg = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %i.bge
  %i.bgh = load float, ptr %i.bgg, align 4, !tbaa !66
  store float %i.bgh, ptr %i.bgf, align 4, !tbaa !66
  %i.bgi = add nuw i64 %.029.i2185.us, 4          ; 2 uses
  %i.bgj = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %i.bgi
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %i.bgi
  %i.bgl = load float, ptr %i.bgk, align 4, !tbaa !66
  store float %i.bgl, ptr %i.bgj, align 4, !tbaa !66
  %i.bgm = add nuw i64 %.029.i2185.us, 5          ; 2 uses
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %i.bgm
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %i.bgm
  %i.bgp = load float, ptr %i.bgo, align 4, !tbaa !66
  store float %i.bgp, ptr %i.bgn, align 4, !tbaa !66
  %i.bgq = add nuw i64 %.029.i2185.us, 6          ; 2 uses
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %i.bgq
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %i.bgq
  %i.bgt = load float, ptr %i.bgs, align 4, !tbaa !66
  store float %i.bgt, ptr %i.bgr, align 4, !tbaa !66
  %i.bgu = add nuw i64 %.029.i2185.us, 7          ; 2 uses
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %i.bgu
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %i.bgu
  %i.bgx = load float, ptr %i.bgw, align 4, !tbaa !66
  store float %i.bgx, ptr %i.bgv, align 4, !tbaa !66
  %i.bgy = add nuw i64 %.029.i2185.us, 8          ; 2 uses
  %exitcond.not.i2186.us.7 = icmp eq i64 %i.bgy, %i.ber
  br i1 %exitcond.not.i2186.us.7, label %._crit_edge.i2187.us, label %vec.epilog.scalar.ph7139, !llvm.loop !868

._crit_edge.i2187.us:                             ; preds = %vec.epilog.scalar.ph7139.prol.loopexit, %vec.epilog.scalar.ph7139, %middle.block7135, %vec.epilog.middle.block7148, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i2180.us
  store i64 %i.ber, ptr %i.bby, align 8, !tbaa !193
  br label %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.us

bb.jt:                                            ; preds = %bb.jp
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bbw, i64 8 ; 3 uses
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !293
  %i.bhb = load ptr, ptr %i.axh, align 8, !tbaa !293
  store ptr %i.bhb, ptr %i.bgz, align 8, !tbaa !293
  store ptr %i.bha, ptr %i.axh, align 8, !tbaa !293
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bbw, i64 32 ; 2 uses
  %i.bhd = load i64, ptr %i.bhc, align 8, !tbaa !47
  %i.bhe = load i64, ptr %i.axj, align 8, !tbaa !47
  store i64 %i.bhe, ptr %i.bhc, align 8, !tbaa !47
  store i64 %i.bhd, ptr %i.axj, align 8, !tbaa !47
  %i.bhf = load i64, ptr %i.bby, align 8, !tbaa !47
  %i.bhg = load i64, ptr %i.axg, align 8, !tbaa !47
  store i64 %i.bhg, ptr %i.bby, align 8, !tbaa !47
  store i64 %i.bhf, ptr %i.axg, align 8, !tbaa !47
  %i.bhh = load i64, ptr %i.bby, align 8, !tbaa !193 ; 11 uses
  %.not.i2203.us = icmp ne i64 %i.bhh, 0
  %i.bhi = load ptr, ptr %i.bgz, align 8
  %.not26.i2204.us = icmp eq ptr %i.bhi, null
  %or.cond.i2205.us = select i1 %.not.i2203.us, i1 %.not26.i2204.us, i1 false
  br i1 %or.cond.i2205.us, label %iter.check7106, label %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.us

iter.check7106:                                   ; preds = %bb.jt
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bbw, i64 16 ; 11 uses
  %min.iters.check7092 = icmp ult i64 %i.bhh, 4
  br i1 %min.iters.check7092, label %vec.epilog.scalar.ph7108.preheader, label %vector.memcheck7089

vector.memcheck7089:                              ; preds = %iter.check7106
  %i.bhk = sub i64 %i.bbv, %i.ak
  %i.bhl = mul nsw i64 %i.bbt, 48
  %i.bhm = add i64 %i.bhk, %i.bhl
  %i.bhn = add i64 %i.bhm, -1
  %diff.check7090 = icmp ult i64 %i.bhn, 127
  br i1 %diff.check7090, label %vec.epilog.scalar.ph7108.preheader, label %vector.main.loop.iter.check7093

vector.main.loop.iter.check7093:                  ; preds = %vector.memcheck7089
  %min.iters.check7094 = icmp ult i64 %i.bhh, 32
  br i1 %min.iters.check7094, label %vec.epilog.ph7110, label %vector.ph7095

vector.ph7095:                                    ; preds = %vector.main.loop.iter.check7093
  %i.bho = and i64 %i.bhh, 28
  %n.vec7096 = and i64 %i.bhh, -32                ; 4 uses
  br label %vector.body7097

vector.body7097:                                  ; preds = %vector.ph7095, %vector.body7097
  %index7098 = phi i64 [ 0, %vector.ph7095 ], [ %index.next7103, %vector.body7097 ] ; 3 uses
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %index7098 ; 4 uses
  %i.bhq = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %index7098 ; 4 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 32
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhq, i64 64
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhq, i64 96
  %wide.load7099 = load <8 x float>, ptr %i.bhq, align 8, !tbaa !66
  %wide.load7100 = load <8 x float>, ptr %i.bhr, align 8, !tbaa !66
  %wide.load7101 = load <8 x float>, ptr %i.bhs, align 8, !tbaa !66
  %wide.load7102 = load <8 x float>, ptr %i.bht, align 8, !tbaa !66
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhp, i64 32
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhp, i64 64
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhp, i64 96
  store <8 x float> %wide.load7099, ptr %i.bhp, align 4, !tbaa !66
  store <8 x float> %wide.load7100, ptr %i.bhu, align 4, !tbaa !66
  store <8 x float> %wide.load7101, ptr %i.bhv, align 4, !tbaa !66
  store <8 x float> %wide.load7102, ptr %i.bhw, align 4, !tbaa !66
  %index.next7103 = add nuw i64 %index7098, 32    ; 2 uses
  %i.bhx = icmp eq i64 %index.next7103, %n.vec7096
  br i1 %i.bhx, label %middle.block7104, label %vector.body7097, !llvm.loop !869

middle.block7104:                                 ; preds = %vector.body7097
  %cmp.n7105 = icmp eq i64 %i.bhh, %n.vec7096
  br i1 %cmp.n7105, label %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.us, label %vec.epilog.iter.check7107

vec.epilog.iter.check7107:                        ; preds = %middle.block7104
  %min.epilog.iters.check7109 = icmp eq i64 %i.bho, 0
  br i1 %min.epilog.iters.check7109, label %vec.epilog.scalar.ph7108.preheader, label %vec.epilog.ph7110, !prof !199

vec.epilog.ph7110:                                ; preds = %vector.main.loop.iter.check7093, %vec.epilog.iter.check7107
  %vec.epilog.resume.val7111 = phi i64 [ %n.vec7096, %vec.epilog.iter.check7107 ], [ 0, %vector.main.loop.iter.check7093 ]
  %n.vec7112 = and i64 %i.bhh, -4                 ; 3 uses
  br label %vec.epilog.vector.body7113

vec.epilog.vector.body7113:                       ; preds = %vec.epilog.vector.body7113, %vec.epilog.ph7110
  %index7114 = phi i64 [ %vec.epilog.resume.val7111, %vec.epilog.ph7110 ], [ %index.next7116, %vec.epilog.vector.body7113 ] ; 3 uses
  %i.bhy = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %index7114
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %index7114
  %wide.load7115 = load <4 x float>, ptr %i.bhz, align 8, !tbaa !66
  store <4 x float> %wide.load7115, ptr %i.bhy, align 4, !tbaa !66
  %index.next7116 = add nuw i64 %index7114, 4     ; 2 uses
  %i.bia = icmp eq i64 %index.next7116, %n.vec7112
  br i1 %i.bia, label %vec.epilog.middle.block7117, label %vec.epilog.vector.body7113, !llvm.loop !870

vec.epilog.middle.block7117:                      ; preds = %vec.epilog.vector.body7113
  %cmp.n7118 = icmp eq i64 %i.bhh, %n.vec7112
  br i1 %cmp.n7118, label %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.us, label %vec.epilog.scalar.ph7108.preheader

vec.epilog.scalar.ph7108.preheader:               ; preds = %iter.check7106, %vector.memcheck7089, %vec.epilog.iter.check7107, %vec.epilog.middle.block7117
  %indvars.iv.i2207.us.ph = phi i64 [ 0, %iter.check7106 ], [ 0, %vector.memcheck7089 ], [ %n.vec7096, %vec.epilog.iter.check7107 ], [ %n.vec7112, %vec.epilog.middle.block7117 ] ; 4 uses
  %i.bib = sub i64 %i.bhh, %indvars.iv.i2207.us.ph
  %xtraiter7407 = and i64 %i.bib, 7               ; 2 uses
  %lcmp.mod7408.not = icmp eq i64 %xtraiter7407, 0
  br i1 %lcmp.mod7408.not, label %vec.epilog.scalar.ph7108.prol.loopexit, label %vec.epilog.scalar.ph7108.prol

vec.epilog.scalar.ph7108.prol:                    ; preds = %vec.epilog.scalar.ph7108.preheader, %vec.epilog.scalar.ph7108.prol
  %indvars.iv.i2207.us.prol = phi i64 [ %indvars.iv.next.i2208.us.prol, %vec.epilog.scalar.ph7108.prol ], [ %indvars.iv.i2207.us.ph, %vec.epilog.scalar.ph7108.preheader ] ; 3 uses
  %prol.iter7409 = phi i64 [ %prol.iter7409.next, %vec.epilog.scalar.ph7108.prol ], [ 0, %vec.epilog.scalar.ph7108.preheader ]
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %indvars.iv.i2207.us.prol
  %i.bid = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %indvars.iv.i2207.us.prol
  %i.bie = load float, ptr %i.bid, align 4, !tbaa !66
  store float %i.bie, ptr %i.bic, align 4, !tbaa !66
  %indvars.iv.next.i2208.us.prol = add nuw nsw i64 %indvars.iv.i2207.us.prol, 1 ; 2 uses
  %prol.iter7409.next = add i64 %prol.iter7409, 1 ; 2 uses
  %prol.iter7409.cmp.not = icmp eq i64 %prol.iter7409.next, %xtraiter7407
  br i1 %prol.iter7409.cmp.not, label %vec.epilog.scalar.ph7108.prol.loopexit, label %vec.epilog.scalar.ph7108.prol, !llvm.loop !871

vec.epilog.scalar.ph7108.prol.loopexit:           ; preds = %vec.epilog.scalar.ph7108.prol, %vec.epilog.scalar.ph7108.preheader
  %indvars.iv.i2207.us.unr = phi i64 [ %indvars.iv.i2207.us.ph, %vec.epilog.scalar.ph7108.preheader ], [ %indvars.iv.next.i2208.us.prol, %vec.epilog.scalar.ph7108.prol ]
  %i.bif = sub i64 %indvars.iv.i2207.us.ph, %i.bhh
  %i.big = icmp ugt i64 %i.bif, -8
  br i1 %i.big, label %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.us, label %vec.epilog.scalar.ph7108

vec.epilog.scalar.ph7108:                         ; preds = %vec.epilog.scalar.ph7108.prol.loopexit, %vec.epilog.scalar.ph7108
  %indvars.iv.i2207.us = phi i64 [ %indvars.iv.next.i2208.us.7, %vec.epilog.scalar.ph7108 ], [ %indvars.iv.i2207.us.unr, %vec.epilog.scalar.ph7108.prol.loopexit ] ; 10 uses
  %i.bih = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %indvars.iv.i2207.us
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %indvars.iv.i2207.us
  %i.bij = load float, ptr %i.bii, align 4, !tbaa !66
  store float %i.bij, ptr %i.bih, align 4, !tbaa !66
  %indvars.iv.next.i2208.us = add nuw nsw i64 %indvars.iv.i2207.us, 1 ; 2 uses
  %i.bik = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %indvars.iv.next.i2208.us
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %indvars.iv.next.i2208.us
  %i.bim = load float, ptr %i.bil, align 4, !tbaa !66
  store float %i.bim, ptr %i.bik, align 4, !tbaa !66
  %indvars.iv.next.i2208.us.1 = add nuw nsw i64 %indvars.iv.i2207.us, 2 ; 2 uses
  %i.bin = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %indvars.iv.next.i2208.us.1
  %i.bio = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %indvars.iv.next.i2208.us.1
  %i.bip = load float, ptr %i.bio, align 4, !tbaa !66
  store float %i.bip, ptr %i.bin, align 4, !tbaa !66
  %indvars.iv.next.i2208.us.2 = add nuw nsw i64 %indvars.iv.i2207.us, 3 ; 2 uses
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %indvars.iv.next.i2208.us.2
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %indvars.iv.next.i2208.us.2
  %i.bis = load float, ptr %i.bir, align 4, !tbaa !66
  store float %i.bis, ptr %i.biq, align 4, !tbaa !66
  %indvars.iv.next.i2208.us.3 = add nuw nsw i64 %indvars.iv.i2207.us, 4 ; 2 uses
  %i.bit = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %indvars.iv.next.i2208.us.3
  %i.biu = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %indvars.iv.next.i2208.us.3
  %i.biv = load float, ptr %i.biu, align 4, !tbaa !66
  store float %i.biv, ptr %i.bit, align 4, !tbaa !66
  %indvars.iv.next.i2208.us.4 = add nuw nsw i64 %indvars.iv.i2207.us, 5 ; 2 uses
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %indvars.iv.next.i2208.us.4
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %indvars.iv.next.i2208.us.4
  %i.biy = load float, ptr %i.bix, align 4, !tbaa !66
  store float %i.biy, ptr %i.biw, align 4, !tbaa !66
  %indvars.iv.next.i2208.us.5 = add nuw nsw i64 %indvars.iv.i2207.us, 6 ; 2 uses
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %indvars.iv.next.i2208.us.5
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %indvars.iv.next.i2208.us.5
  %i.bjb = load float, ptr %i.bja, align 4, !tbaa !66
  store float %i.bjb, ptr %i.biz, align 4, !tbaa !66
  %indvars.iv.next.i2208.us.6 = add nuw nsw i64 %indvars.iv.i2207.us, 7 ; 2 uses
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %indvars.iv.next.i2208.us.6
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %indvars.iv.next.i2208.us.6
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !66
  store float %i.bje, ptr %i.bjc, align 4, !tbaa !66
  %indvars.iv.next.i2208.us.7 = add nuw nsw i64 %indvars.iv.i2207.us, 8 ; 2 uses
  %exitcond33.not.i2209.us.7 = icmp eq i64 %indvars.iv.next.i2208.us.7, %i.bhh
  br i1 %exitcond33.not.i2209.us.7, label %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.us, label %vec.epilog.scalar.ph7108, !llvm.loop !872

_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.us:      ; preds = %vec.epilog.scalar.ph7108.prol.loopexit, %vec.epilog.scalar.ph7108, %middle.block7104, %vec.epilog.middle.block7117, %bb.jt, %._crit_edge.i2187.us, %bb.jo
  %i.bjf = add nsw i32 %.14394365.us, 1
  store i64 0, ptr %i.axg, align 8, !tbaa !193
  %i.bjg = load ptr, ptr %i.axh, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i.i1315.us = icmp eq ptr %i.bjg, null
  br i1 %.not.i.i.i.i1315.us, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1316.us, label %bb.ju

bb.ju:                                            ; preds = %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.us
  %i.bjh = load i64, ptr %i.axj, align 8, !tbaa !194
  %i.bji = shl i64 %i.bjh, 2
  %i.bjj = load ptr, ptr %90, align 8, !tbaa !120 ; 2 uses
  %i.bjk = load ptr, ptr %i.bjj, align 8, !tbaa !122
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 24
  %i.bjm = load ptr, ptr %i.bjl, align 8
  invoke void %i.bjm(ptr noundef nonnull align 8 dereferenceable(8) %i.bjj, ptr noundef nonnull %i.bjg, i64 noundef %i.bji, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1316.us unwind label %.split4391.us, !inline_history !3

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1316.us: ; preds = %bb.ju, %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #37
  br label %bb.jv

bb.jv:                                            ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1316.us, %bb.jm
  %.2440.us = phi i32 [ %.14394365.us, %bb.jm ], [ %i.bjf, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1316.us ] ; 2 uses
  %i.bjn = add nsw i32 %.04364366.us, 1           ; 2 uses
  %exitcond4666.not = icmp eq i32 %i.bjn, 2
  br i1 %exitcond4666.not, label %.loopexit3240.us, label %bb.jm, !llvm.loop !873

.loopexit3240.us:                                 ; preds = %bb.jv, %bb.jl
  %.3441.us = phi i32 [ %.04384367.us, %bb.jl ], [ %.2440.us, %bb.jv ] ; 5 uses
  %i.bjo = add nsw i32 %.04374368.us, 1           ; 2 uses
  %exitcond4667.not = icmp eq i32 %i.bjo, 2
  br i1 %exitcond4667.not, label %bb.jw, label %bb.jl, !llvm.loop !874

bb.jw:                                            ; preds = %.loopexit3240.us
  %i.bjp = sdiv i32 %.3441.us, 2
  %i.bjq = load ptr, ptr %87, align 8, !tbaa !291 ; 5 uses
  %i.bjr = sext i32 %i.bjp to i64                 ; 2 uses
  %.idx3184.us = mul nsw i64 %i.bjr, 48           ; 2 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjq, i64 %.idx3184.us ; 4 uses
  %i.bjt = sext i32 %.3441.us to i64              ; 2 uses
  %.idx.us = mul nuw nsw i64 %i.bjt, 48           ; 2 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjq, i64 %.idx.us ; 2 uses
  %i.bjv = icmp eq i32 %.3441.us, 0
  br i1 %i.bjv, label %"_ZSt11nth_elementIPN4pbrt18ImageChannelValuesEZ7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE3$_1EvT_SD_SD_T0_.exit.us", label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.bjw = ptrtoint ptr %i.bjq to i64             ; 2 uses
  %i.bjx = icmp ugt i32 %.3441.us, 3
  br i1 %i.bjx, label %.lr.ph.preheader.i.us, label %._crit_edge.i.i1292.us

.lr.ph.preheader.i.us:                            ; preds = %bb.jx
  %i.bjy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bjt, i1 true)
  %i.bjz = shl nuw nsw i64 %i.bjy, 1
  %i.bka = xor i64 %i.bjz, 126
  br label %.lr.ph.i1299.us

.lr.ph.i1299.us:                                  ; preds = %bb.oq, %.lr.ph.preheader.i.us
  %.023203.i91.i.us = phi i64 [ %i.bkc, %bb.oq ], [ %i.bka, %.lr.ph.preheader.i.us ]
  %.021204.i90.i.us = phi ptr [ %..021.i.i.us, %bb.oq ], [ %i.bju, %.lr.ph.preheader.i.us ] ; 38 uses
  %.0205.i89.i.us = phi ptr [ %.0..i.i.us, %bb.oq ], [ %i.bjq, %.lr.ph.preheader.i.us ] ; 88 uses
  %i.bkb = phi i64 [ %i.gbt, %bb.oq ], [ %.idx.us, %.lr.ph.preheader.i.us ] ; 3 uses
  %.021204.i90.i.us6194 = ptrtoaddr ptr %.021204.i90.i.us to i64 ; 4 uses
  %.0205.i89.i.us6038 = ptrtoaddr ptr %.0205.i89.i.us to i64 ; 6 uses
  %i.bkc = add nsw i64 %.023203.i91.i.us, -1      ; 2 uses
  %i.bkd = udiv i64 %i.bkb, 96
  %.idx3185.us = mul nuw nsw i64 %i.bkd, 48       ; 3 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %.0205.i89.i.us, i64 %.idx3185.us ; 28 uses
end_hunk_0
