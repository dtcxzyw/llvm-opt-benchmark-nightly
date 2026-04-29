inline.NumInlined: 622
inline.NumDeleted: 240
begin_hunk_0_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %n.mod.vf163 = and i64 %.082, 8
  %n.vec164 = and i64 %.082, 9223372036854775792  ; 5 uses
  %i.cv = sub nsw i64 0, %n.vec164                ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ck, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.ct, i64 %i.cv
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next175, %vector.body165 ] ; 2 uses
  %offset.idx = sub i64 0, %index166              ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.ck, i64 %offset.idx
  %next.gep169 = getelementptr i8, ptr %i.ct, i64 %offset.idx
  %i.cy = getelementptr inbounds i8, ptr %next.gep169, i64 -16 ; 2 uses
  %wide.load170.a = load <16 x i8>, ptr %i.cy, align 1, !tbaa !12, !alias.scope !166, !noalias !169
  %i.cz = getelementptr inbounds i8, ptr %next.gep167, i64 -16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a

vec.epilog.ph184:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check182
  %vec.epilog.resume.val178 = phi i64 [ %n.vec164, %vec.epilog.iter.check182 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec186 = and i64 %.082, 9223372036854775800  ; 4 uses
  %i.db = sub nsw i64 0, %n.vec186                ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ck, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.ct, i64 %i.db
  br label %vec.epilog.vector.body187

vec.epilog.vector.body187:                        ; preds = %vec.epilog.vector.body187, %vec.epilog.ph184
  %index188 = phi i64 [ %vec.epilog.resume.val178, %vec.epilog.ph184 ], [ %index.next197, %vec.epilog.vector.body187 ] ; 2 uses
  %i.de = sub i64 0, %index188                    ; 2 uses
  %next.gep189.a = getelementptr i8, ptr %i.ck, i64 %i.de
  %next.gep190 = getelementptr i8, ptr %i.ct, i64 %i.de
  %i.df = getelementptr inbounds i8, ptr %next.gep190, i64 -8 ; 2 uses
  %wide.load191 = load <8 x i8>, ptr %i.df, align 1, !tbaa !12, !alias.scope !166, !noalias !169
  %i.dg = getelementptr inbounds i8, ptr %next.gep189.a, i64 -8 ; 2 uses
end_hunk_1
