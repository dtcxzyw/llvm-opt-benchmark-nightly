inline.NumInlined: 12
begin_hunk_0_@generate_states:bb.a

vector.ph197:                                     ; preds = %vector.main.loop.iter.check195
  %n.mod.vf198 = and i64 %i.at, 12
  %n.vec199 = and i64 %i.at, -16                  ; 5 uses
  %i.aw = shl i64 %n.vec199, 1
  %i.ax = getelementptr i8, ptr %i.ah, i64 %i.aw
  %0 = shl i64 %n.vec199, 1
  %i.ay = getelementptr i8, ptr %i.an, i64 %0
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph197
  %index201 = phi i64 [ 0, %vector.ph197 ], [ %index.next208, %vector.body200 ] ; 3 uses
  %offset.idx202 = shl i64 %index201, 1
  %next.gep203 = getelementptr i8, ptr %i.ah, i64 %offset.idx202 ; 2 uses
  %offset.idx204 = shl i64 %index201, 1
  %next.gep205 = getelementptr i8, ptr %i.an, i64 %offset.idx204 ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep203, i64 16
  %wide.load206 = load <8 x i16>, ptr %next.gep203, align 2, !tbaa !11
  %wide.load207 = load <8 x i16>, ptr %i.az, align 2, !tbaa !11
end_hunk_0
begin_hunk_1_@generate_states:bb.a

vec.epilog.ph218:                                 ; preds = %vector.main.loop.iter.check195, %vec.epilog.iter.check216
  %vec.epilog.resume.val211 = phi i64 [ %n.vec199, %vec.epilog.iter.check216 ], [ 0, %vector.main.loop.iter.check195 ]
  %n.vec220 = and i64 %i.at, -4                   ; 4 uses
  %i.bc = shl i64 %n.vec220, 1
  %i.bd = getelementptr i8, ptr %i.ah, i64 %i.bc
  %1 = shl i64 %n.vec220, 1
  %i.be = getelementptr i8, ptr %i.an, i64 %1
  br label %vec.epilog.vector.body221

vec.epilog.vector.body221:                        ; preds = %vec.epilog.vector.body221, %vec.epilog.ph218
  %index222 = phi i64 [ %vec.epilog.resume.val211, %vec.epilog.ph218 ], [ %index.next226, %vec.epilog.vector.body221 ] ; 3 uses
  %i.bf = shl i64 %index222, 1
  %next.gep223 = getelementptr i8, ptr %i.ah, i64 %i.bf
  %2 = shl i64 %index222, 1
  %next.gep224 = getelementptr i8, ptr %i.an, i64 %2
  %wide.load225 = load <4 x i16>, ptr %next.gep223, align 2, !tbaa !11
  store <4 x i16> %wide.load225, ptr %next.gep224, align 2, !tbaa !11
  %index.next226 = add nuw i64 %index222, 4       ; 2 uses
end_hunk_1
begin_hunk_2_@generate_states:bb.a

vector.ph142:                                     ; preds = %vector.main.loop.iter.check140
  %n.mod.vf143 = and i64 %i.go, 12
  %n.vec144 = and i64 %i.go, -16                  ; 5 uses
  %i.gr = shl i64 %n.vec144, 1
  %i.gs = getelementptr i8, ptr %i.ft, i64 %i.gr
  %3 = shl i64 %n.vec144, 1
  %i.gt = getelementptr i8, ptr %i.gj, i64 %3
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph142
  %index146 = phi i64 [ 0, %vector.ph142 ], [ %index.next153, %vector.body145 ] ; 3 uses
  %offset.idx147 = shl i64 %index146, 1
  %next.gep148 = getelementptr i8, ptr %i.ft, i64 %offset.idx147 ; 2 uses
  %offset.idx149 = shl i64 %index146, 1
  %next.gep150 = getelementptr i8, ptr %i.gj, i64 %offset.idx149 ; 2 uses
  %i.gu = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load151 = load <8 x i16>, ptr %next.gep148, align 2, !tbaa !11
  %wide.load152 = load <8 x i16>, ptr %i.gu, align 2, !tbaa !11
end_hunk_2
begin_hunk_3_@generate_states:bb.a

vec.epilog.ph162:                                 ; preds = %vector.main.loop.iter.check140, %vec.epilog.iter.check160
  %vec.epilog.resume.val156 = phi i64 [ %n.vec144, %vec.epilog.iter.check160 ], [ 0, %vector.main.loop.iter.check140 ]
  %n.vec164 = and i64 %i.go, -4                   ; 4 uses
  %i.gx = shl i64 %n.vec164, 1
  %i.gy = getelementptr i8, ptr %i.ft, i64 %i.gx
  %4 = shl i64 %n.vec164, 1
  %i.gz = getelementptr i8, ptr %i.gj, i64 %4
  br label %vec.epilog.vector.body165

vec.epilog.vector.body165:                        ; preds = %vec.epilog.vector.body165, %vec.epilog.ph162
  %index166 = phi i64 [ %vec.epilog.resume.val156, %vec.epilog.ph162 ], [ %index.next170, %vec.epilog.vector.body165 ] ; 3 uses
  %i.ha = shl i64 %index166, 1
  %next.gep167 = getelementptr i8, ptr %i.ft, i64 %i.ha
  %5 = shl i64 %index166, 1
  %next.gep168 = getelementptr i8, ptr %i.gj, i64 %5
  %wide.load169 = load <4 x i16>, ptr %next.gep167, align 2, !tbaa !11
  store <4 x i16> %wide.load169, ptr %next.gep168, align 2, !tbaa !11
  %index.next170 = add nuw i64 %index166, 4       ; 2 uses
end_hunk_3
begin_hunk_4_@generate_states:bb.a

vector.ph103:                                     ; preds = %vector.main.loop.iter.check101
  %n.mod.vf104 = and i64 %i.ig, 12
  %n.vec105 = and i64 %i.ig, -16                  ; 5 uses
  %i.ij = shl i64 %n.vec105, 1
  %i.ik = getelementptr i8, ptr %i.hl, i64 %i.ij
  %6 = shl i64 %n.vec105, 1
  %i.il = getelementptr i8, ptr %i.ib, i64 %6
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 3 uses
  %offset.idx108 = shl i64 %index107, 1
  %next.gep109 = getelementptr i8, ptr %i.hl, i64 %offset.idx108 ; 2 uses
  %offset.idx110 = shl i64 %index107, 1
  %next.gep111 = getelementptr i8, ptr %i.ib, i64 %offset.idx110 ; 2 uses
  %i.im = getelementptr i8, ptr %next.gep109, i64 16
  %wide.load112 = load <8 x i16>, ptr %next.gep109, align 2, !tbaa !11
  %wide.load113 = load <8 x i16>, ptr %i.im, align 2, !tbaa !11
end_hunk_4
begin_hunk_5_@generate_states:bb.a

vec.epilog.ph123:                                 ; preds = %vector.main.loop.iter.check101, %vec.epilog.iter.check121
  %vec.epilog.resume.val117 = phi i64 [ %n.vec105, %vec.epilog.iter.check121 ], [ 0, %vector.main.loop.iter.check101 ]
  %n.vec125 = and i64 %i.ig, -4                   ; 4 uses
  %i.ip = shl i64 %n.vec125, 1
  %i.iq = getelementptr i8, ptr %i.hl, i64 %i.ip
  %7 = shl i64 %n.vec125, 1
  %i.ir = getelementptr i8, ptr %i.ib, i64 %7
  br label %vec.epilog.vector.body126

vec.epilog.vector.body126:                        ; preds = %vec.epilog.vector.body126, %vec.epilog.ph123
  %index127 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph123 ], [ %index.next131, %vec.epilog.vector.body126 ] ; 3 uses
  %i.is = shl i64 %index127, 1
  %next.gep128 = getelementptr i8, ptr %i.hl, i64 %i.is
  %8 = shl i64 %index127, 1
  %next.gep129 = getelementptr i8, ptr %i.ib, i64 %8
  %wide.load130 = load <4 x i16>, ptr %next.gep128, align 2, !tbaa !11
  store <4 x i16> %wide.load130, ptr %next.gep129, align 2, !tbaa !11
  %index.next131 = add nuw i64 %index127, 4       ; 2 uses
end_hunk_5
begin_hunk_6_@generate_states:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.kh, 12
  %n.vec = and i64 %i.kh, -16                     ; 5 uses
  %i.kk = shl i64 %n.vec, 1
  %i.kl = getelementptr i8, ptr %i.jv, i64 %i.kk
  %9 = shl i64 %n.vec, 1
  %i.km = getelementptr i8, ptr %i.kb, i64 %9
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.jv, i64 %offset.idx ; 2 uses
  %offset.idx83 = shl i64 %index, 1
  %next.gep84 = getelementptr i8, ptr %i.kb, i64 %offset.idx83 ; 2 uses
  %i.kn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load85 = load <8 x i16>, ptr %i.kn, align 2, !tbaa !11
end_hunk_6
begin_hunk_7_@generate_states:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec88 = and i64 %i.kh, -4                    ; 4 uses
  %i.kq = shl i64 %n.vec88, 1
  %i.kr = getelementptr i8, ptr %i.jv, i64 %i.kq
  %10 = shl i64 %n.vec88, 1
  %i.ks = getelementptr i8, ptr %i.kb, i64 %10
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index89 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 3 uses
  %i.kt = shl i64 %index89, 1
  %next.gep90.a = getelementptr i8, ptr %i.jv, i64 %i.kt
  %11 = shl i64 %index89, 1
  %next.gep91 = getelementptr i8, ptr %i.kb, i64 %11
  %wide.load92 = load <4 x i16>, ptr %next.gep90.a, align 2, !tbaa !11
  store <4 x i16> %wide.load92, ptr %next.gep91, align 2, !tbaa !11
  %index.next93 = add nuw i64 %index89, 4         ; 2 uses
end_hunk_7
begin_hunk_8_@save_reductions:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.am, 12
  %n.vec = and i64 %i.am, -16                     ; 5 uses
  %i.ap = shl i64 %n.vec, 1
  %i.aq = getelementptr i8, ptr %i.aa, i64 %i.ap
  %0 = shl i64 %n.vec, 1
  %i.ar = getelementptr i8, ptr %i.ag, i64 %0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.aa, i64 %offset.idx ; 2 uses
  %offset.idx41 = shl i64 %index, 1
  %next.gep42 = getelementptr i8, ptr %i.ag, i64 %offset.idx41 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load43 = load <8 x i16>, ptr %i.as, align 2, !tbaa !11
end_hunk_8
begin_hunk_9_@save_reductions:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.am, -4                    ; 4 uses
  %i.av = shl i64 %n.vec46, 1
  %i.aw = getelementptr i8, ptr %i.aa, i64 %i.av
  %1 = shl i64 %n.vec46, 1
  %i.ax = getelementptr i8, ptr %i.ag, i64 %1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = shl i64 %index47, 1
  %next.gep48.a = getelementptr i8, ptr %i.aa, i64 %i.ay
  %2 = shl i64 %index47, 1
  %next.gep49 = getelementptr i8, ptr %i.ag, i64 %2
  %wide.load50 = load <4 x i16>, ptr %next.gep48.a, align 2, !tbaa !11
  store <4 x i16> %wide.load50, ptr %next.gep49, align 2, !tbaa !11
  %index.next51 = add nuw i64 %index47, 4         ; 2 uses
end_hunk_9
begin_hunk_10_@save_shifts:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.y, 12
  %n.vec = and i64 %i.y, -16                      ; 5 uses
  %i.ab = shl i64 %n.vec, 1
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.ab
  %0 = shl i64 %n.vec, 1
  %i.ad = getelementptr i8, ptr %i.s, i64 %0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.m, i64 %offset.idx ; 2 uses
  %offset.idx16 = shl i64 %index, 1
  %next.gep17 = getelementptr i8, ptr %i.s, i64 %offset.idx16 ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load18 = load <8 x i16>, ptr %i.ae, align 2, !tbaa !11
end_hunk_10
begin_hunk_11_@save_shifts:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.y, -4                     ; 4 uses
  %i.ah = shl i64 %n.vec21, 1
  %i.ai = getelementptr i8, ptr %i.m, i64 %i.ah
  %1 = shl i64 %n.vec21, 1
  %i.aj = getelementptr i8, ptr %i.s, i64 %1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = shl i64 %index22, 1
  %next.gep23.a = getelementptr i8, ptr %i.m, i64 %i.ak
  %2 = shl i64 %index22, 1
  %next.gep24 = getelementptr i8, ptr %i.s, i64 %2
  %wide.load25 = load <4 x i16>, ptr %next.gep23.a, align 2, !tbaa !11
  store <4 x i16> %wide.load25, ptr %next.gep24, align 2, !tbaa !11
  %index.next26 = add nuw i64 %index22, 4         ; 2 uses
end_hunk_11
begin_hunk_12_@get_state:bb.a

vector.ph93:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf94 = and i64 %i.cj, 12
  %n.vec95 = and i64 %i.cj, -16                   ; 5 uses
  %i.cm = shl i64 %n.vec95, 1
  %i.cn = getelementptr i8, ptr %i.bj, i64 %i.cm
  %1 = shl i64 %n.vec95, 1
  %i.co = getelementptr i8, ptr %i.ce, i64 %1
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph93
  %index97 = phi i64 [ 0, %vector.ph93 ], [ %index.next104, %vector.body96 ] ; 3 uses
  %offset.idx98 = shl i64 %index97, 1
  %next.gep99.a = getelementptr i8, ptr %i.bj, i64 %offset.idx98 ; 2 uses
  %offset.idx100 = shl i64 %index97, 1
  %next.gep101 = getelementptr i8, ptr %i.ce, i64 %offset.idx100 ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep99.a, i64 16
  %wide.load102 = load <8 x i16>, ptr %next.gep99.a, align 2, !tbaa !11
  %wide.load103 = load <8 x i16>, ptr %i.cp, align 2, !tbaa !11
end_hunk_12
begin_hunk_13_@get_state:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec95, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.cj, -4                   ; 4 uses
  %i.cs = shl i64 %n.vec110, 1
  %i.ct = getelementptr i8, ptr %i.bj, i64 %i.cs
  %2 = shl i64 %n.vec110, 1
  %i.cu = getelementptr i8, ptr %i.ce, i64 %2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 3 uses
  %i.cv = shl i64 %index111, 1
  %next.gep112 = getelementptr i8, ptr %i.bj, i64 %i.cv
  %3 = shl i64 %index111, 1
  %next.gep113 = getelementptr i8, ptr %i.ce, i64 %3
  %wide.load114 = load <4 x i16>, ptr %next.gep112, align 2, !tbaa !11
  store <4 x i16> %wide.load114, ptr %next.gep113, align 2, !tbaa !11
  %index.next115 = add nuw i64 %index111, 4       ; 2 uses
end_hunk_13
begin_hunk_14_@get_state:bb.a

vector.ph126:                                     ; preds = %vector.main.loop.iter.check124
  %n.mod.vf127 = and i64 %i.ec, 12
  %n.vec128 = and i64 %i.ec, -16                  ; 5 uses
  %i.ef = shl i64 %n.vec128, 1
  %i.eg = getelementptr i8, ptr %i.dg, i64 %i.ef
  %4 = shl i64 %n.vec128, 1
  %i.eh = getelementptr i8, ptr %i.dx, i64 %4
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next137, %vector.body129 ] ; 3 uses
  %offset.idx131 = shl i64 %index130, 1
  %next.gep132 = getelementptr i8, ptr %i.dg, i64 %offset.idx131 ; 2 uses
  %offset.idx133 = shl i64 %index130, 1
  %next.gep134 = getelementptr i8, ptr %i.dx, i64 %offset.idx133 ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load135 = load <8 x i16>, ptr %next.gep132, align 2, !tbaa !11
  %wide.load136 = load <8 x i16>, ptr %i.ei, align 2, !tbaa !11
end_hunk_14
begin_hunk_15_@get_state:bb.a

vec.epilog.ph147:                                 ; preds = %vector.main.loop.iter.check124, %vec.epilog.iter.check145
  %vec.epilog.resume.val140 = phi i64 [ %n.vec128, %vec.epilog.iter.check145 ], [ 0, %vector.main.loop.iter.check124 ]
  %n.vec149 = and i64 %i.ec, -4                   ; 4 uses
  %i.el = shl i64 %n.vec149, 1
  %i.em = getelementptr i8, ptr %i.dg, i64 %i.el
  %5 = shl i64 %n.vec149, 1
  %i.en = getelementptr i8, ptr %i.dx, i64 %5
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph147
  %index151 = phi i64 [ %vec.epilog.resume.val140, %vec.epilog.ph147 ], [ %index.next155, %vec.epilog.vector.body150 ] ; 3 uses
  %i.eo = shl i64 %index151, 1
  %next.gep152 = getelementptr i8, ptr %i.dg, i64 %i.eo
  %6 = shl i64 %index151, 1
  %next.gep153 = getelementptr i8, ptr %i.dx, i64 %6
  %wide.load154 = load <4 x i16>, ptr %next.gep152, align 2, !tbaa !11
  store <4 x i16> %wide.load154, ptr %next.gep153, align 2, !tbaa !11
  %index.next155 = add nuw i64 %index151, 4       ; 2 uses
end_hunk_15
begin_hunk_16_@new_state:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ag, 12
  %n.vec = and i64 %i.ag, -16                     ; 5 uses
  %i.aj = shl i64 %n.vec, 1
  %i.ak = getelementptr i8, ptr %i.f, i64 %i.aj
  %1 = shl i64 %n.vec, 1
  %i.al = getelementptr i8, ptr %i.ab, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.f, i64 %offset.idx ; 2 uses
  %offset.idx22 = shl i64 %index, 1
  %next.gep23 = getelementptr i8, ptr %i.ab, i64 %offset.idx22 ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load24 = load <8 x i16>, ptr %i.am, align 2, !tbaa !11
end_hunk_16
begin_hunk_17_@new_state:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.ag, -4                    ; 4 uses
  %i.ap = shl i64 %n.vec27, 1
  %i.aq = getelementptr i8, ptr %i.f, i64 %i.ap
  %2 = shl i64 %n.vec27, 1
  %i.ar = getelementptr i8, ptr %i.ab, i64 %2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 3 uses
  %i.as = shl i64 %index28, 1
  %next.gep29.a = getelementptr i8, ptr %i.f, i64 %i.as
  %3 = shl i64 %index28, 1
  %next.gep30 = getelementptr i8, ptr %i.ab, i64 %3
  %wide.load31 = load <4 x i16>, ptr %next.gep29.a, align 2, !tbaa !11
  store <4 x i16> %wide.load31, ptr %next.gep30, align 2, !tbaa !11
  %index.next32 = add nuw i64 %index28, 4         ; 2 uses
end_hunk_17
