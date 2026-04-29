inline.NumInlined: 12
begin_hunk_0_@generate_states:bb.a

vector.ph197:                                     ; preds = %vector.main.loop.iter.check195
  %n.mod.vf198 = and i64 %i.at, 12
  %n.vec199 = and i64 %i.at, -16                  ; 4 uses
  %i.aw = shl i64 %n.vec199, 1                    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ah, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.aw
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph197
  %index201 = phi i64 [ 0, %vector.ph197 ], [ %index.next208, %vector.body200 ] ; 2 uses
  %offset.idx202 = shl i64 %index201, 1           ; 2 uses
  %next.gep203 = getelementptr i8, ptr %i.ah, i64 %offset.idx202 ; 2 uses
  %next.gep205 = getelementptr i8, ptr %i.an, i64 %offset.idx202 ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep203, i64 16
  %wide.load206 = load <8 x i16>, ptr %next.gep203, align 2, !tbaa !11
  %wide.load207 = load <8 x i16>, ptr %i.az, align 2, !tbaa !11
end_hunk_0
begin_hunk_1_@generate_states:bb.a

vec.epilog.ph218:                                 ; preds = %vector.main.loop.iter.check195, %vec.epilog.iter.check216
  %vec.epilog.resume.val211 = phi i64 [ %n.vec199, %vec.epilog.iter.check216 ], [ 0, %vector.main.loop.iter.check195 ]
  %n.vec220 = and i64 %i.at, -4                   ; 3 uses
  %i.bc = shl i64 %n.vec220, 1                    ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ah, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.an, i64 %i.bc
  br label %vec.epilog.vector.body221

vec.epilog.vector.body221:                        ; preds = %vec.epilog.vector.body221, %vec.epilog.ph218
  %index222 = phi i64 [ %vec.epilog.resume.val211, %vec.epilog.ph218 ], [ %index.next226, %vec.epilog.vector.body221 ] ; 2 uses
  %i.bf = shl i64 %index222, 1                    ; 2 uses
  %next.gep223 = getelementptr i8, ptr %i.ah, i64 %i.bf
  %next.gep224 = getelementptr i8, ptr %i.an, i64 %i.bf
  %wide.load225 = load <4 x i16>, ptr %next.gep223, align 2, !tbaa !11
  store <4 x i16> %wide.load225, ptr %next.gep224, align 2, !tbaa !11
  %index.next226 = add nuw i64 %index222, 4       ; 2 uses
end_hunk_1
begin_hunk_2_@generate_states:bb.a

vector.ph142:                                     ; preds = %vector.main.loop.iter.check140
  %n.mod.vf143 = and i64 %i.go, 12
  %n.vec144 = and i64 %i.go, -16                  ; 4 uses
  %i.gr = shl i64 %n.vec144, 1                    ; 2 uses
  %i.gs = getelementptr i8, ptr %i.ft, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gj, i64 %i.gr
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph142
  %index146 = phi i64 [ 0, %vector.ph142 ], [ %index.next153, %vector.body145 ] ; 2 uses
  %offset.idx147 = shl i64 %index146, 1           ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.ft, i64 %offset.idx147 ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.gj, i64 %offset.idx147 ; 2 uses
  %i.gu = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load151 = load <8 x i16>, ptr %next.gep148, align 2, !tbaa !11
  %wide.load152 = load <8 x i16>, ptr %i.gu, align 2, !tbaa !11
end_hunk_2
begin_hunk_3_@generate_states:bb.a

vec.epilog.ph162:                                 ; preds = %vector.main.loop.iter.check140, %vec.epilog.iter.check160
  %vec.epilog.resume.val156 = phi i64 [ %n.vec144, %vec.epilog.iter.check160 ], [ 0, %vector.main.loop.iter.check140 ]
  %n.vec164 = and i64 %i.go, -4                   ; 3 uses
  %i.gx = shl i64 %n.vec164, 1                    ; 2 uses
  %i.gy = getelementptr i8, ptr %i.ft, i64 %i.gx
  %i.gz = getelementptr i8, ptr %i.gj, i64 %i.gx
  br label %vec.epilog.vector.body165

vec.epilog.vector.body165:                        ; preds = %vec.epilog.vector.body165, %vec.epilog.ph162
  %index166 = phi i64 [ %vec.epilog.resume.val156, %vec.epilog.ph162 ], [ %index.next170, %vec.epilog.vector.body165 ] ; 2 uses
  %i.ha = shl i64 %index166, 1                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.ft, i64 %i.ha
  %next.gep168 = getelementptr i8, ptr %i.gj, i64 %i.ha
  %wide.load169 = load <4 x i16>, ptr %next.gep167, align 2, !tbaa !11
  store <4 x i16> %wide.load169, ptr %next.gep168, align 2, !tbaa !11
  %index.next170 = add nuw i64 %index166, 4       ; 2 uses
end_hunk_3
begin_hunk_4_@generate_states:bb.a

vector.ph103:                                     ; preds = %vector.main.loop.iter.check101
  %n.mod.vf104 = and i64 %i.ig, 12
  %n.vec105 = and i64 %i.ig, -16                  ; 4 uses
  %i.ij = shl i64 %n.vec105, 1                    ; 2 uses
  %i.ik = getelementptr i8, ptr %i.hl, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ib, i64 %i.ij
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 2 uses
  %offset.idx108 = shl i64 %index107, 1           ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.hl, i64 %offset.idx108 ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.ib, i64 %offset.idx108 ; 2 uses
  %i.im = getelementptr i8, ptr %next.gep109, i64 16
  %wide.load112 = load <8 x i16>, ptr %next.gep109, align 2, !tbaa !11
  %wide.load113 = load <8 x i16>, ptr %i.im, align 2, !tbaa !11
end_hunk_4
begin_hunk_5_@generate_states:bb.a

vec.epilog.ph123:                                 ; preds = %vector.main.loop.iter.check101, %vec.epilog.iter.check121
  %vec.epilog.resume.val117 = phi i64 [ %n.vec105, %vec.epilog.iter.check121 ], [ 0, %vector.main.loop.iter.check101 ]
  %n.vec125 = and i64 %i.ig, -4                   ; 3 uses
  %i.ip = shl i64 %n.vec125, 1                    ; 2 uses
  %i.iq = getelementptr i8, ptr %i.hl, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.ib, i64 %i.ip
  br label %vec.epilog.vector.body126

vec.epilog.vector.body126:                        ; preds = %vec.epilog.vector.body126, %vec.epilog.ph123
  %index127 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph123 ], [ %index.next131, %vec.epilog.vector.body126 ] ; 2 uses
  %i.is = shl i64 %index127, 1                    ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.hl, i64 %i.is
  %next.gep129 = getelementptr i8, ptr %i.ib, i64 %i.is
  %wide.load130 = load <4 x i16>, ptr %next.gep128, align 2, !tbaa !11
  store <4 x i16> %wide.load130, ptr %next.gep129, align 2, !tbaa !11
  %index.next131 = add nuw i64 %index127, 4       ; 2 uses
end_hunk_5
begin_hunk_6_@generate_states:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.kh, 12
  %n.vec = and i64 %i.kh, -16                     ; 4 uses
  %i.kk = shl i64 %n.vec, 1                       ; 2 uses
  %i.kl = getelementptr i8, ptr %i.jv, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kb, i64 %i.kk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jv, i64 %offset.idx ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.kb, i64 %offset.idx ; 2 uses
  %i.kn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load85 = load <8 x i16>, ptr %i.kn, align 2, !tbaa !11
end_hunk_6
begin_hunk_7_@generate_states:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec88 = and i64 %i.kh, -4                    ; 3 uses
  %i.kq = shl i64 %n.vec88, 1                     ; 2 uses
  %i.kr = getelementptr i8, ptr %i.jv, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.kb, i64 %i.kq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index89 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.kt = shl i64 %index89, 1                     ; 2 uses
  %next.gep90.a = getelementptr i8, ptr %i.jv, i64 %i.kt
  %next.gep91 = getelementptr i8, ptr %i.kb, i64 %i.kt
  %wide.load92 = load <4 x i16>, ptr %next.gep90.a, align 2, !tbaa !11
  store <4 x i16> %wide.load92, ptr %next.gep91, align 2, !tbaa !11
  %index.next93 = add nuw i64 %index89, 4         ; 2 uses
end_hunk_7
begin_hunk_8_@save_reductions:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.am, 12
  %n.vec = and i64 %i.am, -16                     ; 4 uses
  %i.ap = shl i64 %n.vec, 1                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.aa, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %offset.idx ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.ag, i64 %offset.idx ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load43 = load <8 x i16>, ptr %i.as, align 2, !tbaa !11
end_hunk_8
begin_hunk_9_@save_reductions:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.am, -4                    ; 3 uses
  %i.av = shl i64 %n.vec46, 1                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aa, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.ag, i64 %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = shl i64 %index47, 1                     ; 2 uses
  %next.gep48.a = getelementptr i8, ptr %i.aa, i64 %i.ay
  %next.gep49 = getelementptr i8, ptr %i.ag, i64 %i.ay
  %wide.load50 = load <4 x i16>, ptr %next.gep48.a, align 2, !tbaa !11
  store <4 x i16> %wide.load50, ptr %next.gep49, align 2, !tbaa !11
  %index.next51 = add nuw i64 %index47, 4         ; 2 uses
end_hunk_9
begin_hunk_10_@save_shifts:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.y, 12
  %n.vec = and i64 %i.y, -16                      ; 4 uses
  %i.ab = shl i64 %n.vec, 1                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %offset.idx ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.s, i64 %offset.idx ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load18 = load <8 x i16>, ptr %i.ae, align 2, !tbaa !11
end_hunk_10
begin_hunk_11_@save_shifts:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.y, -4                     ; 3 uses
  %i.ah = shl i64 %n.vec21, 1                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.m, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index22, 1                     ; 2 uses
  %next.gep23.a = getelementptr i8, ptr %i.m, i64 %i.ak
  %next.gep24 = getelementptr i8, ptr %i.s, i64 %i.ak
  %wide.load25 = load <4 x i16>, ptr %next.gep23.a, align 2, !tbaa !11
  store <4 x i16> %wide.load25, ptr %next.gep24, align 2, !tbaa !11
  %index.next26 = add nuw i64 %index22, 4         ; 2 uses
end_hunk_11
begin_hunk_12_@get_state:bb.a

vector.ph93:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf94 = and i64 %i.cj, 12
  %n.vec95 = and i64 %i.cj, -16                   ; 4 uses
  %i.cm = shl i64 %n.vec95, 1                     ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bj, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.ce, i64 %i.cm
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph93
  %index97 = phi i64 [ 0, %vector.ph93 ], [ %index.next104, %vector.body96 ] ; 2 uses
  %offset.idx98 = shl i64 %index97, 1             ; 2 uses
  %next.gep99.a = getelementptr i8, ptr %i.bj, i64 %offset.idx98 ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.ce, i64 %offset.idx98 ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep99.a, i64 16
  %wide.load102 = load <8 x i16>, ptr %next.gep99.a, align 2, !tbaa !11
  %wide.load103 = load <8 x i16>, ptr %i.cp, align 2, !tbaa !11
end_hunk_12
begin_hunk_13_@get_state:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec95, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.cj, -4                   ; 3 uses
  %i.cs = shl i64 %n.vec110, 1                    ; 2 uses
  %i.ct = getelementptr i8, ptr %i.bj, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ce, i64 %i.cs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 2 uses
  %i.cv = shl i64 %index111, 1                    ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.bj, i64 %i.cv
  %next.gep113 = getelementptr i8, ptr %i.ce, i64 %i.cv
  %wide.load114 = load <4 x i16>, ptr %next.gep112, align 2, !tbaa !11
  store <4 x i16> %wide.load114, ptr %next.gep113, align 2, !tbaa !11
  %index.next115 = add nuw i64 %index111, 4       ; 2 uses
end_hunk_13
begin_hunk_14_@get_state:bb.a

vector.ph126:                                     ; preds = %vector.main.loop.iter.check124
  %n.mod.vf127 = and i64 %i.ec, 12
  %n.vec128 = and i64 %i.ec, -16                  ; 4 uses
  %i.ef = shl i64 %n.vec128, 1                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dg, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.dx, i64 %i.ef
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next137, %vector.body129 ] ; 2 uses
  %offset.idx131 = shl i64 %index130, 1           ; 2 uses
  %next.gep132 = getelementptr i8, ptr %i.dg, i64 %offset.idx131 ; 2 uses
  %next.gep134 = getelementptr i8, ptr %i.dx, i64 %offset.idx131 ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load135 = load <8 x i16>, ptr %next.gep132, align 2, !tbaa !11
  %wide.load136 = load <8 x i16>, ptr %i.ei, align 2, !tbaa !11
end_hunk_14
begin_hunk_15_@get_state:bb.a

vec.epilog.ph147:                                 ; preds = %vector.main.loop.iter.check124, %vec.epilog.iter.check145
  %vec.epilog.resume.val140 = phi i64 [ %n.vec128, %vec.epilog.iter.check145 ], [ 0, %vector.main.loop.iter.check124 ]
  %n.vec149 = and i64 %i.ec, -4                   ; 3 uses
  %i.el = shl i64 %n.vec149, 1                    ; 2 uses
  %i.em = getelementptr i8, ptr %i.dg, i64 %i.el
  %i.en = getelementptr i8, ptr %i.dx, i64 %i.el
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph147
  %index151 = phi i64 [ %vec.epilog.resume.val140, %vec.epilog.ph147 ], [ %index.next155, %vec.epilog.vector.body150 ] ; 2 uses
  %i.eo = shl i64 %index151, 1                    ; 2 uses
  %next.gep152 = getelementptr i8, ptr %i.dg, i64 %i.eo
  %next.gep153 = getelementptr i8, ptr %i.dx, i64 %i.eo
  %wide.load154 = load <4 x i16>, ptr %next.gep152, align 2, !tbaa !11
  store <4 x i16> %wide.load154, ptr %next.gep153, align 2, !tbaa !11
  %index.next155 = add nuw i64 %index151, 4       ; 2 uses
end_hunk_15
begin_hunk_16_@new_state:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ag, 12
  %n.vec = and i64 %i.ag, -16                     ; 4 uses
  %i.aj = shl i64 %n.vec, 1                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.f, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ab, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %offset.idx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ab, i64 %offset.idx ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load24 = load <8 x i16>, ptr %i.am, align 2, !tbaa !11
end_hunk_16
begin_hunk_17_@new_state:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.ag, -4                    ; 3 uses
  %i.ap = shl i64 %n.vec27, 1                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.f, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.ab, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index28, 1                     ; 2 uses
  %next.gep29.a = getelementptr i8, ptr %i.f, i64 %i.as
  %next.gep30 = getelementptr i8, ptr %i.ab, i64 %i.as
  %wide.load31 = load <4 x i16>, ptr %next.gep29.a, align 2, !tbaa !11
  store <4 x i16> %wide.load31, ptr %next.gep30, align 2, !tbaa !11
  %index.next32 = add nuw i64 %index28, 4         ; 2 uses
end_hunk_17
